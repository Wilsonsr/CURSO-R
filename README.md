# Introducción a R

En este curso se aprende el uso básico de R (https://www.r-project.org/), de Rstudio (https://www.rstudio.com/) y de algunas librerias útiles en la analitica de datos, el curso se divide en 6 sesiones de 3 horas.


## 💻  **Sesión 1**. Primeros pasos con R y manipulación básica

- ¿Qué es R? ¿Qué es RStudio? Instalación y entorno
- Operaciones aritméticas y lógicas
- Tipos de objetos: vectores, matrices, data.frames
- Exploración de datos: `summary()`, `str()`, `table()`
- Carga de datos (read.csv, read.table) y primer análisis de un CSV real


## 🛠️ **Sesión 2. Manipulación moderna de datos con Tidyverse**

- Introducción a tidyverse
- Pipes (`|>` y `%>%`) y buenas prácticas

-  `filter()`,`arrange()`,  `select()`, `mutate()`
-   Agrupamiento y resumen: `group_by()` + `summarise()`
- Comparación base R vs dplyr


## 📊  **Sesión 3. Visualización con ggplot2**

- Gramática de gráficos con ggplot2

- Tipos: barras, dispersión, líneas, histogramas, boxplot

- Personalización: colores, etiquetas, escalas

- Facetas y uso de temas

- Introducción a theme_minimal() y ajustes estéticos


## 📈  **Sesión 4. Estadística descriptiva aplicada**
- Medidas de tendencia central y dispersión
- Tablas de frecuencia, proporciones y conteos cruzados
- Manejo de datos faltantes (NA)
- Exportación de datos (write.csv, openxlsx)
- Integración de dplyr + ggplot2 para análisis descriptivo


## 📆 **Sesión 5. Fechas, funciones y automatización básica**

- Manejo de fechas con lubridate

- if, for, while en contexto aplicado

- Crear funciones propias (function)

- Introducción a R Markdown para reportes automáticos


## 🌐 **Sesión 6. Visualización interactiva y proyecto final**

- Introducción a plotly y uso sobre ggplot

- Gráficas interactivas: hover, zoom, etiquetas dinámicas

- Integración con dplyr para dashboards simples


| Sesión | Descripción | Material o Enlace |
|--------|-------------|-------------------|
| 💻 **Sesión 1** | Primeros pasos con R y manipulación básica: instalación, entorno, operaciones aritméticas y lógicas, tipos de objetos, exploración básica, carga de datos. | [Enlace al material de la sesión 1](#) |
| 🛠️ **Sesión 2** | Manipulación moderna de datos con tidyverse: uso de `dplyr`, pipes, filtrado, transformación, resumen y comparación con base R. | [Enlace al material de la sesión 2](#) |
| 📊 **Sesión 3** | Visualización con `ggplot2`: gramática de gráficos, tipos de visualización, personalización, facetas y estilos. | [Enlace al material de la sesión 3](#) |
| 📈 **Sesión 4** | Estadística descriptiva aplicada: medidas resumen, tablas de frecuencia, tratamiento de `NA`, exportación y análisis exploratorio integrado. | [Enlace al material de la sesión 4](#) |
| 📆 **Sesión 5** | Fechas, funciones y automatización básica: manejo con `lubridate`, control de flujo (`if`, `for`, `while`), creación de funciones y uso de R Markdown. | [Enlace al material de la sesión 5](#) |
| 🌐 **Sesión 6** | Visualización interactiva y proyecto final: uso de `plotly`, integración con `dplyr`, gráficos dinámicos y entrega de proyecto aplicado. | [Enlace al material de la sesión 6](#) |



| Sesión | Descripción | Material o Enlace |
|--------|-------------|-------------------|
| 💻 **Sesión 1. Primeros pasos con R y manipulación básica** | Se presenta qué es R y RStudio, cómo instalar y configurar el entorno. Se introducen los tipos de objetos más comunes (vectores, matrices y data.frames), operaciones aritméticas y lógicas básicas, y funciones esenciales para explorar datos (`summary()`, `str()`, `table()`). También se realiza la carga de archivos `.csv` y se hace una primera exploración práctica con una base real. | [Material sesión 1](#) |
| 🛠️ **Sesión 2. Manipulación moderna de datos con tidyverse** | Se introduce el paquete `tidyverse` y su enfoque de trabajo con datos ordenados (tidy data). Se enseñan los principales verbos de `dplyr`: `filter()`, `select()`, `mutate()`, `arrange()`, `group_by()` y `summarise()`. Se revisan buenas prácticas con el uso del pipe (`%>%` y `|>`). Finalmente, se realiza una comparación entre el manejo de datos con base R y con `dplyr`, aplicando lo aprendido sobre una base real. | [Material sesión 2](#) |
| 📊 **Sesión 3. Visualización con ggplot2** | Se presenta la gramática de gráficos de `ggplot2`, mostrando su estructura y cómo construir visualizaciones progresivamente. Se trabajan diferentes tipos de gráficos: de barras, líneas, dispersión, histogramas y boxplots. Se explican opciones para personalizar colores, etiquetas, escalas y títulos. Se introducen las facetas para comparar categorías y el uso de temas visuales como `theme_minimal()` para mejorar la estética. | [Material sesión 3](#) |
| 📈 **Sesión 4. Estadística descriptiva aplicada** | Se revisan medidas de tendencia central (media, mediana) y dispersión (desviación estándar, rango, percentiles), así como tablas de frecuencia y proporciones. Se aprende a manejar valores perdidos (`NA`) y a generar reportes descriptivos con `dplyr` y `ggplot2`. Además, se enseña a exportar datos procesados a Excel o CSV (`write.csv`, `openxlsx`). La sesión culmina con un análisis descriptivo aplicado sobre una base real. | [Material sesión 4](#) |
| 📆 **Sesión 5. Fechas, funciones y automatización básica** | Se aprende a trabajar con datos de tipo fecha usando `lubridate` para el análisis temporal. Se introducen estructuras de control como `if`, `for` y `while`, en el contexto de automatización de tareas. Se enseña a construir funciones propias para tareas repetitivas y se realiza una introducción práctica al uso de R Markdown para generar reportes reproducibles y dinámicos. | [Material sesión 5](#) |
| 🌐 **Sesión 6. Visualización interactiva y proyecto final** | Se introduce el paquete `plotly` y su integración con `ggplot2` para crear gráficos interactivos (hover, zoom, filtros dinámicos). Se realiza un ejemplo práctico de integración de `dplyr` + `ggplot2` + `plotly` para la creación de dashboards simples. Finalmente, los estudiantes presentan un proyecto final aplicado en el que se explora, transforma, visualiza y analiza una base de datos real, generando visualizaciones y conclusiones. | [Material sesión 6](#) |



## Fuentes de información
 - Adler, J. (2012). R in a Nutshell (2.a ed.). EE. UU.: O'Reilly.
 - Chang, W. (2013). R Graphics Cookbook. EE. UU.: O'Reilly Media.
 - Dalgaard, P. (2008). Introductory Statistics with R (Statistics and Computing)
(2.a ed.). EE. UU.: Springer.
- Matloff, N. (2011). The Art of R Programming: A Tour of Statistical Software
- Design (2.a ed.). EE. UU.: No Starch Press.
- Teetor, P. (2011). R Cookbook. EE. UU.: O'Reilly Media.

