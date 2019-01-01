# === Methods for Gingr classes =====================================

#' @title Show method for Gingr objects
#'
#' @param object an S4 \code{Gingr} class obect
#'
#' @rdname Gingr-show-methods
#' @aliases show,Gingr-method
setMethod(
    f = "show",
    signature = "Gingr",
    def = function(object) {
        cat("Class           :", class(object), "\n")
        cat("Total Area      :", object@area, "sq.", object@unit, "\n")
        cat("Total Materials :", sum(object@recipe$amount_g), "g", "\n\n")
        cat(
            "Here is what you need for your gingerbread ",
            object@structure,
            "...",
            "\n\n",
            sep = ""
        )
        gingrPrintr(object)
        cat("\n")
    }
)


#' @title Getter method for recipe extraction of Gingr objects
#'
#' @param object an S4 \code{Gingr} class object
#'
#' @rdname recipe-methods
#' @aliases recipe,Gingr-method
setMethod(
    f = "recipe",
    signature = "Gingr",
    def = function(object) {
        return(object@recipe)
    }
)


#' @title Get a random fortune from Gingr objects
#'
#' @param object an S4 \code{Gingr} class object
#'
#' @rdname gingrFact-methods
#' @aliases gingrFact,Gingr-method
setMethod(
    f = "gingrFact",
    signature = "Gingr",
    def = function(object) {
        message(
            speechBubble(.message(object), 5),
            .ascii()[[character]]
        )
    }
)


#' @title Show method for GingrEnglish objects
#'
#' @param object an S4 \code{GingrEnglish} class object
#'
#' @rdname GingrEnglish-show-methods
#' @aliases show,GingrEnglish-method
setMethod(
    f = "show",
    signature = "GingrEnglish",
    def = function(object) {
        cat("Class           :", class(object), "\n")
        cat("Total Area      :", object@area, "sq.", object@unit, "\n")
        cat("Total Materials :", "I dunno, it's all different units","\n\n")
        cat("OK, OK, OK - Here it is in English units!\n")
        cat(
            "Here is what you need for your gingerbread ",
            object@structure,
            "...",
            "\n\n",
            sep = ""
        )
        gingrPrintr(object, units = "en")
        cat("\n")
    }
)
