#' Checking whether your R output is really nice
#'
#' @keywords nice
#' @export
#' @examples
#' check(69)

check <- function(x) {
  if (x %in% c(69, 0.69)) {
    print("Nice!")
  } else {
    print("Not very nice.")
  }
}
