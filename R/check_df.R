#' Checking whether any values in a data frame are nice
#'
#' @param data A data frame (can be a data.frame, tibble, or data.table)
#'
#' @keywords nice
#'
#' @export
#'
#' @examples
#' df <- data.frame(a = c(1, 2, 3, 4, 5, 6), b = c(10, 20, 30, 40, 50, 69))
#' check_df(df)
#'
#' df <- data.frame(a = c(1, 2, 3), b = c("ten", "twenty", "sixty nine"))
#' check_df(df)
check_df <- function(data) {
  if (any(sapply(
    data,
    function(x) {
      c(
        69, 0.69, 0.069, 0.0069,
        "sixty nine", "Sixty Nine"
      ) %in% x
    }
  ))) {
    print("Nice!")
  } else {
    print("Not very nice.")
  }
}
