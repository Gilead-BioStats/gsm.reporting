#' Calculate Change
#'
#' Calculate the change from the previous snapshot date.
#'
#' @param dfResults `data.frame` A stacked summary of analysis pipeline output.
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
#' @param intSnapshots `integer` The number of snapshots to calculate changes for.
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
    strIDColumns = c(
        "StudyID",
        "GroupLevel",
        "GroupID",
        "MetricID"
    ),
    strSnapshotDateColumn = "SnapshotDate",
    intSnapshots = 1,
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

    # Check that all columns exist in [ dfResults ].
    for (strColumn in c(
        strIDColumns,
        strSnapshotDateColumn,
        strMetricColumns
    )) {
        stop_if(
            cnd = !strColumn %in% colnames(dfResults),
            message = glue::glue("`{strColumn} not found in `dfResults`.")
        )
    }

    # Calculate change from previous snapshot.
    dfChanges <- dfResults %>%
        tidyr::pivot_longer(
            cols = all_of(strMetricColumns),
            names_to = "Param",
            values_to = "Value"
        ) %>%
        dplyr::mutate(
            Param = factor(Param, levels = strMetricColumns)
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
            Change = Value - dplyr::lag(Value, n = intSnapshots),
            PercentChange = Change / dplyr::lag(Value, n = intSnapshots) * 100
        ) %>%
        dplyr::ungroup() %>%
        dplyr::arrange(across(all_of(c(
            strIDColumns,
            'Param',
            strSnapshotDateColumn
        ))))

    return(dfChanges)
}
