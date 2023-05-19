#' Change EM Files and Run
#'
#' @param model_dir 
#' @param df 
#' @param exe_filepath 
#'
#' @return
#' @export
#'
#' @examples
change_run_em <- function(model_dir,
                          df,
                          exe_filepath){
  for(x in 1:length(df$em_names)){
    em_iterations <- list.dirs(file.path(model_dir, paste0("em_", df$em_names[x])), full.names = TRUE, recursive = FALSE)
    
    for(i in 1:length(em_iterations)){
      dir_iter<- file.path(em_iterations[i])
      inputs <- r4ss::SS_read(dir = dir_iter)
      inputs[[df$config_file[x]]][[df$var_change[x]]]<- df$new_val[x]
      inputs$start$N_bootstraps <- 2
      
      # need to add fit bias ramp
      r4ss::SS_write(inputs, dir = dir_iter, overwrite = TRUE)
      
      r4ss::run(dir = dir_iter, exe = exe_filepath)
    }
  }
}