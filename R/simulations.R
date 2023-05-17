setwd("/Users/elizabethgugliotti/Documents/github_repos/simulations-101")
#install.packages("pak") # if needed
#pak::pkg_install("r4ss/r4ss")
library(r4ss)
  
dir <- getwd()
dirs <- list.dirs(dir, recursive = FALSE, full.names = TRUE)

# create em data frame
em_df<- data.frame(
  em_names = c("recdev_1", "recdev_2", "recdev_3"),
  config_file = c("ctl", "ctl", "ctl"),
  var_change = c("do_recdev", "do_recdev", "do_recdev"),
  new_val = c(1, 1, 2))

create_om_models(model_dir = dirs[8],
                 iterations = 5,
                 exe_filepath = file.path(dir, "ss_win.exe"))

# Copy the bootstrap files from the om iterations and the configuration files 
# from the overall directory to the em > iteration file folders
copy_files_to_em(model_dir = dirs[8], 
                 df = em_df)

# Change the em config files based on the df
change_run_em(model_dir = dirs[8], 
              df = em_df, 
              exe_filepath = file.path(dir, "ss_win.exe"))

create_om_models(model_dir = model_dir,
                  iterations = iterations,
                  exe_filepath = exe_filepath)
  
# Copy the bootstrap files from the om iterations and the configuration files 
# from the overall directory to the em > iteration file folders
copy_files_to_em(model_dir = model_dir, 
                  df = df)
  
# Change the em config files based on the df
change_run_em(model_dir = model_dir, 
              df = df, 
              exe_filepath = exe_filepath)


# Get results out of simulations, this really depends on what info is required to 
# get out of the em scenario iterations and the om iterations
scenario <- list.files(dirs[8], pattern = "em_*", full.names = TRUE)[3]
iterations <- list.files(scenario , full.names = TRUE)

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
scalar$scenario <- timeseries$scenario <- derived$scenarios <- basename(scenario)

scalar.df <- rbind(scalar.df, scalar)
timeseries.df <- rbind(timeseries.df, timeseries)
derived.df <- rbind(derived.df, derived)
}

utils::write.csv(scalar.df, file = paste0(scenario, "/results_scalar_", basename(scenario), ".csv"), row.names = FALSE)
utils::write.csv(timeseries.df, file = paste0(scenario, "/results_timeseries_", basename(scenario), ".csv"), row.names = FALSE)
utils::write.csv(derived.df, file = paste0(scenario, "/results_derived_", basename(scenario), ".csv"), row.names = FALSE)


scalar_all <- data.frame()
scalar_all <- rbind(scalar.all, scalar.df)



### Things to do
# * get the output from the em runs
# * apply or do.call? for having functions go over all test model files
# * om_df if need to change settings in om, right now assuming changes to om will be done manually initially
# * figure out parallel

#    r4ss::copy_SS_inputs()
#    r4ss::file_increment()
#    r4ss::SSgetoutput()
    
    
#    replist <- SS_output(
#      dir = dirs[1],
#      verbose = TRUE,
#      printstats = TRUE
#    )
    
#    SS_plots(replist)