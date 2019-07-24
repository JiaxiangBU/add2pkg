#' @importFrom rvest html_nodes html_attr html_text
#' @importFrom xml2 read_html
#' @export
add_zenodo_citation <-
    function(readme_path = here::here("../pyks/README.Rmd")) {
        # file.edit(readme_path)
        readme_content <- readr::read_file(readme_path)
        library(tidyverse)
        is_zenodo <-
            readme_content %>% stringr::str_detect("zenodo.org/badge")
        if (!is_zenodo) {
            stop("There is no zenodo badge in README.")
        }
        doi_url <-
            readme_content %>% str_match("https://zenodo.org/badge/latestdoi/\\d+")
        html <- xml2::read_html("https://zenodo.org/badge/latestdoi/197245838")
        record_id <-
            html %>% rvest::html_text() %>% str_match("zenodo.(\\d+)") %>% .[1, 2]
        record_url <-
            glue::glue("https://zenodo.org/record/{record_id}/export/hx")
        library(rvest)
        html <- xml2::read_html(record_url)
        bibtex_text <- html %>% html_nodes("pre") %>% rvest::html_text() %>% .[1]
        cite_text <- html %>% html_nodes("invenio-csl") %>%
            html_attr("ng-init") %>%
            # read key=value pairs
            str_replace("=", ":") %>%
            yaml::read_yaml(text = .) %>%
            .[[1]]
        cat(bibtex_text)
        cat("\n")
        cat(cite_text)
        return(list(BibTex = bibtex_text, Cite = cite_text))
    }