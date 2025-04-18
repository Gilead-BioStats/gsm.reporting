#' Calculate Bounds for display in scatterplots
#'
#' @description
#' `r lifecycle::badge("stable")`
#'
#' Calculate bounds across a set of metrics.
#'
#' @param dfMetrics `data.frame` Metric-specific metadata for use in charts and
#'   reporting. Created by passing an `lWorkflow` object to [MakeMetric()].
#'   Expected columns: `File`, `MetricID`, `Group`, `Abbreviation`, `Metric`,
#'   `Numerator`, `Denominator`, `Model`, `Score`, and `Threshold`. For more
#'   details see the Data Model vignette: `vignette("DataModel", package =
#'   "gsm.core")`.
#' @param dfResults `data.frame` A stacked summary of analysis pipeline output.
#'   Created by passing a list of results returned by [Summarize()] to
#'   [BindResults()]. Expected columns: `GroupID`, `GroupLevel`, `Numerator`,
#'   `Denominator`, `Metric`, `Score`, `Flag`, `MetricID`, `StudyID`,
#'   `SnapshotDate`.
#' @param strMetrics Character vector of `MetricID`s to include in `dfBounds`.
#'   All unique values from `dfResults$MetricID` used by default.
#' @param strStudyID Study ID. Uses `dfResults$StudyID` by default. If more than
#'   one snapshot date is found in `dfResults`, a warning is thrown and this
#'   function returns `NULL`.
#' @param dSnapshotDate Snapshot date. Uses `dfResults$SnapshotDate` by default.
#'   If more than one snapshot date is found in `dfResults`, a warning is thrown
#'   and this function returns `NULL`.
#'
#' @return A data frame.
#'
#' @examples
#' library(gsm.core)
#' dfBounds <- MakeBounds(
#'   dfResults = reportingResults,
#'   dfMetrics = reportingMetrics
#' )
#'
#' @export
MakeBounds <- function(
  dfResults,
  dfMetrics,
  strMetrics = unique(dfResults$MetricID),
  dSnapshotDate = unique(dfResults$SnapshotDate),
  strStudyID = unique(dfResults$StudyID)
) {
  stop_if(cnd = !length(strMetrics), message = "`strMetrics` must not be `NULL`.")
  stop_if(cnd = !length(dSnapshotDate), message = "`dSnapshotDate` must not be `NULL`.")
  stop_if(cnd = !length(strStudyID), message = "`strStudyID` must not be `NULL`.")

  LogMessage(
    level = "info",
    message = "Creating stacked dfBounds data for strMetrics",
    cli_detail = "inform"
  )

  if (length(dSnapshotDate) != 1) {
    LogMessage(
      level = "warn",
      message = "More than one `dSnapshotDate` found. Returning NULL"
    )
    return(NULL)
  }

  if (length(strStudyID) != 1) {
    LogMessage(
      level = "warn",
      message = "More than one `strStudyID` found. Return NULL"
    )
    return(NULL)
  }

  dfBounds <- strMetrics %>%
    purrr::map(function(strMetric) {
      dfResult <- dplyr::filter(dfResults, .data$MetricID == strMetric)
      lMetric <- dfMetrics %>%
        dplyr::filter(.data$MetricID == strMetric) %>%
        as.list()
      vThreshold <- ParseThreshold(strThreshold = lMetric$Threshold)
      if (!is.null(lMetric$AnalysisType) &&
        tolower(unique(lMetric$AnalysisType)) %in% c("identity")) {
        dfBounds <- NULL
      } else if (!is.null(lMetric$AnalysisType) &&
        tolower(unique(lMetric$AnalysisType)) %in% c("poisson")) {
        dfBounds <- Analyze_Poisson_PredictBounds(
          dfResult,
          vThreshold = vThreshold
        ) %>%
          mutate(MetricID = strMetric) %>%
          mutate(StudyID = strStudyID) %>%
          mutate(SnapshotDate = dSnapshotDate)
      } else {
        dfBounds <- Analyze_NormalApprox_PredictBounds(
          dfResult,
          strType = lMetric$AnalysisType %||% "binary",
          vThreshold = vThreshold
        ) %>%
          mutate(MetricID = strMetric) %>%
          mutate(StudyID = strStudyID) %>%
          mutate(SnapshotDate = dSnapshotDate)
      }

      return(dfBounds)
    }) %>%
    purrr::list_rbind()

  return(dfBounds)
}
