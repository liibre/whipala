#' Generador de whipalas de diferentes dimensiones
#'
#' @param ncol Número de columnas de la whipala deseada.
#' @param nrow Número de líneas de la whipala deseada. La whipala es cuadrada entonces este valor no es necesario a priori. Si sólo se pide ncol nrow será el mismo valor
#' @param plot Lógico. Para ver el gráfico
#' @export
#' @examples
#' whipala()
#' whipala(12)
whipala <- function(ncol = 7, nrow, plot = TRUE) {
  if (missing(nrow)) nrow <- ncol
  whi <- matrix(nrow = nrow, ncol = ncol)
  whi[1, ] <- ff <- rep_len(1:7, length.out = ncol)
  for (i in 2:nrow) {
    whi[i,] <- ff <- c(ff[length(ff)], ff[-length(ff)])
  }
  r <- raster::raster(nrows = nrow, ncols = ncol)
  r <- raster::setValues(r, whi)
  raster::extent(r) <- c(-90, 90, -90, 90)
  if (plot) raster::plot(r, col = whipalette, legend = F, asp = 1)
  return(r)
}
