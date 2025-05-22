#' Calculate Change
#'
#' Calculate the change from the previous snapshot date.
#'
#' @param dfResults `data.frame` A stacked summary of analysis pipeline output.
#'   Created by passing a list of results returned by [Summarize()] to
#'   [BindResults()]. Expected columns: `GroupID`, `GroupLevel`, `Numerator`,
#'   `Denominator`, `Metric`, `Score`, `Flag`, `MetricID`, `StudyID`,
#'   `SnapshotDate`.
#' @param dfPrevious `data.frame` A stacked summary of analysis pipeline output
#'   from the previous snapshot.
#'   Created by passing a list of results returned by [Summarize()] to
#'   [BindResults()]. Expected columns: `GroupID`, `GroupLevel`, `Numerator`,
#'   `Denominator`, `Metric`, `Score`, `Flag`, `MetricID`, `StudyID`,
#'   `SnapshotDate`.
#' @param strIDColumns `character` A vector of column names with which to group
#'   results. Default:
#'   - StudyID
#'   - GroupLevel
#'   - GroupID
#'   - MetricID
#' @param strSnapshotDateColumn `character` The name of the column containing the
#'   snapshot date. Default: `SnapshotDate`.
#' @param strMetricColumns `character` A vector of numeric column names with which calculate change from
#'   previous snapshot. Default:
#'   - Numerator
#'   - Denominator
#'   - Metric
#'   - Score
#'   - Flag
#'
#' @return `data.frame` A transposed table of results with a column for each attribute, its value,
#'   and the change from the previous snapshot.
#'
#' @examples
#' dfChChChChanges <- CalculateChange(gsm.core::reportingResults)
#'
#' @export

CalculateChange <- function(
    dfResults,
    dfPrevious = NULL,
    strIDColumns = c(
        "StudyID",
        "GroupLevel",
        "GroupID",
        "MetricID"
    ),
    strSnapshotDateColumn = "SnapshotDate",
    strMetricColumns = c(
        "Numerator",
        "Denominator",
        "Metric",
        "Score",
        "Flag"
    )
) {
    stop_if(
        cnd = !is.data.frame(dfResults),
        message = "`dfResults` must be a data frame."
    )

    # If dfPrevious is not a data.frame, just return the dfResults
    if (!is.data.frame(dfPrevious)) {
      cli::cli_alert_info("`dfPrevious` not supplied properly, so dfResults will be returned unchanged.")
      return(dfResults)
    }

    # Check that all columns exist in [ dfResults ] and [ dfPrevious ].
    for (strColumn in c(
        strIDColumns,
        strSnapshotDateColumn,
        strMetricColumns
    )) {
        stop_if(
            cnd = !strColumn %in% colnames(dfResults),
            message = glue::glue("`{strColumn} not found in `dfResults`.")
        )
      stop_if(
        cnd = !strColumn %in% colnames(dfPrevious),
        message = glue::glue("`{strColumn} not found in `dfPrevious`.")
      )
    }

    # Bind dfResults and dfPrevious and keep appropriate columns
    dfResults_combined <- dplyr::bind_rows(dfPrevious, dfResults) %>%
      select(all_of(c(strIDColumns,
               strSnapshotDateColumn,
               strMetricColumns)))


    # # If dPrevSnapshotDate is not null, then filter the data to only the current and previous snapshot dates.
    # # This is primarily for gismo implementation when intermediary snapshots are taken but not reported.
    # if (!is.null(dPrevSnapshotDate)) {
    #
    #   # determine current snapshot date and ensure both are formatted as dates
    #   dCurrentSnapshotDate <- max(dfResults[[strSnapshotDateColumn]])  %>% as.Date()
    #   dPrevSnapshotDate <- dPrevSnapshotDate %>% as.Date()
    #
    #   # ensure dPrevSnapshotDate is a date in dfResults$SnapshotDate
    #   # and that it is not equal to the current snapshot date.
    #   stop_if(
    #     cnd = !dPrevSnapshotDate %in% dfResults$SnapshotDate,
    #     message = glue::glue("`{dPrevSnapshotDate} not found in `dfResults$SnapshotDate`.")
    #   )
    #   stop_if(
    #     cnd = dPrevSnapshotDate == dCurrentSnapshotDate,
    #     message = glue::glue("`dPrevSnapshotDate cannot be equal to the current snapshot date in dfResults`.")
    #   )
    #
    #   # filter dfResults based on SnapshotDate
    #   dfResults <- dfResults %>%
    #     dplyr::filter(.data[[strSnapshotDateColumn]] %in% c(dPrevSnapshotDate, dCurrentSnapshotDate))
    #
    # } else {
    #   dCurrentSnapshotDate <- max(dfResults[[strSnapshotDateColumn]])  %>% as.Date()
    #   dPrevSnapshotDate <- sort(dfResults[[strSnapshotDateColumn]] %>% unique())[-2]
    # }

    # Calculate change from previous snapshot.
    dfChanges <- dfResults_combined %>%
        tidyr::pivot_longer(
            cols = all_of(strMetricColumns),
            names_to = "Param",
            values_to = "Value"
        ) %>%
        dplyr::mutate(
            Param = factor(.data$Param, levels = strMetricColumns)
        ) %>%
        dplyr::group_by(across(all_of(c(
            strIDColumns,
            'Param'
        )))) %>%
        dplyr::arrange(
            strSnapshotDateColumn,
            .by_group = TRUE
        ) %>%
        dplyr::mutate(
            Change = Value - dplyr::lag(.data$Value),
            PercentChange = .data$Change / dplyr::lag(.data$Value) * 100,
            PrevSnapshotDate = dplyr::lag(.data[[strSnapshotDateColumn]])
        ) %>%
        dplyr::ungroup() %>%
        dplyr::arrange(across(all_of(c(
            strIDColumns,
            'PrevSnapshotDate',
            'Param',
            strSnapshotDateColumn
        )))) %>%
      tidyr::pivot_wider(names_from = Param,
                         values_from = c(Value, Change, PercentChange),
                         names_glue = "{Param}_{.value}",)

    return(dfChanges)
}
