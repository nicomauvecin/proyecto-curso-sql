
# Proyecto SQL: Desarrollo y gestión de bases de datos

Proyecto realizado para curso del mismo nombre en la plataforma Crehana.


## Preparativos

#### Base de datos

La base de datos se encuentra en este [enlace](https://drive.google.com/file/d/1-5w92pchBE_mYzTdd4XJvaGkEPCUBOtJ/view?usp=sharing).
Para el proyecto la misma fue manejada mediante PostgreSQL y pgAdmin III.

![App Screenshot](https://i.ibb.co/PT0RpgT/Whats-App-Image-2021-05-18-at-5-11-25-PM.jpg)



  
# Resultados
Todos los scripts se encuentran en el repositorio.
## Parte 1
### Consulta 1:
En toda la historia de la empresa, ¿hahabidomás colaboradores hombres o mujeres?

|   | gender | count  |
|:--| :----- | :----- |
| 1 | F      | 120051 |
| 2 | M      | 179973 |

### Consulta 2:
Crear un reporte con el salario mínimo y salario máximo registrado en la historia de la empresaportipo de empleo (title)

|   | titulo | salario máximo  | salario mínimo 
|:--| :----- | :-------------- | :------------- 
| 1 | Technique Leader | 144434 | 38623          
| 2 | Senior Engineer  | 140784 | 38786
| 3 | Staff | 158220 | 38735         
| 4 | Assistant Engineer | 133712 | 38850
| 5 | Engineer | 140784 | 38849
| 6 | Senior Staff | 158220 | 38735
| 7 | Manager | 108407 | 40000         

### Consulta 3:
Escribe una consulta que enlista el nombreyel apellido SIN REPETICIONES de los empleados quehayan tenidoalguna vez un salario dentro del rango 24,000 USD- 50,000USD.
| | empleado | salario
|:--| :---- | :----
| 1 | Alexius Pouyioutas | 49858
| 2 | Zhigen Jarecki | 40267
| 3 | Arumugan Lorch | 49616
| 4 | Freyja Limongiello | 48552
| 5 | Sachin Beilner | 49978
|...| ... | ...
|...|...|...

### Consulta 4:
¿Cuáles son los 5 gerentes (managers) de departamentos que han tenido los mejores sueldos? Enlista nombre, apellido, y sueldo (puede haber repetidos, ¿cómo harías para solo mostrar nombres con su mayor sueldo sin repetidos?)
||nombre|apellido|salario
|:--|:---|:---|:---
|1|Margareta|Markovitch|108407
|2|Vishwani|Minakawa|106491
|3|Maragareta|Markovitch|104485
|4|Vishwani|Minakawa|104115
|5|Arie|Staelin|103244

* Sin repetir

||nombre|apellido|salario
|:--|:---|:---|:---
|1|Margareta|Markovitch|108407
|2|Vishwani|Minakawa|106491
|3|Arie|MarkoStaelinvitch|103244
|4|Hauke|Zhang|101987
|5|Przemyslawa|Kaelbling|95873

### Consulta 5:
Ordena el nombre de los departamentos deacuerdo con el salario promedio de sus empleados en el año 1998 de mayor a menor.

||nombre del departamento| salario promedio
|:--|:---|:---
|1|Sales|82452.90
|2|Marketing|73642.31
|3|Finance|72170.05
|4|Research|61424.08
|5|Production|61338.95
|6|Development|61207.56
|7|Customer Service|60498.41
|8|Quality Management|58960.40
|9|Human Resources|57338.38

### Consulta 6:
¿En qué año hubo el mayor número decontrataciones y cuántas contrataciones fueron?
||año|contrataciones
|:--|:---|:---
|1|1986|36150

## Parte 2
### Consulta 1:
Si hacemos un breve análisis de la tabla titles, podemos ver que un empleado puede tener un aumento (o baja) de puesto (title). Definamos este aumento(o baja) como cambio. Crea una lista con los nombres de los departamentos y el total de cambios que sus colaboradores han tenido ordenados de mayor a menor. ¿Qué departamento ha tenido menos cambios?.
||nombre del departamento| cambios
|:--|:---|:---
|1|Sales|78214
|2|Marketing|66959
|3|Finance|51512
|4|Research|22916
|5|Production|20593
|6|Development|19854
|7|Customer Service|18094
|8|Quality Management|17664
|9|Human Resources|17448

### Consulta 2:
Retomando la pregunta del avance del proyecto anterior (parte 1): ¿Cuáles son los 5 gerentes (managers) de departamentos que han tenido los mejores sueldos? Enlista nombre, apellido, y mejor sueldo SIN REPETIDOS. ¿puedes obtener el mismo resultado utilizando tablas temporales y subqueries?
||departamento|apellido|salario
|:--|:---|:---|:---
|1|Marketing|Markovitch|108407
|2|Marketing|Minakawa|106491
|3|Research|Staelin|103244
|4|Sales|Zhang|101987
|5|Sales|Kaelbling|95873

### Consulta 3:
¿Cuántos días en promedio trabaja un colaborador en el puesto Engineer antes de ser ascendido a Senior Engineer? Asegurate que la fecha de inicio como Senior Engineer sea mayor o igual a la finalización como Engineer, redondea el promedio, número a un entero.

||promedio de días
|:--|:---
|1|2460

