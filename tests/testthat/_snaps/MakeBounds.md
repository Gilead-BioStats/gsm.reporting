# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 151.088.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.084.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 11,258 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        112.           4.72    0.0832 0.000743 Analysis_kri~ AA-AA-~
       2        -2        115.           4.75    0.223  0.00193  Analysis_kri~ AA-AA-~
       3        -2        119.           4.78    0.365  0.00308  Analysis_kri~ AA-AA-~
       4        -2        122.           4.80    0.508  0.00417  Analysis_kri~ AA-AA-~
       5        -2        125.           4.83    0.654  0.00522  Analysis_kri~ AA-AA-~
       6        -2        129.           4.86    0.801  0.00623  Analysis_kri~ AA-AA-~
       7        -2        132.           4.88    0.950  0.00720  Analysis_kri~ AA-AA-~
       8        -2        135.           4.91    1.10   0.00813  Analysis_kri~ AA-AA-~
       9        -2        139.           4.93    1.25   0.00903  Analysis_kri~ AA-AA-~
      10        -2        142.           4.96    1.41   0.00990  Analysis_kri~ AA-AA-~
      # i 11,248 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.332.
    Output
      # A tibble: 1,219 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        112.           4.72    0.0832 0.000743 Analysis_kri~ AA-AA-~
       2        -2        115.           4.75    0.223  0.00193  Analysis_kri~ AA-AA-~
       3        -2        119.           4.78    0.365  0.00308  Analysis_kri~ AA-AA-~
       4        -2        122.           4.80    0.508  0.00417  Analysis_kri~ AA-AA-~
       5        -2        125.           4.83    0.654  0.00522  Analysis_kri~ AA-AA-~
       6        -2        129.           4.86    0.801  0.00623  Analysis_kri~ AA-AA-~
       7        -2        132.           4.88    0.950  0.00720  Analysis_kri~ AA-AA-~
       8        -2        135.           4.91    1.10   0.00813  Analysis_kri~ AA-AA-~
       9        -2        139.           4.93    1.25   0.00903  Analysis_kri~ AA-AA-~
      10        -2        142.           4.96    1.41   0.00990  Analysis_kri~ AA-AA-~
      # i 1,209 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.332.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 151.088.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.084.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 11,258 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        112.           4.72    0.0832 0.000743 Analysis_kri~ AA-AA-~
       2        -2        115.           4.75    0.223  0.00193  Analysis_kri~ AA-AA-~
       3        -2        119.           4.78    0.365  0.00308  Analysis_kri~ AA-AA-~
       4        -2        122.           4.80    0.508  0.00417  Analysis_kri~ AA-AA-~
       5        -2        125.           4.83    0.654  0.00522  Analysis_kri~ AA-AA-~
       6        -2        129.           4.86    0.801  0.00623  Analysis_kri~ AA-AA-~
       7        -2        132.           4.88    0.950  0.00720  Analysis_kri~ AA-AA-~
       8        -2        135.           4.91    1.10   0.00813  Analysis_kri~ AA-AA-~
       9        -2        139.           4.93    1.25   0.00903  Analysis_kri~ AA-AA-~
      10        -2        142.           4.96    1.41   0.00990  Analysis_kri~ AA-AA-~
      # i 11,248 more rows
      # i 1 more variable: SnapshotDate <date>

