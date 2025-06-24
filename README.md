# Introducción a R

En este curso se aprende el uso básico de R (https://www.r-project.org/), de Rstudio (https://www.rstudio.com/) y de algunas librerias útiles en la analitica de datos, el curso se divide en 6 sesiones de 3 horas.



| Sesión | Descripción | Material o Enlace |
|--------|-------------|-------------------|
| 💻 **Sesión 1. Primeros pasos con R y manipulación básica** | Se presenta qué es R y RStudio, cómo instalar y configurar el entorno. Se introducen los tipos de objetos más comunes (vectores, matrices y data.frames), operaciones aritméticas y lógicas básicas, y funciones esenciales para explorar datos (`summary()`, `str()`, `table()`). También se realiza la carga de archivos `.csv`  | [Material sesión 1](https://wilsonsr.shinyapps.io/Introduccion_R/) |
| 🛠️ **Sesión 2. Manipulación moderna de datos con tidyverse** | Se introduce el paquete `tidyverse` y su enfoque de trabajo con datos ordenados (tidy data). Se enseñan los principales verbos de `dplyr`: `filter()`, `select()`, `mutate()`, `arrange()`, `group_by()` y `summarise()`. Se revisan buenas prácticas con el uso del pipe (`%>%`). Finalmente, se realiza una comparación entre el manejo de datos con base R y con `dplyr`. | [Material sesión 2](https://wilsonsr.shinyapps.io/manejo_de_datos_shiny/) |
| 📊 **Sesión 3. Visualización con ggplot2** | Se presenta la gramática de gráficos de `ggplot2`, mostrando su estructura y cómo construir visualizaciones progresivamente. Se trabajan diferentes tipos de gráficos: de barras, líneas, dispersión, histogramas y boxplots. Se explican opciones para personalizar colores, etiquetas, escalas y títulos. Se introducen las facetas para comparar categorías y el uso de temas visuales como `theme_minimal()`. | [Material sesión 3](https://github.com/Wilsonsr/CURSO-R/blob/main/CUADERNOS/graficosggplot.R) |
| 📈 **Sesión 4. Estadística descriptiva aplicada** | Se revisan medidas de tendencia central (media, mediana) y dispersión (desviación estándar, rango, percentiles), así como tablas de frecuencia y proporciones. Se aprende a manejar valores perdidos (`NA`) y a generar reportes descriptivos con `dplyr` y `ggplot2`. Además, se enseña a exportar datos procesados a Excel o CSV (`write.csv`, `openxlsx`).  | [Material sesión 4](CUADERNOS/ESTADISTICA.Rmd) |
| 📆 **Sesión 5. Fechas, funciones y automatización básica** | Se aprende a trabajar con datos de tipo fecha usando `lubridate` para el análisis temporal. Se introducen estructuras de control como `if`, `for` y `while`, en el contexto de automatización de tareas. Se enseña a construir funciones propias para tareas repetitivas y se realiza una introducción práctica al uso de R Markdown para generar reportes reproducibles y dinámicos. | [Material sesión 5](#) |
| 🌐 **Sesión 6. Visualización interactiva y proyecto final** | Se introduce el paquete `plotly` y su integración con `ggplot2` para crear gráficos interactivos (hover, zoom, filtros dinámicos). Se realiza un ejemplo práctico de integración de `dplyr` + `ggplot2` + `plotly` para la creación de dashboards simples. | [Material sesión 6](#) |



## Fuentes de información
 - Adler, J. (2012). R in a Nutshell (2.a ed.). EE. UU.: O'Reilly.
 - Chang, W. (2013). R Graphics Cookbook. EE. UU.: O'Reilly Media.
 - Dalgaard, P. (2008). Introductory Statistics with R (Statistics and Computing)
(2.a ed.). EE. UU.: Springer.
- Matloff, N. (2011). The Art of R Programming: A Tour of Statistical Software
- Design (2.a ed.). EE. UU.: No Starch Press.
- Teetor, P. (2011). R Cookbook. EE. UU.: O'Reilly Media.

[Carpeta grabaciones](https://drive.google.com/drive/folders/1SIe_j4hw_fZjlNysLKyUEa5XkK5SIuwt?usp=sharing)
