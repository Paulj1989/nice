#' Checking whether any values in a dataframe are nice
#'
#' @keywords nice
#' @export
#' @examples
#' check_df(69)

check_df <- function(x) {
  if (any(x == c(69, 0.69)))
  {
    print("Nice!")
  }
}
