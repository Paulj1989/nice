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
check_always <- function() {
  if ("nice_callback" %in% getTaskCallbackNames()) {
    return(message("Already checking whether all output is nice"))
  }

  addTaskCallback(nice_callback, name = "nice_callback")
  message("Now checking whether all output is nice")
}

#' @rdname check_always
#' @export
uncheck_always <- function() {
  if (!"nice_callback" %in% getTaskCallbackNames()) {
    return(message("Not checking whether all output is nice"))
  }

  removeTaskCallback("nice_callback")
  message("No longer checking whether all output is nice")
}
