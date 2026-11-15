# Plan de 16 semanas

Presupuesto: **~5 h/semana** (4 sesiones de 45–90 min). Total ≈ 80 h.
Un solo lenguaje activo por fase. El otro se lee, no se estudia.

Regla de oro: **cada semana cierra con un artefacto que corre.**

---

## Fase 0 — Semana 1: entorno y línea base

Objetivo: dejar la máquina lista y escribir el mismo programa trivial en los
tres lenguajes para sentir el contraste.

- [ ] `SETUP-cachyos.md` completo y verificado.
- [ ] `proyectos/00-hola-mundo/` con `hola.c`, `hola.py`, `hola.R`.
- [ ] Primer commit y repo remoto en GitHub.

**Terminado cuando:** `Rscript hola.R`, `python hola.py` y `./hola_c` imprimen
lo mismo, y están en GitHub.

---

## Fase 1 — Semanas 2–5: Python con ojos de C

Objetivo: soltura real, no sintaxis de memoria. Todo se compara con C.

| Semana | Tema | Artefacto |
|---|---|---|
| 2 | Tipos, mutabilidad, referencias, `==` vs `is` | `python/01-fundamentos/` ejercicios 1–5 + notas |
| 3 | Funciones, `*args/**kwargs`, módulos, `pathlib` | mini CLI que lista y filtra archivos |
| 4 | Colecciones, comprensiones, `dataclasses`, excepciones | parser de CSV sin pandas |
| 5 | `argparse`, logging, tests con `pytest`, venv/uv | `proyectos/01-log-analyzer` versión Python |

**Terminado cuando:** el log-analyzer de Python pasa sus tests y se usa desde
la terminal con `--help`.

---

## Fase 2 — Semanas 6–9: datos en Python

Objetivo: pasar de "programar" a "analizar". Acá se gana el sueldo.

| Semana | Tema | Artefacto |
|---|---|---|
| 6 | NumPy: arrays, vectorización, broadcasting | notebook de benchmarks vs bucles |
| 7 | pandas I: carga, selección, limpieza, nulos | dataset real limpio y documentado |
| 8 | pandas II: groupby, merge, pivot, fechas | tabla resumen exportada |
| 9 | matplotlib/seaborn + informe | 3 gráficos y un README con hallazgos |

**Terminado cuando:** un dataset público (ej. datos abiertos de tu ciudad) se
puede reproducir de punta a punta con un solo comando.

---

## Fase 3 — Semanas 10–13: R y el mismo análisis

Objetivo: aprender R **replicando** lo que ya sabés hacer. Es la forma más
rápida de transferir y la que mejor se defiende en una entrevista.

| Semana | Tema | Artefacto |
|---|---|---|
| 10 | R base: vectores, factores, listas, indexado desde 1 | `r/01-fundamentos/` ejercicios |
| 11 | dplyr + tidyr (filter, mutate, group_by, joins, pivot) | limpieza del mismo dataset |
| 12 | ggplot2: gramática de gráficos, facetas, themes | los mismos 3 gráficos, en R |
| 13 | R Markdown/Quarto + comparación honesta Py vs R | informe HTML con ambas rutas |

**Terminado cuando:** el informe Quarto genera el mismo resultado que el
script de Python y tenés una tabla de "qué fue más fácil en cada uno".

---

## Fase 4 — Semanas 14–16: capstone y CV

Objetivo: un artefacto presentable y las habilidades escritas sin mentir.

| Semana | Entregable |
|---|---|
| 14 | Capstone: pregunta propia, datos propios, pipeline Py + R documentado |
| 15 | README con capturas, conclusiones, limitaciones y cómo reproducirlo |
| 16 | CV actualizado (`CV/`), LinkedIn, entrada en `PROGRESO.md` y tag `v1.0` |

**Terminado cuando:** alguien que no sos puede clonar el repo y reproducir el
resultado siguiendo el README.

---

## Después (elegir UNO, no tres)

- **Datos/ML:** scikit-learn → validación → un modelo con métricas honestas.
- **Estadística aplicada:** inferencia en R, modelos lineales, `broom`, `tidymodels`.
- **Producto:** Shiny o Streamlit para publicar el capstone.
- **Ingeniería:** SQL + Docker + orquestación.

## Señales de que estás a punto de abandonar (y qué hacer)

| Señal | Acción |
|---|---|
| Empezás un curso nuevo sin cerrar el artefacto | Volver al artefacto. El curso queda como consulta |
| "Ya entiendo, después lo hago" | Escribir 10 líneas ahora, aunque sean feas |
| Comparás tu R con tu C y te frustra | Es esperable: en C controlás memoria, en R delegás. Anotarlo y seguir |
| Una semana perdida | No recuperar: seguir en la semana siguiente |
| El proyecto se volvió enorme | Cortar el alcance; dejar la idea en `proyectos/ideas.md` |
