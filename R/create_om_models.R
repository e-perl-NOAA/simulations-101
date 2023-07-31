#' Create the OM Models
#'
#' @param model_dir The filepath for the directory of the model that you would 
#' like to run simulations for. For running the stock synthesis test models this
#' should be one of the test model folders.
#' @param iterations The number of simulation iterations that you would like to 
#' run which will run the OM that amount of times to get a bootstrap file from 
#' each run.
#' @param exe_filepath The filepath to where your stock synthesis executable is
#' located. This will not check if the file is in your path.
#'
#' @return
#' @export
#'
#' @examples

# could put options for a df to change om options - may be needed down the road.
# the om models are the iterations that will go in the ems
create_om_models <- function(model_dir,
                             iterations = 1,
                             exe_filepath) {
  for(m in 1:length(model_dir)){
    for(i in 1:iterations){
      from <- normalizePath(model_dir[m], mustWork = TRUE)
      to <- file.path(from, paste0("om_", i))
      files <- list.files(from, pattern = ".SS$|.ss$|.dat|.ctl", full.names = TRUE)
      
      dir.create(to, showWarnings = FALSE, recursive = TRUE)
      file.copy(files, to, recursive = FALSE)
      
      inputs <- r4ss::SS_read(dir = to)
      inputs$start$N_bootstraps <- 3 # creates 1 bootstrap file
      inputs$ctl$max_bias_adj <- -1 #
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
  }
}