#' Wrap an object as the output of an \code{explain} function
#'
#' @param x
explainr_output <- function(x) {
    # trim whitespace
    x <- stringr::str_trim(x)

    x <- knitr::asis_output(x)
    class(x) <- c("explainr_output", class(x))
    x
}


#' Print explainr output
#'
#' @param x
print.explainr_output <- function(x) {
    cat(strwrap(x), sep = "\n")
}
