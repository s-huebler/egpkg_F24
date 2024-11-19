pkgname <- "egpkg"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('egpkg')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("myplot")
### * myplot

flush(stderr()); flush(stdout())

### Name: myplot
### Title: myplot
### Aliases: myplot

### ** Examples

# Here is an example
set.seed(312)
x <- rnorm(100)
y <- rnorm(100)
myplot(x, y)




cleanEx()
nameEx("ps_matchCPP")
### * ps_matchCPP

flush(stderr()); flush(stdout())

### Name: ps_matchCPP
### Title: Propensity score match from Rcpp
### Aliases: ps_matchCPP

### ** Examples

ps_matchCPP(runif(10, 0.0, 1.0))



cleanEx()
nameEx("rcpp_hello_world")
### * rcpp_hello_world

flush(stderr()); flush(stdout())

### Name: rcpp_hello_world
### Title: Hello world from Rcpp
### Aliases: rcpp_hello_world

### ** Examples

rcpp_hello_world()



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
