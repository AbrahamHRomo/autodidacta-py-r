# Python desde C

No empezás de cero: empezás con ventaja y con dos vicios.

**Ventaja:** entendés tipos, memoria, compilación y paso por valor/referencia.
Eso hace que el 80 % de las dudas de un principiante no te afecten.

**Vicios:** querés controlar todo (punteros, buffers, tipos) y escribís Python
como si fuera C. Eso es lento, feo y te frustra. La regla es: **delegá en el
lenguaje y en las librerías**.

## Mapa mental C → Python

| C | Python | Ojo |
|---|---|---|
| `int`, `double`, `char` | `int`, `float`, `str` | Sin límite de tamaño; el tipo va con el objeto, no con la variable |
| `int *p` | referencia a objeto | Todo es referencia; no hay punteros aritméticos |
| `malloc/free` | `list`, `dict`, `set` | Recolector de basura; no liberás nada |
| `struct` | `dataclass` / `dict` | `dataclass` es lo más parecido a un struct con métodos |
| `for (i=0; i<n; i++)` | `for x in coleccion` | El índice casi nunca hace falta |
| `char *s[]` | `list[str]` | Listas heterogéneas permitidas |
| `printf("%d")` | f-string `f"{x}"` | Más legible y sin desalinear tipos |
| `#include` | `import` | Módulo = archivo; paquete = carpeta con `__init__.py` |
| `gcc -o prog main.c` | `python main.py` | No hay paso de compilación visible |
| `NULL` | `None` | `None` es un objeto único |
| `switch` | `match` (3.10+) o `if/elif` | — |
| `exit(1)` | `sys.exit(1)` | `raise` para errores, `exit` solo para terminar |
| `errno` | excepciones | Flujo normal de errores: `try/except` |
| `typedef` | type hints | No se chequean en runtime, son documentación |

## Trampas que te van a morder

1. **Mutabilidad y alias.** `b = a` no copia: apunta al mismo objeto. Igual que
   dos punteros al mismo `malloc`.
2. **`==` vs `is`.** `==` compara valor; `is` compara identidad (misma dirección).
   Para `None` se usa `is None`.
3. **Argumentos por defecto mutables.** `def f(x=[])` comparte la lista entre
   llamadas. Usá `None` como centinela.
4. **División.** `/` da float siempre; `//` es división entera.
5. **Bucles por índice.** `for i in range(len(x))` es señal de que estás pensando
   en C. Casi siempre querés `for x in xs` o `enumerate`.
6. **Scope.** No hay bloques con scope propio: lo que definís en un `if` sigue
   vivo después.
7. **Copias superficiales.** `copy.copy` vs `copy.deepcopy` es el equivalente a
   copiar el struct o copiar lo apuntado.

## Qué mirar, en orden

1. Documentación oficial: [docs.python.org](https://docs.python.org/es/3/tutorial/).
2. `python -m pydoc` y `help(objeto)` desde la consola.
3. PEP 8 solo cuando el código ya funciona.
4. Librería estándar: `pathlib`, `argparse`, `csv`, `json`, `logging`, `dataclasses`,
   `collections`, `itertools`, `unittest`/`pytest`.

## Ejercicios

En `01-fundamentos/`. Cada uno pide explícitamente la comparación con C:
si no podés decir "esto en C sería...", todavía no lo entendiste.
