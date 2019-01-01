# === Gingr speech functions ========================================

# @title String splitter
#
# @description Splits string of characters into \math{n} elements
#
# @param x Vector
# @param n Number of elements in each vector
# @param pattern Pattern to split on
# @param ... Passed to strsplit
# @param collapse String to collapse the result into
splitEvery <- function(x, n, pattern = " ", ...) {
    x_split <- strsplit(x, pattern, perl = TRUE, ...)[[1]]
    out <- character(ceiling(length(x_split) / n))
    for (i in seq_along(out)) {
        entry <- x_split[seq((i - 1) * n + 1, i * n, by = 1)]
        out[i] <- paste0(entry[!is.na(entry)], collapse = pattern)
    }
    out
}


# @title Speech bubble
#
# @description Creates padded lines for messaging a speech bubble. Each line is
#    concatenated with a \code{"\n"} terminator.
#
# @param x Vector
# @param n Number of elements in each vector
# @param body single character used for body perimeter of bubble
# @param head single character used for head of bubble perimeter
# @param foot single character used for foot of bubble perimeter
speechBubble <- function(x, n, body = "|", head = "-", foot = "-") {
    align <- "%0-"
    out <- splitEvery(x = x, n = n)
    out <- sprintf(
        paste0(align, max(nchar(out)), "s"),
        out
    )

    head <- paste0(" +", strrep(head, max(nchar(out))), "+ ", "\n")
    body <- paste(body, out, body, "\n")
    foot <- paste0(" +", strrep(foot, max(nchar(out))), "+ ", "\n")

    return(c(head, body, foot))
}
