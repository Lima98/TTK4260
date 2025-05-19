#import "@preview/dvdtyp:1.0.1": *

= The bias vs variance tradeoff

== Ockham's razor

#definition("Occam's razor")[
  explaining a thing with no more assumptions should be made than are necessary
]

#figure(
  image("../images/underover.png", width: 80%)
)

ideal model: $y_t = f_0(u_t)+e_t$ \
our model: $y_t = f(u_t,theta)+e_t$
#definition("underfitting & overfitting")[
  - *underfitting*: a $hat(theta)$ that misses the fundamental features of $f_0$ 
  - *overfitting*: a $hat(theta)$ that makes $hat(f)$ follow $e$ instead of $f_0$
]

#figure(
  image("../images/msedecomp.png", width: 80%)
)

