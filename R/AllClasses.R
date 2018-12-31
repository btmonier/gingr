# === Classes for Gingr =============================================

#' @title Class Gingr
#'
#' @description Class \code{Gingr} defines a Gingr data set for constructing
#'    gingerbread-related things.
#'
#' @name Gingr-class
#' @rdname Gingr-class
#' @exportClass Gingr
setClass(
    Class = "Gingr",
    representation = representation(
        structure = "character",
        area = "numeric",
        unit = "character",
        recipe = "data.frame"
    ),
    prototype = prototype(
        structure = "thing",
        area = 1,
        unit = "in",
        recipe = data.frame()
    )
)


#' @title Material calculator to make gingerbread stuff...
#'
#' @author Brandon Monier, \email{brandon.monier@gmail.com}
#'
#' @description This function will calculate the amount of material required
#'    to make a gingerbread related structure of any size!
#'
#' @details Using a propietary 'secret' formula of baking goods values
#'    (Monier et al. 20xx), this function will precisely calculate the
#'    necessary materials to make anything out of gingerbread. All you need
#'    to enter is the unit area your mega structure will cover and it will
#'    give you an output of what you need with respective units.
#'
#' @param area the numerical area you need
#' @param unit the units you calculated the area in (in, ft, cm, m)
#' @param structure the type of gingerbread structure you wish to make
#' @param ... additional parameters to pass through (WIP)
#'
#' @examples
#' Gingr(area = 500, unit = "in", structure = "House")
#'
#' @name Gingr
#' @rdname Gingr-class
#'
#' @importFrom methods new
#' @export
Gingr <- function(area, unit, structure = NA, ...) {
    if (is.na(structure)) structure <- "thing"
    new(
        Class = "Gingr",
        structure = structure,
        area = area,
        unit = unit,
        recipe = gingrConvert(area, unit, structure)
    )
}



#' @title Class GingrEnglish
#'
#' @description Class \code{GingrEnglish} defines a Gingr data set for
#'    constructing gingerbread-related things in English units.
#'
#' @name GingrEnglish-class
#' @rdname GingrEnglish-class
#' @exportClass GingrEnglish
setClass(
    Class = "GingrEnglish",
    contains = "Gingr"
)


#' @title Material calculator for English units conversion...
#'
#' @author Brandon Monier, \email{brandon.monier@gmail.com}
#'
#' @description This function will convert the display to English units for
#'    \code{Gingr} classes.
#'
#' @param object an \code{Gingr} class object
#'
#' @examples
#' gDS <- Gingr(area = 500, unit = "in", structure = "House")
#' InEnglishPls(gDS)
#'
#' @name InEnglishPls
#' @rdname GingrEnglish-class
#'
#' @importFrom methods new
#' @export
InEnglishPls <- function(object) {
    new(
        Class = "GingrEnglish",
        structure = object@structure,
        area = object@area,
        unit = object@unit,
        recipe = object@recipe
    )
}
