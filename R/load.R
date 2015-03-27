#' Load a .Rmd template for displaying an object
#'
#' @param path Path to the .Rmd template file
#'
#' @return a list with two components:
#'   \item{header}{A named list containing the YAML components}
#'   \item{content}{A string with the contents of the string}
load_template <- function(path) {
    txt <- readLines(path)

    header_pos <- which(stringr::str_detect(txt, "^---"))
    header_txt <- txt[(header_pos[1] + 1):(header_pos[2] - 1)]
    content_txt <- txt[(header_pos[2] + 1):length(txt)]

    header <- yaml::yaml.load(paste(header_txt, collapse = "\n"))
    content <- paste(content_txt, collapse = "\n")
    list(header = header, content = content)
}


#' Load a theme, which is a directory of templates
#'
#' @param path Path to a theme directory of .Rmd files
#'
#' @return a named list of templates
load_theme <- function(path) {
    templates <- list.files(path, full.names = TRUE)
    ret <- lapply(templates, load_template)
    names(ret) <- sapply(ret, function(tm) tm$header$name)
    ret
}


#' Load all themes
#'
#' Load themes, by default from explainr's built-in themes directory.
#'
#' @param directory directory to load themes from
#'
#' @return a named list of themes
load_themes <- function(directory = system.file("themes", package = "explainr")) {
    themes <- list.files(directory)
    paths <- paste(directory, themes, sep = "/")
    ret <- lapply(paths, load_theme)
    names(ret) <- themes
    ret
}
