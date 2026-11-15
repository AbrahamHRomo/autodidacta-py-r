"""Hola mundo en Python. Correr: python hola.py [nombre]"""

import sys

nombre = sys.argv[1] if len(sys.argv) > 1 else "mundo"
print(f"Hola, {nombre}")
print("Python: interpretado, tipado dinámico, recolector de basura")
