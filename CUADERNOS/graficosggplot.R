#install.packages("tidyverse")
library(tidyverse)

#install.packages("ggplot2")
library(ggplot2)

#install.packages("datos")
library(datos)

millas =  datos::millas    ### obliga a que millas sea del paquete datos

data()

attach(millas)


View(millas)

?millas



#Para graficar millas, ejecuta este código para poner cilindrada en el eje x y autopista en el eje y

# opcion 1
ggplot(data= millas) +
  geom_point(mapping=aes(x = cilindrada, y = autopista))

 
# opcion 2
ggplot(millas,aes(x=cilindrada, y=autopista))+
  geom_point()

ggplot(millas, aes(x=cilindrada, y=ciudad ))+
  geom_point()


#### diagrama de barras  para fabricante 
ggplot(millas, aes(x=fabricante))+
  geom_bar(  fill="steelblue" )+
  labs(title = "Cantidad de autos por fabricante",
       y="Cantidad de autos")+
  theme_bw()


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

#install.packages("plotly")
library(plotly)


gg<-ggplot(millas,aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()

gg

ggplotly(gg) ###

# no es buena idea
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, size = clase))



# mas opciones alpha

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, alpha = clase))


#shape
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase, color=transmision))


####Todos los puntos azules

ggplot(millas) +
  geom_point(aes(x = cilindrada, y = autopista), color = "blue")


#####Ejerciciosss

#¿Qué no va bien en este código? ¿Por qué hay puntos que no son azules?
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = fabricante))


#ubicacio del parentesis
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "blue")




#¿Qué variables en millas son categóricas? ¿Qué variables son continuas? 
#(Sugerencia: escribe ?millas para leer la documentación de ayuda para este conjunto de datos). 
#¿Cómo puedes ver esta información cuando ejecutas millas?

str(millas)





# Asigna una variable continua a color, size, y shape. ¿Cómo se comportan estas estéticas de manera diferente para variables categóricas y variables continuas?


ggplot(millas,aes(x=cilindrada, y=autopista, size=ciudad))+
  geom_point()



#¿Qué ocurre si asignas o mapeas la misma variable a múltiples estéticas?
ggplot(millas,aes(x=cilindrada, y=autopista, color=clase, shape=clase, size=clase))+
  geom_point()


#¿Qué hace la estética stroke? ¿Con qué formas trabaja? (Sugerencia: consultar ?geom_point)

ggplot(millas,aes(x=cilindrada, y=autopista, stroke=ciudad))+
  geom_point()


#¿Qué ocurre si se asigna o mapea una estética a algo diferente del nombre de una variable, como aes(color = cilindrada < 5)?

ggplot(data = millas, aes(x=cilindrada, y=ciudad, color=cilindrada<5))+
  geom_point()



#########  Separar en facetas #####

#Una forma de agregar variables adicionales es con las estéticas.
#Otra forma particularmente útil para las variables categóricas 
# consiste en dividir el gráfico en facetas, es decir, sub-gráficos 
# que muestran cada uno un subconjunto de los datos.

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))+
  facet_wrap(~ clase, nrow = 3)


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))+
  facet_wrap(~ traccion, nrow = 2)



ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color=clase)) +
  facet_grid(traccion ~ transmision)  

# Qué gráfica el siguiente código? ¿Qué hace . ?


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(traccion ~ .)





ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(. ~ traccion)


#### ejercicio
# muestre la cantidad de vehiculos por fabricante  para separar por tipo de 
#vehiculo

ggplot(data = millas) +
  geom_point(mapping = aes(x = fabricante, y = clase)) +
  facet_grid(clase ~ .)

ggplot(millas, aes(x=fabricante))+
  geom_bar(fill="steelblue")+
  geom_text( aes(label=..count..), stat = "count", vjust=-0.5)+
  facet_wrap(~clase)+
  theme(axis.text.x = element_text(angle=90))



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

### histograma  para la variable  autopista  

ggplot(millas, aes(autopista) )+
  geom_histogram(fill="steelblue", color="white", binwidth = 3)



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

ggplot(EstadosUnidos,aes(long, lat, group=group))+
  geom_polygon(fill="red", colour="black")


#########################################

maps::map()


