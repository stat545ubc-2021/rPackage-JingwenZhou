
<!-- README.md is generated from README.Rmd. Please edit that file -->

# summarystat

The goal of summarystat is to do the summary statistics of one given
numerical variable across the groups of another given variable in a
given dataset. This function doesn’t work on categorical variable.

## Installation

You can install the released version of summarystat from

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2021/rPackage-JingwenZhou/summarystat")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
suppressMessages(library(tidyverse))
suppressMessages(library(dplyr))
suppressMessages(library(palmerpenguins))
# Use `penguins` dataset
result <- summarystat::sumFun(penguins, body_mass_g, species)
result
#> # A tibble: 6 x 4
#> # Groups:   species [3]
#>   species    mean range median
#>   <fct>     <dbl> <int>  <dbl>
#> 1 Adelie    3701.  2850   3700
#> 2 Adelie    3701.  4775   3700
#> 3 Chinstrap 3733.  2700   3700
#> 4 Chinstrap 3733.  4800   3700
#> 5 Gentoo    5076.  3950   5000
#> 6 Gentoo    5076.  6300   5000
```
