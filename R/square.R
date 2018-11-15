#' Apply a useful power
#'
#' That's it -- these functions just square, cube, or take the
#' reciprocal/inverse of a vector.
#'
#' @param x The vector to be squared or cubed.
#' @param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#' @param L Exponent, needed for the Box Cox function
#'
#' @return
#' A vector that is the:
#' \itemize{
#'      \item square (for \code{square})
#'      \item cube (for \code{cube})
#'      \item reciprocal/inverse (for \code{reciprocal})
#'      \item Box_Cox (for \code{Box_Cox})
#' }
#'  of \code{x}.
#'
#' @details
#' If you really want to see more, check out the internal \code{\link{pow}}
#' function that these functions depend on.
#' @examples
#' cube(tenvec)
#' square(-5)
#' reciprocal(2)
#' Box_Cox(2,3)
#' @rdname square
#' @export
square <- function(x, plot_it=FALSE) pow(x, a=2, plot_it=plot_it)

#' @rdname square
#' @export
cube <- function(x, plot_it=FALSE) pow(x, a=3, plot_it=plot_it)


#' @rdname square
#' @export
reciprocal <- function(x, plot_it=FALSE) pow(x, a=-1, plot_it=plot_it)

#' @rdname square
#' @export
Box_Cox <- function(x,L, plot_it=FALSE) (pow(x, a=L, plot_it=plot_it) - 1)/L
