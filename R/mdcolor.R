#' All of R colors are supported by \code{mdcolor} package.
#' you can see the name of R colors by typing \code{color()}
#' function.

#' @title Font and Text background Color in Markdown
#' @description Extending the Markdown markup language with syntax for changing
#'              the font color and the text background color in the document.
#'              the R package is based on a JavaScript
#'              library called \code{mdcolor.js}.
#' @return character code for including the \code{mdcolor.js}
#'         JavaScript library
#' @export

mdcolor <- function() {
    path = system.file("mdcolor.js", package = "mdcolor")
    if (path == "") stop("mdcolor.js was not found on your system!")
    code = paste0('<script src="', path, '"></script>')

    return(cat(code))
}
