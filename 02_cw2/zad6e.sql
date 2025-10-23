SELECT ST_Distance(b.geometry,p.geometry) AS distance_m
FROM buildings b
CROSS JOIN poi p
WHERE b.name = 'BuildingC' AND p.name = 'K';