#' Move to unnested file structure, change EMs to specifications in df, and run models
#'
#' @param dirs List of model directories in working directory.
#'
#' @export
#'
unnested_change_run_em_parallel <- function(dirs,
                                            new_filename,
                                            df, 
                                            exe_filepath){
  rootname <- unique(dirname(dirs))
  # new_filename <- "unnested_iterations"
  # dir.create(file.path(rootname, new_filename))
  # 
  # all_dirs <- list.dirs(dirs)
  # all_dirs <- grep('plots', all_dirs, value = TRUE, invert = TRUE)
  # all_dirs <- grep(new_filename, all_dirs, value = TRUE, invert = TRUE)
  # all_dirs <- grep('iteration_', all_dirs, value = TRUE)
  # 
  # message("Copying all iteration files to the unnested iterations folder")
  # lapply(all_dirs, copy_to_all_iters_folder, rootname, new_filename)
  # message("Done copying files over.")
  
  model_dirs <- list.dirs(file.path(rootname, new_filename), recursive = FALSE)

  # setup parallel  
  ncores <- parallel::detectCores()
  future::plan(multisession, workers = ncores)
  results <- furrr::future_map(model_dirs, ~ run_iters(
    model_dirs = .x,
    df = df,
    exe_filepath = exe_filepath,
    new_filename = new_filename))
  convergence.all <- do.call(rbind, results)
  utils::write.csv(convergence.all, file.path(rootname, new_filename, "model_convergence_unnested.csv"))
}


#### Move files to unnested folder function ###
#' Move files to unnested folder
#'
#' @export
#' @param model_dirs All model directories, these will be the new unnested directories.
#' @param df Data frame of inputs to be changed.
#' @param exe_filepath Filepath to SS3 exe.
#'
run_iters <- function(model_dirs,
                      df,
                      exe_filepath,
                      new_filename){
  
  start_time <- Sys.time()
  clean_plots(model_dirs)
  dir_iter_number <- stringr::str_sub(model_dirs, start= -2)
  em_iter_number <- gsub(".*em_|-iter.*","", model_dirs)
  df <- df[df$em_names == em_iter_number,]
  inputs <- r4ss::SS_read(dir = model_dirs)
  inputs[[df$config_file]][[df$var_change]]<- df$new_val
  inputs$start$N_bootstraps <- 2
  
  r4ss::SS_write(inputs, dir = model_dirs, overwrite = TRUE)
  
  # run initial model
  r4ss::run(dir = model_dirs, exe = exe_filepath, skipfinished = FALSE)
  
  # get the rec dev bias and run bias correction, keep results from non-
  # bias corrected models for first 2 iterations of each em
  
  ctl_file_in <- file.path(model_dirs, inputs$start$ctlfile)
  replist <- r4ss::SS_output(
    dir = model_dirs,
    forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE,
    covar = TRUE)
  
  # only do this if a covar file exists
  if(file.exists(file.path(model_dirs,"covar.sso")) & any(grep("do not write", readLines(file.path(model_dirs,"covar.sso")))) == FALSE)
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
                                   plotdir = model_dirs,
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
      file.rename(file.path(model_dirs, "plots"), file.path(model_dirs, "plots_no_bias_adjust"))
      file.rename(file.path(model_dirs, "Report.sso"), file.path(model_dirs, "Report_no_bias_adjust.sso"))
      file.rename(file.path(model_dirs, "ss_summary.sso"), file.path(model_dirs, "ss_summary_no_bias_adjust.sso"))
    }
    
    # re-run model
    r4ss::run(dir = model_dirs, exe = exe_filepath, verbose = FALSE, skipfinished = FALSE)
    
    # if the it is the 1st or 2nd iteration, create a second plots folder so that 
    # you can compare with the no_bias_adjust plots as well as compare the new
    # Report and ss_summary that have the bias adjust with the no_bias_adjust
    # renamed previously
    if(dir_iter_number %in% c("_1", "_2")){
      replist <- r4ss::SS_output(
        dir = model_dirs,
        forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE)
      r4ss::SS_plots(replist, openfile = FALSE, verbose = FALSE)
    }
  }
  end_time <- Sys.time()
  runtime <- end_time - start_time
  convergence <- data.frame(
    model = gsub(paste0(".*", new_filename,"/|-em_.*"),"",model_dirs),
    em = df$em_names,
    iteration = paste0("iteration_",gsub(".*-iteration_","",basename(model_dirs))),
    model_converged = ifelse(file.exists(file.path(model_dirs, "covar.sso")) & any(grepl("do not write", readLines(file.path(model_dirs, "covar.sso")))) == FALSE, TRUE, FALSE),
    model_runtime = runtime
  )
  
  # remove unnecessary files
  admb_files_delete <- list.files(path = model_dirs, pattern = "*.std|*.htp|*.eva|*.tds|*.bar|*.cov|*.dep|*.hes|*.rpt|*.rep|*.cpp|*.log|*.obj|*.tmp|*.ecm|*.mc2|*.mcm|*.hst|*.psv|gradient.*|tmp_admb|variance|SIS_table.sso|rebuild.sso|posterior_obj_func.sso|posterior_vectors.sso|posteriors.sso|derived_posteriors.sso|CumReport.sso|ParmTrace.sso|runnumber.ss$|ss.p0*|ss.b0*|ss.r0*",
                                  full.names = TRUE)
  file.remove(admb_files_delete)
  return(convergence)
}


#### Clean plots function ####
#' Remove plots from previous runs.
#' 
#' @export
#' @param model_dirs All model directories.
clean_plots <- function(model_dirs){
  plot_dirs<-list.files(model_dirs, recursive = FALSE, pattern = "plots$|plots_S|plots_no", full.names = TRUE)
  invisible(purrr::map(plot_dirs, unlink, recursive = TRUE))
}

#### Move files to unnested folder function ###
#' Move files to unnested folder
#'
#' @export
#' @param all_dirs All model/em/iteration directories in the folder.
#' @param rootname Working directory root name.
#' @param new_filename New name of the folder to put unnested iterations into.
#'
# copy_to_all_iters_folder <- function(all_dirs, rootname, new_filename){
#   iter_full_name <- gsub(paste0(rootname,"/"), "", all_dirs)
#   iter_full_name <- gsub("/", "-", iter_full_name)
#   
#   from <- normalizePath(all_dirs, mustWork = TRUE)
#   to <- file.path(rootname, new_filename, iter_full_name)
#   files <- list.files(from, pattern = ".SS$|.ss$|.dat|.ctl", full.names = TRUE)
#   dir.create(to, showWarnings = FALSE, recursive = TRUE)
#   file.copy(files, to, recursive = FALSE)
#   invisible(file.copy(files, to, recursive = FALSE))
# }