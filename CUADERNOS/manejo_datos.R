# Carga de paquetes

#install.packages("gapminder")
#install.packages("tidyverse")

library(gapminder)  # datos
library(dplyr)      # Paquete para manipular los datos

#Nombres de las variables
colnames(gapminder)

 View(gapminder)
# Dimension de la base de datos

dim(gapminder)

#### Informacion sobre las variables

str(gapminder)

# llamar una variable

gapminder$lifeExp


#Omitir el signo $ en el llmado de la variable

attach(gapminder)

country

#nunmero de columnas
ncol(gapminder)

# numero de filas
nrow(gapminder)

# 6 primeras filas de la base y 6 ultimas filas de la base.
head(gapminder ,3)

tail(gapminder,10 )

#### %>%     ctr + shift + M
gapminder %>% filter(year==2007) 

todomenos2007<-gapminder %>% filter(year!=2007)
todomenos2007

gapminder %>% filter(country == "United States")

#Ejercicio: Buscar a Colombia

gapminder %>% filter(country == "Colombia")
gapminder %>% filter(continent == "Asia")

gapminder %>% filter(country=="China", year==2002)

gapminder %>% filter(country=="Spain", year>=1990, year<=2000 )
