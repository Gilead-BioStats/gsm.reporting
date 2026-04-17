# MakeBounds makes dfBounds (#41, #42)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 139.448.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
      Parsed 1,2 to numeric vector: 1, 2
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,826 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        95.5           4.56     0.139 0.00146 Analysis_kri0~ AA-AA-~
       2        -2        98.7           4.59     0.284 0.00287 Analysis_kri0~ AA-AA-~
       3        -2       102.            4.62     0.430 0.00422 Analysis_kri0~ AA-AA-~
       4        -2       105.            4.66     0.579 0.00550 Analysis_kri0~ AA-AA-~
       5        -2       108.            4.69     0.729 0.00673 Analysis_kri0~ AA-AA-~
       6        -2       112.            4.72     0.882 0.00790 Analysis_kri0~ AA-AA-~
       7        -2       115.            4.74     1.04  0.00902 Analysis_kri0~ AA-AA-~
       8        -2       118.            4.77     1.19  0.0101  Analysis_kri0~ AA-AA-~
       9        -2       121.            4.80     1.35  0.0111  Analysis_kri0~ AA-AA-~
      10        -2       125.            4.82     1.51  0.0121  Analysis_kri0~ AA-AA-~
      # i 10,816 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.224.
    Output
      # A tibble: 1,224 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        95.5           4.56     0.139 0.00146 Analysis_kri0~ AA-AA-~
       2        -2        98.7           4.59     0.284 0.00287 Analysis_kri0~ AA-AA-~
       3        -2       102.            4.62     0.430 0.00422 Analysis_kri0~ AA-AA-~
       4        -2       105.            4.66     0.579 0.00550 Analysis_kri0~ AA-AA-~
       5        -2       108.            4.69     0.729 0.00673 Analysis_kri0~ AA-AA-~
       6        -2       112.            4.72     0.882 0.00790 Analysis_kri0~ AA-AA-~
       7        -2       115.            4.74     1.04  0.00902 Analysis_kri0~ AA-AA-~
       8        -2       118.            4.77     1.19  0.0101  Analysis_kri0~ AA-AA-~
       9        -2       121.            4.80     1.35  0.0111  Analysis_kri0~ AA-AA-~
      10        -2       125.            4.82     1.51  0.0121  Analysis_kri0~ AA-AA-~
      # i 1,214 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.224.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 139.448.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.048.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 72.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 288.768.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
      Parsed 1,2 to numeric vector: 1, 2
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,826 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        95.5           4.56     0.139 0.00146 Analysis_kri0~ AA-AA-~
       2        -2        98.7           4.59     0.284 0.00287 Analysis_kri0~ AA-AA-~
       3        -2       102.            4.62     0.430 0.00422 Analysis_kri0~ AA-AA-~
       4        -2       105.            4.66     0.579 0.00550 Analysis_kri0~ AA-AA-~
       5        -2       108.            4.69     0.729 0.00673 Analysis_kri0~ AA-AA-~
       6        -2       112.            4.72     0.882 0.00790 Analysis_kri0~ AA-AA-~
       7        -2       115.            4.74     1.04  0.00902 Analysis_kri0~ AA-AA-~
       8        -2       118.            4.77     1.19  0.0101  Analysis_kri0~ AA-AA-~
       9        -2       121.            4.80     1.35  0.0111  Analysis_kri0~ AA-AA-~
      10        -2       125.            4.82     1.51  0.0121  Analysis_kri0~ AA-AA-~
      # i 10,816 more rows
      # i 1 more variable: SnapshotDate <date>

