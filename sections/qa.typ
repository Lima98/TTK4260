#import "@preview/dvdtyp:1.0.1": *

= Potential exam questions _(provided on BlackBoard)_

#qa()[
	- _What do we mean with internal and external validity? May you make some practical examples?_
		- Internal validity refers to the degree to which a study accurately identifies a causal relationship between variables, by controlling for confounders. For example, a lab experiment with randomized groups. External validity refers to the generalizability of findings to other populations or settings, e.g., applying lab results to real-world patients.
]

#qa()[
	- _What are least squares estimators? What is the geometrical intuition behind them? And how can they be formulated mathematically?_
		- Least squares estimators minimize the sum of squared differences between observed and predicted values. Geometrically, this corresponds to projecting the observation vector onto the space spanned by the regressors. Mathematically: θ̂ = (XᵀX)⁻¹Xᵀy.
]

#qa()[
	- _What are maximum likelihood estimators? What is the probabilistic intuition behind them? And how can they be formulated mathematically?_
		- Maximum likelihood estimators choose parameters that make the observed data most probable. The idea is to find the parameter θ that maximizes the likelihood function L(θ|data). For independent samples, this often involves maximizing the product (or log-sum) of densities.
]

#qa()[
	- _Why should one divide a dataset into training, test, and validation sets? And how should one select such sets from the original dataset?_
		- Splitting data ensures that the model is trained, tuned, and tested on separate sets to avoid overfitting and evaluate generalization. Randomly shuffle and divide data, or use stratified sampling if class imbalance exists.
]

#qa()[
	- _What does cross validation mean? How should it be used? And why should one use a cross validation approach instead of using a training, test, and validation sets based approach?_
		- Cross-validation involves dividing data into k folds, training on k-1 and testing on the remaining one, iteratively. It gives a robust estimate of model performance and is preferred when limited data makes a fixed split unreliable.
]

#qa()[
	- _What are maximum a posteriori estimators? What is the probabilistic intuition behind them? And how can they be formulated mathematically?_
		- MAP estimators maximize the posterior probability of parameters, combining prior beliefs and observed data. It’s like MLE but includes a prior: θ̂ = argmax P(θ|data) ∝ P(data|θ)P(θ).
]

#qa()[
	- _What are the conditions about existence and uniqueness of the LS, ML and MAP estimates?_
		- LS and ML estimates require full column rank in the design matrix for a unique solution. MAP adds a prior, which can ensure uniqueness even in ill-posed problems if the prior is well-formed.
]

#qa()[
	- _Derive the maximum likelihood estimator for the separable problem yi = θui + vi with vi ∼ N (0, σ²) with σ² known, θ unknown and deterministic_
		- The likelihood is a product of Gaussians. Taking the log, differentiating, and solving gives θ̂ = (∑ui²)⁻¹∑uiyi, which minimizes squared residuals, same as LS here.
]

#qa()[
	- _Derive and comment the bias-variance tradeoff_
		- Expected error = bias² + variance + irreducible noise. Complex models have low bias, high variance (overfit); simple models have high bias, low variance (underfit). The goal is a balanced model minimizing total error.
]

#qa()[
	- _What do we expect to see when training and testing different estimators with different model order complexities? How should we account for the effects that we see on the statistical performance indexes?_
		- As complexity increases, training error typically decreases, but test error may rise due to overfitting. This is seen as a U-shaped curve in validation error. Use cross-validation and penalized metrics (e.g., AIC, BIC) to choose optimal complexity.
]

#qa()[
	- _Which statistical performance indexes would you consider when dealing with a regression problem? And which peculiarities / usages do they have?_
		- MSE and RMSE measure average error; MAE is less sensitive to outliers; R² indicates explained variance. Choose based on robustness or interpretability needs.
]

#qa()[
	- _Which statistical performance indexes would you consider when dealing with a classification problem? And which peculiarities / usages do they have?_
		- Accuracy, precision, recall, F1 score. Precision-recall better for imbalanced data. ROC AUC shows tradeoff over thresholds.
]

#qa()[
	- _What does “design of experiments” mean? And “factorial design”? Which alternative factorial-design based alternatives do you know, and what are the tradeoffs among them?_
		- DOE is planning experiments to extract information efficiently. Full factorial tests all variable combinations. Alternatives like fractional factorial reduce experiments at cost of detail.
]

#qa()[
	- _What does PCA mean from a geometrical point of view? How is it formulated mathematically, and how does it connect with SVD?_
		- PCA finds directions (principal components) of maximal variance. Mathematically via eigendecomposition or SVD of the data matrix. PCs are orthogonal axes of variation.
]

#qa()[
	- _What are the uses of PCA? And how can its results be interpreted?_
		- PCA is used for dimensionality reduction, denoising, and visualization. Loadings show how variables contribute; scores show sample projections.
]

#qa()[
	- _What are the uses of the loadings plots and scores plots, in a PCA?_
		- Loadings plot shows how variables contribute to PCs. Scores plot shows patterns or clusters among samples in the reduced space.
]

#qa()[
	- _How can one decide how many components should be used when analysing some data through PCA? And how can one decide whether a sample is an outlier or not, through PCA?_
		- Use scree plots or cumulative explained variance. Outliers are samples with high score distance or reconstruction error.
]

#qa()[
	- _How does the Ockham’s razor principle connect with the model order selection problem? Which alternative strategies can be used to solve the model order selection problem?_
		- Prefer the simplest model that explains the data well. Strategies include AIC, BIC, cross-validation, and hypothesis testing.
]

#qa()[
	- _What does “rotated PCA” mean? How does this concept connect with PCA, from both geometrical and mathematical points of view?_
		- Rotation (e.g., varimax) simplifies interpretation by redistributing variance across PCs while keeping orthogonality. Enhances variable grouping.
]

#qa()[
	- _Which type of problems does the ICA algorithm solve? Which assumptions does it require? And how does it work, from intuitive perspectives?_
		- ICA separates mixed signals into independent sources (e.g., blind source separation). Assumes statistical independence and non-Gaussianity.
]

#qa()[
	- _What does “total least squares” mean? How does this concept connect with least squares, from both geometrical and mathematical points of view?_
		- TLS accounts for noise in both X and y. Geometrically, it minimizes orthogonal distances to the model plane, unlike LS which only minimizes vertical distance.
]

#qa()[
	- _What does ANOVA mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- ANOVA tests differences between group means. It partitions variance into within- and between-group components and uses F-tests for inference.
]

#qa()[
	- _What does PLS mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- PLS projects X and y to latent variables that maximize covariance. Useful when predictors are many and collinear. Combines features of PCA and regression.
]

#qa()[
	- _What does MLR mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- MLR models the linear relation between multiple inputs and an output. y = Xβ + ε, estimated by LS. Used for prediction and inference.
]

#qa()[
	- _What does PCR mean? Which type of analyses does this approach serve? How is it formulated mathematically, and how can one use it in practice?_
		- PCR uses PCA to reduce dimensionality of X, then applies regression on components. Helps when predictors are correlated.
]

#qa()[
	- _How do PLS, MLR, and PCR relate to each other? In which cases does one expect one of them to work better than the other ones, and viceversa?_
		- MLR works if predictors are uncorrelated. PCR reduces dimensions blindly. PLS considers both X and y and often performs best with collinearity or few samples.
]

#qa()[
	- _What is the NIPALS algorithm? How does it work, from a graphical perspective? Which advantages does it bring over SVD, when used to compute a PCA?_
		- NIPALS computes components iteratively, one at a time. Useful for large or incomplete datasets. More flexible than full SVD.
]

#qa()[
	- _What does metamodelling mean? When would one want to use a metamodelling approach? What are the potential shortcomings of a metamodel?_
		- Metamodels approximate complex models using simpler ones. Useful for simulation or optimization. Downsides: potential inaccuracy, limited extrapolation.
]

#qa()[
	- _What do “stationarity” and “ergodicity” mean? Why are these two concepts important when dealing with statistical analyses of time series? And what would the lack of stationarity and ergodicity imply in practice?_
		- Stationarity: statistical properties don't change over time. Ergodicity: averages over time ≈ averages over ensemble. Lack of these breaks model assumptions.
]

#qa()[
	- _Which LTI model structures do you know that are suitable to do control-oriented modelling of discrete time MISO systems?_
		- ARX, ARMAX, OE, and Box-Jenkins. Choice depends on noise and model goals. ARX is simplest, BJ most flexible.
]

#qa()[
	- _What is the principle behind prediction error methods? When should the focus be on prediction errors, when identifying a dynamical model?_
		- PEM minimizes the difference between observed and predicted outputs. Focus on prediction errors when the model is used for forecasting or simulation.
]

#qa()[
	- _What are the implications of choosing an ARX, instead of an ARMAX, instead of an OE model structure when doing system identification? And what are the implications of choosing different model orders? How should one choose a specific structure and order?_
		- ARX is fast but sensitive to noise. ARMAX models noise more accurately. OE assumes noise-free input. Choose structure by validation and orders via AIC/BIC.
]

#qa()[
	- _What are Hammerstein Wiener models, and what are their usages?_
		- They model nonlinear dynamics via static nonlinearity + linear dynamic blocks. Useful for control systems with known nonlinearity.
]

#qa()[
	- _What is a p value? How should it be computed? What is its usage for? And its drawbacks?_
		- p-value is the probability of seeing data as extreme as observed, under H₀. Computed from test statistic distribution. Misuse includes binary cutoff thinking.
]

#qa()[
	- _What is a statistical test? How can it be interpreted from geometrical perspectives? And from mathematical perspectives?_
		- A statistical test evaluates hypotheses using data. Geometrically, compares projections. Mathematically, tests whether a statistic lies in a rejection region.
]

#qa()[
	- _What are the statistical performance indexes associated to a statistical test? And which concepts may one use to say that a test is “better” than another one?_
		- Power, significance level, Type I/II error rates. Better tests have higher power for fixed significance. UMP tests are optimal under specific conditions.
]

#qa()[
	- _What are the differences between simple and composite hypotheses? How do the formulations of hypothesis testing algorithms change, depending on which type of hypothesis is considered?_
		- Simple: fully specified distributions. Composite: parameters unknown. Composite tests often require approximations or likelihood ratios.
]

#qa()[
	- _What does the Linear Discriminant Analysis algorithm do? How? Which advantages and disadvantages does it have?_
		- LDA finds projection that separates classes based on class means and shared covariance. Works well with Gaussian data, struggles with nonlinear boundaries.
]

#qa()[
	- _What does the Partial least squares discriminant analysis algorithm do? How? Which advantages and disadvantages does it have?_
		- PLS-DA adapts PLS for classification, modeling latent structures in predictors to distinguish classes. Good with multicollinearity, less interpretable.
]

#qa()[
	- _What does the logistic regression algorithm do? How? Which advantages and disadvantages does it have?_
		- Models class probabilities using a sigmoid function over linear combinations. Interpretable but limited to linear decision boundaries.
]

#qa()[
	- _What does the Support Vector Classification algorithm do? How? Which advantages and disadvantages does it have?_
		- SVC finds hyperplanes maximizing class margins. Effective in high dimensions. Requires tuning and can be slow for large datasets.
]

#qa()[
	- _What is the kernel trick? Where may one use it, and why?_
		- Maps data to high dimensions via kernels without explicit computation. Enables nonlinear classification or PCA efficiently.
]

#qa()[
	- _What does the K-means algorithm do? How? Which advantages and disadvantages does it have?_
		- K-means partitions data into k clusters by minimizing within-cluster variance. Simple and fast, but assumes spherical clusters and needs k known.
]

#qa()[
	- _What does the DBSCAN algorithm do? How? Which advantages and disadvantages does it have? What are its differences with the k-means algorithm?_
		- Density-based clustering; identifies noise and arbitrarily shaped clusters. Unlike k-means, doesn’t require number of clusters but sensitive to parameters.
]

#qa()[
	- _What do decision trees and random forests do? How? Which advantages and disadvantages do they have?_
		- Trees split data based on features. Forests average over many trees to reduce overfitting. Trees are interpretable, forests are more accurate.
]

#qa()[
	- _What is the need for features selection? And what are the differences between feature engineering and selection?_
		- Reduces overfitting and improves interpretability. Selection chooses from existing features; engineering creates new informative features.
]

#qa()[
	- _What are the pros and cons of using a wrapper method for feature selection, or an embedded method for the same sake?_
		- Wrappers use model feedback, often more accurate but slower. Embedded methods (e.g., Lasso) are faster but model-dependent.
]

#qa()[
	- _Why is categorical cross entropy loss used instead of mean squared error as a cost function in classification problems as against the regression problems?_
		- Cross-entropy measures divergence between predicted and true class probabilities, offering better gradients and performance than MSE in classification.
]

#qa()[
	- _Which regularization technique is more effective in feature selection? And why?_
		- L1 (Lasso) is better than L2 (Ridge) for selection because it shrinks some coefficients to zero, effectively removing features.
]
