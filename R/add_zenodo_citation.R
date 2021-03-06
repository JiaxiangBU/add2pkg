#' Add the Zenodo citation
#'
#' @importFrom rvest html_nodes html_attr html_text
#' @importFrom xml2 read_html
#' @param readme_path here::here object
#' @param verbose Logical, by default \code{TRUE}
#' @return The text contains bibtex text with the arguement \code{BibTex},
#' citation text with the argument \code{Cite}, comment text with the argument \code{Comments}.
#'
#' @export
add_zenodo_citation <-
    function(readme_path = here::here("../pyks/README.Rmd"), verbose = TRUE) {
        # file.edit(readme_path)
        readme_content <- readr::read_file(readme_path)
        # library(tidyverse)
        is_zenodo <-
            readme_content %>% stringr::str_detect("zenodo.org/badge")
        if (!is_zenodo) {
            stop("There is no zenodo badge in README.")
        }
        doi_url <-
            readme_content %>% stringr::str_match("https://zenodo.org/badge/latestdoi/\\d+")
        html <-
            xml2::read_html(doi_url)
        record_id <-
            html %>% rvest::html_text() %>% stringr::str_match("zenodo.(\\d+)") %>% .[1, 2]
        record_url <-
            glue::glue("https://zenodo.org/record/{record_id}/export/hx")
        # library(rvest)
        html <- xml2::read_html(record_url)
        bibtex_text <-
            html %>% rvest::html_nodes("pre") %>% rvest::html_text() %>% .[1]
        cite_text <- html %>% html_nodes("invenio-csl") %>%
            rvest::html_attr("ng-init") %>%
            # read key=value pairs
            stringr::str_replace("=", ":") %>%
            yaml::read_yaml(text = .) %>%
            .[[1]]
        # comements
        comment_text <-
            glue::glue(
                "If you use {proj_name()}, I would be very grateful if you can add a citation in your published work. By citing {proj_name()}, beyond acknowledging the work, you contribute to make it more visible and guarantee its growing and sustainability. For citation, please use the BibTex or the citation content."
            )
        # https://github.com/eblondel/zen4R/wiki

        if (verbose == TRUE) {
            cat(comment_text)
            cat("\n")
            cat("\n")
            cat("```BibTex")
            cat(bibtex_text)
            cat("```")
            cat("\n")
            cat("\n")
            cat(cite_text)
        }
        return(list(BibTex = bibtex_text, Cite = cite_text, Comments = comment_text))
    }


