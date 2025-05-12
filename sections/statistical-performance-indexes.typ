#import "@preview/dvdtyp:1.0.1": *


= Statistical performance indexes

There are three measures of central tendencies, they are *mode*, *median* and *mean*.

#example()[
- *Mode*: most commonly observed value
- *Median*: midpoint
- *Mean*: average
]

#figure(
  image("../images/cenral-tendency.png", width: 70%),
  caption: "Central tendency"
)<fig:central-tendency>

Measures of dispersion are *range*, *variance* and *standard deviation*.
#example()[
- *Range*: maximum - minimum
- *Variance*: mean of the squared differences between the elements of a dataset and their mean
- *Standard deviation*: square root of the variance
]

Measures of association are *covariance* and *correlation*.
#example()[
- *Covariance*: measure of the joint variability of two random variables
- *Correlation*: measure of the strength and direction of the linear relationship between two random variables
]

Some other measures are *skewness* and *kurtosis*:
#example()[
- *Skewness*: how symmetric a probability distribution is
- *Kurtosis*: how tailed a probability distribution is
]

#figure(
  image("../images/skew-kurto.png", width: 70%),
  caption: "Skewness and kurtosis"
)<fig:skew-kurto>

Some units discussed in the lecture:
#example()[
  - regression metrics (MAE, MSE, RMSE, R2)
  - classification metrics (accuracy, precision, recall, F1-score, sensitivity, specificity, ROC, AUC)
  - Computer Vision metrics (PSNR, SSIM, IoU)
  - timeseries related metrics (fit)
]