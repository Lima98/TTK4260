#import "@preview/dvdtyp:1.0.1": *

= Basic statistics

Hypothesis testing is testing whether an observed difference is due to some effect or if it is due to random variation.

#definition("Null hypothesis")[
  _a statement that is assumed to be true unless there is strong evidence against it_
]

#definition("Alternative hypothesis")[
  _what is accepted if the null hypothesis is rejected_
]

#definition("p-value")[
  p-value = $ PP [X ≥ x |H_0]$ = probability that things will be as extreme or worse than the given value $x$ given the hypothesis $H_0$ and assuming the model P[⋅]
]

#definition("p-value in words")[
  probability of obtaining test results\
at least as extreme as the results actually observed\
under the assumption of a probabilistic model\
and that the null hypothesis is correct\
]

Important messages about p-values:

- a conclusion does not become immediately true when the p-value passes the threshold
- be skeptical when you see p-values
- p-values rely on assumptions besides the tested hypothesis $arrow.r.double$ do not forget keeping these assumptions in mind
- "absence of evidence is not evidence of absence"

== UMP

There was a section about UMP testing, but I skipped it not bothering to learn everything in the course...
