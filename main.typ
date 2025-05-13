#import "@preview/dvdtyp:1.0.1": *

#let highlight = colors.at(4)

#show: dvdtyp.with(
  title: "TTK4260",
  subtitle: [Multivariate data analysis and machine learning],
  author: "Jan-Øivind Lima",
  accent: highlight,
  abstract: "Notes from exam preparation",
)


#outline(depth: none)

// Intro and
#include "sections/Lecture 1.typ"
// PCA intro
#include "sections/Lecture 2.typ"
// Least squares estimators
#include "sections/Lecture 3.typ"
// Statistical performance indexes
#include "sections/Lecture 4.typ"
// Maximum likelihood
#include "sections/Lecture 5.typ"


#include "sections/qa.typ"