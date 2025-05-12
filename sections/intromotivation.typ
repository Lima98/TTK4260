#import "@preview/dvdtyp:1.0.1": *

= Introductions and motivations

The overarching workflow for data analysis is seen below:

#example("The main piece of the data analysis workflow")[
  - Consider the best approach given the data and objective
  - Split the data into training/validation/test
  - Decide on preprocessing of the training data; save this procedure for validation and test sets
  - Proposing some alternative models
  - Estimating the model parameters
  - Choosing the best model structure
  - Model interpretation given background knowledge (theory, literature, own experience)
  - Identify possible outliers and decide whether to take them out or not
  - Validating the chosen model(s)
  - Estimating the performance of the model, including parameter uncertainties
]

For modeling there are several strategies to employ, here are a few of them.

- Mechanistic models / physicas based models: based on theory, first principles and/or domain knowledge (deduction)
- Data-driven models: Models based on carefully designed experiemntal (numerical of physics) data. They can be black box, grey box or white box (induction)
- Meta Modelling / Hybrid Modelling: A combination of the above two.

Some desired characteristics in the modeling approach are:
- Generalizability / Robustness
- Trustworthiness / Transparent / Explainable
- Computational eﬃciency yet accurate
- Dynamically adapting and evolving

#figure(
  placement: auto,
  image("../images/variableinsystem.png", width: 60%),
  caption: "Variables in a system"
)<fig:variableinsystem>
#figure(
  placement: auto,
  image("/images/toolbox.png", width: 60%),
  caption: "Tools used in this course"
)<fig:toolbox>

== Dimensionality of a model
Most systems are observed iwth more sensors/variables than the actual underlying dimensinality(rank). Methods based on latent varibales will summarize the information in terms of "super varibles" and reveal the individual variable's contribution to these.
The rank of a system can mean different things:
- The *numerical* rank (This will for all real data be the smallest dimension of the data table)
- The *statistical* rank (found by some statistical criterion, e.g. the chosen validation scheme or maximum likelyhood)
- The *application* specific rank based on experience and interpretation

== Redundancy and selectivity

Most sensors are not measuring directly the inherent state or property of a system. Although individual sensors are not selectie, ,we can still use them for observin the system:
- *Qualitative*: Is the system under control?
- *Quantitative*: What is the water content in this rock on Mars?

== Typical pitfalls for valitation of classification or prediction models

- No independent test set
- Replicates in training and test sets respectively
- Use information in the model that is not present during prediction (for example using time as a variable)
- Selection bias (especially when tuning hyper-parameters)
- Extending sample sets with simulated samples to e.g. handle skewed distributions, then split in training/test
- Feature selection on all data, then split in training/test (see above)
- #text(fill: red)[And what is not often mentioned: Random training/test when the samples must be stratified due to meta-information]