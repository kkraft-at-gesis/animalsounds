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
animal_sounds <- function(animal, sound) {

  check_arg(animal)
  check_arg(sound)

  paste0("The ", animal, " says ", sound, "!")
}

check_arg <- function(argument, n = 1) {
  if (!rlang::is_character(argument, n = n)) {
    cli_abort(c("{.var {rlang::caller_arg(argument)} } must be a character vector of length {n}.",
                "i" = "It was {.type {argument}} of length {length(argument)} instead."),
              call = rlang::caller_env())
  }
}
