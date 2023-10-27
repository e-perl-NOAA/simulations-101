#install.packages("pak") # if needed
pak::pkg_install("r4ss/r4ss")
library(furrr)
library(r4ss)
library(future)
library(parallel)

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
# 7.59 min on VM
# 1.89 min on desktop

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
#    min on VM
# 7.75 sec on desktop

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
# 180 models; first 2 iters of each scenario run twice (180 + 36 = 216 total model runs)
# This takes 47.97 min on VM 
# This takes 1 hr 59 min on desktop

model_run <- purrr::map(.x = list.dir, .f = model_run_completed)
model_run_completed <- function(.x){
files <- list.files(file.path(dir, "unnested_iterations", .x))
report_in_files <- grepl(list.files(files), pattern = "Report.sso")
model <- .x
df <- data.frame(model, report_in_files)
names(df) < c("model", "report_in_files")
}
report.all <- do.call(rbind, model_run)

# Get results from EMs and OMs in parallel
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

# Get results
start_time <- Sys.time()
get_sims_output(dir = dir, 
                new_filename = "unnested_iterations",
                file_copy = TRUE)
stop_time <- Sys.time()
parallel_time <- stop_time - start_time


convergence <- data.frame()

for(m in 1:length(model_dir)){
convergence_fill <- data.frame(
  model_name =  gsub(paste0(".*", new_filename,"/|-em_.*"),"", model_dir[m]),
  iteration = paste0("iteration_",gsub(".*-iteration_","",basename(model_dir[m]))),
  model_converged1 = file.exists(file.path(model_dir[m], "covar.sso")),
  model_converged2 = 
    if(file.exists(file.path(model_dir[m], "covar.sso"))){
       any(grepl("do not write", readLines(file.path(model_dir[m], "covar.sso"))))
      }else{
        "No Convergence"
      }
)
convergence <- rbind(convergence, convergence_fill)
}