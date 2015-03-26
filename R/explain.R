# basic explain S3 function

explain <- function (x, ...) UseMethod("explain")

#' explain an S3 object in plain English
#'
#' @param x an object to be explained
#' @param theme theme to use
#'
#' @import dplyr
explain.default <- function(x, theme = "default", ...) {
    cl <- class(x)
    # retrieve theme
    th <- explainr_themes[[theme]]
    # retrieve template
    # TODO: multiple classes
    template <- th[[cl[1]]]

    # knit content
    env <- new.env()
    env$x <- x

    starting_options <- knitr::opts_chunk$get()
    knitr::opts_chunk$set(echo = FALSE, fig.path = "explainr-figures/",
                               message = FALSE)

    out <- knitr::knit(text = template$content, envir = env, quiet = TRUE)

    # back to initial options
    do.call(knitr::opts_chunk$set, starting_options)
    cat(out)
}
