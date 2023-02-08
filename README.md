# Analytics Monorepo

## Whats a monorepo?
1. A single version controlled code repository containing multiple distinct projects, with well-defined relationships

## What is this?
This demonstrates combining your data modelling with your visualization in a monorepo, using:
- **Meltano** for orchestration
- **dbt** for data modelling
- **Evidence** for BI

## Running it
You can clone and run locally, or else open in Codespaces which guarantees the environment will work

```shell
meltano install utility dbt-duckdb
meltano run full-build
```

Then open the browser to the hosted port, and connect Evidence to the `duckdb-local.db` in the settings menu
