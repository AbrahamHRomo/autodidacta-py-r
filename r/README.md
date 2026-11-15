# R desde C

R no es "Python con otra sintaxis". Es un lenguaje **vectorizado y estadístico**,
con un sistema de objetos propio y una consola pensada para explorar datos.

Venís de C: vas a extrañar tipos explícitos, compilación y control. La ganancia:
en dos líneas hacés un resumen estadístico que en C te llevaría cien.

## Mapa mental C → R

| C | R | Ojo |
|---|---|---|
| `int x[10]` | `x <- c(1,2,3)` | El vector es la unidad básica, no la excepción |
| `for` sobre arrays | operaciones vectorizadas | `x * 2` ya recorre todo |
| `struct` | `list` / `data.frame` | `data.frame` = tabla de columnas con nombre |
| `char*` | `character` | Strings inmutables, sin gestión manual |
| `enum` | `factor` | Categorías con niveles; típico en datos |
| `NULL` | `NULL` | Ojo: `NULL` ≠ `NA` (valor faltante) |
| `malloc/free` | — | Copia al modificar (*copy-on-modify*) |
| índices desde 0 | índices desde **1** | Fuente número uno de bugs al cambiar de lenguaje |
| `a[i]` | `a[i]` pero inclusivo: `a[1:3]` son 3 elementos | — |
| `->` | `<-` | `=` funciona pero se desaconseja fuera de argumentos |
| `printf` | `cat`, `sprintf`, `glue` | — |
| `#include` | `library(pkg)` | Después de `install.packages("pkg")` |
| `main()` | script + `source()` | O `Rscript archivo.R` |
| `gcc` | no hay compilación | R interpreta; `Rscript` corre scripts |

## Trampas

1. **Indexado desde 1**, y los rangos son inclusivos.
2. **`NA` vs `NULL` vs `NaN`.** `NA` es dato faltante; `NULL` es ausencia de objeto.
3. **Reciclado de vectores.** `c(1,2,3) + c(10,20)` no da error: recicla. Es útil
   y peligroso.
4. **Factores.** Un `character` que se vuelve `factor` puede romper comparaciones.
   En `read.csv`, usar `stringsAsFactors = FALSE` o `readr::read_csv`.
5. **`<-` vs `=`.** En el nivel superior, `=` también asigna; dentro de una llamada
   `=` es argumento nombrado. Usá `<-`.
6. **Copia al modificar.** No hay aliasing como en Python: al modificar, R copia.
   Por eso `data.table` existe (modifica en el lugar).
7. **Todo es un vector.** Incluso un número es un vector de largo 1.

## El ecosistema, en capas

- **Base R:** `summary`, `lm`, `table`, `aggregate`. Sirve y no se rompe.
- **tidyverse:** `dplyr` (filtrar/transformar), `tidyr` (pivotar), `ggplot2`
  (gráficos), `readr` (leer), `stringr`, `purrr`.
- **data.table:** velocidad y sintaxis compacta para tablas grandes.
- **Quarto / R Markdown:** informe con código, tablas y gráficos reproducibles.
- **Shiny:** app interactiva sin escribir frontend.

## Orden de aprendizaje (fase 3)

1. Vectores, listas, `data.frame`, indexado y `NA`.
2. `dplyr`: `filter`, `select`, `mutate`, `group_by`, `summarise`, `arrange`, joins.
3. `tidyr`: `pivot_longer`, `pivot_wider`.
4. `ggplot2`: `ggplot(datos, aes(...)) + geom_*() + facet_*()`.
5. `Quarto`: un `.qmd` que renderiza a HTML.

## Comparación honesta con Python

| Tarea | Python | R |
|---|---|---|
| Limpiar una tabla | pandas, verboso pero explícito | dplyr, muy conciso con `|>` |
| Gráfico exploratorio | matplotlib, más código | ggplot2, declarativo |
| Estadística | statsmodels, scipy | nativo y con supuestos a mano |
| Script de producción | natural | incómodo |
| Informe reproducible | Jupyter/Quarto | R Markdown/Quarto (referente) |

No es "mejor o peor": es **otra herramienta para otro trabajo**. Aprender los dos
es lo que te vuelve difícil de reemplazar.
