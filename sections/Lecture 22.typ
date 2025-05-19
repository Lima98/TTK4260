#import "@preview/dvdtyp:1.0.1": *

= Classification and discrimination, PCA and PLS-DA (Lecture 22)

== Cross model validation

- A common objective in multivariate modelling/machine learning/AI is to find the "best" model for a subset of features/variables
- Most methods have some built-in approach to avoid overfitting (cross-validation, regularization, tree-pruning,...)
- Nevertheless, when the same model is used for optimization of error and finding the best subset, this may lead to too optimistic results
- Another aspect is the false discovery rate in the case of many variables, e.g. 30000 genes for a limited number of patients
- One robust solution to these problems is Cross Model Validation (CMV), also called double cross validation

== Cross Model Validation (CMV)

- Take out a subset of the samples
- Cross validate the remaining
- Predict the samples kept out
- Repeat until all samples have been kept out
- Compare $R M S E_("training")$, $R M S E_(C V)$ and $R M S E_(C M V)$

CVM combined with jack-knifing is also very eﬀective in screening out all non-relevant features as a first step in feature selection

== Jackknifing

- Jack-knifing uses the mean of all sub-models as basis for the variance estimates. 
- Cross validation uses the model on all objects(more intuitive?)
- The difference between them is negligible in most practical applications
#figure(
  image("../images/jacknife-bootstrap.png", width: 60%),
  caption: "Jackknifing",
)

== Classification and discrimination

- *clustering*: deciding how to group some object together
- *classification*: deciding what kind of object something is
- *discrimination*: Measures how well the model separates data from different classes

_Note: often "discrimination" is considered as a specific "classification"_

== The two overarching strategies

- build local models of the various classes
- build models of the boundaries between the various classes

== Strategy 1: build local classes

Typical workflow:
- Build a model for each class
- Samples inside the critical limits are accepted
- Others are rejected not classified
- Methods: PCA, ICA, CLustering, one class SVM, autoencoders

*Drawbacks*: the individual models don't know about the other classes and there is no objective function to discriminate between them in the modelling phase

== Strategy 2: create objective functions to discriminate between classes

Frequently applied methods:
- PLS-DA
- LDA (Linear Discriminant Analysis)
- Logistic regression
- SVM (Support Vector Machines)
- Clustering methods (#link("Lesson 18")[<lesson18>])
- ANN/CNN (Artificial Neural Networks/Convolutional Neural Networks)
- Classification trees/Random Forest/XGBoost ...

== Disclaimer
There is more in this lecture but I will get back to it if time. Now I have to get to the other lectures to skip the least amount of materisl.