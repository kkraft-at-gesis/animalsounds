test_that("animal_sounds produces expected strings", {
  cat_miaow <- animal_sounds("cat", "miaow")
  expect_equal(animal_sounds("dog", "woof"), "The dog says woof!")
  expect_equal(cat_miaow, "The cat says miaow!")
})

test_that("animal_sounds handles invalid input", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               regexp = "`animal ` must be a character vector of length 1")
})
