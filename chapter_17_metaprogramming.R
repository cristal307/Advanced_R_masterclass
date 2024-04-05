## CHAPTER 17: METAPROGRAMMIG BIG PICTURE

library(rlang)
library(lobstr)

#code is data
expr(mean(x, na.rm = TRUE))

expr(10 + 100 + 1000)

#tool to capture code passes to a function

capture_it <- function(x) {
  expr(x)
}
capture_it(a + b + c)

#

capture_it <- function(x) {
  enexpr(x)
}
capture_it(a + b + c)

#

f <- expr(f(x = 1, y = 2))

# Add a new argument
f$z <- 3
f


# Or remove an argument:
f[[2]] <- NULL
f
