#install.packages("tidyverse")
library(tidyverse)

# install.packages("ggplot2")
library(ggplot2)

#install.packages("datos")
library(datos)

millas=datos::millas

attach(millas)

View(millas)

?millas

#Para graficar millas, ejecuta este código para poner cilindrada en el eje x y autopista en el eje y

ggplot(data= millas) +
  geom_point(mapping=aes(x = cilindrada, y = autopista))



ggplot(millas,aes(x=cilindrada, y=autopista))+
  geom_point()



# a mayor tamaño del cilindrada el rendimiento es menor (menos millas)



#Ejercicios

#Ejecuta ggplot(data = millas). ¿Qué observas?

ggplot(data = millas)+
  geom_point(aes(x=cilindrada, y=autopista))

#Cuántas filas hay en millas? ¿Cuántas columnas?


# ¿Qué describe la variable traccion? Lee la ayuda de ?millas para encontrar la respuesta.


#Realiza un gráfico de dispersión de autopista versus cilindros.


ggplot(millas)+
  geom_point(aes(x=autopista, y=cilindros))


#¿Qué sucede cuando haces un gráfico de dispersión (scatterplot) de clase versus traccion?
#¿Por qué no es útil este gráfico?




###############################################################
#################################################################

ggplot(millas,aes(x=cilindrada, y=autopista))+
  geom_point()


library(plotly)


gg<-ggplot(millas,aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()

ggplotly(gg)

# no es buena idea
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, size = clase))



# mas opciones alpha

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, alpha = clase))


#shape
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase))


####Todos los puntos azules

ggplot(millas) +
  geom_point(aes(x = cilindrada, y = autopista), color = "blue")


#####Ejerciciosss

#¿Qué no va bien en este código? ¿Por qué hay puntos que no son azules?
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = "blue"))


#ubicacio del parentesis
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "blue")




#¿Qué variables en millas son categóricas? ¿Qué variables son continuas? 
#(Sugerencia: escribe ?millas para leer la documentación de ayuda para este conjunto de datos). 
#¿Cómo puedes ver esta información cuando ejecutas millas?

?millas
str(millas)



# Asigna una variable continua a color, size, y shape. ¿Cómo se comportan estas estéticas de manera diferente para variables categóricas y variables continuas?


ggplot(millas,aes(x=cilindrada, y=autopista, color=ciudad))+
  geom_point()



#¿Qué ocurre si asignas o mapeas la misma variable a múltiples estéticas?
ggplot(millas,aes(x=cilindrada, y=autopista, color=clase, shape=clase, size=clase))+
  geom_point()


#¿Qué hace la estética stroke? ¿Con qué formas trabaja? (Sugerencia: consultar ?geom_point)

ggplot(millas,aes(x=cilindrada, y=autopista, stroke=ciudad))+
  geom_point()


#¿Qué ocurre si se asigna o mapea una estética a algo diferente del nombre de una variable, como aes(color = cilindrada < 5)?



#########  Separar en facetas #####

#Una forma de agregar variables adicionales es con las estéticas.
#Otra forma particularmente útil para las variables categóricas 
# consiste en dividir el gráfico en facetas, es decir, sub-gráficos 
# que muestran cada uno un subconjunto de los datos.

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))+
  facet_wrap(~ clase, nrow = 2)


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))+
  facet_wrap(~ traccion, nrow = 2)



ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color=clase)) +
  facet_grid(traccion ~ cilindros)  

# Qué gráfica el siguiente código? ¿Qué hace . ?


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(traccion ~ .)





ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(. ~ cilindros)


############################################
#    Objetos geométricos
##############################################


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))

##    
ggplot(data = millas) +
  geom_smooth(mapping = aes(x = cilindrada, y = autopista, linetype = traccion))


##
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista,color=clase ))+
  geom_smooth(mapping = aes(x = cilindrada, y = autopista, linetype = traccion))    

#
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_smooth()


#
ggplot(millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(mapping = aes(color = clase)) +
  geom_smooth()        

###Ejercicios  

### ¿Qué geom usarías para generar un gráfico de líneas?
#¿Y para un diagrama de caja? ¿Y para un histograma? 





#  ¿Se verán distintos estos gráficos? ¿Por qué sí o por qué no?

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_smooth()


ggplot() +
  geom_point(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_smooth(data = millas, mapping = aes(x = cilindrada, y = autopista))

#########################################################
#Transformaciones estadísticas
######################################################  

diamantes  
View(diamantes) 

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))


#misma grafica de barras
ggplot(data = diamantes) +
  stat_count(mapping = aes(x = corte))




##Ajustes de posición
#Hay una pieza más de magia asociada con los gráficos de barras.
#Puedes colorear un gráfico de barras usando tanto la estética de color
#como la más útil fill (relleno):

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, color = corte))


ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = corte))



# ahora con claridad
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad))



#otra forma con dodge
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = color), position = "dodge")


##########################################################
#Sistemas de coordenadas

##########################################################

ggplot(data = millas, mapping = aes(x = clase, y = autopista)) +
  geom_boxplot(color="blue")

#intercambiar los ejes x y y
ggplot(data = millas, mapping = aes(x = clase, y = autopista)) +
  geom_boxplot() +
  coord_flip()

##### mapas
install.packages("maps")
library(maps)


nueva_zelanda <- map_data("nz")

View(nueva_zelanda)



ggplot(nueva_zelanda, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")



ggplot(nueva_zelanda, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()


####### mapa de estados unidos

EstadosUnidos<-map_data("usa")
View(EstadosUnidos)

ggplot(usa,aes(long, lat, group=group))+
  geom_polygon(fill="red", colour="black")


#########################################



##############################################################
#install.packages("ggmap")
library(ggmap)
library(PKI)
## Loading required package: base64enc
install.packages("packrat")
library(packrat)
#Forma 1
localizacion="Fundación Universitaria Los Libertadores"
#Forma 2
#localizacion=c(lat=4.656748400,lon= -74.056341000)


myMap <- get_map(location=localizacion, zoom= 18, source="google", 
                 maptype="roadmap", crop=TRUE)

ggmap(myMap)


library(ggmap)
