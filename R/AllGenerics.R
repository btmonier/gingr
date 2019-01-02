# === Generics for gingr methods ====================================

#' @title Get recipe from a Gingr object
#'
#' @name recipe
#' @rdname recipe-methods
#' @exportMethod recipe
setGeneric(
    name = "recipe",
    def = function(object) {
        standardGeneric("recipe")
    }
)


#' @title Get facts from a Gingr object
#'
#' @name gingrFact
#' @rdname gingrFact-methods
#' @exportMethod gingrFact
setGeneric(
    name = "gingrFact",
    def = function(object, character) {
        standardGeneric("gingrFact")
    }
)
