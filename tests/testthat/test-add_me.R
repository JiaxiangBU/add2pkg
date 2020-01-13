test_that("Plain Text", {
  expect_equal(add_me(), 'Authors@R:
    person(given = "Jiaxiang",
           family = "Li",
           role = c("aut", "cre"),
           email = "alex.lijiaxiang@foxmail.com",
           comment = c(ORCID = "https://orcid.org/0000-0003-3196-6492"))')
})
