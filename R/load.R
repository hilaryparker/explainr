
load_template <- function(path) {
    txt <- readLines(path)

    header_pos <- which(stringr::str_detect(txt, "^---"))
    header_txt <- txt[(header_pos[1] + 1):(header_pos[2] - 1)]
    content_txt <- txt[(header_pos[2] + 1):length(txt)]

    header <- yaml::yaml.load(paste(header_txt, collapse = "\n"))
    content <- paste(content_txt, collapse = "\n")
    list(header = header, content = content)
}

load_theme <- function(path) {
    templates <- list.files(path, full.names = TRUE)
    ret <- lapply(templates, load_template)
    names(ret) <- sapply(ret, function(tm) tm$header$object)
    ret
}

load_themes <- function(directory = system.file("themes", package = "explainr")) {
    themes <- list.files(directory)
    paths <- paste(directory, themes, sep = "/")
    ret <- lapply(paths, load_theme)
    names(ret) <- themes
    ret
}
