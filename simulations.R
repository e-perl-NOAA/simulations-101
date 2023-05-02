#setwd("/Users/elizabethgugliotti/Documents/github_repos/simulations-101")
#install.packages("pak") # if needed
#pak::pkg_install("r4ss/r4ss")
#library(r4ss)

dir <- getwd()
dirs <- list.dirs(dir, recursive = FALSE, full.names = FALSE)
inputs <- r4ss::SS_read(dir = dirs[1])
inputs$start$N_bootstraps <- 7
r4ss::SS_write(inputs, dir = dirs[1], overwrite = TRUE)

r4ss::check_exe(exe = "")


r4ss::run(dir = dirs[1], exe = "/Users/elizabethgugliotti/stock-synthesis/ss")

r4ss::copy_SS_inputs()
r4ss::file_increment()
r4ss::SSgetoutput()


replist <- SS_output(
  dir = dirs[1],
  verbose = TRUE,
  printstats = TRUE
)

SS_plots(replist)


