library(devtools)
use_git()

# https://github.com/JiaxiangBU/add2impala/blob/master/DESCRIPTION
file.edit("DESCRIPTION")
library(devtools)
use_r("add_me")
use_addin(addin = "add_me")

use_build_ignore("dev_history.R")
use_roxygen_md()
use_pipe()
library(magrittr)
