## LatinR 2020
## Expresiones regulares para la limpieza y transformación de datos
## Taller a cargo de Riva Quiroga (@rivaquiroga) y Stephanie Orellana (@sporella)
## 


# Parte 2 -----------------------------------------------------------------

# datos -------------------------------------------------------------------
peliculas <- read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-19/ranking_imdb.csv")
pinguinos <- datos::pinguinos
animales <- read_csv("https://raw.githubusercontent.com/rivaquiroga/latinr-taller-regex/master/datos/animales.csv")

# separate() --------------------------------------------------------------

peliculas2 <- peliculas %>% 
  separate(col = genero, into = c("genero_primario", "otros_generos"), sep = ", ", extra = "merge")

# separate_rows() ---------------------------------------------------------

peliculas3 <- peliculas %>% 
  separate_rows(genero, sep = ", ")
  
  
# pivot_longer() ----------------------------------------------------------

pinguinos_longer <- pinguinos %>% 
  pivot_longer(cols = largo_pico_mm:masa_corporal_g, 
               names_to = c("variable", "unidad"), 
               names_pattern = "(.*_.*)_(.*)", 
               values_to = "valor")

animales_limpio <- animales %>% 
  pivot_longer(cols = -1,
               names_to = c("sitio", "annio", "mes"),
               names_pattern = "(.*)_monitoreo(.*)_(.*)",
               values_to = "valor") %>% 
  separate_rows(valor)
