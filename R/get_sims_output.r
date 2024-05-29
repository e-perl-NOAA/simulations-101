#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#' @param df
#' @param var
#' @param model_names
#' @param file_copy
#'
#' @import purrr
#' @import utils
#' @import r4ss
#' @import ggplot2
#' @importFrom ggpubr ggarrange
#' 
#' @return
#' @export
#'
#' 

get_sims_output <- function(dir = dir, 
                            new_filename = "unnested_iterations",
                            file_copy = TRUE,
                            df = df,
                            var = var,
                            model_names = NULL){
  
  # copy om model folders over
  if(file_copy == TRUE){
    mod_om <- grep("BigSkate",list.dirs(file.path(dir, "models"), recursive = FALSE), invert = TRUE, value = TRUE)
    om_files <- list.files(mod_om, pattern = "om_", full.names = TRUE)
    
    purrr::map(om_files, ~{
      mod_name_file_path <- gsub("/.*","", gsub(".*models/","", .x))
      dir.create(file.path(dir, new_filename, paste0(mod_name_file_path,"-",basename(.x))))
      file.copy(list.files(.x, full.names = TRUE), file.path(dir, new_filename, paste0(mod_name_file_path,"-",basename(.x))), recursive = FALSE, overwrite = TRUE)
    })
  }
    
    # om_in_new_folder <- list.files(file.path(dir, new_filename), pattern = "om_", full.names = TRUE)
    # purrr::map(om_in_new_folder, ~{
    #   convergence <- data.frame(
    #                     model = gsub(paste0(".*", new_filename,"/|-om_.*"),"",.x),
    #                     em = gsub(".*-","",basename(.x)),
    #                     iteration = paste0("iteration_",gsub(".*-iteration_","",basename(model_dir))),
    #                     model_converged = ifelse(file.exists(file.path(model_dir, "covar.sso")) & any(grepl("do not write", readLines(file.path(model_dir, "covar.sso")))) == FALSE, TRUE, FALSE),
    #                     model_runtime = runtime
    # )
    # )
  
  # now get output
  if(is.null(model_names)){
    sims_models <- list.dirs(file.path(dir, new_filename), recursive = FALSE)
    model_names <- grep("plots", unique(gsub("-.*","",basename(sims_models))), invert = TRUE, value = TRUE)
  }

  
  mod_conv_results <- read.csv(file.path(new_filename, "model_convergence_unnested.csv"), header = TRUE)
  model_ran <- mod_conv_results |> dplyr::filter(model_runtime != "MODEL DID NOT RUN")
  
  
  sims_results <- furrr::future_map(model_names, ~run_compars(
    model_names = .x,
    dir = dir,
    new_filename = new_filename,
    sims_models = sims_models,
    model_ran = model_ran
  ))
  
  names(sims_results) <- model_names
  
  
  capture.output(sims_results, file = "sims_results.csv")

  # Plot all models according to var specified
  plot_list <- list()
  for(i in 1:length(var)){
  # for some odd reason this isn't working right
  # error that I keep getting is Error in `[.data.frame`(sims_var, , grep(em_names[e], colnames(sims_var))) : undefined columns selected
  # sims_plots_by_var <- 
  #   furrr::future_map(sims_results, ~sims_plots(sims_data_frames = sims_results, var = var[1])
  #   )

  
  # Combine all models into one page plot
  combo_plot <- do.call(ggpubr::ggarrange, c(sims_plots_by_var, nrow = length(model_names))) + theme(plot.margin = margin(0.1,0.1,0.1,0.1, "cm"))
  text <- paste0("<b><span style = 'color:#007582;'>EM Median</span></b> and <b><span style = 'color:#002364;'>OM Median</span></b>. <b>EM 95% quantile is shadded gray.<b>")
  full_plot <- annotate_figure(combo_plot,
                               bottom = gridtext::richtext_grob(text))
  
  if(!(file.path(dir, "sims_plots") %in% list.dirs(dir, recursive = FALSE))){
    dir.create("sims_plots")
  }
  
  ggsave(paste0("sims_plots/",var[i],"_plots.png"), plot = full_plot)
  
  plot_list[[i]] <- full_plot
  plot_list[[i]]$var <- var[i]
  }
}



run_compars <- function(model_names,
                        dir,
                        new_filename,
                        sims_models,
                        model_ran
                        ){
  # Get summary output
  plot_path <- file.path(dir, new_filename, paste0(model_names,"_plots"))
  plot_path_present <- grep(plot_path, sims_models, value =TRUE)
  if(is.null(plot_path_present)){
    dir.create(path = plot_path)
  }
  
  
  model_names <- paste0(model_names,"-")
  model_match <- grep(model_names[!grepl("plots", model_names)][1], sims_models, value = TRUE)
  model_match <- model_match[!grepl("plots", model_match)]
  oms <- grep("-om_",basename(model_match), value = TRUE)
  model_ran <- model_ran$model_name
  model_lookup <- c(model_ran, oms)
  
  
  model_match <- model_match[basename(model_match) %in% model_lookup]
  
  
  sims_output <- SSgetoutput(dirvec = model_match)
  sims_summary <- SSsummarize(sims_output)
  
  model_labels <- gsub(model_names,"", basename(model_match))
  model_labels <- gsub("iteration","i", model_labels)
  # sims_summary$modelnames <- model_labels
  
  # Put correct names for data (not replist #)
  sims_data_frames <- sims_summary[sapply(sims_summary, class) == "data.frame"]
  for(i in 1:length(sims_data_frames)){
    
    # For columns that say replist
    if(all(names(sims_data_frames[[i]]) %in% c("imodel","model")) == FALSE){
      max_length <- length(names(sims_data_frames[[i]])) - length(which(grepl("Yr|Label|recdev",names(sims_data_frames[[i]])) == TRUE))
      names(sims_data_frames[[i]])[1:max_length] <- model_labels
    }
    # there are 3 data frames that don't have replist# as column names
    else{
      colnames(sims_data_frames[[i]])[colnames(sims_data_frames[[i]]) %in% c("name","model")] = "model"
      count_number <- sims_data_frames[[i]] |>
        dplyr::count(model) |>
        dplyr::distinct(n)
      sims_data_frames[[i]]$model <- rep(model_labels, each = count_number[[1]])
    }
  }
  sims_data_frames
}



sims_plots <- function(sims_data_frames,
                       var){
   model_name <- names(sims_data_frames)
   sims_new <- sims_data_frames[[model_name]]
   sims_var <- as.data.frame(sims_new[[var]])
   
   sims_var$om_Median <- apply(sims_var[,grep("om_", colnames(sims_var))], 1, median)

   # Get EM 95% quantile, 5% quantile, median
   em_names <- unique(gsub("-.*", "", grep("em_",colnames(sims_var), value = TRUE)))
   for(i in 1:length(em_names)){
     # median
     sims_var[,paste0(em_names[i],"_Median")] <- apply(sims_var[,grep(em_names[i], colnames(sims_var))], 1, median)
     #95% quantile
     sims_var[,paste0(em_names[i],"_95%")] <- apply(sims_var[,grep(em_names[i], colnames(sims_var))], 1, quantile, 0.95)
     #5% quantile
     sims_var[,paste0(em_names[i],"_5%")] <- apply(sims_var[,grep(em_names[i], colnames(sims_var))], 1, quantile, 0.05)
   }
   
   # Reshape
   sims_var_new <- sims_var[,min(grep("Yr|Label|recdev$",colnames(sims_var))):ncol(sims_var)]
   sims_var_new <- sims_var_new[,grep("recdev$", colnames(sims_var_new), invert = TRUE)]
   sims_var_new <- sims_var_new |>
     tidyr::pivot_longer(om_Median:ncol(sims_var_new), names_to = "model_type", values_to = "value") |>
     tidyr::separate(model_type, into = c("Model", "Stat"), sep = "_(?=[^_]+$)") |>
     tidyr::pivot_wider(names_from = Stat, values_from = value)
    
   # Plot
   # if(length(em_names) %% 2 != 0){n = (length(em_names)+1)/2}
   sims_var_om <- sims_var_new |>
     dplyr::filter(Model== "om") |>
     dplyr::select(-Model)
    
   sims_var_em <- sims_var_new |>
     dplyr::filter(Model %in% em_names) |>
     dplyr::mutate(Model = gsub("^[^_]*_","", Model))
    
   sims_plot_output <- ggplot2::ggplot(sims_var_em, aes(Yr, Median)) +
     facet_wrap(~Model, nrow = 1, ncol = length(em_names), scales = "free") +
     geom_ribbon(aes(ymin = `5%`, ymax = `95%`, fill = "95% quantile"), linetype = 0, show.legend = FALSE) +
     geom_line(linewidth = 1,  color = "#007582") +
     geom_line(data = sims_var_om, linewidth = 1.2, linetype = 2, color = "#002364") +
     scale_fill_manual("", values = "#d3d3d3") +
     theme_classic() +
     theme(
       strip.background = element_rect(fill = "#007582", color = "#002364", ),
       strip.text = element_textbox(size = 8, color = "white", face = "bold"),
       plot.title.position = "plot",
       plot.title = element_markdown(size = 11, lineheight = 1.2, face = "bold"),
       axis.title = element_text(size = 10),
       axis.text = element_text(size = 6),
       plot.margin = margin(0,0,0,0, "cm")
     ) +
     labs(
       title = stringr::str_to_title(gsub("_"," ", model_name)),
       x = "Year",
       y = stringr::str_to_title(var))
   
   sims_plot_output
 }

# One diagnostic that would be useful is which of the estimation models converged - already have

# 3 plots for each SSplotComparisons
# get polygons for median om, median recdev 1, quantiles recdev 1
# get polygons for median om, median recdev 2, quantiles recdev 2
# get polygons for median om, median recdev 3, quantiles recdev 3
# mylist[["n"]] <- n
# mylist[["npars"]] <- npars
# mylist[["modelnames"]] <- modelnames
# mylist[["maxgrad"]] <- maxgrad
# mylist[["nsexes"]] <- nsexes
# mylist[["startyrs"]] <- startyrs
# mylist[["endyrs"]] <- endyrs
# mylist[["pars"]] <- copy.dm(pars)
# mylist[["parsSD"]] <- copy.dm(parsSD)
# mylist[["parphases"]] <- copy.dm(parphases)
# mylist[["par_prior_likes"]] <- copy.dm(par_prior_likes)
# mylist[["quants"]] <- quants
# mylist[["quantsSD"]] <- quantsSD
# mylist[["likelihoods"]] <- likelihoods
# mylist[["likelambdas"]] <- likelambdas
# mylist[["likelihoods_by_fleet"]] <- likelihoods_by_fleet
# mylist[["likelihoods_by_tag_group"]] <- likelihoods_by_tag_group
# mylist[["SpawnBio"]] <- sort.fn(SpawnBio)
# mylist[["SpawnBioSD"]] <- sort.fn(SpawnBioSD)
# mylist[["SpawnBioLower"]] <- sort.fn(SpawnBioLower)
# mylist[["SpawnBioUpper"]] <- sort.fn(SpawnBioUpper)
# mylist[["Bratio"]] <- sort.fn(Bratio)
# mylist[["BratioSD"]] <- sort.fn(BratioSD)
# mylist[["BratioLower"]] <- sort.fn(BratioLower)
# mylist[["BratioUpper"]] <- sort.fn(BratioUpper)
# mylist[["SPRratio"]] <- sort.fn(SPRratio)
# mylist[["SPRratioSD"]] <- sort.fn(SPRratioSD)
# mylist[["SPRratioLower"]] <- sort.fn(SPRratioLower)
# mylist[["SPRratioUpper"]] <- sort.fn(SPRratioUpper)
# mylist[["SPRratioLabels"]] <- SPRratioLabels
# mylist[["Fvalue"]] <- sort.fn(Fvalue)
# mylist[["FvalueSD"]] <- sort.fn(FvalueSD)
# mylist[["FvalueLower"]] <- sort.fn(FvalueLower)
# mylist[["FvalueUpper"]] <- sort.fn(FvalueUpper)
# mylist[["FvalueLabels"]] <- FvalueLabels
# mylist[["sprtargs"]] <- sprtargs
# mylist[["btargs"]] <- btargs
# mylist[["minbthreshs"]] <- minbthreshs
# mylist[["recruits"]] <- sort.fn(recruits)
# mylist[["recruitsSD"]] <- sort.fn(recruitsSD)
# mylist[["recruitsLower"]] <- sort.fn(recruitsLower)
# mylist[["recruitsUpper"]] <- sort.fn(recruitsUpper)
# mylist[["recdevs"]] <- merge.duplicates(sort.fn(recdevs))
# mylist[["recdevsSD"]] <- merge.duplicates(sort.fn(recdevsSD))
# mylist[["recdevsLower"]] <- merge.duplicates(sort.fn(recdevsLower))
# mylist[["recdevsUpper"]] <- merge.duplicates(sort.fn(recdevsUpper))
# mylist[["growth"]] <- growth
# mylist[["sizesel"]] <- sizesel
# mylist[["agesel"]] <- agesel
# mylist[["indices"]] <- indices
# mylist[["InitAgeYrs"]] <- InitAgeYrs
# mylist[["lowerCI"]] <- lowerCI
# mylist[["upperCI"]] <- upperCI
# mylist[["SpawnOutputUnits"]] <- SpawnOutputUnits
# mylist[["FleetNames"]] <- FleetNames