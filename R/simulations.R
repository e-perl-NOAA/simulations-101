#install.packages("pak") # if needed
# pak::pkg_install("r4ss/r4ss")
library(furrr)
library(r4ss)
  
dir <- getwd()
# dirs <- list.dirs(dir, recursive = FALSE, full.names = TRUE)
# 
# dirs <- subset(dirs, !grepl(dirs, pattern = ".Rproj.user"))
# dirs <- grep('.git', dirs, fixed = TRUE, value = TRUE, invert = TRUE)
# dirs <- grep('new_unnested_iterations', dirs, fixed = TRUE, value = TRUE, invert = TRUE)
# dirs <- grep(paste0(dir, "/R"), dirs, fixed = TRUE, value = TRUE, invert = TRUE, ignore.case = FALSE)
# dirs <- grep(paste0(dir, "/.Rproj.user"), dirs, fixed = TRUE, value = TRUE, invert = TRUE, ignore.case = FALSE)

# Try flattening out the nested folders (rename function)

# create em data frame
em_df<- data.frame(
  em_names = c("recdev_1", "recdev_2", "recdev_3"),
  config_file = c("ctl", "ctl", "ctl"),
  var_change = c("do_recdev", "do_recdev", "do_recdev"),
  new_val = c(1, 1, 2))


# These will become the "iterations" in the ems
# probably need to make this run in parallel too
# start_time <- Sys.time()
# create_om_models(model_dir = dirs,
#                  iterations = 10,
#                  exe_filepath = file.path(dir, "ss_win.exe"))
# stop_time <- Sys.time()
# no_parallel_time <- stop_time - start_time
# 9.91 min

start_time <- Sys.time()
create_om_models_parallel(dir = dir,
                          iterations = 10,
                          exe_filepath = file.path(dir, "ss_win.exe"))
stop_time <- Sys.time()
parallel_time <- stop_time - start_time
# 7.59 min

# Copy the bootstrap files from the om iterations and the configuration files 
# from the overall directory to the em > iteration file folders
# this runs fast without having to parallelize it
# copy_files_to_em(model_dir = dirs, 
#                  df = em_df)
start_time <- Sys.time()
copy_files_to_em_unnested(dir = dir, 
                 df = em_df,
                 new_filename = "unnested_iterations")
stop_time <- Sys.time()
copy_files_time <- stop_time - start_time

# Model folders in parallel
# start_time <- Sys.time()
# change_run_em(model_dir = dirs,
#               df = em_df,
#               exe_filepath = file.path(dir, "ss_win.exe"))
# stop_time <- Sys.time()
# time_purr_models_in_parallel <- stop_time - start_time
# ~56 minutes (2 iterations)
# With 10 iterations it was taking forever
# Note:mclapply in parallel package does not work on windows

# EM in parallel
# start_time <- Sys.time()
# change_run_em_parallel(model_dir = dirs, 
#                             df = em_df, 
#                             exe_filepath = file.path(dir, "ss_win.exe"))
# stop_time <- Sys.time()
# time_purr_em_in_parallel <- stop_time - start_time
# With 10 iterations x 3 EMs this took 4.06 hours
# Total of 180 models run, the first 2 iters run twice, so really 216 models run


# Iterations in parallel
# This for some reason takes longer
# start_time <- Sys.time()
# change_run_em_parallel_iter(model_dir = dirs, 
#                        df = em_df, 
#                        exe_filepath = file.path(dir, "ss_win.exe"))
# stop_time <- Sys.time()
# time_purr_iterations_in_parallel <- stop_time - start_time
# With 2 iterations this took ~1.5 hours
# With 10 iterations x 3 EMs this took 2.56 hours
# Total of 180 models

# Unnested Iterations in parallel
start_time <- Sys.time()
unnested_change_run_em_parallel(dir = dir, 
                                df = em_df, 
                                exe_filepath = file.path(dir, "ss_win.exe"),
                                new_filename = "unnested_iterations")
stop_time <- Sys.time()
time_unnested_parallel_run_iter <- stop_time - start_time
# This takes 47.97 min

# Get results
start_time <- Sys.time()
get_all_results(dir = dir, new_filename = "unnested_iterations")
stop_time <- Sys.time()
time_get_results <- stop_time - start_time
# This takes 4.41 min

results_ts <- read.csv(file.path(dir, "unnested_iterations","results_timeseries.csv"))
#### STILL TO WORK ON ####
# Get results from OMs
# Other results & plotting?




