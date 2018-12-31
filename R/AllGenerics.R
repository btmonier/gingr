# === Generics for gingr classes ====================================

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
