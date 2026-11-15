# Hola mundo en R. Correr: Rscript hola.R [nombre]
args <- commandArgs(trailingOnly = TRUE)
nombre <- if (length(args) >= 1) args[[1]] else "mundo"
cat(sprintf("Hola, %s\n", nombre))
cat("R: interpretado, vectorizado, hecho para datos\n")
