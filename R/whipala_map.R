#' Plots a raster to a whipala
#'
#' @param raster a raster pbject
#'
#' @export
#' @examples
#' br <- raster::getData("alt", country = "BRA")
#' br <- aggregate(br, 150)
#' whipala_map(br)
whipala_map <- function(raster) {
  #cria um raster de mesmas dimensões e valores whip
  whipr <- whipala(ncol = ncol(raster), nrow = nrow(raster), plot = FALSE)
  raster::extent(whipr) <- raster::extent(raster)
  whipmap <- raster::mask(whipr, raster)
  raster::plot(whipmap, col = whipalette, legend = F)
}

