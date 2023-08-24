#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#'
#' @import purrr
#' @import utils
#' @import ss3sim
#' @import r4ss
#' 
#' @return
#' @export
#'

get_all_results <- function(dir, new_filename){
  
  model_dir <- list.dirs(grep(new_filename, list.dirs(dir, recursive = FALSE, full.names = TRUE), value = TRUE), recursive = FALSE, full.names = TRUE)
  
  scalar_all <- data.frame()
  timeseries_all <- data.frame()
  derived_all <- data.frame()
  
  purrr::map(model_dir, ~ get_results(
    model_dir = .x,
    new_filename = new_filename))
  
  scalar_all <- do.call(rbind, scalar)
  timeseries_all <- do.call(rbind, timeseries)
  derived_all <- do.call(rbind, derived)
  
  utils::write.csv(scalar_all, file = file.path(dir, new_filename, "/results_scalar", ".csv"), row.names = FALSE)
  utils::write.csv(timeseries_all, file = file.path(dir, new_filename, "/results_timeseries", ".csv"), row.names = FALSE)
  utils::write.csv(derived_all, file = file.path(dir, new_filename, "results_derived", ".csv"), row.names = FALSE)
}


#' Get results from iterations base
#'
#' @param model_dir 
#' @param new_filename
#'
#' @import ss3sim
#' @import r4ss
#' 
#' @return
#' @export
#'
get_results <- function(model_dir, new_filename){
  mod_scen_iter<- basename(model_dir)
  model <- gsub("-em_.*", "", mod_scen_iter)
  scenario <- gsub(".*-em_|-iteration.*", "", mod_scen_iter)
  iteration <- gsub(".*-iteration_", "", mod_scen_iter)
  
  report <- r4ss::SS_output(model_dir,
                            forefile = "Forecast-report.sso",
                            covar = FALSE,
                            verbose = FALSE,
                            compfile = NULL,
                            warn = FALSE,
                            readwt = FALSE,
                            printstats = FALSE)
  
  scalar <- ss3sim::get_results_scalar(report)
  timeseries <- ss3sim::get_results_timeseries(report)
  derived <- ss3sim::get_results_derived(report)
  scalar$model <- timeseries$scenarios <- derived$scenarios <- model
  scalar$scenario <- timeseries$scenarios <- derived$scenarios <- scenario
  scalar$iteration <- timeseries$model_run <- derived$model_run <- iteration
}
  
  
  
  for(s in seq_along(scenarios)){
    iterations <- list.files(scenarios[s], full.names = TRUE)
    
    scalar.df <- data.frame()
    timeseries.df <- data.frame()
    derived.df <- data.frame()
    
    for(i in seq_along(iterations)){
      report <- r4ss::SS_output(iterations[i],
                                forefile = "Forecast-report.sso",
                                covar = FALSE,
                                verbose = FALSE,
                                compfile = NULL,
                                warn = FALSE,
                                readwt = FALSE,
                                printstats = FALSE)
      scalar <- ss3sim::get_results_scalar(report)
      timeseries <- ss3sim::get_results_timeseries(report)
      derived <- ss3sim::get_results_derived(report)
      scalar$model_run <- timeseries$model_run <- derived$model_run <- basename(iterations[i])
      scalar$scenario <- timeseries$scenarios <- derived$scenarios <- basename(scenarios[s])
      
      scalar.df <- rbind(scalar.df, scalar)
      timeseries.df <- rbind(timeseries.df, timeseries)
      derived.df <- rbind(derived.df, derived)
    }
    utils::write.csv(scalar.df, file = paste0(scenarios[s], "/results_scalar_", basename(scenarios[s]), ".csv"), row.names = FALSE)
    utils::write.csv(timeseries.df, file = paste0(scenarios[s], "/results_timeseries_", basename(scenarios[s]), ".csv"), row.names = FALSE)
    utils::write.csv(derived.df, file = paste0(scenarios[s], "/results_derived_", basename(scenarios[s]), ".csv"), row.names = FALSE)
    
    scalar_all <- rbind(scalar_all, scalar.df)
    timeseries_all <- rbind(timeseries_all, timeseries.df)
    derived_all <- rbind(derived_all, derived.df)
  }