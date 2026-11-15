# R — Fundamentos (semana 10)

Todo se practica en consola, pero se guarda en archivos y se corre con
`Rscript` para que quede evidencia.

```bash
Rscript r/01-fundamentos/ejercicios.R
```

## Ejercicios

### 1. Vectores e indexado
Crear `x <- c(4, 8, 15, 16, 23, 42)`.
- Sumar 10 a todos los elementos.
- Obtener los mayores a 15.
- Obtener el tercer elemento y los elementos 2 a 4.
- Explicar por qué `x[0]` no es lo que esperarías viniendo de C.

### 2. NA y NULL
Crear un vector con un `NA`, calcular `mean()` con y sin `na.rm = TRUE`.
Comparar `is.na(NULL)` y `length(NULL)`.
**Pregunta:** ¿por qué `NA` y `NULL` no son lo mismo?

### 3. data.frame
Construir un `data.frame` con `nombre`, `edad`, `ciudad` (4 filas).
- Filtrar mayores de 30.
- Ordenar por edad descendente.
- Agregar columna `mayor_de_edad` lógica.
- Repetirlo con `dplyr`.

### 4. Factores
Convertir una columna de texto a `factor` y mirar `levels()`.
Intentar comparar un factor con un string y explicar el warning.
**Comparación C:** ¿qué sería un `enum` acá?

### 5. Estadística de una pasada
Con `rnorm(1000, mean = 50, sd = 10)` calcular media, mediana, desvío,
cuantiles 25/75 y un histograma con `hist()`.
**Comparación C:** ¿cuántas líneas te llevaría calcular los cuantiles a mano?

### 6. apply family
Con una matriz 5x4, calcular la media por fila con `apply(..., 1, mean)`
y la suma por columna con `colSums()`.
**Pregunta:** ¿por qué el `for` es la última opción en R?

### 7. Funciones
Escribir `resumen <- function(x, decimales = 1) { ... }` que devuelva un string
con media y desvío redondeados. Probar con y sin el argumento `decimales`.

### 8. Listas
Armar una lista con un vector, un data.frame y un string.
Acceder con `$`, `[[` y `[`. Explicar la diferencia entre los tres.
**Esto es clave:** `[` devuelve una lista, `[[` devuelve el elemento.

### 9. Lectura de datos
Leer `proyectos/01-log-analyzer/logs/muestra.log` con `readLines()`,
contar cuántas líneas contienen `"ERROR"` y mostrar las 3 primeras.
Después hacer lo mismo con `readr` + `dplyr`.

### 10. Gráfico mínimo
Con un `data.frame` inventado de 3 categorías y valores, hacer un gráfico de
barras con `ggplot2`. Guardarlo con `ggsave()` en `r/01-fundamentos/salida.png`.

## Criterio para pasar a la semana 11

- Explicás `[` vs `[[` sin dudar.
- No usás índices desde 0.
- El script corre completo con `Rscript` sin warnings inesperados.
- Guardaste al menos un gráfico generado por código.
