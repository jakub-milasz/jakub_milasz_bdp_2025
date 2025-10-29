SELECT * FROM t2019_kar_buildings t19
LEFT JOIN t2018_kar_buildings t18 ON t19.geom = t18.geom
WHERE t18.geom IS NULL;
