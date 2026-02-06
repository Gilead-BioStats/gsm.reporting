# Parse metadata from workflows to a data frame

**\[stable\]**

Used to format metric metadata (`dfMetrics`) for use in charts and
reports. This function takes a list of workflows and returns a data
frame with one row per `MetricID`.

## Usage

``` r
MakeMetric(lWorkflows)
```

## Arguments

- lWorkflows:

  A list of workflows, like the one returned by
  [`gsm.core::MakeWorkflowList()`](https://gilead-biostats.github.io/gsm.core/reference/MakeWorkflowList.html).

## Value

A data frame.

## Examples

``` r
library(gsm.core)
lWorkflows <- MakeWorkflowList(
  strPath = "workflow/2_metrics",
  strNames = "kri",
  strPackage = "gsm.kri"
)
dfMetrics <- MakeMetric(lWorkflows)
```
