
#' gets the colours corresponding to the coloured category for use in ggplot
#'
#' @param categories a vector of unique categories to be coloured
#' @param col_options (optional) customise the colours for the input unique categories
#' @return a vector of colours named by the categories
#' @export
#'
#' @examples
#' categories = c('cat', 'dog', 'duck')
#' get_cols(categories)
get_cols = function(categories, col_options=NULL) {
  # this is assuming white background
  default_cols = c("#e6194b", "#3cb44b", "#ffe119", "#000000", "#f58231", "#911eb4",
                   "#46f0f0", "#aaffc3", "#bcf60c", "#fabebe", "#008080", "#e6beff",
                   "#9a6324", "#f032e6", "#800000", "#4363d8", "#808000", "#ffd8b1",
                   "#000075", "#808080", "#ffffff", "#aaffc3")
  if (is.null(col_options)) col_options = default_cols
  ncats = length(categories); ncolours = length(col_options)
  if (ncats <= ncolours) used_cols = col_options[1:ncats] else {
    t = ncats %/% ncolours
    used_cols = c(rep(col_options, t), col_options[1:(ncats - ncolours*t)])
  }
  return(used_cols)
}
