#' Run Test Model Simulations
#'
#' @param model_dir 
#' @param iterations 
#' @param exe_filepath 
#' @param df 
#'
#' @return
#' @export
#'
#' @examples
run_test_model_sims <- function(model_dir,
                                iterations,
                                exe_filepath,
                                df) {
  create_om_models(model_dir = model_dir,
                   iterations = iterations,
                   exe_filepath = exe_filepath)
  
  # Copy the bootstrap files from the om iterations and the configuration files 
  # from the overall directory to the em > iteration file folders
  copy_files_to_em(model_dir = model_dir, 
                   df = df)
  
  # Change the em config files based on the df
  change_run_em(model_dir = model_dir, 
                df = df, 
                exe_filepath = exe_filepath)
}