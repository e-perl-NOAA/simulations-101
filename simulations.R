  setwd("/Users/elizabethgugliotti/Documents/github_repos/simulations-101")
  #install.packages("pak") # if needed
  #pak::pkg_install("r4ss/r4ss")
  library(r4ss)
  
dir <- getwd()
dirs <- list.dirs(dir, recursive = FALSE, full.names = TRUE)


create_om_models <- function(model_dir,
                             iterations = 1,
                             exe_filepath) {
  for(i in 1:iterations){
    from <- normalizePath(model_dir, mustWork = TRUE)
    to <- file.path(from, paste0("om_", i))
    files <- list.files(from, pattern = ".ss", full.names = TRUE)
  
    dir.create(to, showWarnings = FALSE, recursive = TRUE)
    file.copy(files, to, recursive = FALSE)
  
    inputs <- r4ss::SS_read(dir = to)
    inputs$start$N_bootstraps <- 3
    r4ss::SS_write(inputs, dir = to, overwrite = TRUE)
  
    r4ss::SS_recdevs(
      fyr = inputs$ctl$MainRdevYrFirst,
      lyr = inputs$ctl$MainRdevYrLast,
      dir = to,
      ctlfile = "control.ss",
      newctlfile = "control.ss"
    )
  
    r4ss::run(dir = to, exe = exe_filepath, extras = "-nohess -stopph 0")
  }
}

create_om_models(model_dir = dirs[8],
                 iterations = 5,
                 exe_filepath = file.path(dir, "ss_win.exe"))


# create em data frame
df<- data.frame(
  em_names = c("recdev_1", "recdev_2", "recdev_3"),
  config_file = c("ctl", "ctl", "ctl"),
  var_change = c("do_recdev", "do_recdev", "do_recdev"),
  new_val = c(0, 1, 2))

copy_file_to_em <- function(model_dir, 
                             df){
  om_folders <- grep("om_", list.dirs(model_dir, full.names = TRUE, recursive = FALSE), value = TRUE)

  for(o in 1:length(om_folders)){
    iter_name <- gsub("om", "iteration", basename(om_folders[o]))
    
    for(e in 1:length(em_names)){
      browser()
      iter_folder <- file.path(model_dir, paste0("em_", df$em_names[e]), iter_name)
      dir.create(iter_folder, showWarnings = FALSE, recursive = TRUE)
    
      # copy bootstrap file to respective em/iteration folder and rename to data.ss
      copy_data_boot <-list.files(om_folders[o], pattern = "data_boot*", full.names = TRUE)
      file.copy(copy_data_boot, iter_folder, recursive = FALSE)
      file.rename(from = file.path(iter_folder, basename(copy_data_boot)),
                  to = file.path(iter_folder, "data.ss"))
      
      # copy starter files
      copy_starter_files <- list.files(model_dir, pattern = "control.ss|forecast.ss|starter.ss", full.names = TRUE)
      file.copy(copy_starter_files, iter_folder, recursive = FALSE)
    }
  }
}
copy_files_to_em(dirs[8], df)


# Change the em config files based on the df
change_em <- function(model_dir,
                      df,
                      exe_filepath){
  for(x in 1:length(df$em_names)){
    em_iterations <- list.dirs(file.path(model_dir, paste0("em_", df$em_names[x])), full.names = TRUE, recursive = FALSE)
    
    for(i in 1:length(em_iterations)){
      dir_iter<- file.path(em_iterations[i])
      inputs <- r4ss::SS_read(dir = dir_iter)
      inputs[[df$config_file[x]]][[df$var_change[x]]]<- df$new_val[x]
      r4ss::SS_write(inputs, dir = dir_iter, overwrite = TRUE)
      
      r4ss::run(dir = dir_iter, exe = exe_filepath)
    }
  }
}

change_em(dirs[8], df[3,], exe_filepath = file.path(dir, "ss_win.exe"))



    r4ss::copy_SS_inputs()
    r4ss::file_increment()
    r4ss::SSgetoutput()
    
    
    replist <- SS_output(
      dir = dirs[1],
      verbose = TRUE,
      printstats = TRUE
    )
    
    SS_plots(replist)