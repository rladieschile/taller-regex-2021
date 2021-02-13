# Expresiones regulares para la limpieza y transformación de datos

**Taller a cargo de [Stephanie Orellana](https://twitter.com/sporella) y [Riva Quiroga](https://twitter.com/rivaquiroga)**


## ¿De qué se trata este taller?

Este taller tiene por objetivo que sus participantes se familiaricen con el uso de expresiones regulares (conocidas también como "regex"). Específicamente, abordaremos el potencial que tienen como parte del proceso de limpieza y transformación de datos usando paquetes del "Tidyverse". Los ejemplos prácticos se enfocarán en el trabajo con dataframes y archivos de texto y en cómo utilizar expresiones regulares en conjunto con funciones de los paquetes {stringr}, {dplyr} y {tidyr}.


## ¿Qué necesito para participar?

Para este taller es necesario tener una versión de R igual o superior a 3.6 y tener instalados RStudio y los paquetes {tidyverse}, {janitor}, {pdftools} y la versión en desarrollo de {datos}. Esta última se puede instalar desde GitHub con: `remotes::install_github("cienciadedatos/datos")`. Puede que tengas que instalar antes el paquete {remotes}.


## Materiales


### Sesión 1

**Los datos**

Parte 1

```R
paises <- datos::paises 

telefonos <- https://raw.githubusercontent.com/rladieschile/taller-regex-2021/main/datos/telefonos.csv 
```

Parte 2

```R
peliculas <- read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-19/ranking_imdb.csv")

pinguinos <- datos::pinguinos

animales <- read_csv("https://raw.githubusercontent.com/rladieschile/taller-regex-2021/main/datos/animales.csv")
```

**El código**

[Parte 1](https://bit.ly/taller-regex-1-codigo-1)

[Parte 2](https://bit.ly/taller-regex-1-codigo-2)

**Video**
(próximamente)

### Sesión 2

**Los datos**
(próximamente)

**El código**
(próximamente)

**Video**
(próximamente)
