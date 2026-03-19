# MakeBounds makes dfBounds (#41, #42)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 150.692.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.052.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.052.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 17.296.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 69.184.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,673 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        84.5           4.44    0.0202 0.000239 Analysis_kri~ AA-AA-~
       2        -2        87.6           4.47    0.153  0.00175  Analysis_kri~ AA-AA-~
       3        -2        90.7           4.51    0.289  0.00318  Analysis_kri~ AA-AA-~
       4        -2        93.8           4.54    0.426  0.00455  Analysis_kri~ AA-AA-~
       5        -2        96.9           4.57    0.566  0.00584  Analysis_kri~ AA-AA-~
       6        -2        99.9           4.60    0.707  0.00708  Analysis_kri~ AA-AA-~
       7        -2       103.            4.64    0.851  0.00826  Analysis_kri~ AA-AA-~
       8        -2       106.            4.66    0.996  0.00939  Analysis_kri~ AA-AA-~
       9        -2       109.            4.69    1.14   0.0105   Analysis_kri~ AA-AA-~
      10        -2       112.            4.72    1.29   0.0115   Analysis_kri~ AA-AA-~
      # i 10,663 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.092.
    Output
      # A tibble: 1,226 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        84.5           4.44    0.0202 0.000239 Analysis_kri~ AA-AA-~
       2        -2        87.6           4.47    0.153  0.00175  Analysis_kri~ AA-AA-~
       3        -2        90.7           4.51    0.289  0.00318  Analysis_kri~ AA-AA-~
       4        -2        93.8           4.54    0.426  0.00455  Analysis_kri~ AA-AA-~
       5        -2        96.9           4.57    0.566  0.00584  Analysis_kri~ AA-AA-~
       6        -2        99.9           4.60    0.707  0.00708  Analysis_kri~ AA-AA-~
       7        -2       103.            4.64    0.851  0.00826  Analysis_kri~ AA-AA-~
       8        -2       106.            4.66    0.996  0.00939  Analysis_kri~ AA-AA-~
       9        -2       109.            4.69    1.14   0.0105   Analysis_kri~ AA-AA-~
      10        -2       112.            4.72    1.29   0.0115   Analysis_kri~ AA-AA-~
      # i 1,216 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds (#41)

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.092.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 150.692.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.052.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.052.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 17.296.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 69.184.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.064.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
      Parsed 1.5,2.5 to numeric vector: 1.5, 2.5
    Condition
      Warning:
      Warning: Failed to parse strThreshold ('NA') to a numeric vector.
    Output
      # A tibble: 10,673 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        84.5           4.44    0.0202 0.000239 Analysis_kri~ AA-AA-~
       2        -2        87.6           4.47    0.153  0.00175  Analysis_kri~ AA-AA-~
       3        -2        90.7           4.51    0.289  0.00318  Analysis_kri~ AA-AA-~
       4        -2        93.8           4.54    0.426  0.00455  Analysis_kri~ AA-AA-~
       5        -2        96.9           4.57    0.566  0.00584  Analysis_kri~ AA-AA-~
       6        -2        99.9           4.60    0.707  0.00708  Analysis_kri~ AA-AA-~
       7        -2       103.            4.64    0.851  0.00826  Analysis_kri~ AA-AA-~
       8        -2       106.            4.66    0.996  0.00939  Analysis_kri~ AA-AA-~
       9        -2       109.            4.69    1.14   0.0105   Analysis_kri~ AA-AA-~
      10        -2       112.            4.72    1.29   0.0115   Analysis_kri~ AA-AA-~
      # i 10,663 more rows
      # i 1 more variable: SnapshotDate <date>

