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

4. Start PostgreSQL and pgAdmin with Docker Compose:

```bash
cd virtual-environment
docker-compose up -d
```

5. Run the data ingestion script (requires PostgreSQL running):

```bash
cd virtual-environment
uv run python ingest_data.py \
  --pg_user=my_db_usr \
  --pg_password=my_db_pass \
  --pg_host=pgdatabase \
  --pg_port=5432 \
  --pg_db=mydb_name \
  --table_name=my_table_name \
  --chunk_size=100000 \
  --year=2021 \
  --month=1
```

Use `uv run python ingest_data.py --help` to see all available options.

---

## Docker Compose 🐳

The `docker-compose.yml` file sets up two services:

- **PostgreSQL** (`pgdatabase`): Database service running on port `5432`
- **pgAdmin**: Web UI for managing PostgreSQL, accessible at `http://localhost:8085`

### pgAdmin Connection Details

To connect pgAdmin to PostgreSQL:
- **Hostname:** `pgdatabase` (or `localhost` if connecting from host machine)
- **Port:** `5432`
- **Username:** Set via `POSTGRES_USER` environment variable
- **Password:** Set via `POSTGRES_PASSWORD` environment variable

---

## Project layout 📁

- `virtual-environment/` — example pipeline, venv instructions, and README
- `docker/` — helpful Docker files and examples
- `docker-compose.yml` — Docker Compose configuration for PostgreSQL and pgAdmin
- `README.md` — this file

---

## Development & housekeeping 💡

- Add dependencies to `virtual-environment/requirements.txt` and run `pip install -r ...` inside the venv.
- The repo `.gitignore` has been updated to ignore `.venv/`, packaging artifacts, and `uv.lock`.
- To save dependencies: `pip freeze > virtual-environment/requirements.txt`.
- Set environment variables in a `.env` file for Docker Compose (e.g., `POSTGRES_USER`, `POSTGRES_PASSWORD`, `POSTGRES_DB`, `PGADMIN_DEFAULT_EMAIL`, `PGADMIN_DEFAULT_PASSWORD`).

---

## Contributing & Issues 🐛

Please open issues for bugs or feature requests and provide reproduction steps and expected behavior.

---