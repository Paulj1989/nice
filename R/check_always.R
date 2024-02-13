nice_callback <- function(expr, value, ok, visible) {
  if (visible && is_nice(value)) {
    message("Nice!")
  }

  return(TRUE)
}

#' Always check whether R output is really nice
#'
#' `check_always()` creates a [task callback function][addTaskCallback()]
#' to check whether all R output is nice.
#' `uncheck_always()` disables the task callback function,
#' returning your R session to normal behavior.
#'
#' @param verbose If `TRUE`, prints a message when `check_always()` and
#' `uncheck_always()` are run.
#' Defaults to `TRUE`.
#'
#' @keywords nice
#'
#' @export
#'
#' @examples
#' check_always()
#' 23 * 3
#'
#' uncheck_always()
#' 23 * 3
check_always <- function(verbose = TRUE) {
  if ("nice_callback" %in% getTaskCallbackNames()) {
    if (isTRUE(verbose)) message("Already checking whether all output is nice")
    return(invisible())
  }

  addTaskCallback(nice_callback, name = "nice_callback")
  if (isTRUE(verbose)) message("Now checking whether all output is nice")
}

#' @rdname check_always
#' @export
uncheck_always <- function(verbose = TRUE) {
  if (!"nice_callback" %in% getTaskCallbackNames()) {
    if (isTRUE(verbose)) message("Not checking whether all output is nice")
    return(invisible())
  }

  removeTaskCallback("nice_callback")
  if (isTRUE(verbose)) message("No longer checking whether all output is nice")
}
