# autodidacta Py R

Aprendizaje deliberado de **Python** y **R** viniendo de **C**.

> Nombre del proyecto: **autodidacta Py R**. Carpeta y repo remoto:
> `autodidacta-py-r` (GitHub no admite espacios en el nombre del repositorio).

Este repo no es una colección de tutoriales: es el registro de un plan con
entregables y evidencia. **Si una semana no deja un commit con algo que corre,
la semana no cuenta.**

## Por qué este repo existe

Ya sé programar en C. El problema no es la sintaxis: es sostener el hábito y
terminar. El plan está diseñado contra el abandono:

1. **Ciclos de una semana**, no de seis meses. Cada domingo se cierra y se anota.
2. **Un artefacto por semana**: script, notebook, gráfico o informe que se ejecuta.
3. **Un solo lenguaje activo por fase.** El otro se lee, no se estudia.
4. **C como ancla**: cada concepto nuevo se traduce a algo que ya sé de C.
5. **Proyecto tractor**: `proyectos/01-log-analyzer` crece en las tres fases.
6. **Métrica honesta**: commits y entradas en `PROGRESO.md`, no capítulos vistos.

## Mapa del repo

| Ruta | Qué contiene |
|---|---|
| `SETUP-cachyos.md` | Instalación paso a paso en CachyOS |
| `PLAN.md` | Ruta de 16 semanas con hitos y definición de terminado |
| `PROGRESO.md` | Checklist semanal y bitácora (se llena a mano) |
| `python/` | Ruta Python, con mapa mental C → Python |
| `r/` | Ruta R, con mapa mental C → R |
| `proyectos/` | Proyectos reales; el `01-log-analyzer` se implementa en C, Python y R |
| `CV/` | Cómo redactar las habilidades y borrador listo para pegar |

## Cómo se trabaja una semana

- **4 sesiones de 45–90 min.** Los días malos, mínimo 20 min (leer y anotar).
- Al empezar: abrir `PROGRESO.md` y mirar el objetivo de la semana.
- Al terminar cada sesión: `git commit` aunque sea un comentario en el código.
- El domingo: marcar la semana, escribir 3 líneas (qué costó, qué salió, qué sigue)
  y etiquetar si se completó el artefacto.

## Definición de terminado (una semana)

- [ ] El artefacto corre desde cero con las instrucciones del README de la carpeta.
- [ ] Hay al menos un commit con mensaje que explica *qué* y *por qué*.
- [ ] Puedo explicar en voz alta qué hace y qué no hace.
- [ ] Anoté en `PROGRESO.md` una duda que quedó abierta.

## Reglas anti-abandono

- No empiezo la fase siguiente sin cerrar el artefacto de la actual.
- No instalo una librería nueva si todavía no usé la anterior de verdad.
- No veo un curso entero "para después practicar". Práctica primero, curso como consulta.
- Si una semana se cae, **no se recupera**: se sigue desde la semana siguiente. El
  plan es una escalera, no una deuda.
