#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#'
#' @import purrr
#' @import utils
#' @import r4ss
#' 
#' @return
#' @export
#'
#' 
get_sims_output <- function(dir = dir, 
                            new_filename = "unnested_iterations"){
sims_models <- list.files(sims_dir)

sims_output <- SSgetoutput(dirvec = list.dirs(file.path(dir, new_filename)))
sims_summary <- SSsummarize(sims_output)

# need to plot comparisons per test model
# make plots comparing the 6 models
SSplotComparisons(retroSummary,
  endyrvec = endyrvec,
  legendlabels = paste("Data", 0:-5, "years")
) 

}