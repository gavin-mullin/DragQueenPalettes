#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

scale_color_DragQueen <- function(palette = "Yvie Oddly", discrete = TRUE, reverse = FALSE, ...) {
  pal <- DragQueen_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("DragQueen_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
