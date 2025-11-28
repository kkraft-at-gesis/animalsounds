
<!-- README.md is generated from README.Rmd. Please edit that file -->

# animalsounds

<!-- badges: start -->

[![R-CMD-check](https://github.com/kkraft-at-gesis/animalsounds/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/kkraft-at-gesis/animalsounds/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of animalsounds is to print out a sentence that shows what kind
of sound a animal makes from a function that takes an animal name and a
sound name.

## Installation

You can install the development version of animalsounds from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("kkraft-at-gesis/animalsounds")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(animalsounds)
## basic example code
animal_sounds("duck", "quack")
#> [1] "The duck says quack!"
animal_sounds("giraffe")
#> [1] "The giraffe makes no sound."
```
