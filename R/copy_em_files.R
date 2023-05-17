#' Copy Files to EM Folders
#' @description
#' Copy the bootstrap files from the om iterations and the configuration files 
#' from the overall directory to the em > iteration file folders based on the 
#' names of the em's in the specified data frame.
#' 
#' @param model_dir 
#' @param df 
#'
#' @return
#' @export
#'
#' @examples
copy_files_to_em <- function(model_dir, 
                             df){
  om_folders <- grep("om_", list.dirs(model_dir, full.names = TRUE, recursive = FALSE), value = TRUE)
  
  for(o in 1:length(om_folders)){
    iter_name <- gsub("om", "iteration", basename(om_folders[o]))
    
    for(e in 1:length(em_names)){
      iter_folder <- file.path(model_dir, paste0("em_", df$em_names[e]), iter_name)
      dir.create(iter_folder, showWarnings = FALSE, recursive = TRUE)
      
      # copy bootstrap file to respective em/iteration folder and rename to data.ss
      copy_data_boot <-list.files(om_folders[o], pattern = "data_boot*", full.names = TRUE)
      file.copy(copy_data_boot, iter_folder, recursive = FALSE, overwrite = TRUE)
      file.rename(from = file.path(iter_folder, basename(copy_data_boot)),
                  to = file.path(iter_folder, "data.ss"))
      
      # copy starter files
      copy_starter_files <- list.files(model_dir, pattern = "control.ss|forecast.ss|starter.ss", full.names = TRUE)
      file.copy(copy_starter_files, iter_folder, recursive = FALSE, overwrite = TRUE)
    }
  }
}