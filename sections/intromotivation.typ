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

