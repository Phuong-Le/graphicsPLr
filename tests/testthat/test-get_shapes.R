test_that("get_shapes() works", {
  categories = c('cat', 'dog', 'duck')
  expect_equal(get_shapes(categories), c(16,6,15))
})

test_that("get_shapes() works when the number of categories exceeds the number of shapes", {
  categories = c('cat', 'dog', 'duck', 'elephant', 'mouse')
  expect_equal(get_shapes(categories, shape_options = c(16,6,15)),
               c(16, 6, 15, 16, 6))
})
