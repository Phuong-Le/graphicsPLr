test_that("get_cols() works", {
  categories = c('cat', 'dog', 'duck')
  expect_equal(get_cols(categories), c("#e6194b", "#3cb44b", "#ffe119"))
})

test_that("get_cols() works when the number of categories exceeds the number of colours", {
  categories = c('cat', 'dog', 'duck', 'elephant', 'mouse')
  expect_equal(get_cols(categories, col_options = c('red', 'blue')),
               c('red', 'blue', 'red', 'blue', 'red'))
})
