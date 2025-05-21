## set up test data and params

dfResults <- data.frame(
  StudyID = c(1, 1, 1, 2, 2, 2),
  GroupLevel = c("A", "A", "A", "B", "B", "B"),
  GroupID = c(1, 1, 1, 2, 2, 2),
  MetricID = c("Metric A", "Metric A", "Metric A", "Metric B", "Metric B", "Metric B"),
  SnapshotDate = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-01-01", "2023-02-01", "2023-03-01")),
  Numerator = c(10, 20, 30, 5, 10, 15),
  Denominator = c(100, 200, 300, 50, 100, 150),
  Metric = c(.1, .1, .1, .1, .1, .1),
  Score = c(0.1, 0.2, 0.3, 0.05, 0.1, 0.15),
  Flag = c(-2, -1, 0, 0, 1, 2)
)

strIDColumns <- c(
  "StudyID",
  "GroupLevel",
  "GroupID",
  "MetricID"
)

strSnapshotDateColumn <- "SnapshotDate"

strMetricColumns <- c(
  "Numerator",
  "Denominator",
  "Metric",
  "Score",
  "Flag"
)

test_that(
    '[ CalculateChange ] correctly calculates change from the previous snapshot.',
    {

        # [ CalculateChange ] returns a transposed data frame with one record per combination of the
        # following columns, where [ Param ] is the name of the column and [ Value ] is the value of
        # that column:
        # - StudyID
        # - GroupLevel
        # - GroupID
        # - MetricID
        # - SnapshotDate
        # - Param
        dfChanges <- CalculateChange(
            dfResults = dfResults
        )

        # Check that the output is a data frame.
        expect_true(is.data.frame(dfChanges))

        # Check that the output has the expected number of rows.
        expect_equal(
            nrow(dfChanges),
            nrow(dfResults)
        )

        # Check that the output has the expected columns.
        expect_true(all(c(
            strIDColumns,
            strSnapshotDateColumn,
            "PrevSnapshotDate",
            paste(strMetricColumns,"Value", sep = "_"),
            paste(strMetricColumns,"Change", sep = "_"),
            paste(strMetricColumns,"PercentChange", sep = "_")
        ) %in% colnames(dfChanges)))


        # Check that the output has the expected values.
        expect_equal(
            dfChanges$Numerator_Value,
            c(20, 30, 10, 10, 15, 5)
        )
        expect_equal(
            dfChanges$Denominator_Value,
            c(200, 300, 100, 100, 150, 50)
        )
        expect_equal(
            dfChanges$Metric_Value,
            c(.1, .1, .1, .1, .1, .1)
        )
        expect_equal(
            dfChanges$Score_Value,
            c(0.2, 0.3, 0.1, 0.1, 0.15, 0.05)
        )
        expect_equal(
            dfChanges$Flag_Value,
            c(-1, 0, -2, 1, 2, 0)
        )

        # Check that the output has the expected change values.
        expect_equal(
            dfChanges$Numerator_Change,
            c(10, 10, NA, 5, 5, NA)
        )
        expect_equal(
            dfChanges$Denominator_Change,
            c(100, 100, NA, 50, 50, NA)
        )
        expect_equal(
            dfChanges$Metric_Change,
            c(0, 0, NA, 0, 0, NA)
        )
        expect_equal(
            dfChanges$Score_Change,
            c(0.1, 0.1, NA, 0.05, 0.05, NA)
        )
        expect_equal(
            dfChanges$Flag_Change,
            c(1, 1, NA, 1, 1, NA)
        )

        # Check that the output has the expected percent change values.
        expect_equal(
            dfChanges$Numerator_PercentChange,
            c(100, 50, NA, 100, 50, NA)
        )
        expect_equal(
            dfChanges$Denominator_PercentChange,
            c(100, 50, NA, 100, 50, NA)
        )
        expect_equal(
            dfChanges$Metric_PercentChange,
            c(0, 0, NA, 0, 0, NA)
        )
        expect_equal(
            dfChanges$Score_PercentChange,
            c(100, 50, NA, 100, 50, NA)
        )
        expect_equal(
            dfChanges$Flag_PercentChange,
            c(-50, -100, NA, Inf, 100, NA)
        )
    }
)

# test_that(
#     '[ CalculateChange ] correctly calculates change from two snapshots ago.',
#     {
#         # Create a sample data frame with three snapshots.
#         dfResults <- data.frame(
#             StudyID = c(1, 1, 1, 2, 2, 2),
#             GroupLevel = c("A", "A", "A", "B", "B", "B"),
#             GroupID = c(1, 1, 1, 2, 2, 2),
#             MetricID = c("Metric A", "Metric A", "Metric A", "Metric B", "Metric B", "Metric B"),
#             SnapshotDate = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-01-01", "2023-02-01", "2023-03-01")),
#             Numerator = c(10, 20, 30, 5, 10, 15),
#             Denominator = c(100, 200, 300, 50, 100, 150),
#             Metric = c(.1, .1, .1, .1, .1, .1),
#             Score = c(0.1, 0.2, 0.3, 0.05, 0.1, 0.15),
#             Flag = c(-2, -1, 0, 0, 1, 2)
#         )
#
#         dfChanges <- CalculateChange(
#             dfResults = dfResults,
#             intSnapshots = 2
#         )
#
#         # Check that the output has the expected change values.
#         expect_equal(
#             dfChanges$Change[dfChanges$Param == "Numerator"],
#             c(NA, NA, 20, NA, NA, 10)
#         )
#         expect_equal(
#             dfChanges$Change[dfChanges$Param == "Denominator"],
#             c(NA, NA, 200, NA, NA, 100)
#         )
#         expect_equal(
#             dfChanges$Change[dfChanges$Param == "Metric"],
#             c(NA, NA, 0, NA, NA, 0)
#         )
#         expect_equal(
#             dfChanges$Change[dfChanges$Param == "Score"],
#             c(NA, NA, 0.2, NA, NA, 0.1)
#         )
#         expect_equal(
#             dfChanges$Change[dfChanges$Param == "Flag"],
#             c(NA, NA, 2, NA, NA, 2)
#         )
#
#         # Check that the output has the expected percent change values.
#         expect_equal(
#             dfChanges$PercentChange[dfChanges$Param == "Numerator"],
#             c(NA, NA, 200, NA, NA, 200)
#         )
#         expect_equal(
#             dfChanges$PercentChange[dfChanges$Param == "Denominator"],
#             c(NA, NA, 200, NA, NA, 200)
#         )
#         expect_equal(
#             dfChanges$PercentChange[dfChanges$Param == "Metric"],
#             c(NA, NA, 0, NA, NA, 0)
#         )
#         expect_equal(
#             dfChanges$PercentChange[dfChanges$Param == "Score"],
#             c(NA, NA, 200, NA, NA, 200)
#         )
#         expect_equal(
#             dfChanges$PercentChange[dfChanges$Param == "Flag"],
#             c(NA, NA, -100, NA, NA, Inf)
#         )
#     }
# )

test_that(
  '[ CalculateChange ] correctly calculates change from the snapshot when provided the date.',
  {
    dfChanges <- CalculateChange(
      dfResults = dfResults,
      dPrevSnapshotDate = "2023-01-01"
    )
    expect_equal(unique(dfChanges$SnapshotDate), c("2023-03-01", "2023-01-01") %>% as.Date())

    #expect error for dPrevSnapshotDate that doesn't exist in dfResults
    expect_error(dfChanges <- CalculateChange(
      dfResults = dfResults,
      dPrevSnapshotDate = "2023-03-01"),
    regexp = "cannot be equal to the current snapshot date"
    )

    #expect error when dPrevSnapshotDate is equal to the current snapshot date
    expect_error(dfChanges <- CalculateChange(
      dfResults = dfResults,
      dPrevSnapshotDate = "2023-01-15"),
      regexp = "not found"
    )
})
