#install.packages("gapminder")  # para cargar la base de datos a usar hoy
#install.packages("tidyverse")
library(gapminder)  # datos
library(dplyr)      # Paquete para manipular los datos

gapminder
class(gapminder)

# Ver nombres de las variables :
#Instrucción: Usa colnames() para ver los nombres de las columnas 
#del conjunto de datos.

colnames(gapminder)

# Dimensión de la base de datos: 
#usar dim Instrucción: Usa dim() para ver cuántas filas y columnas tiene la base.
dim(gapminder)


# structura de la base de datos Instrucción: 
#Usa str() para ver qué tipo de variable hay en cada columna.

str(gapminder)

# Acceder a una variable Instrucción:
#Puedes acceder a una variable específica con el operador $ Por ejemplo, para ver la variable de países:

gapminder$lifeExp

attach(gapminder)
pop

## Instrucción: Usa estas funciones para explorar la cantidad de datos. 
#- ncol(gapminder) # Número de columnas (variables) 
#- nrow(gapminder) # Número de filas (observaciones) - dim(gapminder) 
# Dimensión completa (filas y columnas)

ncol(gapminder)
nrow(gapminder)
dim(gapminder)

#### summary
summary(gapminder)

x <- c(1, 4, 6, 8)

round(mean(sqrt(log(x))),2)

x %>% log() %>%   sqrt() %>%   mean() %>%    round(2)


# Función filter() – Filtrar filas

gapminder %>% filter(year==2007)

gapminder %>%  filter(year != 2007)

gapminder %>% filter(country == "United States")

gapminder$country %>% levels()

# Ejercicio: Filtrar América y Asia

gapminder %>% filter(continent %in% c("Americas", "Asia"))

gapminder %>% filter(continent=="Americas" | continent=="Asia")

gapminder %>% filter(continent == c("Americas", "Asia"))
library(stringr)

gapminder %>% filter(str_starts( country, "It"))

# Función arrange() – Ordenar filas
#(Ordenar de acuerdo a valores en una variable)

#Por ejemplo: Ver los paises de menor a mayor a mayor GPD (PIB)


gapminder %>% filter(year==2007) %>% arrange(lifeExp) %>% print(n=5)

## Función select() – Seleccionar columnas

gapminder %>% select(pop, year)

###
gapminder %>% select(-c(year, pop))

###
gapminder %>% select(2:4)
gapminder %>% select(c(1,3,5))
                     