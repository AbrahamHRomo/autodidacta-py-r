# R — ejercicios de la semana 10
# Correr: Rscript r/01-fundamentos/ejercicios.R
# Completar cada sección. Dejar los stopifnot() al final: son tus tests.

# --- 1. Vectores e indexado -------------------------------------------------
x <- c(4, 8, 15, 16, 23, 42)

# TODO: sumar 10 a todos los elementos
# TODO: quedarse con los mayores a 15
# TODO: tercer elemento; elementos 2 a 4
# Pregunta: ¿qué devuelve x[0] y por qué?


# --- 2. NA y NULL -----------------------------------------------------------
con_na <- c(1, 2, NA, 4)
# TODO: mean(con_na) y mean(con_na, na.rm = TRUE)
# TODO: is.na(NULL), length(NULL)


# --- 3. data.frame ----------------------------------------------------------
personas <- data.frame(
  nombre = c("Ana", "Beto", "Caro", "Dani"),
  edad   = c(25, 34, 41, 19),
  ciudad = c("Córdoba", "Rosario", "Córdoba", "Mendoza")
)
# TODO: filtrar edad > 30
# TODO: ordenar por edad descendente
# TODO: agregar columna mayor_de_edad (edad >= 18)
# TODO: repetir con dplyr::filter / arrange / mutate


# --- 4. Factores ------------------------------------------------------------
# TODO: factor(personas$ciudad); levels()
# TODO: comparar el factor con "Córdoba" y leer el warning


# --- 5. Estadística de una pasada -------------------------------------------
set.seed(42)
valores <- rnorm(1000, mean = 50, sd = 10)
# TODO: media, mediana, sd, quantile(valores, c(.25, .75))
# TODO: hist(valores)


# --- 6. apply family --------------------------------------------------------
m <- matrix(1:20, nrow = 5, ncol = 4)
# TODO: media por fila con apply(m, 1, mean)
# TODO: suma por columna con colSums(m)


# --- 7. Funciones -----------------------------------------------------------
# TODO: resumen <- function(x, decimales = 1) { ... }
# Debe devolver "media=.., sd=.." redondeado.


# --- 8. Listas --------------------------------------------------------------
mi_lista <- list(v = 1:3, df = personas, texto = "hola")
# TODO: acceder con $v, [[ "v" ]] y [ "v" ]; explicar la diferencia en un comentario


# --- 9. Lectura de datos ----------------------------------------------------
ruta_log <- "proyectos/01-log-analyzer/logs/muestra.log"
# TODO: readLines(); contar líneas con "ERROR"; mostrar las 3 primeras
# TODO: mismo conteo con readr::read_lines() + stringr::str_detect()


# --- 10. Gráfico mínimo -----------------------------------------------------
# TODO: data.frame de 3 categorías y valores -> ggplot + geom_col -> ggsave()


# --- Tests ------------------------------------------------------------------
# Descomentar a medida que completes. Si algo falla, es una pista, no un castigo.
# stopifnot(all(x + 10 == c(14, 18, 25, 26, 33, 52)))
# stopifnot(identical(x[x > 15], c(16, 23, 42)))
# stopifnot(identical(x[2:4], c(8, 15, 16)))
# stopifnot(is.na(mean(con_na)))
# stopifnot(mean(con_na, na.rm = TRUE) == 7 / 3)
# stopifnot(nrow(subset(personas, edad > 30)) == 2)

cat("Ejercicios cargados. Completar los TODO y descomentar los stopifnot().\n")
