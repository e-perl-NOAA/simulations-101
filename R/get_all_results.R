#' Get results from iterations
#'
#' @param dir 
#' @param new_filename
#'
#' @import purrr
#' @import utils
#' @import ss3sim
#' @import r4ss
#' 
#' @return
#' @export
#'

get_all_results <- function(dir, new_filename){
  
  scalar_all <- data.frame()
  timeseries_all <- data.frame()
  derived_all <- data.frame()

  #### Get EM Results ####
  model_dir <- list.dirs(grep(new_filename, list.dirs(dir, recursive = FALSE, full.names = TRUE), value = TRUE), recursive = FALSE, full.names = TRUE)
  
  results_em <- purrr::map(model_dir, ~ get_results_em(
    model_dir = .x,
    new_filename = new_filename))
  
  all_em_df <- do.call(rbind, results_em)
  
  #### Get OM Results ####
  om_folders <- grep("om", grep("models",list.dirs(dir, recursive = TRUE), value = TRUE), value = TRUE)
  
  results_om <- purrr::map(om_folders, ~ get_results_om(
    om_folders = .x))
  
  all_om_df <- do.call(rbind, results_om)
  
  #### Combine and output results ####
  all_df <- rbind(all_em_df, all_om_df)
    
  scalar_all <- purrr::map_df(all_df[,"scalar"], ~.x)
  timeseries_all <- purrr::map_df(all_df[,"timeseries"], ~.x)
  derived_all <- purrr::map_df(all_df[,"derived"], ~.x)
  
  utils::write.csv(scalar_all, file = file.path(dir, new_filename, "results_scalar.csv"), row.names = FALSE)
  utils::write.csv(timeseries_all, file = file.path(dir, new_filename, "results_timeseries.csv"), row.names = FALSE)
  utils::write.csv(derived_all, file = file.path(dir, new_filename, "results_derived.csv"), row.names = FALSE)
}


#' Get results from iterations base
#'
#' @param model_dir 
#' @param new_filename
#'
#' @import ss3sim
#' @import r4ss
#' 
#' @return
#' @export
#'
get_results_em <- function(model_dir, new_filename){
  mod_scen_iter<- basename(model_dir)
  model <- gsub("-em_.*", "", mod_scen_iter)
  scenario <- gsub(".*-em_|-iteration.*", "", mod_scen_iter)
  iteration <- gsub(".*-iteration_", "", mod_scen_iter)
  
  forecastTF <- ifelse(
    file.size(file.path(model_dir, "Forecast-report.sso")) %in% c(0, NA),
    FALSE, TRUE
  )
  
  report <- r4ss::SS_output(model_dir,
                            forecast = forecastTF,
                            covar = FALSE,
                            verbose = FALSE,
                            warn = FALSE,
                            readwt = FALSE,
                            printstats = FALSE
                            )
  
  scalar <- get_results_scalar(report)
  timeseries <- ss3sim::get_results_timeseries(report)
  derived <- ss3sim::get_results_derived(report)
  
  scalar$model <- timeseries$model <- derived$model <- model
  scalar$scenario <- timeseries$scenarios <- derived$scenarios <- scenario
  scalar$iteration <- timeseries$iteration <- derived$iteration <- iteration
  
  out <- list()
  out$scalar <- scalar
  out$timeseries <- timeseries
  out$derived <- derived
  
  return(invisible(out))
}

#' Get results of OMs
#' @description
#' Get results from all OMs.
#' 
#' @param om_folder List of om model directories in working directory.
#'
#' @import r4ss
#' 
#' @export
#'

get_results_om <- function(om_folders){
  model <- gsub(".*models/|/om.*", "", om_folders)
  scenario <- "om"
  iteration <- gsub(".*om_", "", om_folders)
  
  forecastTF <- ifelse(
    file.size(file.path(om_folders, "Forecast-report.sso")) %in% c(0, NA),
    FALSE, TRUE
  )
  
  report <- r4ss::SS_output(om_folders,
                            forecast = forecastTF,
                            covar = FALSE,
                            verbose = FALSE,
                            warn = FALSE,
                            readwt = FALSE,
                            printstats = FALSE
  )
  
  scalar <- get_results_scalar(report)
  timeseries <- ss3sim::get_results_timeseries(report)
  derived <- ss3sim::get_results_derived(report)
  
  scalar$model <- timeseries$model <- derived$model <- model
  scalar$scenario <- timeseries$scenarios <- derived$scenarios <- scenario
  scalar$iteration <- timeseries$iteration <- derived$iteration <- iteration
  
  out <- list()
  out$scalar <- scalar
  out$timeseries <- timeseries
  out$derived <- derived
  
  return(invisible(out))
}


#### From ss3sim ####
# This function was not working when using ss3sim::get_results_scalar() so copied
# it over as well as it's dependent functions and it seemed to work.

get_results_scalar <- function(report) {
  der <- t(report$derived_quants[
    # Find MSY and Btarget variables
    grep(
      "MSY$|Btgt$|SPR$|^[A-Za-z]{3,}_unfished",
      # Find the column of the derived quantities object
      report$derived_quants[
        ,
        grep("Label", colnames(report$derived_quants))
      ]
    ),
    # Return the number in a transposed data frame
    "Value",
    drop = FALSE
  ])
  colnames(der) <- gsub("Dead_Catch", "TotYield", colnames(der))
  colnames(der) <- gsub("_unfished", "_Unfished", colnames(der))
  colnames(der) <- gsub("annF_|Fstd_", "F_", colnames(der))
  Catch_endyear <-
    utils::tail(report$timeseries[report$timeseries$Era == "TIME", grep(
      "dead\\(B\\)",
      names(report$timeseries)
    )], 1)
  pars <- t(report$parameters[
    # Remove Main Recruitment Deviations and fleet_f from older Stock Synthesis output
    !grepl("main|_fleet_", report$parameters$Label, ignore.case = TRUE),
    # Return the number in a transposed data frame
    "Value",
    drop = FALSE
  ])
  colnames(pars) <- gsub("\\(", "_", colnames(pars))
  colnames(pars) <- gsub("\\)|\\.$", "", colnames(pars))
  ## Get the parameters stuck on bounds
  params_stuck_low <- paste(report$parameters$Label[
    grep("LO", report$parameters$Status)
  ], collapse = ";")
  params_stuck_high <- paste(report$parameters$Label[
    grep("HI", report$parameters$Status)
  ], collapse = ";")
  if (params_stuck_low == "") params_stuck_low <- NA
  if (params_stuck_high == "") params_stuck_high <- NA
  # get the comps variables
  len_comp_tuning <- get_compfit(report, "Length_Comp_Fit_Summary")
  age_comp_tuning <- get_compfit(report, "Age_Comp_Fit_Summary")
  ## get the number of params on bounds from the warning.sso file, useful for
  ## checking convergence issues
  warn <- report$warnings
  warn.line <- grep("Number_of_active_parameters", warn, fixed = TRUE)
  params_on_bound <-
    ifelse(length(warn.line) == 1,
           as.numeric(strsplit(warn[warn.line], split = ":")[[1]][2]), NA
    )
  ## Combine into final df and return it
  df <- data.frame(der,
                   max_grad = report$maximum_gradient_component,
                   depletion = report$current_depletion,
                   alt_sigma_r = report$sigma_R_info[1, "alternative_sigma_R"],
                   report$breakpoints_for_bias_adjustment_ramp,
                   params_on_bound, params_stuck_low, params_stuck_high, pars,
                   Catch_endyear, get_nll_components(report),
                   len_comp_tuning, age_comp_tuning,
                   stringsAsFactors = FALSE, check.names = FALSE
  )
  ## Also get some meta data and other convergence info like the
  ## version, runtime, etc. as checks
  df$version <- report$SS_version
  df$RunTime <- eval(parse(text = gsub(
    "([0-9]+) hours, ([0-9]+) minutes, ([0-9]+) seconds.",
    "\\1*60+\\2+\\3/60", report$RunTime
  )))
  return(invisible(df))
}

#' Get negative log likelihood (NLL) values from a report file list
#'
#' Names of the available NLL components will depend on the version
#' of the model. Names are native to the estimation framework and all
#' available components are extracted.
#' @template report
#' @author Merrill Rudd
#' @return A vector of named numeric values, where `"NLL_"` is
#' appended to the names in the `report`.
get_nll_components <- function(report) {
  vec <- t(report$likelihoods_used[, "values", drop = FALSE])
  colnames(vec) <- paste0("NLL_", row.names(report$likelihoods_used))
  vec[is.na(vec)] <- NA
  
  return(vec)
}

get_compfit <- function(report, name) {
  if (NROW(report[[name]]) > 0) {
    tuning <- t(report[[name]][, "Curr_Var_Adj", drop = FALSE])
    cname <- switch(name,
                    Length_Comp_Fit_Summary = "Curr_Var_Adj_lcomp_flt_",
                    Age_Comp_Fit_Summary = "Curr_Var_Adj_agecomp_flt_"
    )
    colnames(tuning) <- paste0(
      cname,
      report[[name]][, "Fleet"], "_",
      report[[name]][, "Fleet_name"]
    )
  } else {
    tuning <- data.frame(matrix(nrow = 1, ncol = 0),
                         stringsAsFactors = FALSE
    )
  }
  return(tuning)
}