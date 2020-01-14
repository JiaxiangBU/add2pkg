#' Create the description file for R project
#'
#' @importFrom usethis use_description_defaults
#' @importFrom glue glue
#' @param set_name Logical. By default, \code{TRUE}
#'
#' @export
create_desc <- function(set_name = TRUE) {
    desc <- usethis::use_description_defaults()$usethis
    if (set_name == TRUE) {
        desc$Package = proj_name()
    }
    glue::glue("{names(desc)}: {desc}") %>%
        writeLines("DESCRIPTION")
}
