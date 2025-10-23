WITH bC AS (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
poly AS (SELECT ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))', 4326) AS geometry)
SELECT ST_Area(ST_SymDifference(bC.geometry, poly.geometry)) AS symdiff_area_m2
FROM bC, poly;