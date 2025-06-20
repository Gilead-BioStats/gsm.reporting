# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 142.4.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 270.72.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 16.92.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 67.68.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 270.72.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,818 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        61.3           4.12    0.0740 0.00121 Analysis_kri0~ AA-AA-~
       2        -2        64.5           4.17    0.209  0.00324 Analysis_kri0~ AA-AA-~
       3        -2        67.7           4.22    0.348  0.00513 Analysis_kri0~ AA-AA-~
       4        -2        71.0           4.26    0.489  0.00689 Analysis_kri0~ AA-AA-~
       5        -2        74.2           4.31    0.633  0.00853 Analysis_kri0~ AA-AA-~
       6        -2        77.4           4.35    0.780  0.0101  Analysis_kri0~ AA-AA-~
       7        -2        80.6           4.39    0.928  0.0115  Analysis_kri0~ AA-AA-~
       8        -2        83.8           4.43    1.08   0.0129  Analysis_kri0~ AA-AA-~
       9        -2        87.0           4.47    1.23   0.0142  Analysis_kri0~ AA-AA-~
      10        -2        90.2           4.50    1.39   0.0154  Analysis_kri0~ AA-AA-~
      # i 10,808 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.208.
    Output
      # A tibble: 1,245 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        61.3           4.12    0.0740 0.00121 Analysis_kri0~ AA-AA-~
       2        -2        64.5           4.17    0.209  0.00324 Analysis_kri0~ AA-AA-~
       3        -2        67.7           4.22    0.348  0.00513 Analysis_kri0~ AA-AA-~
       4        -2        71.0           4.26    0.489  0.00689 Analysis_kri0~ AA-AA-~
       5        -2        74.2           4.31    0.633  0.00853 Analysis_kri0~ AA-AA-~
       6        -2        77.4           4.35    0.780  0.0101  Analysis_kri0~ AA-AA-~
       7        -2        80.6           4.39    0.928  0.0115  Analysis_kri0~ AA-AA-~
       8        -2        83.8           4.43    1.08   0.0129  Analysis_kri0~ AA-AA-~
       9        -2        87.0           4.47    1.23   0.0142  Analysis_kri0~ AA-AA-~
      10        -2        90.2           4.50    1.39   0.0154  Analysis_kri0~ AA-AA-~
      # i 1,235 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.208.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 142.4.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 270.72.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 16.92.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 67.68.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 270.72.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,818 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        61.3           4.12    0.0740 0.00121 Analysis_kri0~ AA-AA-~
       2        -2        64.5           4.17    0.209  0.00324 Analysis_kri0~ AA-AA-~
       3        -2        67.7           4.22    0.348  0.00513 Analysis_kri0~ AA-AA-~
       4        -2        71.0           4.26    0.489  0.00689 Analysis_kri0~ AA-AA-~
       5        -2        74.2           4.31    0.633  0.00853 Analysis_kri0~ AA-AA-~
       6        -2        77.4           4.35    0.780  0.0101  Analysis_kri0~ AA-AA-~
       7        -2        80.6           4.39    0.928  0.0115  Analysis_kri0~ AA-AA-~
       8        -2        83.8           4.43    1.08   0.0129  Analysis_kri0~ AA-AA-~
       9        -2        87.0           4.47    1.23   0.0142  Analysis_kri0~ AA-AA-~
      10        -2        90.2           4.50    1.39   0.0154  Analysis_kri0~ AA-AA-~
      # i 10,808 more rows
      # i 1 more variable: SnapshotDate <date>

