#' @export
add_disclaimer <-
  function(name = "Jiaxiang Li",
           license_name = FALSE) {
    if (license_name = -FALSE) {
      license_name <- which_license()
    }
    disclaimer_text <-
      glue::glue(
        '<h4 align="center">**Code of Conduct**</h4>

  <h6 align="center">Please note that the `{proj_name()}` project is released with a [Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By contributing to this project, you agree to abide by its terms.</h6>

  <h4 align="center">**License**</h4>

  <h6 align="center">{license_name} &copy; [{name}](LICENSE.md)</h6>'
      )
    return(disclaimer_text)
  }
