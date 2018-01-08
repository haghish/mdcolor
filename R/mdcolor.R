#' All of R colors are supported by \code{mdcolor} package.
#' you can see the name of R colors by typing \code{color()}
#' function.
#'
#' \cr \strong{Changing Text Color and Background Color} \cr
#' to change text color, use the following format: \cr
#'
#' \code{    [colorname] ... [#]} \cr
#'
#' to change text background color, use the following format: \cr
#' \code{    [-colorname] ... [#]} \cr
#'
#'
#' as noted above, the syntax is only different in a dash that
#' is placed before the color name, inorder to specify the
#' background color.

#' @title Font and Text background Color in Markdown
#' @description Extending the Markdown markup language with
#'              syntax for changing
#'              the font color and the text background color
#'              in the document.
#'              the R package is based on a JavaScript
#'              library called \code{mdcolor.js}. for syntax
#'              explanation, see the details section below.
#' @return HTML code for sourcing the \code{mdcolor.js}
#'         JavaScript library in the Rmarkdown file
#' @export

mdcolor <- function() {
    path = system.file("mdcolor.js", package = "mdcolor")
    if (path == "") stop("mdcolor.js was not found on your system!")
    code = paste0('<script src="', path, '"></script>')

    return(cat(code))
}
