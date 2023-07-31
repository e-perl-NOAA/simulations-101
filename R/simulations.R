#install.packages("pak") # if needed
pak::pkg_install("r4ss/r4ss")
library(furrr)
#library(r4ss)
  
dir <- getwd()
dirs <- list.dirs(dir, recursive = FALSE, full.names = TRUE)
dirs <- subset(dirs, !grepl(dirs, pattern = ".Rproj.user"))
dirs <- grep('.git', dirs, fixed = TRUE, value = TRUE, invert = TRUE)
dirs <- grep(paste0(dir, "/R"), dirs, fixed = TRUE, value = TRUE, invert = TRUE, ignore.case = FALSE)
dirs <- grep(paste0(dir, "/.Rproj.user"), dirs, fixed = TRUE, value = TRUE, invert = TRUE, ignore.case = FALSE)

# create em data frame
em_df<- data.frame(
  em_names = c("recdev_1", "recdev_2", "recdev_3"),
  config_file = c("ctl", "ctl", "ctl"),
  var_change = c("do_recdev", "do_recdev", "do_recdev"),
  new_val = c(1, 1, 2))

# These will become the "iterations" in the ems
create_om_models(model_dir = dirs,
                 iterations = 2,
                 exe_filepath = file.path(dir, "ss_win.exe"))

# Copy the bootstrap files from the om iterations and the configuration files 
# from the overall directory to the em > iteration file folders
copy_files_to_em(model_dir = dirs, 
                 df = em_df)

# Change the em config files based on the df
change_run_em(model_dir = dirs[1:3], 
              df = em_df, 
              exe_filepath = file.path(dir, "ss_win.exe"))

change_run_em(model_dir = dirs[4],
              df = em_df,
              exe_filepath = file.path(dir, "ss_win.exe"))
  

# Bias correction test
dir_iter <- list.files(list.files(dirs[2], pattern = "em_*", full.names = TRUE)[2], full.names = TRUE)[2]
dir_iter_number <- stringr::str_sub(dir_iter, start= -2)


start <- r4ss::SS_readstarter(
  file = file.path(dir_iter, "starter.ss"),
  verbose = FALSE)

ctl_file_in <- file.path(dir_iter, start$ctlfile)

replist <- r4ss::SS_output(
  dir = dir_iter,
  forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE)


bias <- r4ss::SS_fitbiasramp(replist,
                     plotdir = dir_iter,
                     plot = TRUE, 
                     print = FALSE,
                     oldctl = ctl_file_in,
                     newctl = ctl_file_in,
                     startvalues = NULL,
                     method = "BFGS", # c("Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN")
                     altmethod = "nlminb",
                     verbose = FALSE, transform = FALSE, exclude_forecast = FALSE,
                     twoplots = TRUE)

#if (bias$newbias$convergence != 0) {
#  bias <- r4ss::SS_fitbiasramp(replist,
#                               plotdir = dir_iter,
#                               oldctl = ctl_file_in,
#                               newctl = ctl_file_in,
#                               startvalues = bias$newbias$par,
#                               method = "BFGS", # c("Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN")
#                               altmethod = "alt",
#                               verbose = FALSE, transform = FALSE, exclude_forecast = FALSE,
#                               twoplots = TRUE, plot = FALSE, print = TRUE, shownew = TRUE)
# }

# if the it is the 1st or 2nd iteration, rename the report, ss_summary, and 
# plots to have the no_bias_adjust at the end so you can look at those later and
# make sure everything looks okay.

#if(dir_iter_number %in% c("_1", "_2")){
#r4ss::SS_plots(replist)
#file.rename(file.path(dir_iter, "plots"), file.path(dir_iter, "plots_no_bias_adjust"))
#file.rename(file.path(dir_iter, "Report.sso"), file.path(dir_iter, "Report_no_bias_adjust.sso"))
#file.rename(file.path(dir_iter, "ss_summary.sso"), file.path(dir_iter, "ss_summary_no_bias_adjust.sso"))
#}

# re-run after implementing the bias adjustment
r4ss::run(dir = dir_iter, exe = exe_filepath)

# if the it is the 1st or 2nd iteration, create a second plots folder so that 
# you can compare with the no_bias_adjust plots as well as compare the new
# Report and ss_summary that have the bias adjust with the no_bias_adjust
# renamed previously

#if(dir_iter_number %in% c("_1", "_2")){
#replist <- r4ss::SS_output(
#  dir = dir_iter,
#  forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE)
#r4ss::SS_plots(replist)
#file.rename(file.path(dir_iter, "plots"), file.path(dir_iter, "plots_bias_adjust"))
#}



# Get results out of simulations, this really depends on what info is required to 
# get out of the em scenario iterations and the om iterations
scenario <- list.files(dirs[4], pattern = "em_*", full.names = TRUE)[3]
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

# Parallel - example for r4ss
dirs <- model_directory_names
tic()
plan(multisession, workers = 3)
furrr::future_map(dirs, ~ r4ss::run(
  dir = file.path("inst/extdata/simple_small/tests", .x),
  exe = "ss_win", verbose = FALSE, skipfinished = FALSE
))
toc()

sudo cp -Rvf ss /usr/local/ss
sudo ln -sf /usr/local/ss /usr/local/bin/ss
### Things to do
# * fit bias ramp in EMs
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