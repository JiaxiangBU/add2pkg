
<!-- README.md is generated from README.Rmd. Please edit that file -->

# add2pkg

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/198092416.svg)](https://zenodo.org/badge/latestdoi/198092416)
<!-- badges: end -->

The goal of add2pkg is to create some snippets to develop R packages.

## Installation

You can install the released version of add2pkg from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("add2pkg")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/add2pkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(add2pkg)
## basic example code
```

``` r
add_me(is_paste = FALSE)
#> Authors@R:
#>     person(given = "Jiaxiang",
#>            family = "Li",
#>            role = c("aut", "cre"),
#>            email = "alex.lijiaxiang@foxmail.com",
#>            comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492"))
```

``` r
add_zenodo_citation(readme_path = here::here("../pyks/README.Rmd"))
#> @misc{jiaxiang_li_2019_3346084,
#>   author       = {Jiaxiang Li},
#>   title        = {JiaxiangBU/pyks: pyks 0.1.1},
#>   month        = jul,
#>   year         = 2019,
#>   doi          = {10.5281/zenodo.3346084},
#>   url          = {https://doi.org/10.5281/zenodo.3346084}
#> }
#> Jiaxiang Li. (2019, July 23). JiaxiangBU/pyks: pyks 0.1.1 (Version v0.1.1). Zenodo. http://doi.org/10.5281/zenodo.3346084
#> $BibTex
#> [1] "@misc{jiaxiang_li_2019_3346084,\n  author       = {Jiaxiang Li},\n  title        = {JiaxiangBU/pyks: pyks 0.1.1},\n  month        = jul,\n  year         = 2019,\n  doi          = {10.5281/zenodo.3346084},\n  url          = {https://doi.org/10.5281/zenodo.3346084}\n}"
#> 
#> $Cite
#> [1] "Jiaxiang Li. (2019, July 23). JiaxiangBU/pyks: pyks 0.1.1 (Version v0.1.1). Zenodo. http://doi.org/10.5281/zenodo.3346084"
```
