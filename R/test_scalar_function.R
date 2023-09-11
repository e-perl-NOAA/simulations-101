forecastTF <- ifelse(
  file.size(file.path(model_dir[32], "Forecast-report.sso")) %in% c(0, NA),
  FALSE, TRUE
)

report <- r4ss::SS_output(model_dir[32],
                          forecast = forecastTF,
                          covar = FALSE,
                          verbose = FALSE,
                          compfile = NULL,
                          warn = FALSE,
                          readwt = FALSE,
                          printstats = FALSE,
                          NoCompOK = TRUE)

scalar_32 <- get_results_scalar(report)
scalar_33 <- get_results_scalar(report)

rbind(scalar_32, scalar_33)

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

get_compfit <- function(report.file, name) {
  if (NROW(report.file[[name]]) > 0) {
    tuning <- t(report.file[[name]][, "Curr_Var_Adj", drop = FALSE])
    cname <- switch(name,
                    Length_Comp_Fit_Summary = "Curr_Var_Adj_lcomp_flt_",
                    Age_Comp_Fit_Summary = "Curr_Var_Adj_agecomp_flt_"
    )
    colnames(tuning) <- paste0(
      cname,
      report.file[[name]][, "Fleet"], "_",
      report.file[[name]][, "Fleet_name"]
    )
  } else {
    tuning <- data.frame(matrix(nrow = 1, ncol = 0),
                         stringsAsFactors = FALSE
    )
  }
  return(tuning)
}
