# data-engineering ✅

A small collection of example projects and exercises for the Data Engineering Zoomcamp course. This repo contains a tiny Python pipeline, Docker helper files, and a `virtual-environment/` folder with guidance for creating a local development environment.

---

## Quickstart 🔧

1. Clone the repo:

```bash
git clone <repo-url>
cd data-engineering
```

2. Create and activate a virtual environment (recommended):

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r virtual-environment/requirements.txt  # or pip install uv pandas pyarrow
```

3. Run the example pipeline:

```bash
cd virtual-environment
python pipeline.py 1
# or with the 'uv' runner used in this project:
uv run python pipeline.py 10
```

---

## Project layout 📁

- `virtual-environment/` — example pipeline, venv instructions, and README
- `docker/` — helpful Docker files and examples
- `README.md` — this file

---

## Development & housekeeping 💡

- Add dependencies to `virtual-environment/requirements.txt` and run `pip install -r ...` inside the venv.
- The repo `.gitignore` has been updated to ignore `.venv/`, packaging artifacts, and `uv.lock`.
- To save dependencies: `pip freeze > virtual-environment/requirements.txt`.

---

## Contributing & Issues 🐛

Please open issues for bugs or feature requests and provide reproduction steps and expected behavior.

---

If you'd like, I can create or update `virtual-environment/requirements.txt`, add example unit tests, or commit these README changes for you. 🔁
