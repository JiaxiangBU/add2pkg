setting2df <- function(setting_path) {
    # settings ----------------------------------------------------------------

    settings <- read_lines(setting_path)
    settings_df <-
        settings %>%
        str_split(' = ', simplify = TRUE) %>%
        as.data.frame(stringsAsFactors = FALSE) %>%
        `names<-`(c('key', 'value')) %>%
        column_to_rownames('key')
    # as.matrix()
    # desc::fun() # use this
    # https://github.com/r-lib/desc
    return(settings_df)
}
author2df <- function(settings_df) {
    author_df <-
        settings_df['author', ] %>%
        str_split(" and ") %>%
        .[[1]] %>%
        str_squish() %>%
        str_split("\\s", n = 2, simplify = TRUE) %>%
        as.data.frame(stringsAsFactors = FALSE) %>%
        `names<-`(c("given", "family"))

    return(author_df)
}
set_author <- function(settings_df, desc_path) {
    # Author
    author_df <- author2df(settings_df)


    if (isTRUE(add_me)) {
        desc::desc_set_authors(
            person(
                given = "Jiaxiang",
                family = "Li",
                role = c("aut", "cre"),
                email = "alex.lijiaxiang@foxmail.com",
                comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492")
            ),
            file = desc_path
        )

    }

    author_df %>%
        filter(given != "Jiaxiang", family != "Li") %>%
        mutate(person = walk2(
            given,
            family,
            ~ desc::desc_add_author(
                given = .x,
                family = .y ,
                role = 'aut',
                file = desc_path
            )
        ))
}
setting2desc <- function(setting_path = "settings.ini",
                         desc_path = "DESCRIPTION",
                         add_me = TRUE) {
    ## -----------------------------------------------------------------------------------------------

    settings_df <- setting2df(setting_path)

    # write desc --------------------------------------------------------------

    # Package Name
    settings_df['lib_name',] %>%
        str_replace_all("_", ".") %>%
        desc::desc_set('Package', ., file = desc_path)

    # Title
    settings_df['description',] %>%
        str_to_title() %>%
        desc::desc_set('Title', ., file = desc_path)


    set_author(settings_df = settings_df, desc_path = desc_path)

    settings_df['version',] %>%
        str_to_title() %>%
        desc::desc_set('Version', ., file = desc_path)
    # usethis::use_github()
}
