test_that("MakeBounds makes dfBounds", {
  gsm.core::reportingResults %>% dplyr::count(SnapshotDate)
  expect_snapshot({
    MakeBounds(
      dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate == "2025-04-01"),
      dfMetrics = gsm.core::reportingMetrics
    )
  })
})

test_that("MakeBounds uses user-supplied strMetrics", {
  expect_snapshot({
    MakeBounds(
      dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate == "2025-04-01"),
      dfMetrics = gsm.core::reportingMetrics,
      strMetrics = "Analysis_kri0001"
    )
  })
})

test_that("MakeBounds fails for NULLed arguments", {
  expect_error(
    {
      MakeBounds(
        dfResults = gsm.core::reportingResults,
        dfMetrics = gsm.core::reportingMetrics,
        strMetrics = NULL
      )
    },
    regexp = "strMetrics"
  )
  expect_error(
    {
      MakeBounds(
        dfResults = gsm.core::reportingResults,
        dfMetrics = gsm.core::reportingMetrics,
        dSnapshotDate = NULL
      )
    },
    regexp = "dSnapshotDate"
  )
  expect_error(
    {
      MakeBounds(
        dfResults = gsm.core::reportingResults,
        dfMetrics = gsm.core::reportingMetrics,
        strStudyID = NULL
      )
    },
    regexp = "strStudyID"
  )
})

test_that("MakeBounds fails gracefully for multiple arg values", {
  expect_warning(
    {
      expect_message(
        {
          dfBounds <- MakeBounds(
            dfResults = gsm.core::reportingResults,
            dfMetrics = gsm.core::reportingMetrics
          )
        },
        "Creating stacked dfBounds data"
      )
    },
    regexp = "SnapshotDate",
  )
  expect_null(dfBounds)
  expect_warning(
    {
      expect_message(
        {
          dfBounds <- MakeBounds(
            dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate == "2025-04-01"),
            dfMetrics = gsm.core::reportingMetrics,
            strStudyID = c("a", "b")
          )
        },
        "Creating stacked dfBounds data"
      )
    },
    regexp = "StudyID",
  )
  expect_null(dfBounds)
})

test_that("MakeBounds makes poisson dfBounds", {
  reportingMetrics <- gsm.core::reportingMetrics
  reportingMetrics$Type <- "poisson"
  expect_snapshot({
    MakeBounds(
      dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate == "2025-04-01"),
      dfMetrics = reportingMetrics
    )
  })
})
