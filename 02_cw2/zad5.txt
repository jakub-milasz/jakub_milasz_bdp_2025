INSERT INTO buildings (geometry, name) VALUES
(ST_GeomFromText('POLYGON((8 1.5, 10.5 1.5, 10.5 4, 8 4, 8 1.5))', 4326), 'BuildingA'),
(ST_GeomFromText('POLYGON((4 5, 6 5, 6 7, 4 7, 4 5))', 4326), 'BuildingB'),
(ST_GeomFromText('POLYGON((3 6, 5 6, 5 8, 3 8, 3 6))', 4326), 'BuildingC'),
(ST_GeomFromText('POLYGON((9 8, 10 8, 10 9, 9 9, 9 8))', 4326), 'BuildingD'),
(ST_GeomFromText('POLYGON((1 1, 2 1, 2 2, 1 2, 1 1))', 4326), 'BuildingF');

INSERT INTO roads (geometry, name) VALUES
(ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)', 4326), 'RoadY'),
(ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)', 4326), 'RoadX');

INSERT INTO poi (geometry, name) VALUES
(ST_GeomFromText('POINT(1.3 3.5)', 4326), 'G'),
(ST_GeomFromText('POINT(5.5 1.5)', 4326), 'H'),
(ST_GeomFromText('POINT(6.5 6)', 4326), 'J'),
(ST_GeomFromText('POINT(6 9.5)', 4326), 'K'),
(ST_GeomFromText('POINT(9.5 6)', 4326), 'I');