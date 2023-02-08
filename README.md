# Analytics Monorepo

<img width="800" alt="image" src="https://user-images.githubusercontent.com/58074498/217604603-56471e6a-3b6e-4765-87cc-0688cbcc921a.png">



## Whats a monorepo?
1. A single version controlled code repository containing multiple distinct projects, with well-defined relationships

## What is this?
This demonstrates combining your data modelling with your visualization in a monorepo, using:
- **Meltano** for orchestration
- **dbt** for data modelling
- **Evidence** for BI

## Running the demo
Open this in a codespace
In the shell, run:
```shell
meltano install utility dbt-duckdb
meltano run full-build
```

Then open up Evidence, and connect to the `dbt-duckdb` database in the settings menu
