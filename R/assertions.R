#' @importFrom assertthat assert_that on_failure<-

is_input_id <- function(x) {
  is.null(x) || (is.character(x) && length(x) == 1 && !is.na(x))
}

on_failure(is_input_id) <- function(call, env) {
  paste0(deparse(call$x), " is not a string (length 1 character)")
}

#  --------------------------------------------------------------------


is_header <- function(x) {
  is.null(x) || (is.character(x) && length(x) == 1 && !is.na(x))
}

on_failure(is_header) <- function(call, env) {
  paste0(deparse(call$x), " is not a string (length 1 character)")
}


# -------------------------------------------------------------------------

is_sortable_options <- function(x) {
  inherits(x, "sortable_options")
}

on_failure(is_header) <- function(call, env) {
  paste0(deparse(call$x), " must be produced by `sortable_options()`")
}
