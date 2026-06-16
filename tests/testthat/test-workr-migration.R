# Qualification test for gsm.reporting#64.
#
# The workflow-runtime entry points were re-pointed from {gsm.core} to {workr}.
# This test exercises that contract directly: the package's reporting workflow
# specs load and parse through workr::MakeWorkflowList() (the migrated runtime
# home). Staying analytics functions (Analyze_*, Summarize, etc.) remain on
# gsm.core:: and are out of scope here.

testthat::test_that("reporting workflow specs load through the workr runtime (#64)", {
  wf_dir <- file.path(
    system.file(package = "gsm.reporting"),
    "workflow",
    "3_reporting"
  )
  testthat::skip_if(!dir.exists(wf_dir), "reporting workflow specs not found")

  reporting_workflows <- workr::MakeWorkflowList(strPath = wf_dir)

  testthat::expect_type(reporting_workflows, "list")
  testthat::expect_gt(length(reporting_workflows), 0)
  # Each loaded workflow exposes runtime steps (the workr workflow contract).
  testthat::expect_true(all(vapply(
    reporting_workflows,
    function(w) length(w$steps) > 0,
    logical(1)
  )))
})
