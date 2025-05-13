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

== Regression metrics

Mean absolute Error (MAE) is the average of the absolute differences between predicted and actual values.

#definition()[
  $ "MAE" =1/n  sum_(i=1)^n |y_i-hat(y)_i| $
  - $y_i$ = measured value
  - $hat(y)_i$ = predicted value
  - $n$ = \# of observations
]

Mean Squared Error (MSE) is the average of the squared differences between predicted and actual values.
#definition()[
  $ "MSE" =1/n  sum_(i=1)^n (y_i-hat(y)_i)^2 $
  - $y_i$ = measured value
  - $hat(y)_i$ = predicted value
  - $n$ = \# of observations
]

Root mean squared error (RMSE) is the square root of the mean of the squared differences between predicted and actual values.
#definition()[
  $ "RMSE" = sqrt(1/n  sum_(i=1)^n (y_i-hat(y)_i)^2) $
  - $y_i$ = measured value
  - $hat(y)_i$ = predicted value
  - $n$ = \# of observations
]

$R^2$ or the coefficient of determination is the proportion of variance in the dependent variable that can be explained by the independent variable(s).
#definition()[
  $ R^2 = 1- (sum_(i=1)^n (y_i-hat(y)_i)^2)
            /(sum_(i=1)^n (y_i-overline(y)_i)^2)
        = 1 - (SS_"res"/SS_"tot") $
  - $y_i$ = measured value
  - $hat(y)_i$ = predicted value
  - $n$ = \# of observations
  - $overline(y)_i$ = sample mean of the $y_i$'s
  - $SS_"res"$ = residual sum of squares
  - $SS_"tot"$ = total sum of squares
]

Comparison of *MSE*, *MAE* and *$R^2$*:

#table(
  columns: 3,
   [*MSE*],[*MAE*],[*$R^2$*],
  [based on square eror],[based on the absolute value],[based on correlation between actual and predicted value],
  [ value lies between 0 and $+infinity$],[ value lies between 0 and $+infinity$],[ value lies between $-infinity$ and 1],
  [most sensitive to outliers],[least sensitive to outliers],[in-between sensitive to outliers],
  [small value indicates better model],[small value indicates better model],[value near 1 indicates better model],
)

== Classification metrics
When performing classification we have different outcomes, they can be seen in the @fig:testoutcome. An important definition is the types of errors that can occur:
#example()[
- False positive (*FP*): incorrectly predicted positive class (*Type I error*)
- False negative (*FN*): incorrectly predicted negative class (*Type II error*)
]
#figure(
  image("../images/testoutcome.png", width: 70%),
  caption: "False positive and false negative etc..."
)<fig:testoutcome>

== Accuracy, recall, precision and F1-score
Accuracy is the ratio of correctly predicted instances to the total instances. 
#definition("Accuracy")[
  $ "Accuracy" = (T P+T N)/sum(T P+T N+F P+F N) $
]
Recall_(or sensitivity)_ is the ratio of correctly predicted positive observations to all actual positive observations.
#definition("Recall/sensitivity")[
  $ "Recall" = (sum T P)/sum(T P+F N) $
]
Precision is the ratio of correctly predicted positive observations to the total predicted positive observations.
#definition("Precision")[
  $ "Precision" = (sum T P)/sum(T P+F P) $
]
F1-score is the weighted average of precision and recall.
#definition("F1-score")[
  $ "F1-score" = (2*("Precision"*"Recall"))/("Precision"+"Recall") $
]

When designing the classifier there are some rules of thumb to follow:
#example()[
- *recall*: maximize this if false negatives are more costly
- *precision*: maximize this if false positives are more costly
- *F1 score*: maximize this if costs are similar and you want a balanced performance 
]

We can visualize this with a ROC-curve#footnote("ROC: receiver operating characteristic"):
#figure(
  image("../images/roc.png", width: 40%),
  caption: "ROC-curve"
)<fig:roc>

#example()[
  - *High Sensitivity* & *Low Specificity*: you capture most positive instances but might misclassify many negative instances as positive. Appropriate only when detecting all positive instances is crucial, even if it raises false alarms
  - *High Specificity* & *Low Sensitivity*: you correctly identify negative instances but might miss many positive instances. Appropriate when avoiding false positives is crucial, even if it means increasing the false negatives
  - *High Sensitivity* & *High Specificity*: you rock!
]

== Metrics for computer vision
In computer vision we have some other metrics that are used. They are *PSNR*, *SSIM* and *IoU*.

Peak signal-to-noise ratio (PSNR) is a _maximum possible power of a signal / power of the noise that corrupts the signal_.
The formula for PSNR is:
#definition("PSNR")[
  $ "PSNR" = 10*log_(10)("MAX"^2/"MSE") $
  - MAX = maximum possible pixel value of the image (usually 255 for 8-bit images)
  - MSE = Mean Squared Error between the original and the compressed image  
]
SSIM (Structural Similarity Index) is a _type of similarity between two images; intuitively, prediction of the quality of the second image as a distorted version of the first one, intended as distortion-free_
The formula for SSIM is:
#definition("SSIM")[
  $ "SSIM" = ((2 mu_x mu_y + c_1)(2 sigma_(x y) + c_2) )/ ((mu_x^2 + mu_y^2 + c_1)(sigma_x^2 + sigma_y^2 + c_2)) $
  - $mu_x, mu_y$ = average pixel intensity of the two images
  - $sigma_x^2, sigma_y^2$ = variance of the two images
  - $sigma_(x y)$ = covariance between the two images
  - $c_1, c_2$ = constant used to stabilize the division
]

Intersection over Union (IoU) is a metric used to evaluate the performance of an object detection model. It measures the overlap between the predicted bounding box and the ground truth bounding box.
The formula for IoU is:
#definition("IoU")[
  $ "IoU" = ("Area of overlap")/("Area of union") = T P/(T P + F P + F N) $
  - Area of overlap = area of the intersection between the predicted and ground truth bounding boxes
  - Area of union = area of the union between the predicted and ground truth bounding boxes
]

== Metrics for time series

In addition to MSE, RMSE and MAE we also have (goodness of) fit.
#definition("Fit")[
  $ "fit" = 100 dot (1 - (sum_(i) (y_i-hat(y)_i)^2)/(sum_i y_i^2) ) $
] 