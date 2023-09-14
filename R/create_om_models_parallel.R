#' Create the OM Models (in Parallel)
#'
#' @param dir The filepath for the working directory that has a folder named "models" 
#' with your model folders in it. These are the models that you would like to 
#' run simulations for. For running the stock synthesis test models this should 
#' be one of the test model/models folders.
#' @param iterations The number of simulation iterations that you would like to 
#' run which will run the OM that amount of times to get a bootstrap file from 
#' each run.
#' @param exe_filepath The filepath to where your stock synthesis executable is
#' located. This will not check if the file is in your path.
#'
#' @export
#' 
#' @import parallel
#' @import furrr
#' @import future
#' @import r4ss
#'

# could put options for a df to change om options - may be needed down the road.
# the om models are the iterations that will go in the ems


create_om_models_parallel <- function(dir,
                                      iterations = 1,
                                      exe_filepath) {
  model_dir <- list.dirs(grep("models", list.dirs(dir, recursive = FALSE), value = TRUE), recursive = FALSE)
  
  ncores <- parallel::detectCores() - 1
  future::plan(multisession, workers = ncores)
  
  furrr::future_map(model_dir, function(m) {
    for (i in 1:iterations) {
      from <- normalizePath(m, mustWork = TRUE)
      to <- file.path(from, paste0("om_", i))
      files <- list.files(from, pattern = ".SS$|.ss$|.dat|.ctl", full.names = TRUE)
      
      dir.create(to, showWarnings = FALSE, recursive = TRUE)
      file.copy(files, to, recursive = FALSE)
      
      inputs <- r4ss::SS_read(dir = to)
      inputs$start$N_bootstraps <- 3
      inputs$ctl$max_bias_adj <- -1
      inputs$start$init_values_src <- 0
      r4ss::SS_write(inputs, dir = to, overwrite = TRUE)
      
      r4ss::SS_recdevs(
        fyr = inputs$ctl$MainRdevYrFirst,
        lyr = inputs$ctl$MainRdevYrLast,
        dir = to,
        ctlfile = inputs$start$ctlfile,
        newctlfile = inputs$start$ctlfile
      )
      
      r4ss::run(dir = to, exe = exe_filepath, extras = "-nohess -stopph 0", skipfinished = FALSE)
    }
  })
}

