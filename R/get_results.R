get_results <- function(model_dir){
  scenarios <- list.files(model_dir, pattern = "em_*", full.names = TRUE)
  
  scalar_all <- data.frame()
  timeseries_all <- data.frame()
  derived_all <- data.frame()
  
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
}