
#' gets the shapes corresponding to the shaped category for use in ggplot
#'
#' @param categories a vector of unique categories to be coloured
#' @param shape_options (optional) customise the shapes for the input unique categories
#' @return a vector of shapes named by the categories
#' @export
#'
#' @examples
#' categories = c('cat', 'dog', 'duck')
#' get_shapes(categories)
get_shapes = function(categories, shape_options=NULL) {
  default_shapes = c(16,6,15,3,11,18,12,17,8,5,4,10,9,7)
  if (is.null(shape_options)) shape_options = default_shapes
  ncats = length(categories); nshapes = length(shape_options)
  if (ncats <= nshapes) used_shapes = shape_options[1:ncats] else {
    t = ncats %/% nshapes
    used_shapes = c(rep(shape_options, t), shape_options[1:(ncats - nshapes*t)])
  }
  return(used_shapes)
}
