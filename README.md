# Proyecto SQL: Análisis de Tendencias en Startups

Este repositorio contiene un proyecto práctico orientado al uso de funciones de agregación y cláusulas de filtrado avanzado en SQL sobre un conjunto de datos de empresas emergentes (startups). El análisis está diseñado para agrupar información corporativa por regiones geográficas e identificar patrones clave en la distribución del talento.

---

## Código SQL del Proyecto

La consulta calcula el promedio de empleados por ubicación, agrupando los registros existentes y aplicando una condición restrictiva sobre el resultado agrupado:

```sql
-- Calcular el promedio de empleados por ubicación filtrando regiones de alta densidad
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;

```

---

## Simulación del Flujo de Datos

A continuación se detalla cómo se procesa la información desde la estructura base hasta la obtención del resultado en pantalla mediante las fases lógicas del motor SQL.

### 1. Esquema Base de la Tabla (startups)

La tabla contiene registros detallados de múltiples empresas bajo las siguientes columnas:

| nombre | ubicación | categoría | empleados | valuación | fundado |
| --- | --- | --- | --- | --- | --- |
| TechCorp | Brooklyn | TEXTO | 120 | 5000000 | 2018 |
| DataSoft | San Francisco | TEXTO | 2400 | 85000000 | 2015 |
| FinTechy | New York | TEXTO | 702 | 12000000 | 2021 |
| CloudNet | Brooklyn | TEXTO | 885 | 15000000 | 2019 |
| Innovate | San Francisco | TEXTO | 1440 | 45000000 | 2012 |

### 2. Tabla Resultado (Luego de ejecutar el código)

Al ejecutar el script, el motor de base de datos agrupa las filas por ciudad, calcula la media aritmética de trabajadores y descarta cualquier ubicación cuyo promedio global sea igual o inferior a 500 empleados:

| ubicación | promedio(empleados) |
| --- | --- |
| Brooklyn | 502.66 |
| Nueva York | 702.75 |
| San Francisco | 1920.40 |
| Silicon Valley | 1804.60 |

---

## Explicación de los Comandos Utilizados

* **AVG(employees)**: Función de agregación que suma todos los valores de la columna de empleados dentro de un grupo y los divide por la cantidad total de registros de dicho grupo para obtener la media.
* **GROUP BY location**: Organiza las filas de datos resultantes según los valores únicos de la columna de localización. Esto colapsa las empresas individuales en filas representativas por ciudad o región.
* **HAVING AVG(employees) > 500**: Cláusula de filtrado que actúa exclusivamente sobre los resultados agregados. A diferencia de WHERE (que filtra fila por fila antes de agrupar), HAVING evalúa los grupos creados y elimina las ubicaciones que no alcancen el promedio estipulado.

```

```
