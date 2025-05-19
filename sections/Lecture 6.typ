#import "@preview/dvdtyp:1.0.1": *

= Maximum a posteriori (Lecture 6)

Maximum a posteriori comes from Bayes rule. 
#definition()[
$ P(A|B) = (P(B|A)P(A))/P(B) $
]
Then to get a posteriori we substitute $A$ and $B$ with more interesting names:

#definition()[
- $A= theta$
- $P(A)=P(theta) = "prior on" theta$
- $B = y$
- $P(B) = P(Y) "evidence"$ _(works as a normalization constant)_
- $P(B|A)=P(h|theta) = "likelihood"$
$ P(theta|y) = (P(y|theta)P(theta))/P(y) prop P(y|theta)P(theta) $
]

== Maximum A posteriori = mode of the posterior distribution

#definition()[

  $ hat(theta)_"MAP" := "arg max"_(theta in Theta) (P(y|theta)P(theta))/P(y) = "arg max"_(theta in Theta) P(y|theta)P(theta)$
]

#example()[
Suppose a medical test for a rare disease has a false positive rate of 5% and a false negative rate of 2%. The prevalence of the disease in the general population is 0.1%. If a person tests positive for the disease, what is the (posterior) probability that the person actually has the disease?
- Calculation:
  Let 
  - A = Has disease 
  - B = Positive result

  - $P(B|A) = 0.98$
  - $P(not B| not A) = 0.95$
  - $P(A) = 0.001 $

- Answer: $P(theta|not theta) = $  $1.9%$ ]

