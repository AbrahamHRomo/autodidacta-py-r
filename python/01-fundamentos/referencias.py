"""Demostración ejecutable de referencias y mutabilidad.

Correr:  python python/01-fundamentos/referencias.py

La idea es que cada assert falle ruidosamente si el modelo mental es incorrecto.
"""

from copy import copy, deepcopy


def alias_y_copia() -> None:
    a = [1, 2, 3]
    b = a                 # mismo objeto, como dos punteros al mismo bloque
    b.append(4)
    assert a == [1, 2, 3, 4], "b y a son el mismo objeto"

    c = a[:]              # copia superficial: nuevo bloque, mismos elementos
    c.append(5)
    assert a == [1, 2, 3, 4]
    assert c == [1, 2, 3, 4, 5]

    assert a is b
    assert a is not c
    print("alias y copia superficial: ok")


def copia_superficial_vs_profunda() -> None:
    original = [[1, 2], [3, 4]]
    superficial = copy(original)
    profunda = deepcopy(original)

    superficial[0].append(99)
    assert original[0] == [1, 2, 99], "la copia superficial comparte los hijos"
    assert profunda[0] == [1, 2]

    # En C: 'int **m' copiado con memcpy copia punteros, no filas.
    print("copy vs deepcopy: ok")


def argumento_por_defecto_mutable() -> None:
    def malo(x, acc=[]):      # el default se evalúa UNA vez
        acc.append(x)
        return acc

    assert malo(1) == [1]
    assert malo(1) == [1, 1], "el default sobrevive entre llamadas"

    def bueno(x, acc=None):
        acc = [] if acc is None else acc
        acc.append(x)
        return acc

    assert bueno(1) == [1]
    assert bueno(1) == [1]
    print("defaults mutables: ok")


def igualdad_vs_identidad() -> None:
    a = [1, 2]
    b = [1, 2]
    assert a == b
    assert a is not b        # objetos distintos con igual contenido
    assert None is None
    print("== vs is: ok")


if __name__ == "__main__":
    alias_y_copia()
    copia_superficial_vs_profunda()
    argumento_por_defecto_mutable()
    igualdad_vs_identidad()
    print("\nTodo correcto: el modelo mental de referencias está bien.")
