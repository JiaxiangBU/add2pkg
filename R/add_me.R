#' Add Author Information into DESCRIPTION
#' @importFrom  rstudioapi insertText
#' @importFrom clipr write_clip
#' @param is_paste Logical. By default, \code{FALSE}
#' @return If \code{is_paste = TRUE}, then the output is pasted on the clipboard.
#' If \code{is_paste = FALSE}, then the output contains the author information in the
#' DESCRIPTION.
#' @export
#' @examples \dontrun{add_me()}
add_me <- function(is_paste = FALSE) {
  text <- glue::glue(
'
Authors@R:
    person(given = "Jiaxiang",
           family = "Li",
           role = c("aut", "cre"),
           email = "alex.lijiaxiang@foxmail.com",
           comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492"))'
  )
  text_one_line <- text %>% glue::glue_collapse("\n")
  if (is_paste) {
    text_one_line %>%
      clipr::write_clip()
  } else {
    text_one_line
  }
}
