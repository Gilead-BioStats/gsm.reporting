# MakeBounds makes dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 193.428.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 403.072.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 25.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 100.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 403.072.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.108.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 11,444 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        239.           5.48     0.184 0.000768 Analysis_kri~ AA-AA-~
       2        -2        244.           5.50     0.373 0.00153  Analysis_kri~ AA-AA-~
       3        -2        249.           5.52     0.564 0.00226  Analysis_kri~ AA-AA-~
       4        -2        254.           5.54     0.757 0.00298  Analysis_kri~ AA-AA-~
       5        -2        259.           5.56     0.952 0.00367  Analysis_kri~ AA-AA-~
       6        -2        264.           5.58     1.15  0.00435  Analysis_kri~ AA-AA-~
       7        -2        269.           5.60     1.35  0.00500  Analysis_kri~ AA-AA-~
       8        -2        274.           5.61     1.55  0.00564  Analysis_kri~ AA-AA-~
       9        -2        280.           5.63     1.75  0.00626  Analysis_kri~ AA-AA-~
      10        -2        285.           5.65     1.95  0.00686  Analysis_kri~ AA-AA-~
      # i 11,434 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds uses user-supplied strMetrics

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = gsm.core::reportingMetrics, strMetrics = "Analysis_kri0001")
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 5.064.
    Output
      # A tibble: 1,201 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        239.           5.48     0.184 0.000768 Analysis_kri~ AA-AA-~
       2        -2        244.           5.50     0.373 0.00153  Analysis_kri~ AA-AA-~
       3        -2        249.           5.52     0.564 0.00226  Analysis_kri~ AA-AA-~
       4        -2        254.           5.54     0.757 0.00298  Analysis_kri~ AA-AA-~
       5        -2        259.           5.56     0.952 0.00367  Analysis_kri~ AA-AA-~
       6        -2        264.           5.58     1.15  0.00435  Analysis_kri~ AA-AA-~
       7        -2        269.           5.60     1.35  0.00500  Analysis_kri~ AA-AA-~
       8        -2        274.           5.61     1.55  0.00564  Analysis_kri~ AA-AA-~
       9        -2        280.           5.63     1.75  0.00626  Analysis_kri~ AA-AA-~
      10        -2        285.           5.65     1.95  0.00686  Analysis_kri~ AA-AA-~
      # i 1,191 more rows
      # i 1 more variable: SnapshotDate <date>

# MakeBounds makes poisson dfBounds

    Code
      MakeBounds(dfResults = dplyr::filter(gsm.core::reportingResults, SnapshotDate ==
        "2025-04-01"), dfMetrics = reportingMetrics)
    Message
      Creating stacked dfBounds data for strMetrics
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -2,-1,2,3 to numeric vector: -2, -1, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 5.064.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 193.428.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.068.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 403.072.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 25.192.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 100.768.
      Parsed 2,3 to numeric vector: 2, 3
      nStep was not provided. Setting default step to 403.072.
      Parsed -3,-2,2,3 to numeric vector: -3, -2, 2, 3
      nStep was not provided. Setting default step to 0.108.
      Parsed 0.9,0.85 to numeric vector: 0.9, 0.85
    Output
      # A tibble: 11,444 x 8
         Threshold Denominator LogDenominator Numerator   Metric MetricID      StudyID
             <dbl>       <dbl>          <dbl>     <dbl>    <dbl> <chr>         <chr>  
       1        -2        239.           5.48     0.184 0.000768 Analysis_kri~ AA-AA-~
       2        -2        244.           5.50     0.373 0.00153  Analysis_kri~ AA-AA-~
       3        -2        249.           5.52     0.564 0.00226  Analysis_kri~ AA-AA-~
       4        -2        254.           5.54     0.757 0.00298  Analysis_kri~ AA-AA-~
       5        -2        259.           5.56     0.952 0.00367  Analysis_kri~ AA-AA-~
       6        -2        264.           5.58     1.15  0.00435  Analysis_kri~ AA-AA-~
       7        -2        269.           5.60     1.35  0.00500  Analysis_kri~ AA-AA-~
       8        -2        274.           5.61     1.55  0.00564  Analysis_kri~ AA-AA-~
       9        -2        280.           5.63     1.75  0.00626  Analysis_kri~ AA-AA-~
      10        -2        285.           5.65     1.95  0.00686  Analysis_kri~ AA-AA-~
      # i 11,434 more rows
      # i 1 more variable: SnapshotDate <date>

