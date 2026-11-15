# Habilidades en el CV

Objetivo: que cada línea del CV se pueda defender en una entrevista y respaldar
con un artefacto del repo. **Nunca escribir un nivel que no puedas demostrar.**

## Definición de niveles (usar esta, no la intuición)

| Nivel | Significa | Evidencia exigida |
|---|---|---|
| Expuesto | Leí, hice ejercicios guiados | No va al CV, salvo "en formación" |
| Básico | Resuelvo tareas simples con documentación al lado; entiendo el modelo del lenguaje | Ejercicios commiteados y explicados |
| Intermedio | Resuelvo un problema completo solo, con tests y errores manejados | Proyecto propio funcionando + README |
| Avanzado | Diseño soluciones, optimizo, reviso código ajeno, decido trade-offs | Varios proyectos, alguien más los usa |

## Etapas: qué poner y cuándo

### Después de la semana 5 (Python funcional)

```markdown
**Python** (básico-intermedio) — scripting, manejo de archivos, CLI con argparse,
tests con pytest, entornos con uv.
```

### Después de la semana 13 (datos + R)

```markdown
**Python** (intermedio) — pandas, NumPy, matplotlib; limpieza y análisis de datos.
**R** (básico-intermedio) — tidyverse (dplyr, tidyr), ggplot2, R Markdown/Quarto.
```

### Después de la semana 16 (capstone)

```markdown
**Análisis de datos** — Python (pandas, NumPy) y R (tidyverse, ggplot2);
informes reproducibles con Quarto. Proyecto: <enlace al repo>.
```

## Reglas de redacción

1. **Verbo + herramienta + resultado.** "Automaticé la limpieza de un CSV de 12 000
   filas con pandas, reduciendo el proceso manual de 40 minutos a 3 segundos."
2. **Un número por bullet.** Filas, tiempo, líneas, versiones, porcentaje. Si no
   hay número todavía, el bullet no está listo.
3. **Sin adjetivos vacíos.** "Sólidos conocimientos" no dice nada; "3 proyectos
   terminados, 1 con tests" sí.
4. **Nombrar las librerías reales** que usaste, no todas las que conocés de nombre.
5. **Enlazar el repo.** Un bullet con link verificable vale más que diez sin link.
6. **Actualizar por fases, no por impulso.** Se edita el CV en las semanas 5, 13 y 16.

## Diferencial por venir de C (usarlo, es cierto y escaso)

- "Base en C: comprensión de tipos, memoria y costo de las operaciones, aplicada
  a escribir Python/R más eficiente."
- "Implementé la misma herramienta en C, Python y R para comparar ergonomía,
  manejo de errores y rendimiento."
- Eso responde la pregunta "¿por qué este candidato y no otro que hizo un curso?".

## Palabras clave para filtros automáticos (ATS)

Incluir tal cual, sin inventar:

```
Python, R, pandas, NumPy, matplotlib, tidyverse, dplyr, ggplot2,
R Markdown, Quarto, Git, Linux, análisis de datos, visualización de datos,
limpieza de datos, automatización, scripting, estadística descriptiva,
reproducibilidad, C
```

`SQL` se agrega **solo después** de la fase post-capstone.

## Errores que te van a costar entrevistas

- Poner R como "avanzado" al mes de empezar: la primera pregunta técnica lo expone.
- Listar 15 tecnologías y no poder hablar 10 minutos de ninguna.
- Barras de nivel (●●●○○): subjetivas, mal renderizadas por ATS y fáciles de discutir.
- Confundir RStudio (IDE) con R (lenguaje); ídem Jupyter con Python.
- No enlazar el repo o enlazarlo con el último commit roto.
- Escribir "Machine Learning" por haber hecho un `LinearRegression()` de 5 líneas.
