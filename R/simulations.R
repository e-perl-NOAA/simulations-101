library(furrr)
library(r4ss)
library(future)
library(parallelly)
library(ggplot2)
library(ggpubr)
library(ggtext)

dir <- getwd()

# r4ss::get_ss3_exe() if needed
new_filename <- "unnested_iterations"



#### Step 1 - Create EM data frame ####
em_df<- data.frame(
  em_names = c("recdev_1", "recdev_2", "recdev_3"),
  config_file = c("ctl", "ctl", "ctl"),
  var_change = c("do_recdev", "do_recdev", "do_recdev"),
  new_val = c(1, 2, 3))

df <- em_df


#### Step 2 - Create OM models ####
# start_time <- Sys.time()
create_om_models_parallel(dir = dir,
                          iterations = 10,
                          exe_filepath = file.path(dir, "ss3.exe"))
# stop_time <- Sys.time()
# parallel_time <- stop_time - start_time


#### Step 3 = Copy bootstrap & starter files from OM to EM new_filename dir ####
# Copy the bootstrap files from the om iterations and the configuration files 
# from the overall directory to the EM iteration file folders
# this runs fast without having to parallelize it
# start_time <- Sys.time()
copy_files_to_em_unnested(dir = dir, 
                 df = em_df,
                 new_filename = new_filename,
                 exe_filepath = file.path(dir, "ss3.exe"))
# stop_time <- Sys.time()
# copy_files_time <- stop_time - start_time


#### Step 4 - Run EMs ####
# Removed BigSkate from models because Inf in file was causing issues
# start_time <- Sys.time()
ncores <- parallelly::availableCores(omit = 1)
future::plan(multisession, workers = ncores)
unnested_change_run_em_parallel(dir = dir,
                                new_filename = new_filename,
                                df = em_df, 
                                exe_filepath = file.path(dir, "ss3.exe"))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
# stop_time <- Sys.time()
# time_unnested_parallel_run_iter <- stop_time - start_time
# 180 models; first 2 iters of each scenario run twice (180 + 36 = 216 total model runs)
# This takes 47.97 min on VM 
# This takes 1 hr 59 min on desktop

#### Step 5 - Get results
# get_sims_output(dir = dir, new_filename = "unnested_iterations", file_copy = TRUE, df = df, 
#                 var = c("recdevs", "Spawnbio", "Bratio", "SPRratio", "Fvalue"),
#                 model_names = model_names[3:5])
source(file.path(getwd(),"R/get_sims_output.r")
ncores <- parallelly::availableCores(omit = 1)
future::plan(multisession, workers = ncores)
get_sims_output(dir = dir, new_filename = "unnested_iterations", file_copy = TRUE, df = df, 
                var = c("recdevs", "Spawnbio", "Bratio"),
                model_names = NULL)

#start_time <- Sys.time()
#stop_time <- Sys.time()
#parallel_time <- stop_time - start_time





# What is this?????
#model_run <- purrr::map(.x = list.dir, .f = model_run_completed)
#model_run_completed <- function(.x){
#  files <- list.files(file.path(dir, "unnested_iterations", .x))
#  report_in_files <- grepl(list.files(files), pattern = "Report.sso")
#  model <- .x
#  df <- data.frame(model, report_in_files)
#  names(df) < c("model", "report_in_files")
#}
#report.all <- do.call(rbind, model_run)

# Convergence --- is this anywhere else?
#convergence <- data.frame()
#model_dir <- list.dirs(grep(new_filename, list.dirs(dir, recursive = FALSE, full.names = TRUE), value = TRUE), recursive = FALSE, full.names = TRUE)
#model_dir <- model_dir[!grepl("plots", model_dir)]
#model_dir <- model_dir[!grepl("-om_", model_dir)]
#for(m in 1:length(model_dir)){
#convergence_fill <- data.frame(
#  model_name =  gsub(paste0(".*", new_filename,"/|-em_.*"),"", model_dir[m]),
#  iteration = paste0("iteration_",gsub(".*-iteration_","",basename(model_dir[m]))),
#  model_converged1 = file.exists(file.path(model_dir[m], "covar.sso")),
#  model_converged2 = 
#    if(file.exists(file.path(model_dir[m], "covar.sso"))){
#       !any(grepl("do not write", readLines(file.path(model_dir[m], "covar.sso"))))}
#)
#convergence <- rbind(convergence, convergence_fill)
#}
#convergence_new <- convergence |>
#  dplyr::mutate(converged = dplyr::case_when(model_converged1 == TRUE & model_converged2 == TRUE ~ TRUE,
#                                      model_converged1 == FALSE | model_converged2 == FALSE ~ FALSE )) |>
#  dplyr::select(-model_converged1, -model_converged2)


# Get results from EMs and OMs in parallel - this is a different way, the ss3sim way to get results
# start_time <- Sys.time()
# get_all_results(dir = dir, new_filename = "unnested_iterations")
# stop_time <- Sys.time()
# time_get_results <- stop_time - start_time
# This takes 1.24 min on VM
# This takes      min on desktop

# results_scalar <- read.csv(file.path(dir, "unnested_iterations","results_scalar.csv"))
# scalar_re <- ss3sim::calculate_re()
#### STILL TO WORK ON ####
# Scalar results don't look like ss3sim scalar results, missing lots of columns, need to fix
# Other results & plotting?
# Put together function or workflow to do all things


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
