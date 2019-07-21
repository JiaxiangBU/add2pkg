#' @export

add_me <- function() {
  text <- glue::glue(
'
Authors@R:
    person(given = "Jiaxiang",
           family = "Li",
           role = c("aut", "cre"),
           email = "alex.lijiaxiang@foxmail.com",
           comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492"))'
  )
  text %>% glue::glue_collapse("\n") %>%
      rstudioapi::insertText()
}
