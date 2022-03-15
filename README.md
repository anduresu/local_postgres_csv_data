## CSV Filled Postgres DB with Docker Compose

Creates a Docker container running a Postgres database filled with data from a CSV file.

## Table Creation
Write the SQL code for creating tables in `sql/`.

Example:

File `sql/create_tables.sql` contains:
```
CREATE TABLE IF NOT EXISTS public.csv_data
(
	column_a VARCHAR(50) NOT NULL
	,column_b VARCHAR(50) NOT NULL
	,column_c VARCHAR(50) NOT NULL
	,column_d VARCHAR(50) NOT NULL
	, PRIMARY KEY (column_a)
);
```

In `fill_tables.sql` the CSV file path and table name can be modified.

## CSV Data
Create a CSV file in `csv_data/`.

Example: 

File `csv_data/data.csv` contains:
| column_a| column_b |column_c| column_d |
| ------ | ------ | ------ | ------ |
|    a1  |   b1   |   c1   |   d1   |
|    a2  |   b2   |   c2   |   d2   |
|    a3  |   b3   |   c3   |   d3   |
|    a4  |   b4   |   c4   |   d4   |

## Params
Can be modified in `docker-compose.yaml`
| Parameter | Description |
| ------ | ------ |
| POSTGRES_USER | The Postgres user to connect **postgres** |
| POSTGRES_PASSWORD | The Postgres password to connect **postgres** |
| POSTGRES_DB | The Postgres database name to connect **postgres** |
| port | By default, port **5437** on the host machine |

## Run
```sh
$ docker-compose up
```

## Re-run from Scratch
```sh
$ docker-compose up --force-recreate -V
```