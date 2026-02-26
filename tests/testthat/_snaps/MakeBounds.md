# MakeBounds makes dfBounds (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 143.3.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.076.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,897 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        72.4           4.28     0.114 0.00157 Analysis_kri0~ AA-AA-~
       2        -2        75.8           4.33     0.259 0.00342 Analysis_kri0~ AA-AA-~
       3        -2        79.1           4.37     0.407 0.00514 Analysis_kri0~ AA-AA-~
       4        -2        82.5           4.41     0.557 0.00675 Analysis_kri0~ AA-AA-~
       5        -2        85.9           4.45     0.711 0.00827 Analysis_kri0~ AA-AA-~
       6        -2        89.3           4.49     0.867 0.00970 Analysis_kri0~ AA-AA-~
       7        -2        92.7           4.53     1.02  0.0111  Analysis_kri0~ AA-AA-~
       8        -2        96.1           4.57     1.19  0.0123  Analysis_kri0~ AA-AA-~
       9        -2        99.5           4.60     1.35  0.0135  Analysis_kri0~ AA-AA-~
      10        -2       103.            4.63     1.51  0.0147  Analysis_kri0~ AA-AA-~
      # i 10,887 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.388.
    Output
      # A tibble: 1,241 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        72.4           4.28     0.114 0.00157 Analysis_kri0~ AA-AA-~
       2        -2        75.8           4.33     0.259 0.00342 Analysis_kri0~ AA-AA-~
       3        -2        79.1           4.37     0.407 0.00514 Analysis_kri0~ AA-AA-~
       4        -2        82.5           4.41     0.557 0.00675 Analysis_kri0~ AA-AA-~
       5        -2        85.9           4.45     0.711 0.00827 Analysis_kri0~ AA-AA-~
       6        -2        89.3           4.49     0.867 0.00970 Analysis_kri0~ AA-AA-~
       7        -2        92.7           4.53     1.02  0.0111  Analysis_kri0~ AA-AA-~
       8        -2        96.1           4.57     1.19  0.0123  Analysis_kri0~ AA-AA-~
       9        -2        99.5           4.60     1.35  0.0135  Analysis_kri0~ AA-AA-~
      10        -2       103.            4.63     1.51  0.0147  Analysis_kri0~ AA-AA-~
      # i 1,231 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.388.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 143.3.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.076.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,897 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        72.4           4.28     0.114 0.00157 Analysis_kri0~ AA-AA-~
       2        -2        75.8           4.33     0.259 0.00342 Analysis_kri0~ AA-AA-~
       3        -2        79.1           4.37     0.407 0.00514 Analysis_kri0~ AA-AA-~
       4        -2        82.5           4.41     0.557 0.00675 Analysis_kri0~ AA-AA-~
       5        -2        85.9           4.45     0.711 0.00827 Analysis_kri0~ AA-AA-~
       6        -2        89.3           4.49     0.867 0.00970 Analysis_kri0~ AA-AA-~
       7        -2        92.7           4.53     1.02  0.0111  Analysis_kri0~ AA-AA-~
       8        -2        96.1           4.57     1.19  0.0123  Analysis_kri0~ AA-AA-~
       9        -2        99.5           4.60     1.35  0.0135  Analysis_kri0~ AA-AA-~
      10        -2       103.            4.63     1.51  0.0147  Analysis_kri0~ AA-AA-~
      # i 10,887 more rows
      # i 1 more variable: SnapshotDate <date>

