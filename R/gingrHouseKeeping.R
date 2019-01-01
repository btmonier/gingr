# === Gingr housekeeping functions ==================================

## gingrConvert - not exported
gingrConvert <- function(area, units = "in", structure = NULL, ...) {
    unit = c("in", "ft", "cm", "m")

    if(!is.numeric(area)) {
        stop("Please enter NUMERICAL data.")
    }
    if(!is.element(units, unit)) {
        stop("Please enter a specified unit type (in, ft, cm, m).")
    }
    if(is.null(structure)) {
        structure = "thing..."
    }

    ingredients <- c(
        "butter", "brown sugar", "flour", "ginger",
        "cinnamon", "baking soda", "baking powder", "salt",
        "eggs", "molasses"
    )

    amounts <- c(
        0.9080, 1.1900, 3.2960, 0.0300,
        0.0300, 0.0144, 0.0048, 0.0060,
        0.1000, 1.2880
    )

    enAmountNum <- c(
        0.0020, 0.0050, 0.0255, 0.0040,
        0.0040, 0.0030, 0.0010, 0.0010,
        0.0080, 0.0040
    )

    enAmountUnit <- c(
        "pound", "cup", "cup", "tblsp",
        "tblsp", "tsp", "tsp", "tsp",
        "egg", "cup"
    )

    if(units == "in") {
        area <- area
    }
    if(units == "ft") {
        area <- area * 12
    }

    if(units == "cm") {
        area <- area * 0.39370079
    }

    if(units == "m") {
        area <- area * 39.37
    }

    amounts <- amounts * area
    enAmountNum <- enAmountNum * area

    gingrDF <- data.frame(
        ingredients = ingredients,
        amount_g = amounts,
        amount_en = paste(enAmountNum, enAmountUnit),
        stringsAsFactors = FALSE
    )
    gingrDF <- gingrDF[order(gingrDF$ingredients), ]
    rownames(gingrDF) <- seq_len(nrow(gingrDF))
    return(gingrDF)
}


## subPad (I know I could use stringr::str_pad) - not exported
subPad <- function(v, pad = ".", align = "left") {
    if(align == "left") {
        align <- "%0-"
    } else if (align == "right") {
        align <- "%0"
    } else {
        stop("Incorrect alignment option.")
    }
    tmp <- gsub(" ", "_", v)
    tmp <- gsub(
        pattern = " ",
        replacement = pad,
        x = sprintf(
            paste0(align, max(nchar(v)), "s"),
            tmp
        )
    )
    gsub("_", " ", tmp)
}


## gingrPrintr - not exported
gingrPrintr <- function(object, units = "g", sep = " | ") {
    if (units == "g") {
        headUnit <- "[Amount (g)]"
        unit <- c(
            headUnit,
            strrep("=", nchar(headUnit)),
            sprintf("%.2f", object@recipe$amount_g)
        )
    } else if (units == "en") {
        headUnit <- "[Amount (En)]"
        unit <- c(
            headUnit,
            strrep("=", nchar(headUnit)),
            object@recipe$amount_en
        )
    } else {
        stop("Incorrect unit option.")
    }
    cat(
        paste0(
            subPad(
                v = c(
                    "[Ingredients]",
                    "=============",
                    object@recipe$ingredients
                ),
                pad = ".",
                align = "left"
            ),
            sep,
            subPad(
                v = unit,
                pad = ".",
                align = "right"
            )
        ),
        sep = "\n"
    )
}










