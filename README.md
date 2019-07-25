
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
#> ─ Attaching packages ────────────────────────────── tidyverse 1.2.1 ─
#> ✔ ggplot2 3.1.0       ✔ purrr   0.2.5  
#> ✔ tibble  2.1.1       ✔ dplyr   0.8.0.1
#> ✔ tidyr   0.8.2       ✔ stringr 1.4.0  
#> ✔ readr   1.1.1       ✔ forcats 0.3.0
#> ─ Conflicts ─────────────────────────────── tidyverse_conflicts() ─
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> Loading required package: xml2
#> 
#> Attaching package: 'rvest'
#> The following object is masked from 'package:purrr':
#> 
#>     pluck
#> The following object is masked from 'package:readr':
#> 
#>     guess_encoding
#> ✔ Setting active project to '/Users/vija/Downloads/work/add2pkg'
#> If you use add2pkg, I would be very grateful if you can add a citation in your published work. By citing add2pkg, beyond acknowledging the work, you contribute to make it more visible and guarantee its growing and sustainability. For citation, please use the BibTex or the citation content.
#> 
#> @misc{jiaxiang_li_2019_3351276,
#>   author       = {Jiaxiang Li},
#>   title        = {JiaxiangBU/pyks: pyks 1.1.3},
#>   month        = jul,
#>   year         = 2019,
#>   doi          = {10.5281/zenodo.3351276},
#>   url          = {https://doi.org/10.5281/zenodo.3351276}
#> }
#> 
#> Jiaxiang Li. (2019, July 25). JiaxiangBU/pyks: pyks 1.1.3 (Version v1.1.3). Zenodo. http://doi.org/10.5281/zenodo.3351276
#> $BibTex
#> [1] "@misc{jiaxiang_li_2019_3351276,\n  author       = {Jiaxiang Li},\n  title        = {JiaxiangBU/pyks: pyks 1.1.3},\n  month        = jul,\n  year         = 2019,\n  doi          = {10.5281/zenodo.3351276},\n  url          = {https://doi.org/10.5281/zenodo.3351276}\n}"
#> 
#> $Cite
#> [1] "Jiaxiang Li. (2019, July 25). JiaxiangBU/pyks: pyks 1.1.3 (Version v1.1.3). Zenodo. http://doi.org/10.5281/zenodo.3351276"
#> 
#> $Comments
#> If you use add2pkg, I would be very grateful if you can add a citation in your published work. By citing add2pkg, beyond acknowledging the work, you contribute to make it more visible and guarantee its growing and sustainability. For citation, please use the BibTex or the citation content.
```
