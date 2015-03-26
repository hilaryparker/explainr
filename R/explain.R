# basic explain S3 function

explain <- function (x, ...) UseMethod("explain")

#' explain an S3 object in plain English
#'
#' @param x an object to be explained
#' @param theme theme to use
#'
#'
explain.default <- function(x, theme = "default", ...) {
    cl <- class(x)
    # retrieve theme
    th <- explainr_themes[[theme]]
    # retrieve template
    # TODO: multiple classes
    template <- th[[cl[1]]]

    # knit content
    knitr::opts_chunk$set(echo = FALSE)
    out <- knitr::knit(text = template$content, quiet = TRUE)
    cat(out)
}
