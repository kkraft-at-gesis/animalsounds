test_that("animal_sounds produces expected strings", {
  cat_miaow <- animal_sounds("cat", "miaow")
  expect_equal(animal_sounds("dog", "woof"), "The dog says woof!")
  expect_equal(cat_miaow, "The cat says miaow!")
})

test_that("animal_sounds handles invalid input", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               # class can only be used when using cli package for stop / warn
               class = "error_not_string_or_wrong_length")
})

test_that("error message for invalid output", {
  expect_snapshot(animal_sounds(c("dog", "cat"), "woof"),
                  error = TRUE)
})

test_that("animals can make no sound", {
  expect_equal(animal_sounds("giraffe"), "The giraffe makes no sound.")
})
