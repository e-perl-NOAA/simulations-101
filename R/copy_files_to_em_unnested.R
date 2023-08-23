#' Copy Files to Unnested EM Folders
#' @description
#' Copy the bootstrap files from the om iterations and the configuration files 
#' from the overall directory to the em > iteration file folders based on the 
#' names of the em's in the specified data frame.
#' 
#' 
#' @param dirs 
#' @param df 
#' @param new_filename The name of the folder that contain all of your unnested iterations
#'
#' @return
#' @export
#'
#' @examples
copy_files_to_em_unnested <- function(dirs, 
                             df,
                             new_filename){
  
  rootname <- unique(dirname(dirs))
  dirs <- grep(new_filename, dirs, value = TRUE, invert = TRUE)
  
  for(m in 1:length(dirs)){
    model_name <- basename(dirs[m])
    om_folders <- grep("om_", list.dirs(dirs[m], full.names = TRUE, recursive = FALSE), value = TRUE)
    
    # get model starter file names for em
    inputs <- r4ss::SS_read(dir = dirs[m])
    
    starter_files <- paste0(inputs$start$ctlfile, "|forecast.ss|starter.ss|wtatage.ss")
    
    for(o in 1:length(om_folders)){
      iter_name <- gsub("om", "iteration", basename(om_folders[o]))
      
      for(e in 1:length(df$em_names)){
        iter_folder <- file.path(rootname, new_filename, paste0(model_name,"-em_", df$em_names[e], "-", iter_name))
        dir.create(iter_folder, showWarnings = FALSE, recursive = TRUE)
        # copy bootstrap file to respective em/iteration folder and rename to data.ss
        copy_data_boot <-list.files(om_folders[o], pattern = "data_boot*", full.names = TRUE)
        file.copy(copy_data_boot, iter_folder, recursive = FALSE, overwrite = TRUE)
        file.rename(from = file.path(iter_folder, basename(copy_data_boot)),
                    to = file.path(iter_folder, inputs$start$datfile))

        # copy starter files
        copy_starter_files <- list.files(dirs[m], pattern = starter_files, full.names = TRUE)
        file.copy(copy_starter_files, iter_folder, recursive = FALSE, overwrite = TRUE)
      }
    }
  }
}
