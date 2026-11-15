# 00 — Hola mundo, tres veces

El objetivo no es imprimir "hola". Es **sentir el contraste** entre un lenguaje
compilado con tipos explícitos y dos lenguajes interpretados.

```bash
cd proyectos/00-hola-mundo

gcc -O2 -Wall -Wextra -o hola_c hola.c && ./hola_c
python hola.py
Rscript hola.R
```

Después de correrlos, anotar en este README:

- ¿Cuántas líneas tiene cada uno?
- ¿Dónde se declara el tipo de una variable?
- ¿Qué pasa si le pasás un argumento? Probá `python hola.py Ana` y `Rscript hola.R Ana`.
- ¿En cuál te sentiste más cómodo y por qué? (No hay respuesta incorrecta, pero sí
  una respuesta honesta.)
