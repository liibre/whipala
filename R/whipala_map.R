library(raster)
br <- raster::getData("alt", country = "BRA")
br <- aggregate(br, 100)
plot(br)
# para vários países dá para aproveitar o downloader de shapes de GADM de rocc e rasterizar

#cria um raster de mesmas dimensões e valores whip
w <- whipala(ncol = ncol(br), nrow = nrow(br))
w
#na hora de rodar a funcao ele plota com a paleta mas por fora precisa voltar a especificar
plot(w)
plot(w, col = whipalette)
dim(br_m) == dim(w)
extent(br_m) == extent(w)
extent(w) <- extent(br_m)
br_whip <- mask(w, br)
plot(br_whip, col = whipalette, legend = F)

