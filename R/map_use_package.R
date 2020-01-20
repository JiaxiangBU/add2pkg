#' Use package multiply
#'
#' This function is similar to the function \code{use_package} from the package \code{usethis},
#' but its input can be a list, like \code{c('clipr', 'glue', 'rstudioapi', 'rvest', 'usethis', 'xml2')}
#' When the package developers receive the error information using \code{devtools::check()},
#' \code{Namespace dependencies not required: ...}, use this.
#'
#' @importFrom purrr walk
#' @importFrom usethis use_package
map_use_package <- function(input) {
  input %>%
      purrr::walk(usethis::use_package)
}
