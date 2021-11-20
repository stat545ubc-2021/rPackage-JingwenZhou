
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
#> Downloading GitHub repo stat545ubc-2021/rPackage-JingwenZhou@HEAD
#>          checking for file 'C:\Users\zjw09\AppData\Local\Temp\RtmpwBeZRz\remotes1ae87cd8335d\stat545ubc-2021-rPackage-JingwenZhou-31272e6\summarystat/DESCRIPTION' ...  v  checking for file 'C:\Users\zjw09\AppData\Local\Temp\RtmpwBeZRz\remotes1ae87cd8335d\stat545ubc-2021-rPackage-JingwenZhou-31272e6\summarystat/DESCRIPTION' (367ms)
#>       -  preparing 'summarystat':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>   -  checking for empty or unneeded directories
#>      Omitted 'LazyData' from DESCRIPTION
#>       -  building 'summarystat_0.0.0.9000.tar.gz'
#>      
#> 
#> 将程序包安装入'C:/Users/zjw09/AppData/Local/Temp/Rtmp6jvm6F/temp_libpath1f5c6a5b2057'
#> (因为'lib'没有被指定)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
suppressMessages(library(tidyverse))
suppressMessages(library(dplyr))
suppressMessages(library(palmerpenguins))
# Use `penguins` dataset
result <- summarystat::summary(penguins, body_mass_g, species)
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
