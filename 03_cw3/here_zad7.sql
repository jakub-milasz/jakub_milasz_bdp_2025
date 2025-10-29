SELECT COUNT(DISTINCT poi.gid)
FROM t2019_kar_poi_table poi, t2019_kar_land_use_a parks
WHERE poi.type = 'Sporting Goods Store'
AND ST_DWithin(poi.geom, parks.geom, 300);
