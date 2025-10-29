SELECT ST_Area(ST_Buffer(geom, 5)) AS buffer_area
FROM obiekty
WHERE NOT ST_HasArc(geom)
