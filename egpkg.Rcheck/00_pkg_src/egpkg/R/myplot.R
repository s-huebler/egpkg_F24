# Here is the function
#' myplot
#'
#' @param x a numeric vector
#' @param y a numeric vector
#'
#' @import graphics
#' @return a plot
#'
#'
#' @examples
#' # Here is an example
#' set.seed(312)
#' x <- rnorm(100)
#' y <- rnorm(100)
#' myplot(x, y)
#'
#' @export
myplot <- function(x, y) {

  if (!is.numeric(x) | !is.numeric(y)) {
    stop("x and y must be numeric")
  }

  plot(x, y, col = "blue", pch = 19, cex = 2)

  invisible(
    list(
      x = x,
      y = y
    )
  )

}



