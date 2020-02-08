setting2desc <- function(setting_path = "settings.ini",
                         desc_path = "DESCRIPTION") {
    ## -----------------------------------------------------------------------------------------------

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


    # write desc --------------------------------------------------------------

    settings_df['lib_name', ] %>%
        str_replace_all("_", ".") %>%
        desc::desc_set('Package', ., file = desc_path)
    settings_df['description', ] %>%
        str_to_title() %>%
        desc::desc_set('Title', ., file = desc_path)
    desc::desc_set_authors(c(
        person(
            given = "Jiaxiang",
            family = "Li",
            role = c("aut", "cre"),
            email = "alex.lijiaxiang@foxmail.com",
            comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492")
        ),
        person(
            given = "Shuyi",
            family = "Wang",
            role = c("aut")
        )
    ),
    file = desc_path)
    settings_df['version', ] %>%
        str_to_title() %>%
        desc::desc_set('Version', ., file = desc_path)
    # usethis::use_github()
}
