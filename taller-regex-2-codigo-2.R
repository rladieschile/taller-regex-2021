## RLadies Chile + Galápagos + Ciudad de México 2020
## Expresiones regulares para la limpieza y transformación de datos
## Taller a cargo de Riva Quiroga (@rivaquiroga) y Stephanie Orellana (@sporella)
## 

library(tidyverse)

# Parte 1 -----------------------------------------------------------------
# Datos

# Archivos en "https://github.com/rladieschile/taller-regex-2021", si quieres seguir el ejemplo en vivo:
# Apretar el boton verde que dice "Code" para clonar
# Descargar el repositorio completo en ZIP ("Download ZIP")
# Descomprimir y abrir el archivo .Rproj

# * Listar nombres de archivos --------------------------------------------

list.files(path = "datos/archivos_varios/", pattern = "2019")
list.files(path = "datos/archivos_varios/", pattern = "2020")
list.files(path = "datos/archivos_varios/", pattern = ".csv$")
list.files(path = "datos/archivos_varios/", pattern = "^2020.*.csv$")

lista_de_archivos <- list.files(path = "datos/archivos_varios/")

# listar los no csv
str_subset(string = lista_de_archivos, pattern = ".csv$")
str_subset(string = lista_de_archivos, pattern = ".csv$", negate = T)

# unir todos los csv en una gran tabla

lista_de_archivos_csv <- list.files(path = "datos/archivos_varios/", pattern = ".csv$", full.names = T)

todos_los_csv <- purrr::map_dfr(lista_de_archivos_csv, .f = read_csv)

# Extraer metadatos a partir de los nombres
lista_de_archivos_csv2 <- list.files(path = "datos/archivos_varios/", pattern = ".csv$")

metadatos <- data.frame(str_split_fixed(string = lista_de_archivos_csv2, pattern = "_|[.]", n = 5))
names(metadatos) <- c("annio", "mes", "pais", "ciudad", "extension")

# Anteponer ceros

num <- 1:15
sort(num)
sort(as.character(num))
str_pad(num, width = 2, pad = "0")

# * Otro ejemplo de pivot_longer()  ---------------------------------------

conexiones <- read_csv("https://raw.githubusercontent.com/sporella/30daymap/master/data/conexiones_internet_fija.csv", col_names = F)
nombres <- paste0(conexiones[1,], "_", conexiones[2,])
names(conexiones) <- nombres
conexiones <- conexiones[-c(1,2), ]

conexiones_longer <- conexiones %>% 
  fill(1) %>% 
  pivot_longer(cols = -c(1:2), names_to = c("annio", "mes"),
               values_to = "numero_de_conexiones", names_sep = "_"
               )
