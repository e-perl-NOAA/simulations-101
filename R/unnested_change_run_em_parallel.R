#' Move to unnested file structure, change EMs to specifications in df, and run models
#'
#' @param dir List of model directories in working directory.
#' @param new_filename The name of the of the file folder that will hold your 
#' unnested simulation runs.
#' @param df The data frame that has all the changes in it.
#' @exe_filepath The filepath to where your SS3 exe is.
#'
#' @import purrr
#' @import furrr
#' @import future
#' @import parallel
#' @import utils
#' 
#' @export
#'
unnested_change_run_em_parallel <- function(dir,
                                            new_filename,
                                            df, 
                                            exe_filepath){
  # new_filename <- "unnested_iterations"
  # dir.create(file.path(dir, new_filename))
  # 
  # all_dirs <- list.dirs(dirs)
  # all_dirs <- grep('plots', all_dirs, value = TRUE, invert = TRUE)
  # all_dirs <- grep(new_filename, all_dirs, value = TRUE, invert = TRUE)
  # all_dirs <- grep('iteration_', all_dirs, value = TRUE)
  # 
  # message("Copying all iteration files to the unnested iterations folder")
  # lapply(all_dirs, copy_to_all_iters_folder, dir, new_filename)
  # message("Done copying files over.")
  
  model_dir <- list.dirs(grep(new_filename, list.dirs(dir, recursive = FALSE, full.names = TRUE), value = TRUE), recursive = FALSE, full.names = TRUE)
  model_dir <- model_dir[!grepl("plots", model_dir)]
  model_dir <- model_dir[!grepl("-om_", model_dir)]
  
  # setup parallel  
  ncores <- parallel::detectCores() - 1 
  future::plan(multisession, workers = ncores)
  results <- furrr::future_map(model_dir, ~ run_iters(
    model_dir = .x,
    df = df,
    exe_filepath = exe_filepath,
    new_filename = new_filename))
  convergence.all <- do.call(rbind, results)
  utils::write.csv(convergence.all, file.path(dir, new_filename, "model_convergence_unnested.csv"))
}


#### Move files to unnested folder function ###
#' Move files to unnested folder
#'
#' @export
#' @param model_dir All model directories, these will be the new unnested directories.
#' @param df Data frame of inputs to be changed.
#' @param exe_filepath Filepath to SS3 exe.
#'
run_iters <- function(model_dir,
                      df,
                      exe_filepath,
                      new_filename){
  start_time <- Sys.time()
  clean_plots(model_dir)
  dir_iter_number <- stringr::str_sub(model_dir, start= -2)
  em_iter_number <- gsub(".*em_|-iter.*","", model_dir)
  df <- df[df$em_names == em_iter_number,]
  inputs <- r4ss::SS_read(dir = model_dir)
  inputs[[df$config_file]][[df$var_change]]<- df$new_val
  inputs$start$N_bootstraps <- 2
  
  r4ss::SS_write(inputs, dir = model_dir, overwrite = TRUE)
  
  # run initial model
  r4ss::run(dir = model_dir, exe = exe_filepath, skipfinished = FALSE)
  
  # get the rec dev bias and run bias correction, keep results from non-
  # bias corrected models for first 2 iterations of each em
  
  ctl_file_in <- file.path(model_dir, inputs$start$ctlfile)
  replist <- r4ss::SS_output(
    dir = model_dir,
    forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE,
    covar = TRUE)
  
  # only do this if a covar file exists
  if(file.exists(file.path(model_dir,"covar.sso")) & any(grep("do not write", readLines(file.path(model_dir,"covar.sso")))) == FALSE)
    {
    bias <- r4ss::SS_fitbiasramp(replist,
                                 # plotdir = dir_bias,
                                 plot = FALSE, 
                                 print = FALSE,
                                 oldctl = ctl_file_in,
                                 newctl = ctl_file_in,
                                 startvalues = NULL,
                                 method = "BFGS", # c("Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN")
                                 altmethod = "nlminb")
    
    if(bias$newbias$convergence != 0){
      bias <- r4ss::SS_fitbiasramp(replist,
                                   plotdir = model_dir,
                                   oldctl = ctl_file_in,
                                   newctl = ctl_file_in,
                                   startvalues = bias$newbias$par,
                                   method = "BFGS", # c("Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN")
                                   altmethod = "alt",
                                   verbose = FALSE, transform = FALSE, exclude_forecast = FALSE,
                                   twoplots = TRUE, plot = FALSE, print = TRUE, shownew = TRUE)
    }
    
    # if the it is the 1st or 2nd iteration, rename the report, ss_summary, and 
    # plots to have the no_bias_adjust at the end so you can look at those later and
    # make sure everything looks okay.
    if(dir_iter_number %in% c("_1", "_2")){
      r4ss::SS_plots(replist, openfile = FALSE, verbose = FALSE)
      file.rename(file.path(model_dir, "plots"), file.path(model_dir, "plots_no_bias_adjust"))
      file.rename(file.path(model_dir, "Report.sso"), file.path(model_dir, "Report_no_bias_adjust.sso"))
      file.rename(file.path(model_dir, "ss_summary.sso"), file.path(model_dir, "ss_summary_no_bias_adjust.sso"))
    }
    
    # re-run model
    r4ss::run(dir = model_dir, exe = exe_filepath, verbose = FALSE, skipfinished = FALSE)
    
    # if the it is the 1st or 2nd iteration, create a second plots folder so that 
    # you can compare with the no_bias_adjust plots as well as compare the new
    # Report and ss_summary that have the bias adjust with the no_bias_adjust
    # renamed previously
    if(dir_iter_number %in% c("_1", "_2")){
      replist <- r4ss::SS_output(
        dir = model_dir,
        forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE)
      r4ss::SS_plots(replist, openfile = FALSE, verbose = FALSE)
    }
  }
  end_time <- Sys.time()
  runtime <- end_time - start_time
  convergence <- data.frame(
    model = gsub(paste0(".*", new_filename,"/|-em_.*"),"",model_dir),
    em = df$em_names,
    iteration = paste0("iteration_",gsub(".*-iteration_","",basename(model_dir))),
    model_converged = ifelse(file.exists(file.path(model_dir, "covar.sso")) & any(grepl("do not write", readLines(file.path(model_dir, "covar.sso")))) == FALSE, TRUE, FALSE),
    model_runtime = runtime
  )
  
  # remove unnecessary files
  admb_files_delete <- list.files(path = model_dir, pattern = "*.std|*.htp|*.eva|*.tds|*.bar|*.cov|*.dep|*.hes|*.rpt|*.rep|*.cpp|*.log|*.obj|*.tmp|*.ecm|*.mc2|*.mcm|*.hst|*.psv|gradient.*|tmp_admb|variance|SIS_table.sso|rebuild.sso|posterior_obj_func.sso|posterior_vectors.sso|posteriors.sso|derived_posteriors.sso|CumReport.sso|ParmTrace.sso|runnumber.ss$|ss.p0*|ss.b0*|ss.r0*",
                                  full.names = TRUE)
  file.remove(admb_files_delete)
  return(convergence)
}


#### Clean plots function ####
#' Remove plots from previous runs.
#' 
#' @param model_dir All model directories.
#' 
#' @import purrr
#' 
#' @export
#' 
clean_plots <- function(model_dir){
  plot_dirs<-list.files(model_dir, recursive = FALSE, pattern = "plots$|plots_S|plots_no", full.names = TRUE)
  invisible(purrr::map(plot_dirs, unlink, recursive = TRUE))
}

#### Move files to unnested folder function ###
#' Move files to unnested folder
#'
#' @export
#' @param all_dirs All model/em/iteration directories in the folder.
#' @param dir Working directory root name.
#' @param new_filename New name of the folder to put unnested iterations into.
#'
# copy_to_all_iters_folder <- function(all_dirs, dir, new_filename){
#   iter_full_name <- gsub(paste0(dir,"/"), "", all_dirs)
#   iter_full_name <- gsub("/", "-", iter_full_name)
#   
#   from <- normalizePath(all_dirs, mustWork = TRUE)
#   to <- file.path(dir, new_filename, iter_full_name)
#   files <- list.files(from, pattern = ".SS$|.ss$|.dat|.ctl", full.names = TRUE)
#   dir.create(to, showWarnings = FALSE, recursive = TRUE)
#   file.copy(files, to, recursive = FALSE)
#   invisible(file.copy(files, to, recursive = FALSE))
# }