
<!-- README.md is generated from README.Rmd. Please edit that file -->

# whipala

<!-- badges: start -->

<!-- badges: end -->

El objetivo de **whipala** es crear una paleta con los colores de la
whipala andina, y disponibilizarla para su uso en R.

## Instalación

Puede instalar **whipala** desde su repositorio en GitHub con el paquete
**remotes**

``` r
remotes::install_github("liibre/whipala")
```

## Ejemplo

    #> Loading whipala

``` r
library(whipala)
```

``` r
## basic example code
whipala()
```

<img src="man/figures/README-example-1.png" width="100%" />

    #> NULL
    whipala(ncol = 13)

<img src="man/figures/README-example-2.png" width="100%" />

    #> NULL

La Whipala es propiedad de la nación originaria, es decir de los
Qhishwa-Aymaras, Guaraníes y de todo el pueblo

## W(H)IP

  - [ ] Mejorar descripciones y fuentes
  - [ ] Mejorar el purple
  - [ ] Transformar colores a hex codes para transformar en paleta
    (whipalette :P)
  - [ ] Reorganizar la matriz para plotar en el orden correcto, o
    cambiar la manera de plotar.
  - [ ] Crear rasters em vez de grids
  - [ ] Crear mapas con la whipala \#goals
  - [ ] Crear el logo del paquete
