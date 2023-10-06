#' Copy Files to Unnested EM Folders
#' @description
#' Copy the bootstrap files from the om iterations and the configuration files 
#' from the overall directory to the em > iteration file folders based on the 
#' names of the em's in the specified data frame.
#' 
#' 
#' @param dir List of model directories in working directory.
#' @param df The data frame that has all the changes in it.
#' @param new_filename The name of the of the file folder that will hold your 
#' unnested simulation runs.
#'
#' @import r4ss
#' 
#' @export
#'


copy_files_to_em_unnested <- function(dir, 
                             df,
                             new_filename){
  dirs <- list.dirs(grep("models", list.dirs(dir, recursive = FALSE), value = TRUE), recursive = FALSE)
  # dirs <- grep(new_filename, dirs, value = TRUE, invert = TRUE)
  
  for(m in 1:length(dirs)){
    model_name <- basename(dirs[m])
    om_folders <- grep("om_", list.dirs(dirs[m], full.names = TRUE, recursive = FALSE), value = TRUE)
    
    # get model starter file names for em
    run(dir = dirs[m], exe = file.path(getwd(), "ss_win"), extras = "-nohess -stopph 0", skipfinished = FALSE)
    inputs <- r4ss::SS_read(dir = dirs[m])
    
    starter_files <- paste0(paste0(inputs$start$ctlfile,"_new"), "|forecast.ss_new|starter.ss_new|wtatage.ss_new")
    
    for(o in 1:length(om_folders)){
      iter_name <- gsub("om", "iteration", basename(om_folders[o]))
      
      for(e in 1:length(df$em_names)){
        iter_folder <- file.path(dir, new_filename, paste0(model_name,"-em_", df$em_names[e], "-", iter_name))
        dir.create(iter_folder, showWarnings = FALSE, recursive = TRUE)
        # copy bootstrap file to respective em/iteration folder and rename to data.ss
        copy_data_boot <-list.files(om_folders[o], pattern = "data_boot*", full.names = TRUE)
        file.copy(copy_data_boot, iter_folder, recursive = FALSE, overwrite = TRUE)
        file.rename(from = file.path(iter_folder, basename(copy_data_boot)),
                    to = file.path(iter_folder, inputs$start$datfile))

        # copy starter files
        copy_starter_files <- list.files(dirs[m], pattern = starter_files, full.names = TRUE)
        file.copy(copy_starter_files, iter_folder, recursive = FALSE, overwrite = TRUE)
        file.rename(list.files(iter_folder, pattern = starter_files, full.names = TRUE), stringr::str_replace(list.files(iter_folder, pattern = starter_files, full.names = TRUE), pattern = "_new", ""))
      }
    }
  }
}
