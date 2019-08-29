#' Create descripton for R project
#'
#' @importFrom usethis use_description_defaults
#' @importFrom glue glue
#' @export
create_desc <- function(set_name = TRUE) {
    desc <- usethis::use_description_defaults()$usethis
    if (set_name == TRUE) {
        desc$Package = proj_name()
    }
    glue::glue("{names(desc)}: {desc}") %>%
        writeLines("DESCRIPTION")
}
