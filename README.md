# ETL_Project: Variación del IBEX en el Proceso de Admisión de Ironhack
![foto ibex](https://github.com/veronicamonper/ETL_Project/assets/131816220/ae6070b0-bf70-4044-b18b-a27d0581f0ec)

## Descripción
El objetivo principal de este proyecto es analizar si la variación IBEX tiene algún impacto en el proceso de admisión de los alumnos de Ironhack, una reconocida escuela de tecnología. La idea es investigar si existe alguna correlación entre los cambios en el mercado de valores y la decisión de los estudiantes de abandonar o continuar con su proceso de admisión.

Para lograrlo, recopilamos los datos de variación del IBEX desde enero 2022 hasta junio 2023 y la información de los estudiantes que han aplicado a Ironhack en este mismo periodo. Se realizará un análisis detallado para determinar si los estudiantes muestran alguna tendencia en relación con la variación del IBEX. Esto permitirá obtener conocimientos y comprender mejor si las condiciones económicas influyen en las decisiones de los estudiantes respecto a su proceso de admisión.

## Tecnologías 

- Python

- Pandas

- Visual Studio

- Scrapping de datos financieros para obtener la variación del IBEX

- SQL para almacenar y consultar los datos

## Estructura del repositorio

- [Notebooks](../Ironhack/proyectos/ETL_Project/notebooks) - Esta carpeta almacena los notebook por cada paso del proceso: EDA inicial, EDA del IBEX, SQL, Scrapping y visualización. Contiene el código del proceso ETL y el análisis de correlación.

- [Data](../Ironhack/proyectos/ETL_Project/data): - Esta carpeta  almacena los archivos CSV y los datos extraídos.

- [SQL](../Ironhack/proyectos/ETL_Project/SQL) - Esta carpeta contiene el diagrama, esquema y modelo de SQL.

- [Imágenes](../Ironhack/proyectos/ETL_Project/imagenes) - Esta carpeta contiene las imágenes de los gráficos que obtuvimos con la visualización.

- README.md - Un archivo de documentación que describe el proyecto y su estructura.

## Proceso ETL

El proceso ETL constará de las siguientes etapas:

- Extracción: se obtendrán los datos de la variación del IBEX, a través de web scrapping, y se descargarán en formato CSV.

- Transformación: se limpiarán y procesarán los datos tanto del IBEX como de los estudiantes de Ironhack. Se realizarán operaciones de unión y filtrado para combinar los datos y prepararlos para el análisis de correlación.

- Carga: los datos transformados se cargarán en una base de datos SQL para su posterior análisis y consulta.

- Visualización: se obtendrán gráficos para comprender mejor si las condiciones económicas influyen en las decisiones de los estudiantes respecto a su proceso de admisión.

## Análisis de correlación

Se realizará un análisis de correlación entre la variación del IBEX y el proceso de admisión de los estudiantes de Ironhack. Se explorarán métricas estadísticas y técnicas de análisis para evaluar si existe alguna relación entre la variación del mercado y la decisión de los estudiantes de abandonar o continuar con su proceso de admisión.

![varibex22](https://github.com/veronicamonper/ETL_Project/blob/main/imagenes/varibex22.png) 
![varcurso22](https://github.com/veronicamonper/ETL_Project/blob/main/imagenes/varcurso22.png)

A primera vista, viendo los gráficos anteriores, pareciera que hubiese correlación. Sin embargo, al hacer los cálculo vemos que no existe ya que el coeficiente de correlación es de  -0,007.


## Conclusiones y resultados

Después del análisis podemos concluir que la variación del IBEX no impacta en el proceso de admisión de Ironhack. Sin embargo, en el análisis decubrimos lo siguiente:

Aquí podemos ver el número de alumnos que han abandonado el proceso de admisión por programa desde enero 2022 hasta junio 2023.

![interest](https://github.com/veronicamonper/ETL_Project/blob/main/imagenes/interest.png)

También podemos ver por programa, y en qué etapa del proceso abandonan más los candidatos

![stage](https://github.com/veronicamonper/ETL_Project/blob/main/imagenes/curso_stage.png)

Por último vemos la variación por formato y etapa del proceso donde abandonan los candidatos

![formato](https://github.com/veronicamonper/ETL_Project/blob/main/imagenes/ft_ptstage.png)

## Próximos pasos

En futuras iteraciones de este proyecto, se podría considerar la inclusión de más variables relevantes, como el número total de matrículas en ese período de tiempo y los diferentes canales de marketing. De esta manera podremos obtener un análisis más completo del proceso de admisión de Ironhack. También se podrían aplicar técnicas de modelado y aprendizaje automático para predecir el abandono del proceso de admisión en función de los nuevos análisis.

## Autor

Nombre: Verónica Moncada



