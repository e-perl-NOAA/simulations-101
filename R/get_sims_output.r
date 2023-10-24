#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#'
#' @import purrr
#' @import utils
#' @import r4ss
#' 
#' @return
#' @export
#'
#' 
get_sims_output <- function(dir = dir, 
                            new_filename = "unnested_iterations"){
  
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
  plot_path <- file.path(dir, new_filename, paste0(model_names[1],"_plots"))
  if(! plot_path %in% sims_models){
    dir.create(path = plot_path)
  }
  model_match <- grep(model_names[1], sims_models, value = TRUE)
  model_match <-model_match[!grepl("plots", model_match)]
  sims_output <- SSgetoutput(dirvec = model_match)
  sims_summary <- SSsummarize(sims_output)
  
  model_labels <- gsub(paste0(model_names[1],"-"),"", basename(model_match))
  model_labels <- gsub("iteration","i", model_labels)
  sims_summary$modelnames <- model_labels
  
  SSplotComparisons(sims_summary, plot = FALSE, print = TRUE, 
                    plotdir = plot_path,
                    legendlabels = model_labels)
}





