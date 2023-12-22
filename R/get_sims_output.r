#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#'
#' @import purrr
#' @import utils
#' @import r4ss
#' @import ggplot2
#' @import ggpubr
#' 
#' @return
#' @export
#'
#' 
get_sims_output <- function(dir = dir, 
                            new_filename = "unnested_iterations",
                            file_copy = TRUE,
                            df = df){
  
  # copy om model folders over
  if(file_copy == TRUE){
    mod_om <- list.dirs(file.path(dir, "models"), recursive = FALSE)
    om_files <- list.files(mod_om, pattern = "om_", full.names = TRUE)
    file.copy(om_files, file.path(dir, new_filename), recursive = TRUE, overwrite = TRUE)
  }
  
  #now get output
  sims_models <- list.dirs(file.path(dir, new_filename), recursive = FALSE)
  model_names <- unique(gsub("-.*","",basename(sims_models)))

  ncores <- parallel::detectCores() - 1 
  future::plan(multisession, workers = ncores)

  sims_results <- furrr::future_map(model_names, ~run_plot_compars(
    model_names = .x,
    dir = dir,
    new_filename = new_filename,
    sims_models = sims_models
  ))
  }


run_plot_compars <- function(model_names,
                             dir,
                             new_filename,
                             sims_models
                             ){
  # Get summary output
  model_names <- model_names[1]
  plot_path <- file.path(dir, new_filename, paste0(model_names,"_plots"))
  plot_path_present <- grep(plot_path, sims_models, value =TRUE)
  if(is.null(plot_path_present)){
    dir.create(path = plot_path)
  }
  model_match <- grep(model_names[!grepl("plots", model_names)][1], sims_models, value = TRUE)
  model_match <-model_match[!grepl("plots", model_match)]
  sims_output <- SSgetoutput(dirvec = model_match)
  sims_summary <- SSsummarize(sims_output)
  
  model_labels <- gsub(paste0(model_names,"-"),"", basename(model_match))
  model_labels <- gsub("iteration","i", model_labels)
  sims_summary$modelnames <- model_labels
  
  # Put correct names for data (not replist #)
  sims_data_frames <- sims_summary[sapply(sims_summary, class) == "data.frame"]
  
  for(i in 1:length(sims_data_frames)){
    if(length(names(sims_data_frames[[i]])) %in% c(40,41,42,43)){
      names(sims_data_frames[[i]])[1:40] <- model_labels
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
  
  
  
  # For SpawnBio Specifically, need to figure out how to do it for all
  # Get OM medians 
  sims_data_frames$SpawnBio$om_median <- apply(sims_data_frames$SpawnBio[, grepl("om_", colnames(sims_data_frames$SpawnBio))], 1, median)
  
  # Get EM 95% quantile, 5% quantile, median
  em_names <- unique(gsub("-.*", "", grep("em_",colnames(sims_data_frames$SpawnBio), value = TRUE)))
  for(i in 1:length(em_names)){
    # median
    name_i <- paste0(em_names[i],"_Median")
    sims_data_frames$SpawnBio[, name_i] <- apply(sims_data_frames$SpawnBio[, grepl(em_names[i], colnames(sims_data_frames$SpawnBio))], 1, median)
    #95% quantile
    name_i <- paste0(em_names[i],"_95%")
    sims_data_frames$SpawnBio[, name_i] <- apply(sims_data_frames$SpawnBio[, grepl(em_names[i], colnames(sims_data_frames$SpawnBio))], 1, quantile, 0.95)
    #5% quantile
    name_i <- paste0(em_names[i],"_5%")
    sims_data_frames$SpawnBio[, name_i] <- apply(sims_data_frames$SpawnBio[, grepl(em_names[i], colnames(sims_data_frames$SpawnBio))], 1, quantile, 0.05)
  }
  
  # Reshape
  spawn_bio_new <- sims_data_frames$SpawnBio[,41:ncol(sims_data_frames$SpawnBio)]
  spawn_bio_new <- spawn_bio_new |>
    tidyr::pivot_longer(3:ncol(spawn_bio_new), names_to = "model_type", values_to = "value") |>
    tidyr::separate(model_type, into = c("Model", "Stat"), sep = "_(?=[^_]+$)") |>
    tidyr::pivot_wider(names_from = Stat, values_from = value)
  
  # Plot
    if(length(em_names) %% 2 != 0){n = (length(em_names)+1)/2}
    spawn_bio_om <- spawn_bio_new |>
      dplyr::filter(Model== "om") |>
      dplyr::select(-Model)
      
    spawn_bio_em <- spawn_bio_new |>
      dplyr::filter(Model %in% em_names) |>
      dplyr::mutate(Model = gsub("^[^_]*_","", Model))
    
    df <- spawn_bio_em |>
        dplyr::group_by(Model) |>
        mutate(max_Yr = max(Yr)) |>
        dplyr::ungroup() |>
        dplyr::filter(Yr == max_Yr) |>
        mutate(median = `95%` *1.15,
               Yr = Yr - 5,
               label = "95% quantile")
    
    ggplot2::ggplot(spawn_bio_em, aes(Yr, median)) +
      facet_wrap(~Model, nrow = n, ncol = n, scales = "free") +
      geom_ribbon(aes(ymin = `5%`, ymax = `95%`, fill = "95% quantile"), alpha = 0.3, linetype = 0, show.legend = FALSE) +
      geom_line(linewidth = 1.2,  color = "#00797F") +
      geom_line(data = spawn_bio_om, linewidth = 1.2, linetype = 2, color = "#323C46") +
      scale_fill_manual("", values = "#1f1f1f") +
      theme_classic() +
      theme(
        strip.background = element_rect(fill = "#00797F", color = "#323C46"),
        strip.text = element_textbox(
          size = 12,
          color = "white"),
        plot.title.position = "plot",
        plot.title = element_markdown(size = 11, lineheight = 1.2)
      ) +
      geom_text(
        data = df,
        aes(label = label),
        color = "#1f1f1f",
        show.legend = FALSE
      ) +
      labs(title = "<span style = 'font-size:14pt;'>SSB for <span style = 'color:#00797F;'>EM Median</span>,
           <span style = 'color:#323C46;'>OM Median</span>, and <span style = 'color:#1f1f1f;'>EM 95% quantile</span> for recdev option 1, 2, and 3",
           y = "SSB",
           x = "Year")

    
    # For SpawnBio Specifically, need to figure out how to do it for all
    # Get OM medians 
    var <- "recdevs"
    
    sims_var <- sims_data_frames[[var]]
    sims_var$om_Median <- apply(sims_var[, grepl("om_", colnames(sims_var))], 1, median)
    
    # Get EM 95% quantile, 5% quantile, median
    em_names <- unique(gsub("-.*", "", grep("em_",colnames(sims_var), value = TRUE)))
    for(i in 1:length(em_names)){
      # median
      name_i <- paste0(em_names[i],"_Median")
      sims_var[, name_i] <- apply(sims_var[, grepl(em_names[i], colnames(sims_var))], 1, median)
      #95% quantile
      name_i <- paste0(em_names[i],"_95%")
      sims_var[, name_i] <- apply(sims_var[, grepl(em_names[i], colnames(sims_var))], 1, quantile, 0.95)
      #5% quantile
      name_i <- paste0(em_names[i],"_5%")
      sims_var[, name_i] <- apply(sims_var[, grepl(em_names[i], colnames(sims_var))], 1, quantile, 0.05)
    }
    
    # Reshape
    sims_var_new <- sims_var[,41:ncol(sims_var)]
    sims_var_new <- sims_var_new |>
      tidyr::pivot_longer(3:ncol(sims_var_new), names_to = "model_type", values_to = "value") |>
      tidyr::separate(model_type, into = c("Model", "Stat"), sep = "_(?=[^_]+$)") |>
      tidyr::pivot_wider(names_from = Stat, values_from = value)
    
    # Plot
    if(length(em_names) %% 2 != 0){n = (length(em_names)+1)/2}
    sims_var_om <- sims_var_new |>
      dplyr::filter(Model== "om") |>
      dplyr::select(-Model)
    
    sims_var_em <- sims_var_new |>
      dplyr::filter(Model %in% em_names) |>
      dplyr::mutate(Model = gsub("^[^_]*_","", Model))
    
    df <- sims_var_em |>
      dplyr::group_by(Model) |>
      mutate(max_Yr = max(Yr)) |>
      dplyr::ungroup() |>
      dplyr::filter(Yr == max_Yr) |>
      mutate(median = `95%` *1.15,
             Yr = Yr - 5,
             label = "95% quantile")
    
    ggplot2::ggplot(sims_var_em, aes(Yr, median)) +
      facet_wrap(~Model, nrow = n, ncol = n, scales = "free") +
      geom_ribbon(aes(ymin = `5%`, ymax = `95%`, fill = "95% quantile"), alpha = 0.3, linetype = 0, show.legend = FALSE) +
      geom_line(linewidth = 1.2,  color = "#00797F") +
      geom_line(data = sims_var_om, linewidth = 1.2, linetype = 2, color = "#323C46") +
      scale_fill_manual("", values = "#1f1f1f") +
      theme_classic() +
      theme(
        strip.background = element_rect(fill = "#00797F", color = "#323C46"),
        strip.text = element_textbox(
          size = 12,
          color = "white"),
        plot.title.position = "plot",
        plot.title = element_markdown(size = 11, lineheight = 1.2)
      ) +
      geom_text(
        data = df,
        aes(label = label),
        color = "#1f1f1f",
        show.legend = FALSE
      ) +
      labs(title = "<span style = 'font-size:14pt;'>SSB for <span style = 'color:#00797F;'>EM Median</span>,
           <span style = 'color:#323C46;'>OM Median</span>, and <span style = 'color:#1f1f1f;'>EM 95% quantile</span> for recdev option 1, 2, and 3",
           y = "SSB",
           x = "Year")
    
  # Attempt to figure out how to do it for all
  # Get OM medians 
  get_var_plot <- function(var, sims_data_frames){
    
  dat <- which(names(sims_data_frames) == var)
  sims_data_frames[[dat]]$om_median <- apply(sims_data_frames[[dat]][, grepl("om_", colnames(sims_data_frames[[dat]]))], 1, median)
  
  # Get EM 95% quantile, 5% quantile, median
  em_names <- unique(gsub("-.*", "", grep("em_",colnames(sims_data_frames[[dat]]), value = TRUE)))
  for(i in 1:length(em_names)){
    # median
    name_i <- paste0(em_names[i],"_median")
    sims_data_frames[[dat]][, name_i] <- apply(sims_data_frames[[dat]][, grepl(em_names[i], colnames(sims_data_frames[[dat]]))], 1, median)
    #95% quantile
    name_i <- paste0(em_names[i],"_95%")
    sims_data_frames[[dat]][, name_i] <- apply(sims_data_frames[[dat]][, grepl(em_names[i], colnames(sims_data_frames[[dat]]))], 1, quantile, 0.95)
    #5% quantile
    name_i <- paste0(em_names[i],"_5%")
    sims_data_frames[[dat]][, name_i] <- apply(sims_data_frames[[dat]][, grepl(em_names[i], colnames(sims_data_frames[[dat]]))], 1, quantile, 0.05)
  }
  
  # Reshape
  dat_new <- sims_data_frames[[dat]][,41:ncol(sims_data_frames[[dat]])]
  dat_new <- dat |>
    tidyr::pivot_longer(3:ncol(dat), names_to = "model_type", values_to = "value") |>
    tidyr::separate(model_type, into = c("Model", "Stat"), sep = "_(?=[^_]+$)") |>
    tidyr::pivot_wider(names_from = Stat, values_from = value)
  
  # Plot
  plotList <- lapply(
    em_names,
    function(i, dat_new, var){
      dat_i <- dat_new |>
        dplyr::filter(Model %in% c(i, "om")) |>
        dplyr::mutate(Model = gsub("_.*","", Model))
      
      x <- ggplot2::ggplot(dat_i, aes(Yr, median, colour = Model, linetype = Model)) +
        geom_ribbon(aes(ymin = `5%`, ymax = `95%`, fill = "95% quantile"), alpha = 0.3, linetype = 0) +
        geom_line(size = 1.2) +
        scale_colour_manual("Median", values = c("#00797F","#323C46")) +
        scale_linetype_manual("Median", values = c("solid", "dashed")) +
        scale_fill_manual("", values = "grey12") +
        labs(title = gsub("em_", "", i), y = var, x = "Year") + #need to change this so it's more modular for not just recdev
        theme_classic()
      x
    }, spawn_bio_new, var
  )
  if(length(em_names) %% 2 != 0){n = (length(em_names)+1)/2}
  allplots <- ggarrange(plotlist = plotList,
                        ncol = n, nrow = n)
  allplots
  
  }
  
  
  sims_summary$recruitsUpper
  # sims_summary$SpawnBio - get median and 5% and 95% polygon of quantiles for iters and median for oms
  # sims_summary$recdevs - get median and 5% and 95% polygon of quantiles for iters and median for oms
  
  # SSplotComparisons(sims_summary, plot = FALSE, print = TRUE, 
  #                   plotdir = plot_path,
  #                   legendlabels = model_labels,
  #                   legendncol = 2,
  #                   par = list(cex.lab = 0.7))
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