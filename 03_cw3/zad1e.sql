INSERT INTO obiekty (nazwa, geom) VALUES (
	'obiekt5',
	ST_GeomFromEWKT(
		'MULTIPOINT Z((30 30 59),(38 32 234))'
	)
);
