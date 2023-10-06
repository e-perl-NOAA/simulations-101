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
  
sims_models <- list.dirs(file.path(dir, new_filename), recursive = FALSE)
model_names <- unique(gsub("-.*","",basename(sims_models)))

# use furrr with below
for(m in model_names){
  plot_path <- file.path(dir, new_filename, paste0(model_names[1],"_plots"))
  if(! plot_path %in% sims_models){
    dir.create(path = plot_path)
  }
  model_match <- grep(model_names[1], sims_models, value = TRUE)
  sims_output <- SSgetoutput(dirvec = model_match)
  sims_summary <- SSsummarize(sims_output)
  
  SSplotComparisons(sims_summary, plot = FALSE, print = TRUE, plotdir = plot_path)
  }



# need to plot comparisons per test model
# make plots comparing the 6 models
SSplotComparisons(sims_summary,
  endyrvec = endyrvec,
  legendlabels = paste("Data", 0:-5, "years")
) 

}