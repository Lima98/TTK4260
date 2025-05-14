#import "@preview/dvdtyp:1.0.1": *
#import "@preview/lilaq:0.2.0" as lq

#pagebreak()
= Maximum likelihood
*Why something more than least squares?*\
- (I.e., why do we introduce maximum likelihood estimators?)\
*answer*: to include information about the statistical distribution of the measurement\ noise (and also to facilitate quantification of uncertainties)\
*caveat*: by extending LS into ML, we “inject” assumptions. If the assumptions are good then ok, if they are bad then “not so ok”

== Types of probability distributions
#grid(
  columns: 2,
example()[
  - Uniform
  - Exponential
  - Poisson
  - Gamma
  - Beta
  - Binomial
  - Log-normal
  - Normal
],
"Below you can see all the definitions of the distributions. See Definition 5.1.1--5.1.6. And on the following page they have all been visualized in the form of figures. See "
)
#grid(columns: 2,
      gutter: 0.3cm,
  grid.cell(
  definition("Uniform")[
    $ f(x|a,b) = cases(1/(b-a) quad &"if a" <= x <= b,0 &"otherwise") $
  ]),
  definition("Exponential")[
    \
    $ f(x|lambda) = lambda e^(-lambda x) $
  ],
  definition("Binomial")[
    $ f(x|n,p) = n!/((n-x)!x!)p^x(1-p)^(n-x) $
    - n = number of trials
    - x = number of successes
    - p = probability of success for each trial
  ],
  definition("Poisson")[\
    $ f(x|lambda) = (lambda^x e^(-lambda))/(x!) $\
  ],
  definition("Beta")[
    $ f(x|alpha,beta) = 1/(B(alpha,beta))(x^(alpha-1)(1-x)^(beta-1)) $
    - $alpha$ and $beta$ = shape parameters
    - B($dot$,$dot$) = beta function
  ],
  definition("Normal")[
    $ f(x|mu,sigma) = (1/(sigma sqrt(2pi))) exp(-((x-mu)^2)/(2sigma^2)) $
    - mu = mean
    - sigma = standard deviation
  ]
)
#let x = lq.linspace(0.001, 15)
#let poisson_x = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
#let poisson_y = (0, 0.073, 0.146, 0.195, 0.195, 0.156, 0.104, 0.059, 0.029, 0.013, 0.005, 0.002, 0.001, 0, 0)
#let binom_x = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
#let binom_y = (0.001, 0.010, 0.044, 0.117, 0.205, 0.246, 0.205, 0.117, 0.044, 0.010, 0.001)
#let x_beta = lq.linspace(0.001, 0.999)

// Grid of all the figures
#grid(columns: 2,
      rows: auto,
      gutter: 1cm,

 // Avoid 0 to prevent log errors

// --- Uniform Distribution (0, 10)
figure(
  caption: "Uniform Distribution U(0, 10)",
  lq.diagram(
    lq.plot(x, x.map(v => if v >= 0 and v <= 10 { 0.1 } else { 0 }))
  )
),

// --- Exponential Distribution λ = 1 (approximate using built-in exp)
figure(
  caption: "Exponential Distribution λ = 1",
  lq.diagram(
    lq.plot(x, x.map(v => calc.exp(-v)))
  )
),

// --- Poisson Distribution λ = 4 (manually computed PMF values)
figure(
  caption: "Poisson Distribution λ ≈ 4",
  lq.diagram(
    lq.bar(poisson_x, poisson_y)
  )
),

// --- Gamma Distribution k=2, θ=2 (manually approximate shape)
figure(
  caption: "Gamma Distribution k=2, θ=2",
  lq.diagram(
    width: 7cm,
    lq.plot(x, x.map(v => v * calc.exp(-v / 2) / 4)) // scaled manually
  )
),

// --- Beta Distribution α=2, β=5 (plotted over [0,1])
figure(
  caption: "Beta Distribution α=2, β=5 (scaled)",
  lq.diagram(
    lq.plot(x_beta, x_beta.map(v => 30 * v * calc.pow(1 - v, 4))) // scaled manually
  )
),

// --- Binomial Distribution n=10, p=0.5 (approximate PMF manually)
figure(
  caption: "Binomial Distribution n=10, p=0.5",
  lq.diagram(
    lq.bar(binom_x, binom_y)
  )
),

// --- Log-normal Distribution μ=1, σ=0.5 (approximated manually)
figure(
  caption: "Log-normal Distribution μ=1, σ=0.5",
  lq.diagram(
    lq.plot(x, x.map(v => if v > 0 { (1 / (v * 1.25)) * calc.exp(-(calc.pow(calc.ln(v) - 1, 2)) / 0.5) } else { 0 }))
  )
),

// --- Normal Distribution μ=0, σ=1
figure(
  caption: "Normal Distribution μ=7, σ=1",
  lq.diagram(
    lq.plot(x, x.map(v => (1 / 2.5) * calc.exp(-0.5 * calc.pow(v - 7, 2)))) // shifted mean to 7
  )
)
)

== Probability vs. likelyhood
The basic notation for probability and likelyhood is given by:
#definition()[
  - P(data ; parameters) = probability ($theta$ fixed, y to be generated)\
  - L(parameters ; data) = likelihood ($theta$ to be estimated, y already collected)\
    - *IMPORTANT*: P(data ; parameters) $!=$ L(parameters ; data) 
]
P vs. L in words: \
They are diﬀerent in how they treat data and parameters: probabilities describe the probability of data given fixed parameters, while likelihood functions de- scribe the likelihood of parameters given fixed data \
*Probability Function:*
- assigns probabilities to outcomes of a random variable
- the parameters are thus fixed, the data is a variable _(thus this concept refers to before the data collection process)_
- integrates to 1
*Likelihood Function:*
- measures how well the parameters of the statistical model explains the observed data
- the data is thus fixed, the parameters is a variable _( ⇒ suitable for data analysis)_
- does not integrate to 
#figure(
  image("../images/prob-like.png", width: 80%),
  caption: "Probability vs. Likelihood"
)<fig:probability_vs_likelihood>

