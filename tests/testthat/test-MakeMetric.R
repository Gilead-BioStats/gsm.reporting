test_that("MakeMetric includes Active column when present in meta (#62)", {
  given <- list(
    a = list(
      meta = list(
        Type = "Metric",
        ID = "kri0001",
        GroupLevel = "Site",
        Abbreviation = "AE",
        Active = TRUE
      )
    ),
    b = list(
      meta = list(
        Type = "Metric",
        ID = "kri0002",
        GroupLevel = "Site",
        Abbreviation = "SAE",
        Active = FALSE
      )
    )
  )
  result <- MakeMetric(given)
  expect_true("Active" %in% names(result))
  expect_identical(result$Active, c(TRUE, FALSE))
})

test_that("MakeMetric includes GenerateSignal column when present in meta (#62)", {
  given <- list(
    a = list(
      meta = list(
        Type = "Metric",
        ID = "kri0001",
        GroupLevel = "Site",
        Abbreviation = "AE",
        GenerateSignal = TRUE
      )
    ),
    b = list(
      meta = list(
        Type = "Metric",
        ID = "kri0002",
        GroupLevel = "Site",
        Abbreviation = "SAE",
        GenerateSignal = FALSE
      )
    )
  )
  result <- MakeMetric(given)
  expect_true("GenerateSignal" %in% names(result))
  expect_identical(result$GenerateSignal, c(TRUE, FALSE))
})

test_that("MakeMetric makes dfMetrics", {
  given <- list(
    a = list(
      meta = list(
        Type = "Metric",
        ID = "kri0001",
        GroupLevel = "Site",
        Abbreviation = "AE"
      )
    ),
    b = list(
      meta = list(
        Type = "Metric",
        ID = "kri0002",
        GroupLevel = "Site",
        Abbreviation = "SAE"
      )
    )
  )
  expected <- tibble::tibble(
    Type = "Metric",
    ID = c("kri0001", "kri0002"),
    GroupLevel = "Site",
    Abbreviation = c("AE", "SAE"),
    MetricID = c("Metric_kri0001", "Metric_kri0002")
  )
  expect_identical(
    MakeMetric(given),
    expected
  )
})
