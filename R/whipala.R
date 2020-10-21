#' Los colores de la whipala
#'
#' Use crea_whipala() para construir whipalas de diferentes tamaños
#'
#' @export
whipalette <- c ("white",
                "yellow",
                "orange",
                "red",
                "purple",
                "blue",
                "forestgreen")

#' Generador de whipalas de diferentes dimensiones
#'
#' @param ncol Número de columnas de la whipala deseada.
#' @param nrow Número de líneas de la whipala deseada. La whipala es cuadrada entonces este valor no es necesario a priori. Si sólo se pide ncol nrow será el mismo valor
#' @export
#' @examples
#' whipala()
#' whipala(12)
whipala <- function(ncol = 7, nrow = ncol) {
  whi <- matrix(nrow = nrow, ncol = ncol)
  whi[1, ] <- ff <- rep_len(1:7, length.out = ncol)
  for (i in 2:nrow) {
    whi[i,] <- ff <- c(ff[length(ff)], ff[-length(ff)])
  }

  im <- graphics::image(x = 1:ncol,
              y = 1:nrow,
              z = whi,
              col = whipalette)
  return(im)
}




