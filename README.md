
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DISC

Dataset containing information about weekly notified diseases reported
by Ministry of Health, Nutrition and Indigenous Medicine in Sri Lanka.

## Installation

You can install the released version of DISC from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("SMART-Research/DISC")
library(DISC)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(DISC)
head(Data_Counts)
#>   V1 Year Week  StartDate    EndDate    Division Dengue Dysentery Encephalitis
#> 1  1 2006   52 2006-12-23 2006-12-29     Colombo     71         2            0
#> 2  2 2006   52 2006-12-23 2006-12-29     Gampaha     12         0            0
#> 3  3 2006   52 2006-12-23 2006-12-29    Kalutara     12         6            1
#> 4  4 2006   52 2006-12-23 2006-12-29       Kandy     20         5            0
#> 5  5 2006   52 2006-12-23 2006-12-29      Matale      4         0            0
#> 6  6 2006   52 2006-12-23 2006-12-29 NuwaraEliya      1         1            0
#>   Enteric Fever Food Poisioning Leptospirosis Typhus Fever Viral Hepatistis
#> 1             0               0             1            0                0
#> 2             0               0             0            0                0
#> 3             0              11             2            0                0
#> 4             0               0             1            4                0
#> 5             0               0             0            0                1
#> 6             0               0             0            0                1
#>   Human Rabies Chickenpox Meningitis Leishmaniasis
#> 1           NA         NA         NA            NA
#> 2           NA         NA         NA            NA
#> 3           NA         NA         NA            NA
#> 4           NA         NA         NA            NA
#> 5           NA         NA         NA            NA
#> 6           NA         NA         NA            NA
```
