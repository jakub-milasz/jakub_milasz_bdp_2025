CREATE TABLE IF NOT EXISTS obiekty (
    id serial PRIMARY KEY,
    nazwa text,
    geom geometry
);
