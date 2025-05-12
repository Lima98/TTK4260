#import "@preview/dvdtyp:1.0.1": *

= Potential exam questions _(provided on BlackBoard)_

#qa()[
	- _What do we mean with internal and external validity? May you make some practical examples?_
		- Internal validity: cause-effect accuracy. External validity: generalizability to other settings.
]

#qa()[
	- _What are least squares estimators? What is the geometrical intuition behind them? And how can they be formulated mathematically?_
		- Minimizes squared errors; geometrically, orthogonal projection onto model space.
]

#qa()[
	- _What are maximum likelihood estimators? What is the probabilistic intuition behind them? And how can they be formulated mathematically?_
		- Find parameters that maximize data likelihood under assumed distribution.
]

#qa()[
	- _Why should one divide a dataset into training, test, and validation sets? And how should one select such sets from the original dataset?_
		- To avoid overfitting and assess generalization. Split randomly or with cross-validation.
]

#qa()[
	- _What does cross validation mean? How should it be used? And why should one use a cross validation approach instead of using a training, test, and validation sets based approach?_
		- Splits data into folds; rotates training/testing for robust performance estimate.
]

#qa()[
	- _What are maximum a posteriori estimators? What is the probabilistic intuition behind them? And how can they be formulated mathematically?_
		- Like MLE but includes a prior. Maximizes posterior probability.
]

#qa()[
	- _What are the conditions about existence and uniqueness of the LS, ML and MAP estimates?_
		- Require full-rank data matrix; uniqueness if objective is strictly convex.
]

#qa()[
	- _Derive the maximum likelihood estimator for the separable problem yi = θui + vi with vi ∼ N (0, σ²) with σ² known, θ unknown and deterministic_
		- MLE: θ̂ = (∑ui²)⁻¹∑uiyi; derived by maximizing normal likelihood.
]

#qa()[
	- _Derive and comment the bias-variance tradeoff_
		- High bias = underfit; high variance = overfit. Tradeoff affects generalization.
]

#qa()[
	- _What do we expect to see when training and testing different estimators with different model order complexities? How should we account for the effects that we see on the statistical performance indexes?_
		- Training error ↓, test error has U-shape. Use validation/cross-validation to find sweet spot.
]

#qa()[
	- _Which statistical performance indexes would you consider when dealing with a regression problem? And which peculiarities / usages do they have?_
		- MSE, RMSE, R²; MSE penalizes outliers, R² shows variance explained.
]

#qa()[
	- _Which statistical performance indexes would you consider when dealing with a classification problem? And which peculiarities / usages do they have?_
		- Accuracy, precision, recall, F1; choose based on class imbalance.
]

#qa()[
	- _What does “design of experiments” mean? And “factorial design”? Which alternative factorial-design based alternatives do you know, and what are the tradeoffs among them?_
		- DOE: structured experiments. Factorial: test all factor combinations. Alternatives: fractional, reduces runs.
]

#qa()[
	- _What does PCA mean from a geometrical point of view? How is it formulated mathematically, and how does it connect with SVD?_
		- Projects data onto directions of max variance. Uses SVD of data matrix.
]

#qa()[
	- _What are the uses of PCA? And how can its results be interpreted?_
		- Dimensionality reduction, noise filtering. Scores show samples; loadings show variable influence.
]

#qa()[
	- _What are the uses of the loadings plots and scores plots, in a PCA?_
		- Loadings: variable contribution. Scores: sample positions in PC space.
]

#qa()[
	- _How can one decide how many components should be used when analysing some data through PCA? And how can one decide whether a sample is an outlier or not, through PCA?_
		- Use scree plot or variance explained. Outliers = distant scores/residuals.
]

#qa()[
	- _How does the Ockham’s razor principle connect with the model order selection problem? Which alternative strategies can be used to solve the model order selection problem?_
		- Simpler models preferred. Use AIC, BIC, cross-validation.
]

#qa()[
	- _What does “rotated PCA” mean? How does this concept connect with PCA, from both geometrical and mathematical points of view?_
		- Rotates PCs to simplify interpretation. Maintains variance, changes axes.
]

#qa()[
	- _Which type of problems does the ICA algorithm solve? Which assumptions does it require? And how does it work, from intuitive perspectives?_
		- Separates mixed signals assuming non-Gaussianity and independence.
]

#qa()[
	- _What does “total least squares” mean? How does this concept connect with least squares, from both geometrical and mathematical points of view?_
		- Accounts for errors in both X and y. Minimizes orthogonal distances.
]

#qa()[
	- _What does ANOVA mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- Tests group means. Uses variance decomposition. Practical in experiments.
]

#qa()[
	- _What does PLS mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- Projects predictors to explain both X and y. Good for multicollinearity.
]

#qa()[
	- _What does MLR mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- Linear relation: y = Xβ + ε. Used for prediction and inference.
]

#qa()[
	- _What does PCR mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- PCA + regression on PCs. Reduces multicollinearity.
]

#qa()[
	- _How do PLS, MLR, and PCR relate to each other? In which cases does one expect one of them to work better than the other ones, and viceversa?_
		- MLR needs full-rank X; PCR and PLS work with correlated X; PLS often better with small data.
]

#qa()[
	- _What is the NIPALS algorithm? How does it work, from a graphical perspective? Which advantages does it bring over SVD, when used to compute a PCA?_
		- Iterative PCA for one component at a time. Handles missing data.
]

#qa()[
	- _What does metamodelling mean? When would one want to use a metamodelling approach? What are the potential shortcomings of a metamodel?_
		- Approximate model of a complex system. Faster but may lack accuracy.
]

#qa()[
	- _What do “stationarity” and “ergodicity” mean? Why are these two concepts important when dealing with statistical analyses of time series? And what would the lack of stationarity and ergodicity imply in practice?_
		- Stationarity: stats constant over time. Ergodicity: time average ≈ ensemble average. Needed for reliability.
]

#qa()[
	- _Which LTI model structures do you know that are suitable to do control-oriented modelling of discrete time MISO systems?_
		- ARX, ARMAX, OE, BJ; choice depends on noise structure and goals.
]

#qa()[
	- _What is the principle behind prediction error methods? When should the focus be on prediction errors, when identifying a dynamical model?_
		- Minimize error between predicted and actual outputs. Use for forecasting.
]

#qa()[
	- _What are the implications of choosing an ARX, instead of an ARMAX, instead of an OE model structure when doing system identification? And what are the implications of choosing different model orders? How should one choose a specific structure and order?_
		- ARX is simple, ARMAX models noise, OE models dynamics. Use AIC/BIC.
]

#qa()[
	- _What are Hammerstein Wiener models, and what are their usages?_
		- Block models with static nonlinearity + linear dynamics. Used in nonlinear systems.
]

#qa()[
	- _What is a p value? How should it be computed? What is its usage for? And its drawbacks?_
		- Probability of data under H₀. Used for hypothesis testing. Can be misinterpreted.
]

#qa()[
	- _What is a statistical test? How can it be interpreted from geometrical perspectives? And from mathematical perspectives?_
		- Decision rule to accept/reject H₀. Geometrically: distance from null region.
]

#qa()[
	- _What are the statistical performance indexes associated to a statistical test? And which concepts may one use to say that a test is “better” than another one?_
		- Type I/II errors, power. UMP tests maximize power under constraints.
]

#qa()[
	- _What are the differences between simple and composite hypotheses? How do the formulations of hypothesis testing algorithms change, depending on which type of hypothesis is considered?_
		- Simple: one distribution. Composite: a range. Testing becomes more complex.
]

#qa()[
	- _What does the Linear Discriminant Analysis algorithm do? How? Which advantages and disadvantages does it have?_
		- Finds linear boundary to separate classes. Works well for Gaussian classes.
]

#qa()[
	- _What does the Partial least squares discriminant analysis algorithm do? How? Which advantages and disadvantages does it have?_
		- PLS adapted for classification. Handles correlated variables.
]

#qa()[
	- _What does the logistic regression algorithm do? How? Which advantages and disadvantages does it have?_
		- Models class probability using sigmoid. Easy to interpret.
]

#qa()[
	- _What does the Support Vector Classification algorithm do? How? Which advantages and disadvantages does it have?_
		- Finds max-margin hyperplane. Robust to overfitting.
]

#qa()[
	- _What is the kernel trick? Where may one use it, and why?_
		- Implicitly maps data to higher dimension. Used in SVM, PCA.
]

#qa()[
	- _What does the K-means algorithm do? How? Which advantages and disadvantages does it have?_
		- Clusters by minimizing within-group variance. Simple but needs k.
]

#qa()[
	- _What does the DBSCAN algorithm do? How? Which advantages and disadvantages does it have? What are its differences with the k-means algorithm?_
		- Density-based clustering. Finds arbitrary shapes, handles noise.
]

#qa()[
	- _What do decision trees and random forests do? How? Which advantages and disadvantages do they have?_
		- Trees split by features; forests use many trees. Trees overfit, forests generalize.
]

#qa()[
	- _What is the need for features selection? And what are the differences between feature engineering and selection?_
		- Reduces overfitting and complexity. Engineering creates features; selection chooses among them.
]

#qa()[
	- _What are the pros and cons of using a wrapper method for feature selection, or an embedded method for the same sake?_
		- Wrapper: accurate but slow. Embedded: fast and model-integrated.
]

#qa()[
	- _Why is categorical cross entropy loss used instead of mean squared error as a cost function in classification problems as against the regression problems?_
		- Cross-entropy handles probabilities and class labels better than MSE.
]

#qa()[
	- _Which regularization technique is more effective in feature selection? And why?_
		- Lasso (L1) promotes sparsity by shrinking some weights to zero.
]
