#import "@preview/dvdtyp:1.0.1": *

= Support Vector machines (SVM) (Lecture 23)

Used to classify (and also regression) that originates from machine learning. It uses a *kernel function* to map from originnal space to a feature space where a hyperplane can divide the classes. It is suited for non-linear problems and non-homogenous classes. However SVM only takes into account the samples at the boundaries (called support vectors) to establish the rule for discrimination.

#figure(
  image("../images/kernel.png", width: 60%),
  caption: "Kernel function"
)<fig:kernel>

== Linear and Fisher Discriminant Analyses (LDA and FDA)

- *FDA*: which linear combination of features *w'x* best separates the data?
- *LDA*: same thing, but motivated by some specific statistical assumptions on the distribution of the data.

#figure(
  image("../images/objective-pca.png", width: 90%),
)

== Tree based classifictaion models

=== Decision trees

This has already been covered by the course #link("https://github.com/Lima98/TDT4171")[methods in artificial intelligence] and #link("https://github.com/Lima98/TKJ41175")[chemometrics]. Details are provided there.

=== Random forests
Random forests are an ensemble of decision trees. The idea is to combine the predictions of multiple trees to improve the overall performance. Each tree is trained on a random subset of the data, and the final prediction is made by averaging the predictions of all the trees.

#figure(
  placement: auto,
  image("../images/random-forest.png", width: 60%),
  caption: "Random forest"
)

Properties of *random forest*:

- It is one of the best methods in accuracy
- It runs eﬃciently on large data bases
- It can handle thousands of input variables without variable deletion
- It gives estimates of what variables are important in the classification
- It generates an internal unbiased estimate of the generalization error as the forest building progresses
- It has an eﬀective method for estimating missing data and maintains accuracy when a large proportion of the data are missing
- It has methods for balancing error in class population unbalanced data sets

