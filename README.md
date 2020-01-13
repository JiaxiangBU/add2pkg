
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
# add_zenodo_citation(readme_path = here::here("../pyks/README.Rmd"))
```

``` r
add_disclaimer()
#> <U+2714> Setting active project to 'D:/work/add2pkg'
#> <h4 align="center">**Code of Conduct**</h4>
#> 
#> <h6 align="center">Please note that the `add2pkg` project is released with a [Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By contributing to this project, you agree to abide by its terms.</h6>
#> 
#> <h4 align="center">**License**</h4>
#> 
#> <h6 align="center">MIT &copy; [Jiaxiang Li](LICENSE.md)</h6>
```

-----

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `add2pkg` project is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By contributing to this
project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang Li](LICENSE.md)

</h6>
