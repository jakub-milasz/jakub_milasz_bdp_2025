SELECT name, ST_PERIMETER(geometry) FROM buildings
ORDER BY ST_AREA(geometry) DESC
LIMIT 2;