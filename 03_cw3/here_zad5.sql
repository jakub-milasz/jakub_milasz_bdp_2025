ALTER TABLE input_points 
ALTER COLUMN geometry TYPE GEOMETRY(Point, 3068) 
USING ST_Transform(ST_SetSRID(geometry, 4326), 3068);
