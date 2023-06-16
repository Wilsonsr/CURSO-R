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

#### Funcion arrange
names(gapminder)

gapminder %>% arrange(gdpPercap) # de menor a mayor

gapminder %>% arrange(lifeExp)

#Por ejemplo: Ver los paises de mayor a menor GPD (PIB)
gapminder %>% arrange(desc(gdpPercap))

#mostrar mas de 10

gapminder %>% arrange(desc(pop)) %>% print(n=15)

gapminder %>% arrange(year, desc(lifeExp))

# GDP (PIB) del año 2007 en orden descendiente

gapminder %>% filter(year==2007 | year==1952)

gapminder %>% filter(year==1957) %>% arrange(desc(pop))

#### Tercera Funcion Select  (seleccionar columnas)

# selecionemos la variable lifeExpect

gapminder %>% select(lifeExp)
# seleccionar mas de una columna

gapminder %>% select(country,pop, gdpPercap)

######
dim(gapminder)

#### 
gapminder %>% select(1:4)

#####

df=gapminder %>% select(c(2,4,5)) # columnas 2, 4, 5
df

####
gapminder %>% select(-year) # omitir la variable year

###### Funcion Mutate

gapminder=gapminder %>% mutate(PIB=gdpPercap*pop)
gapminder


gapminder=gapminder %>% select(-PIB)
gapminder


write_csv(gapminder, "C:/Users/wsand/Downloads/data_prueba_otra.csv")

gapminder %>% mutate(ExpMes=lifeExp*12)

###

gapminder %>% mutate(ExpMes=lifeExp*12, PIB=pop*gdpPercap)

### cambiar nombre variable

gapminder %>% mutate(Expect_vida=lifeExp)

#
gapminder %>% rename(Poblacion=pop)

####
gapminder %>% rename_all(toupper) #  mayusculas

gapminder

### Summarise  mean, median, sd, var, min, max

gapminder %>% summarise(media_expec_life= mean(lifeExp))

# maximo expectativa de vida

gapminder %>% summarise(max_expect_life=max(lifeExp))

################################
summary(gapminder)
###

gapminder %>% filter(year==2007) %>% group_by(continent) %>% 
  summarise(expect_cont_2007=mean(lifeExp)) %>% arrange(desc(expect_cont_2007)) %>% 
  filter(continent!="Americas")





