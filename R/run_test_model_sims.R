#' Run Test Model Simulations
#'
#' @param dir 
#' @param iterations 
#' @param exe_filepath 
#' @param df
#' @param new_filename
#'
#' @return
#' @export
#'
run_test_model_sims <- function(dir,
                                iterations,
                                exe_filepath,
                                df,
                                new_filename) {
  # Step 1
  create_om_models_parallel(dir = dir,
                            iterations = iterations,
                            exe_filepath = exe_filepath)
  
  # Step 2
  # Copy the bootstrap files from the om iterations and the configuration files 
  # from the overall directory to the unnested model-em-iteration file folders
  copy_files_to_em_unnested(dir = dir, 
                            df = df,
                            new_filename = new_filename)
  
  # Step 3
  # Change the em config files based on the df and run the models
  unnested_change_run_em_parallel(dir = dir, 
                                  df = df, 
                                  exe_filepath = exe_filepath,
                                  new_filename = new_filename)
  
  # Step 4
  # Get the results
  get_all_results(dir = dir, new_filename = new_filename)
}