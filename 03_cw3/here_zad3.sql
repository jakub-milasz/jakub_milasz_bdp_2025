CREATE TABLE streets_reprojected AS
SELECT 
    *,
    ST_Transform(ST_SetSRID(geom, 4326), 3068) AS geometry_transformed
FROM t2019_kar_streets;
