CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(Point, 4326)
);

INSERT INTO input_points (geometry) VALUES
    (ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326)),
    (ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326));
