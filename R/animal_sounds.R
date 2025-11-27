#' Prints the Sound an Animal Makes
#'
#' Prints the **sound** that an animal *makes*, by creating a wrapper around [paste0()].
#'
#' @param animal A character vector of length 1
#' @param sound A character vector of length 1
#'
#' @returns A string that combines animal name and sound.
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound = NULL) {

  check_arg(animal)

  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound.")
  } else{

    check_arg(sound)

    paste0("The ", animal, " says ", sound, "!")
  }
}

check_arg <- function(argument, n = 1) {
  if (!rlang::is_character(argument, n = n)) {
    cli_abort(c("{.var {rlang::caller_arg(argument)} } must be a character vector of length {n}.",
                "i" = "It was {.type {argument}} of length {length(argument)} instead."),
              call = rlang::caller_env(),
              class = "error_not_string_or_wrong_length")
  }
}

#' Head of a Data Frame
#'
#' Slices a data frame
#'
#' @param data A data frame
#' @param n An integer
#'
#' @export
first_n <- function(data, n) {
  data |>
    dplyr::slice_head(n = n)
}
