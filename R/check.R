#' Checking whether an R output is really nice
#'
#' @param x An R object. Can be a list or vector, and values can be of type
#' numeric, double, or character.
#'
#' @keywords nice
#'
#' @export
#'
#' @examples
#' x <- 23 * 3
#' check(x)
#'
#' x <- c(1, 2, 3, 4, 5)
#' check(x)
#'
#' x <- c("ten", "twenty", "thirty", "sixty nine")
#' check(x)
check <- function(x) {
  if (is_nice(x)) {
    print("Nice!")
  } else {
    print("Not very nice.")
  }
}

is_nice <- function(x) {
  isTRUE(
    try(
      any(x %in% c(69, 0.69, 0.069, 0.0069, "Sixty Nine", "sixty nine")),
      silent = TRUE
    )
  )
}
