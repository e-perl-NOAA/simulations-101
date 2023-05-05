  setwd("/Users/elizabethgugliotti/Documents/github_repos/simulations-101")
  #install.packages("pak") # if needed
  #pak::pkg_install("r4ss/r4ss")
  library(r4ss)
  
dir <- getwd()
dirs <- list.files(dir, recursive = FALSE, full.names = TRUE)
  
inputs <- r4ss::SS_read(dir = dirs[2])
inputs$start$N_bootstraps <- 3
r4ss::SS_write(inputs,dir = dirs[2], overwrite = TRUE)

create_om_models <- function(model_dir,
                             iteration = 1,
                             exe) {
  from <- normalizePath(dirs[2], mustWork = TRUE)
  to <- file.path(from, paste0("om_", iteration))
  files <- list.files(from, pattern = ".ss", full.names = TRUE)
  
  dir.create(to, showWarnings = FALSE, recursive = TRUE)
  file.copy(files, to, recursive = FALSE)
  
  inputs <- r4ss::SS_read(dir = to)
  first_year<- inputs$ctl$MainRdevYrFirst
  last_year <- inputs$ctl$MainRdevYrLast
  
  r4ss::SS_recdevs(
    fyr = first_year,
    lyr = last_year,
    dir = to,
    ctlfile = "control.ss",
    newctlfile = "control.ss"
  )
  
  r4ss::run(dir = to, exe = file.path(dir, "ss_win.exe"), extras = "-nohess -stopph 0")
  
}

  


#run model
r4ss::check_exe(exe = "ss_win")
r4ss::run(dir = dirs[1], exe = file.path(dir, "ss_win.exe"))

# copy new files and bootstrap files
  
clean_rename_files <- function(from){
    files_keep <-list.files(from, pattern = "^[a-v]*.ss_new|data_boot*|data_echo*", full.names = TRUE)
    files_delete <- list.files(from, full.name = TRUE)[!(list.files(from, full.names = TRUE) %in% files_keep)]
    file.remove(files_delete)
    file.rename(
      from = list.files(from, pattern ='.ss_new', full.names = TRUE),
      to = stringr::str_replace(list.files(from, pattern='.ss_new', full.names = TRUE), pattern='.ss_new', '.ss'))
    file.rename(
      from = list.files(from, pattern ='data', full.names = TRUE),
      to = stringr::str_replace(list.files(from, pattern='data', full.names = TRUE), pattern='.ss', '.dat'))
    file.rename(
      from = list.files(from, pattern ='boot', full.names = TRUE),
      to = stringr::str_replace(list.files(from, pattern='boot', full.names = TRUE), pattern='[a-z]*_boot', 'boot'))
    file.rename(
      from = list.files(from, pattern ='data_echo', full.names = TRUE),
      to = stringr::str_replace(list.files(from, pattern='data_echo', full.names = TRUE), pattern='data_echo', 'model'))
}
  
  
clean_rename_files(dirs[1])
  
scenarios <- c("recdev0", "recdev1", "recdev2", "recdev3", "recdev4")

get_iterations <-  function(model_dir){
   boots <- list.files(model_dir, pattern = "boot", full.names = TRUE)
   number_boots <- 1:length(boots)
   number_boots
 }
 
 
copy_ss3models_sim <- function(model_dir,
                            scenario,
                            iteration = 1) {
  from <- normalizePath(model_dir, mustWork = TRUE)
  to <- file.path(scenario, 2)
    
  boot_iter <- list.files(from)[grep(iteration, list.files(from))]
  input_files <- list.files(from)[!grepl(".dat", list.files(from))]
  iter_files <- append(boot_iter, input_files)
    
  dir.create(to, showWarnings = FALSE, recursive = TRUE)
  file.copy(paste(from, iter_files, sep = "\\"), to, recursive = TRUE)
  }



sim_copy_files <- function(model_dir,
                           scenarios){
  iterations <- get_iterations(model_dir)
  for(sc in scenarios){
    for(i in iterations){
      copy_ss3models_sim(
        model_dir = model_dir,
        scenario = sc,
        iteration = i
      )
      }
    }
  }

sim_copy_files(dirs[1], scenarios)


copy_ss3models_sim(dirs[1], scenario = "revcdev0", iteration = 2)
  
  
  if (rlang::is_missing(scenarios)) {
    scenarios <- setup_scenarios_name(check = TRUE)
  }
  stopifnot(length(scenarios) == 1)
  sc <- scenarios
  
  if (!is.null(user_recdevs)) {
    stopifnot(class(user_recdevs) %in% c("matrix", "data.frame", "array"))
    if (ncol(user_recdevs) < max(iterations)) {
      stop(
        "The number of columns in user_recdevs is less than the ",
        "specified number of iterations."
      )
    }
  }
  for (i in iterations) {
    # todo: fix spacing, organize comments
    
    # Create folders, copy models, check for necessary files, rename
    # files for consistency
    iteration_existed <- copy_ss3models(
      model_dir = om_dir, scenario = sc,
      iteration = i, type = "om"
    )
    if (iteration_existed) next
    pathom <- file.path(sc, i, "om")
    pathem <- file.path(sc, i, "em")
    if (!is.na(em_dir)) {
      copy_ss3models(
        model_dir = em_dir, scenario = sc,
        iteration = i, type = "em"
      )
    } else {
      dir.create(pathem, showWarnings = FALSE, recursive = TRUE)
    }
    
    r4ss::copy_SS_inputs()
    r4ss::file_increment()
    r4ss::SSgetoutput()
    
    
    replist <- SS_output(
      dir = dirs[1],
      verbose = TRUE,
      printstats = TRUE
    )
    
    SS_plots(replist)