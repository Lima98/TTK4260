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

// Lecture 1
#include "sections/intromotivation.typ"
// Lecture 2
#include "sections/pca-intro.typ"
// Lecture 3
#include "sections/least-sqares-esimators.typ"
// Lecture 4
#include "sections/statistical-performance-indexes.typ"
// Lecture 5

#include "sections/qa.typ"