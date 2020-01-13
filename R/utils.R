globalVariables('.')

#' @import here
#' @import readr
#' @import stringr
#' @import yaml
which_license <- function() {
  readr::read_lines(here::here("DESCRIPTION")) %>%
      stringr::str_subset("^License") %>%
      stringr::str_remove("\\s\\+\\sfile\\sLICENSE") %>%
      stringr::str_remove("License:\\s")
}

#' Get current project name.
#'
#' @export
proj_name <- function() usethis::proj_path() %>% basename()


