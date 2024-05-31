import duckdb

duckdb.sql("INSTALL postgres;")
duckdb.sql("ATTACH 'dbname=dbt user=dbt host=localhost port=5432' AS dbt (TYPE POSTGRES);")

duckdb.sql("DROP TABLE IF EXISTS raw.artists")
duckdb.sql("CREATE TABLE dbt.raw.artists AS SELECT * FROM 'data/artists.csv';")

duckdb.sql("DROP TABLE IF EXISTS raw.popular_songs")
duckdb.sql("CREATE TABLE dbt.raw.popular_songs AS SELECT * FROM 'data/popular_songs.csv';")

duckdb.sql("DROP TABLE IF EXISTS raw.top_100")
duckdb.sql("CREATE TABLE dbt.raw.top_100 AS SELECT * FROM 'data/top_100.csv';")

duckdb.sql("DROP TABLE IF EXISTS raw.tracks")
duckdb.sql("CREATE TABLE dbt.raw.tracks AS SELECT * FROM 'data/tracks.csv';")
