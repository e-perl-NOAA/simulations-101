#' Change EM Files and Run Iterations in Parallel
#'
#' @param model_dir 
#' @param df 
#' @param exe_filepath 
#'
#' @return
#' @export
#' @import furrr
#' @import purrr
#' @import future
#' @import parallel
#'
#' @examples


#### Wrapper function ####
change_run_em_parallel_iter <- function(model_dir,
                          df,
                          exe_filepath){
  all_results <-purrr::map(model_dir, ~ base_change_run_em_parallel(
    model_dir = .x,
    df = df,
    exe_filepath = exe_filepath))
  
  dir_root_name <- unique(dirname(model_dir))
  convergence.all <- do.call(rbind, all_results)
  utils::write.csv(convergence.all, paste0(dir_root_name,"/model_convergence.csv"))
  }



#### Base function ####
base_change_run_em_parallel <- function(model_dir,
                               df,
                               exe_filepath){
  # dir_root_name <- dirname(model_dir)
  # 
  # convergence.df <- data.frame(
  #   model = NULL,
  #   em = NULL,
  #   iteration = NULL,
  #   model_converged = NULL,
  #   model_runtime = NULL)
  # ncores <- parallel::detectCores()
  # results_em <- furrr::future_map(df$em_names, ~ base_change_run_em(model_dir = .x, df = df, exe_filepath = exe_filepath))
  
  results_em <- lapply(df$em_names, function(x){
    # for(x in 1:length(df$em_names)){
    ncores <- parallel::detectCores()
    x = which(df$em_names == x)
    em_iterations <- list.dirs(file.path(model_dir, paste0("em_", df$em_names[x])), 
                               full.names = TRUE, recursive = FALSE)
    # setup parallel for the iterations
    future::plan(multisession, workers = ncores)
    results <- furrr::future_map(em_iterations, ~ run_iters(
      em_iterations = .x,
      df = df,
      exe_filepath = exe_filepath,
      x = x,
      model_dir = model_dir))
    convergence.iter <- do.call(rbind, results)
    return(convergence.iter)
  })
  convergence.df <- do.call(rbind, results_em)
  return(convergence.df)
}

#### run iterations function ####
run_iters <- function(em_iterations,
                      df,
                      exe_filepath,
                      x,
                      model_dir){
  start_time <- Sys.time()
  dir_iter<- file.path(em_iterations)
  clean_plots(dir_iter)
  dir_iter_number <- stringr::str_sub(dir_iter, start= -2)
  inputs <- r4ss::SS_read(dir = dir_iter)
  inputs[[df$config_file[x]]][[df$var_change[x]]]<- df$new_val[x]
  inputs$start$N_bootstraps <- 2
  
  r4ss::SS_write(inputs, dir = dir_iter, overwrite = TRUE)
  
  # run initial model
  r4ss::run(dir = dir_iter, exe = exe_filepath, skipfinished = FALSE)
  
  # get the rec dev bias and run bias correction, keep results from non-
  # bias corrected models for first 2 iterations of each em
  
  ctl_file_in <- file.path(dir_iter, inputs$start$ctlfile)
  replist <- r4ss::SS_output(
    dir = dir_iter,
    forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE,
    covar = TRUE)
  
  # only do this if a covar file exists
  if(file.exists(file.path(dir_iter,"covar.sso")) & any(grep("do not write", readLines(file.path(dir_iter,"covar.sso")))) == FALSE){
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
                                   plotdir = dir_iter,
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
      file.rename(file.path(dir_iter, "plots"), file.path(dir_iter, "plots_no_bias_adjust"))
      file.rename(file.path(dir_iter, "Report.sso"), file.path(dir_iter, "Report_no_bias_adjust.sso"))
      file.rename(file.path(dir_iter, "ss_summary.sso"), file.path(dir_iter, "ss_summary_no_bias_adjust.sso"))
    }
    
    # re-run model
    r4ss::run(dir = dir_iter, exe = exe_filepath, verbose = FALSE, skipfinished = FALSE)
    
    # if the it is the 1st or 2nd iteration, create a second plots folder so that 
    # you can compare with the no_bias_adjust plots as well as compare the new
    # Report and ss_summary that have the bias adjust with the no_bias_adjust
    # renamed previously
    if(dir_iter_number %in% c("_1", "_2")){
      replist <- r4ss::SS_output(
        dir = dir_iter,
        forecast = FALSE, verbose = FALSE, printstats = FALSE, NoCompOK = TRUE)
      r4ss::SS_plots(replist, openfile = FALSE, verbose = FALSE)
    }
  }
  end_time <- Sys.time()
  runtime <- end_time - start_time
  browser()
  convergence <- data.frame(
    model = basename(model_dir),
    em = df$em_names[x],
    iteration = basename(dir_iter),
    model_converged <- ifelse(file.exists(file.path(dir_iter, "covar.sso")) & 
                                any(grepl("do not write", readLines(file.path(dir_iter, "covar.sso")))) == FALSE, TRUE, FALSE),
    model_runtime <- runtime
  )
  
  # remove unnecessary files
  admb_files_delete <- list.files(path = dir_iter, pattern = "*.std|*.htp|*.eva|*.tds|*.bar|*.cov|*.dep|*.hes|*.rpt|*.rep|*.cpp|*.log|*.obj|*.tmp|*.ecm|*.mc2|*.mcm|*.hst|*.psv|gradient.*|tmp_admb|variance|SIS_table.sso|rebuild.sso|posterior_obj_func.sso|posterior_vectors.sso|posteriors.sso|derived_posteriors.sso|CumReport.sso|ParmTrace.sso|runnumber.ss$|ss.p0*|ss.b0*|ss.r0*",
                                  full.names = TRUE)
  file.remove(admb_files_delete)
  return(convergence)
}


#### Clean plots function ####
clean_plots <- function(dir_iter){
  plot_dirs<-list.files(dir_iter, recursive = FALSE, pattern = "plots$|plots_S|plots_no", full.names = TRUE)
  invisible(purrr::map(plot_dirs, unlink, recursive = TRUE))
}