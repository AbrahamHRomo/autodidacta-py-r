# Instalación en CachyOS (Arch)

Estado detectado en esta máquina: CachyOS, Python 3.14 en `/usr/bin/python3`,
`git` instalado, **sin R**, sin `uv`, sin `gh`, sin helper de AUR y `sudo` con
contraseña.

Todo lo que empieza con `sudo` lo ejecutás **tú** en una terminal normal.

---

## 1. Base (una sola vez)

```bash
sudo pacman -Syu --needed base-devel git r uv github-cli
```

Qué trae cada cosa:

| Paquete | Para qué |
|---|---|
| `r` | Intérprete de R |
| `uv` | Gestor de entornos y versiones de Python (mucho más rápido que pip/venv a mano) |
| `github-cli` | `gh`, para crear el repo y hacer push sin pelear con tokens |
| `base-devel` | compiladores; R y los paquetes de CRAN los necesitan |

> Nota: Python 3.14 es muy nuevo. Para ciencia de datos conviene fijar **3.13**
> con `uv` (lo hace en el paso 3) y dejar el Python del sistema para scripts
> sueltos.

Verificación:

```bash
R --version | head -1
uv --version
gh --version | head -1
```

## 2. Paquetes de R: primero pacman, después CRAN

En Arch **ya no hay paquetes `r-*` en los repos oficiales** (se eliminaron), así
que todo va por CRAN y se compila. Es una sola vez y tarda 20–30 min en 4 núcleos.

Antes, verificar que estén las librerías de sistema (en esta máquina ya están):

```bash
for l in libcurl openssl libxml-2.0 harfbuzz fribidi libpng libtiff-4 libjpeg freetype2; do
  pkg-config --exists $l && echo "$l ok" || echo "$l FALTA"
done
```

Instalación en paralelo, dentro de R:

```r
options(Ncpus = 4)
install.packages(c("tidyverse", "data.table", "rmarkdown"),
                 repos = "https://cloud.r-project.org")
```

Antes hay que crear la librería de usuario, si no R intenta escribir en
`/usr/lib/R/library` y falla con `'lib = "/usr/lib/R/library"' is not writable`:

```bash
mkdir -p ~/R/x86_64-pc-linux-gnu-library/4.6
Rscript -e 'print(.libPaths())'   # el primer camino debe ser el de tu home
```

Se instala en `~/R/x86_64-pc-linux-gnu-library/4.6/`, sin `sudo`.
Verificar:

```bash
Rscript -e 'library(tidyverse); library(data.table); cat("ok\n")'
```

`rmarkdown` necesita pandoc: viene con `quarto`, o `sudo pacman -S pandoc`.

## 3. Entorno de Python con uv

```bash
cd ~/autodidacta-py-r
uv python install 3.13          # instala un Python 3.13 propio, sin tocar el sistema
uv venv --python 3.13 .venv
uv pip install pandas numpy matplotlib jupyterlab
```

### Activar el entorno según el shell

**fish** (tu caso):

```fish
source .venv/bin/activate.fish
```

**bash / zsh**:

```bash
source .venv/bin/activate
```

> `source .venv/bin/activate` **no funciona en fish**: es un script de bash y fish
> no acepta `VAR=valor` como sentencia. Por eso existe `activate.fish`.

### Alternativa sin activar nada (recomendada)

`uv run` usa el `.venv` del proyecto automáticamente:

```bash
uv run python python/01-fundamentos/referencias.py
uv run jupyter lab
```

Una ventaja concreta: no hay que acordarse de activar ni de desactivar, y los
comandos son iguales en cualquier shell. Para agregar una librería:

```bash
uv pip install seaborn
```

`.venv/` está en `.gitignore`: nunca se commitea.

## 4. Editor / IDE

Tres opciones, de más cómoda a más liviana:

**A. Positron (recomendada)** — IDE de Posit, soporta Python y R en el mismo
lugar. Está en AUR, así que primero hace falta un helper:

```bash
git clone https://aur.archlinux.org/yay-bin.git ~/.cache/yay-bin
cd ~/.cache/yay-bin && makepkg -si
cd ~ && rm -rf ~/.cache/yay-bin
yay -S positron-bin
```

**B. RStudio** — el clásico para R:

```bash
yay -S rstudio-desktop-bin
```

**C. VS Code, sin AUR**:

```bash
sudo pacman -S --needed code
```

Extensiones: `Python` (Microsoft), `R` (REditorSupport), `Quarto`.

Opcional para consola de R más cómoda (historial, autocompletado):

```bash
yay -S radian
```

En `~/.Rprofile`:

```r
if (interactive() && Sys.getenv("TERM_PROGRAM") != "Apple_Terminal") {
  options(radian.auto_match = TRUE)
}
```

## 5. Quarto (informes reproducibles, fase 3)

```bash
sudo pacman -S --needed quarto
quarto check
```

## 6. Git y GitHub

```bash
git config --global user.name  "Tu Nombre"
git config --global user.email "tu@email"
git config --global init.defaultBranch main

gh auth login          # GitHub.com → HTTPS → login por navegador
```

Crear y subir el repo (nombre sin espacios; GitHub no los admite):

```bash
cd ~/autodidacta-py-r
gh repo create autodidacta-py-r --public --source=. --remote=origin --push
```

Si el repo ya existe vacío en GitHub:

```bash
git remote add origin git@github.com:TU_USUARIO/autodidacta-py-r.git
git push -u origin main
```

## 7. Chequeo final

```bash
Rscript -e 'cat(R.version.string, "\n")'
uv run python -c 'import sys; print(sys.version)'
gh auth status
```

Si los tres responden, el entorno está listo y arranca la Semana 0 del `PLAN.md`.
