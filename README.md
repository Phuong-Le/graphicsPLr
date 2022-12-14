
<!-- README.md is generated from README.Rmd. Please edit that file -->

# graphicsPLr

<!-- badges: start -->
<!-- badges: end -->

The goal of graphicsPLr is to help with drawing figures in R. Currently
it provides a tool for assigning colours or shapes to categories. To be
developed

## Installation

You can install the development version of graphicsPLr like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

``` r
library(graphicsPLr)
## give it the categories 
categories = c('cat', 'dog', 'duck','elephant', 'mouse')
# can't decide on the colours? get_cols() does it for you
get_cols(categories)
#> [1] "#e6194b" "#3cb44b" "#ffe119" "#000000" "#f58231"
# or define your own colours. If the number of categories is greater than the number of specified colours, it will loop over colours the get the right lengths 
get_cols(categories, col_options = c('red','blue'))
#> [1] "red"  "blue" "red"  "blue" "red"

## similarly for shapes 
get_shapes(categories)
#> [1] 16  6 15  3 11
get_shapes(categories, shape_options = c(16,6,15))
#> [1] 16  6 15 16  6
```
