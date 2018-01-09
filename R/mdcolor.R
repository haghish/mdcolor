#' All of R colors are supported by \code{mdcolor} package.
#' you can see the name of R colors by typing \code{color()}
#' function. the syntax for applying a color to text or
#' text background are shown below:
#'
#'
#' \code{    [colorname]} change text color \code{[#]} \cr
#' \code{    [-colorname]} highlight text \code{[#]} \cr
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
#'
#'@examples
#'\dontrun{
#' # include the following code chunks in an Rmd file
#' # ================================================
#'
#' ```{r, echo=FALSE, results='asis'}
#' library(mdcolor)
#' mdcolor()
#' ```
#'
#' [green]Fun Begins![#]
#' ---------------------
#'
#' This is an R [-yellow] Markdown document[#].
#' [-purple]Markdown[#] is a simple formatting syntax for
#' authoring [green]HTML[#], [blue]PDF[#], and [red]MS[#]
#' Word documents. As you can see, All [-hotpink]R[#]
#' [orangered]colors[#]are
#' [-greenyellow][orange]**AVAILABL**[#][#] and the syntax
#' can be used with Markdown.
#'
#' **GitHub Repository**:  https://github.com/haghish/mdcolor
#'}
#'
#' @export

mdcolor <- function() {
    path = system.file("mdcolor.js", package = "mdcolor")
    if (path == "") stop("mdcolor.js was not found on your system!")
    code = paste0('<script src="', path, '"></script>')

    return(cat(code))
}
