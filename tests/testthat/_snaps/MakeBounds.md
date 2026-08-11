# MakeBounds makes dfBounds (#41, #42)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 16.116.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 31.744.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 1.984.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 7.936.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 31.744.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.076.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
      Parsed 1,2 to numeric vector: 1, 2
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 0.064.
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 11,546 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        81.5           4.40     0.106 0.00130 Analysis_kri0~ AA-AA-~
       2        -2        84.5           4.44     0.239 0.00282 Analysis_kri0~ AA-AA-~
       3        -2        87.4           4.47     0.373 0.00427 Analysis_kri0~ AA-AA-~
       4        -2        90.4           4.50     0.510 0.00564 Analysis_kri0~ AA-AA-~
       5        -2        93.3           4.54     0.648 0.00694 Analysis_kri0~ AA-AA-~
       6        -2        96.3           4.57     0.788 0.00819 Analysis_kri0~ AA-AA-~
       7        -2        99.2           4.60     0.931 0.00938 Analysis_kri0~ AA-AA-~
       8        -2       102.            4.63     1.07  0.0105  Analysis_kri0~ AA-AA-~
       9        -2       105.            4.65     1.22  0.0116  Analysis_kri0~ AA-AA-~
      10        -2       108.            4.68     1.37  0.0127  Analysis_kri0~ AA-AA-~
      # i 11,536 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 2.944.
    Output
      # A tibble: 1,231 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        81.5           4.40     0.106 0.00130 Analysis_kri0~ AA-AA-~
       2        -2        84.5           4.44     0.239 0.00282 Analysis_kri0~ AA-AA-~
       3        -2        87.4           4.47     0.373 0.00427 Analysis_kri0~ AA-AA-~
       4        -2        90.4           4.50     0.510 0.00564 Analysis_kri0~ AA-AA-~
       5        -2        93.3           4.54     0.648 0.00694 Analysis_kri0~ AA-AA-~
       6        -2        96.3           4.57     0.788 0.00819 Analysis_kri0~ AA-AA-~
       7        -2        99.2           4.60     0.931 0.00938 Analysis_kri0~ AA-AA-~
       8        -2       102.            4.63     1.07  0.0105  Analysis_kri0~ AA-AA-~
       9        -2       105.            4.65     1.22  0.0116  Analysis_kri0~ AA-AA-~
      10        -2       108.            4.68     1.37  0.0127  Analysis_kri0~ AA-AA-~
      # i 1,221 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 2.944.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 16.116.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 31.744.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 1.984.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 7.936.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 31.744.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.076.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
      Parsed 1,2 to numeric vector: 1, 2
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 0.064.
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 11,546 x 8
         Threshold Denominator LogDenominator Numerator  Metric MetricID       StudyID
             <dbl>       <dbl>          <dbl>     <dbl>   <dbl> <chr>          <chr>  
       1        -2        81.5           4.40     0.106 0.00130 Analysis_kri0~ AA-AA-~
       2        -2        84.5           4.44     0.239 0.00282 Analysis_kri0~ AA-AA-~
       3        -2        87.4           4.47     0.373 0.00427 Analysis_kri0~ AA-AA-~
       4        -2        90.4           4.50     0.510 0.00564 Analysis_kri0~ AA-AA-~
       5        -2        93.3           4.54     0.648 0.00694 Analysis_kri0~ AA-AA-~
       6        -2        96.3           4.57     0.788 0.00819 Analysis_kri0~ AA-AA-~
       7        -2        99.2           4.60     0.931 0.00938 Analysis_kri0~ AA-AA-~
       8        -2       102.            4.63     1.07  0.0105  Analysis_kri0~ AA-AA-~
       9        -2       105.            4.65     1.22  0.0116  Analysis_kri0~ AA-AA-~
      10        -2       108.            4.68     1.37  0.0127  Analysis_kri0~ AA-AA-~
      # i 11,536 more rows
      # i 1 more variable: SnapshotDate <date>

