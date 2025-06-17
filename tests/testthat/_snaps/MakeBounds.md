# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 146.972.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 17.296.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 69.184.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.072.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,908 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        76.9           4.34    0.0409 0.000532 Analysis_kri~ AA-AA-~
       2        -2        80.1           4.38    0.176  0.00220  Analysis_kri~ AA-AA-~
       3        -2        83.3           4.42    0.314  0.00377  Analysis_kri~ AA-AA-~
       4        -2        86.5           4.46    0.454  0.00525  Analysis_kri~ AA-AA-~
       5        -2        89.7           4.50    0.597  0.00665  Analysis_kri~ AA-AA-~
       6        -2        92.9           4.53    0.742  0.00798  Analysis_kri~ AA-AA-~
       7        -2        96.1           4.57    0.888  0.00924  Analysis_kri~ AA-AA-~
       8        -2        99.4           4.60    1.04   0.0104   Analysis_kri~ AA-AA-~
       9        -2       103.            4.63    1.19   0.0116   Analysis_kri~ AA-AA-~
      10        -2       106.            4.66    1.34   0.0127   Analysis_kri~ AA-AA-~
      # i 10,898 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.212.
    Output
      # A tibble: 1,232 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        76.9           4.34    0.0409 0.000532 Analysis_kri~ AA-AA-~
       2        -2        80.1           4.38    0.176  0.00220  Analysis_kri~ AA-AA-~
       3        -2        83.3           4.42    0.314  0.00377  Analysis_kri~ AA-AA-~
       4        -2        86.5           4.46    0.454  0.00525  Analysis_kri~ AA-AA-~
       5        -2        89.7           4.50    0.597  0.00665  Analysis_kri~ AA-AA-~
       6        -2        92.9           4.53    0.742  0.00798  Analysis_kri~ AA-AA-~
       7        -2        96.1           4.57    0.888  0.00924  Analysis_kri~ AA-AA-~
       8        -2        99.4           4.60    1.04   0.0104   Analysis_kri~ AA-AA-~
       9        -2       103.            4.63    1.19   0.0116   Analysis_kri~ AA-AA-~
      10        -2       106.            4.66    1.34   0.0127   Analysis_kri~ AA-AA-~
      # i 1,222 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 3.212.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 146.972.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 0.06.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 17.296.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 69.184.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 276.736.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.072.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 10,908 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        76.9           4.34    0.0409 0.000532 Analysis_kri~ AA-AA-~
       2        -2        80.1           4.38    0.176  0.00220  Analysis_kri~ AA-AA-~
       3        -2        83.3           4.42    0.314  0.00377  Analysis_kri~ AA-AA-~
       4        -2        86.5           4.46    0.454  0.00525  Analysis_kri~ AA-AA-~
       5        -2        89.7           4.50    0.597  0.00665  Analysis_kri~ AA-AA-~
       6        -2        92.9           4.53    0.742  0.00798  Analysis_kri~ AA-AA-~
       7        -2        96.1           4.57    0.888  0.00924  Analysis_kri~ AA-AA-~
       8        -2        99.4           4.60    1.04   0.0104   Analysis_kri~ AA-AA-~
       9        -2       103.            4.63    1.19   0.0116   Analysis_kri~ AA-AA-~
      10        -2       106.            4.66    1.34   0.0127   Analysis_kri~ AA-AA-~
      # i 10,898 more rows
      # i 1 more variable: SnapshotDate <date>

