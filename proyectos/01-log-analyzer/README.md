# 01 — Log analyzer

Misma especificación, tres implementaciones. El objetivo no es velocidad: es
**comparar cómo se resuelve el mismo problema** en C, Python y R.

## Especificación (v1)

Entrada: un archivo de texto con líneas de la forma

```
AAAA-MM-DD HH:MM:SS NIVEL  módulo - mensaje
```

Salida por consola:

1. Total de líneas.
2. Conteo por nivel (`INFO`, `WARN`, `ERROR`, `DEBUG`), ordenado de mayor a menor.
3. Top 3 de mensajes de error, agrupados por mensaje exacto.

## Requisitos

- Leer el archivo desde un argumento de línea de comandos.
- Si el archivo no existe: mensaje claro y código de salida distinto de 0.
- Sin dependencias externas (v1).

## Versiones

| Versión | Lenguaje | Estado | Notas |
|---|---|---|---|
| v1 | C | pendiente | Referencia; ya sabés hacerlo |
| v1 | Python | pendiente | Semana 5 |
| v1 | R | pendiente | Semana 11 |

## Salida esperada con `logs/muestra.log` (v1)

Sirve de oráculo: si tu implementación no da esto, hay un bug (no un "criterio
distinto"). Son 24 líneas.

```
Total de líneas: 24

Por nivel:
  INFO   13
  ERROR   5
  DEBUG   3
  WARN    3

Top 3 errores:
  2  credenciales inválidas user=desconocido
  2  stock insuficiente id=...
  1  token expirado user=beto
```

Nota del top 3: `stock insuficiente id=10233` y `id=10235` son mensajes distintos
si agrupás por texto exacto. Decidí y documentá cuál es tu criterio; en la v2 la
idea es normalizar los números para que se agrupen.

## v2 (opcional, después del capstone)

- `--level ERROR` para filtrar.
- `--top N`.
- Agrupar mensajes normalizando números y rutas (así "user=12" y "user=99" cuentan juntos).
- Exportar CSV.

## Cómo correrlo

```bash
# C
gcc -O2 -Wall -Wextra -o log_c log.c && ./log_c logs/muestra.log

# Python
python log.py logs/muestra.log

# R
Rscript log.R logs/muestra.log
```

## Comparación a completar al final

| Aspecto | C | Python | R |
|---|---|---|---|
| Líneas de código | | | |
| Manejo de errores | | | |
| Estructura de datos usada | | | |
| Tiempo de ejecución | | | |
| Legibilidad | | | |
| Qué me costó | | | |

Esta tabla es la materia prima de la entrada de CV y de la respuesta en una
entrevista cuando pregunten "¿por qué usás cada lenguaje?".
