#import "@preview/dvdtyp:1.0.1": *

#show: dvdtyp.with(
  title: "TTK4260",
  subtitle: [Multivariate data analysis and machine learning],
  author: "Jan-Øivind Lima",
  accent: highlight,
  abstract: "Notes from exam preparation",
)
#show link: underline 
#show link: set text(fill: highlight)

#outline(depth: none)

// Intro and
#include "sections/Lecture 1.typ"
// PCA intro
#include "sections/lecture 2.typ"
// least squares estimators
#include "sections/Lecture 3.typ"
// Statistical performance indexes
#include "sections/Lecture 4.typ"
// Maximum likelihood
#include "sections/Lecture 5.typ"
// Maximum a posteriori
#include "sections/Lecture 6.typ"
// How to visualize results
#include "sections/Lecture 7.typ"
// Basic statistics
#include "sections/Lecture 8.typ" 
// Bias vs variance tradeoff
#include "sections/Lecture 9.typ"
// PCA in depth
#include "sections/Lecture 10.typ"
// More on PCA
#include "sections/Lecture 11.typ"
// Time Series Modelling
#include "sections/Lecture 12.typ"
// Time series classification
#include "sections/Lecture 13.typ"
// Validity of a model
#include "sections/Lecture 14.typ"
// Classification and discrimination, PCA and PLS-DA
#include "sections/Lecture 22.typ"
// SVM, LDA, logistic regression and tree-based methods
#include "sections/Lecture 23.typ"
// Singular value decomposition
#include "sections/Lecture 24.typ"
// ANN/CNN
#include "sections/Lecture 25.typ"


#include "sections/QA-exam.typ"