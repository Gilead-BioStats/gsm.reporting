# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
<<<<<<< HEAD
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
=======
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
>>>>>>> main
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
<<<<<<< HEAD
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
=======
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
>>>>>>> main
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
<<<<<<< HEAD
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
=======
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
>>>>>>> main
      # i 1 more variable: SnapshotDate <date>

