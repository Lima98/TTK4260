#import "@preview/dvdtyp:1.0.1": *

= Classification and discrimination, PCA and PLS-DA (Lecture 22)

== Cross model validation

- A common objective in multivariate modelling/machine learning/AI is to find the "best" model for a subset of features/variables
- Most methods have some built-in approach to avoid overfitting (cross-validation, regularization, tree-pruning,...)
- Nevertheless, when the same model is used for optimization of error and finding the best subset, this may lead to too optimistic results
- Another aspect is the false discovery rate in the case of many variables, e.g. 30000 genes for a limited number of patients
- One robust solution to these problems is Cross Model Validation (CMV), also called double cross validation

