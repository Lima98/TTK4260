#import "@preview/dvdtyp:1.0.1": *

#let highlight = colors.at(4)

#show: dvdtyp.with(
  title: "TTK4260",
  subtitle: [Multivariate data analysis and machine learning],
  author: "Jan-Øivind Lima",
  accent: highlight,
  abstract: "Notes from exam preparation",
)


#outline(depth: 1)

#include "sections/intromotivation.typ"
#include "sections/qa.typ"