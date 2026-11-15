# Python — Fundamentos (semanas 2–4)

Correr desde la raíz del repo. En fish el entorno se activa con `activate.fish`;
la forma más simple es no activar y usar `uv run`, que ya apunta al `.venv`:

```bash
uv run python python/01-fundamentos/referencias.py
```

Equivalente activando a mano:

```fish
source .venv/bin/activate.fish   # fish
source .venv/bin/activate        # bash / zsh
```

## Ejercicios

Cada ejercicio pide el código **y** una línea de comparación con C.
Se resuelven en archivos separados (`ej01.py`, `ej02.py`, …) dentro de esta carpeta.

### 1. Referencias y mutabilidad
Sin ejecutar, predecir la salida:

```python
a = [1, 2, 3]
b = a
b.append(4)
print(a)

c = a[:]
c.append(5)
print(a, c)
```

Después verificar con `referencias.py`. Explicar en un comentario qué sería
equivalente en C y qué no.

### 2. Tipos y conversión
Pedir dos números por `input()`, imprimir suma, resta, división y división entera.
Manejar el caso de texto no numérico y el de divisor cero con `try/except`.
**Comparación C:** ¿dónde estaría el `strtol` / chequeo de `errno`?

### 3. Struct → dataclass
Modelar un `struct Fecha { int dia, mes, anio; }` como `@dataclass`.
Agregar un método `es_bisiesto()` y otro que devuelva la fecha en ISO.
**Comparación C:** ¿cuántas líneas y cuánta memoria manual ahorraste?

### 4. Texto y archivos
Contar líneas, palabras y caracteres de un archivo pasado por argumento
(`sys.argv`), como `wc`. Usar `pathlib`.
**Comparación C:** `fopen/fgets` vs `Path.read_text()`.

### 5. Diccionarios como tablas hash
Contar frecuencia de palabras de un texto. Mostrar el top 10 ordenado.
**Comparación C:** ¿qué estructura y qué función de hash usarías? ¿Qué pasa con
colisiones?

### 6. Funciones y argumentos
Escribir `def resumen(numeros, *, decimales=2, etiqueta="total")` que devuelva
un string formateado. Probar llamadas con y sin argumentos nombrados.
**Comparación C:** no existe equivalente directo; explicar por qué.

### 7. Comprensiones vs bucles
Reescribir con comprensión: filtrar pares y elevar al cuadrado.
Medir con `time.perf_counter()` la versión con bucle y la versión con comprensión
sobre 1 millón de elementos. Anotar el resultado: es tu primer dato propio.

### 8. Errores propios
Definir `class DatoInvalido(ValueError)`, lanzarla desde una función de validación
y capturarla en el `main`. Nunca `except:` a secas.
**Comparación C:** códigos de retorno vs excepciones; ventajas y costos.

### 9. Módulos
Partir el ejercicio 4 en dos archivos: `conteo.py` (lógica) y `main.py` (CLI con
`argparse`). Importar y ejecutar como `python -m`.
**Comparación C:** headers, `static`, y el linker.

### 10. Tests
Escribir `test_conteo.py` con `pytest` para el ejercicio 9: caso normal, archivo
vacío, archivo inexistente. Correr `pytest -q`.
**Comparación C:** no hay test runner en la stdlib de C; ¿por qué importa acá?

## Criterio para pasar a la semana 5

- Podés explicar mutabilidad y alias sin mirar apuntes.
- Todos los ejercicios corren y están commiteados.
- Al menos un test falla primero y después pasa (viste el rojo).
