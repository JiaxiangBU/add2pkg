#' Add disclaimer
#'
#' @import glue
#' @param name Author full name.
#' @param license_name License name.
#' @param github_id Author GitHub Id
#' @return The text contains the disclaimer with author name and license name.
#' @export
add_disclaimer <-
  function(name = "Jiaxiang Li",
           license_name = FALSE,
           github_id = "JiaxiangBU") {
    if (license_name == FALSE) {
      license_name <- which_license()
    }
    coc_url <- glue::glue("https://github.com/{github_id}/{proj_name()}/blob/master/CODE_OF_CONDUCT.md")
    license_url <- glue::glue("https://github.com/{github_id}/{proj_name()}/blob/master/LICENSE.md")
    disclaimer_text <-
      glue::glue(
        '<h4 align="center">**Code of Conduct**</h4>

  <h6 align="center">Please note that the `{proj_name()}` project is released with a [Contributor Code of Conduct]({coc_url}).<br>By contributing to this project, you agree to abide by its terms.</h6>

  <h4 align="center">**License**</h4>

  <h6 align="center">{license_name} &copy; [{name}]({license_url})</h6>'
      )
    return(disclaimer_text)
  }
