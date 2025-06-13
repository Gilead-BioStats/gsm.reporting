# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 142.856.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 300.8.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.8.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 75.2.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 300.8.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.072.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,923 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        60.9           4.11    0.0344 0.000565 Analysis_kri~ AA-AA-~
       2        -2        64.3           4.16    0.176  0.00274  Analysis_kri~ AA-AA-~
       3        -2        67.8           4.22    0.322  0.00474  Analysis_kri~ AA-AA-~
       4        -2        71.2           4.27    0.470  0.00660  Analysis_kri~ AA-AA-~
       5        -2        74.6           4.31    0.622  0.00833  Analysis_kri~ AA-AA-~
       6        -2        78.1           4.36    0.777  0.00995  Analysis_kri~ AA-AA-~
       7        -2        81.5           4.40    0.934  0.0115   Analysis_kri~ AA-AA-~
       8        -2        84.9           4.44    1.09   0.0129   Analysis_kri~ AA-AA-~
       9        -2        88.4           4.48    1.26   0.0142   Analysis_kri~ AA-AA-~
      10        -2        91.8           4.52    1.42   0.0155   Analysis_kri~ AA-AA-~
      # i 10,913 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.432.
    Output
      # A tibble: 1,244 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        60.9           4.11    0.0344 0.000565 Analysis_kri~ AA-AA-~
       2        -2        64.3           4.16    0.176  0.00274  Analysis_kri~ AA-AA-~
       3        -2        67.8           4.22    0.322  0.00474  Analysis_kri~ AA-AA-~
       4        -2        71.2           4.27    0.470  0.00660  Analysis_kri~ AA-AA-~
       5        -2        74.6           4.31    0.622  0.00833  Analysis_kri~ AA-AA-~
       6        -2        78.1           4.36    0.777  0.00995  Analysis_kri~ AA-AA-~
       7        -2        81.5           4.40    0.934  0.0115   Analysis_kri~ AA-AA-~
       8        -2        84.9           4.44    1.09   0.0129   Analysis_kri~ AA-AA-~
       9        -2        88.4           4.48    1.26   0.0142   Analysis_kri~ AA-AA-~
      10        -2        91.8           4.52    1.42   0.0155   Analysis_kri~ AA-AA-~
      # i 1,234 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.432.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 142.856.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.056.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 300.8.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 18.8.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 75.2.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 300.8.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.072.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,923 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        60.9           4.11    0.0344 0.000565 Analysis_kri~ AA-AA-~
       2        -2        64.3           4.16    0.176  0.00274  Analysis_kri~ AA-AA-~
       3        -2        67.8           4.22    0.322  0.00474  Analysis_kri~ AA-AA-~
       4        -2        71.2           4.27    0.470  0.00660  Analysis_kri~ AA-AA-~
       5        -2        74.6           4.31    0.622  0.00833  Analysis_kri~ AA-AA-~
       6        -2        78.1           4.36    0.777  0.00995  Analysis_kri~ AA-AA-~
       7        -2        81.5           4.40    0.934  0.0115   Analysis_kri~ AA-AA-~
       8        -2        84.9           4.44    1.09   0.0129   Analysis_kri~ AA-AA-~
       9        -2        88.4           4.48    1.26   0.0142   Analysis_kri~ AA-AA-~
      10        -2        91.8           4.52    1.42   0.0155   Analysis_kri~ AA-AA-~
      # i 10,913 more rows
      # i 1 more variable: SnapshotDate <date>

