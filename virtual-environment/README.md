# virtual-environment

This folder contains a small example Python pipeline and instructions for creating and using a local virtual environment for development.

## Purpose

- Provide a reproducible environment for running `pipeline.py`.
- Document how to create/activate a virtual environment and install required packages.

## Recommended setup (preferred)

1. Create a virtual environment using system venv (requires `python3-venv`):

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt   # or install packages you need, e.g. pip install uv pandas pyarrow
```

2. Verify installation:

```bash
pip show uv
pip show pandas
```

3. Run the pipeline:

```bash
python pipeline.py 1
# or, if you use the `uv` runner: uv run python pipeline.py 10
```

## Alternative (no sudo)

If you cannot install `python3-venv` system-wide, use `virtualenv` in the user site:

```bash
python3 -m pip install --user virtualenv
python3 -m virtualenv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
```

## Troubleshooting

- If you see the message "ensurepip is not available", install venv support on Debian/Ubuntu:

```bash
sudo apt update
sudo apt install -y python3.13-venv python3-venv python3-full
```

- If you encounter the Debian "externally-managed-environment" message while using `pip` system-wide, create a virtual environment instead or use Debian packages (e.g., `sudo apt install python3-pandas`).

## Packaging & housekeeping

- Save dependencies:

```bash
pip freeze > requirements.txt
```

- Ignore the virtual environment and lock files in git (project `.gitignore` already includes `.venv/` and `uv.lock`).

---

If you'd like, I can populate a `requirements.txt` for this folder from the packages you use (e.g., `uv`, `pandas`) and commit the README update for you.