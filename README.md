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

Por el momento el video está disponible en [Dropbox](https://www.dropbox.com/s/2vitezdgv8oll83/regex-parte1.mp4?dl=0). Pronto lo subiremos a Vimeo. Ojo que hay que descargarlo para poder verlo completo. 

### Sesión 2

**Los datos**

Parte 1

Archivos en https://github.com/rladieschile/taller-regex-2021. Si quieres seguir el ejemplo en vivo: 

Apretar el boton verde que dice "Code" para clonar

Descargar el repositorio completo en ZIP ("Download ZIP")

Descomprimir y abrir el archivo .Rproj

También usaremos el archivo de conexiones que se encuentra en:

https://raw.githubusercontent.com/sporella/30daymap/master/data/conexiones_internet_fija.csv

Parte 2

(próximamente)

**El código**

[Parte 1](https://bit.ly/taller-regex-2-codigo-1)

[Parte 2](https://bit.ly/taller-regex-2-codigo-2)

**Video**

Por el momento está disponible [en este enlace](https://puc.zoom.us/rec/share/sYP4elI8LUf3rm1EcLjRJTtBigAu1liytONMDzI4J8K84dyXrUe9XW37bSoIKgz0.2ZpElFH2E3HmzFGK?startTime=1613768514000). Pronto lo subiremos a Vimeo. 

**Material complementario**

[Cheatsheet Regex](https://rstudio.com/wp-content/uploads/2016/09/RegExCheatsheet.pdf): guía de referencia de expresiones regulares.

[Cheatsheet {stringr}](https://github.com/rstudio/cheatsheets/blob/master/strings.pdf): guía de referencia del paquete {stringr}

[Nombrar cosas](https://sporella.github.io/nombrar_cosas/#1): presentación Stephanie Orellana día 2.

[Naming Things](http://www2.stat.duke.edu/~rcs46/lectures_2015/01-markdown-git/slides/naming-slides/naming-slides.pdf): presentación de Jenny Bryan

[Funciones pivotantes](https://sporella.github.io/pivot/#1) Breve presentación para explicar lo básico.
