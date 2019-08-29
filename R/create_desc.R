#' Create descripton for R project
#'
#' @importFrom usethis use_description_defaults
#' @importFrom glue glue
#' @export
create_desc <- function() {
    desc <- usethis::use_description_defaults()$usethis
    glue::glue("{names(desc)}: {desc}") %>%
        writeLines("DESCRIPTION")
}
