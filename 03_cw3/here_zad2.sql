WITH cte AS (
	SELECT t19.geom FROM t2019_kar_buildings t19
	LEFT JOIN t2018_kar_buildings t18 ON t19.geom = t18.geom
	WHERE t18.geom IS NULL
)

SELECT poi19.type, COUNT(*) AS amount
FROM t2019_kar_poi_table poi19
LEFT JOIN t2018_kar_poi_table poi18
ON poi19.geom = poi18.geom
WHERE poi18.geom IS NULL
AND EXISTS (
    SELECT 1
    FROM cte
    WHERE ST_DWithin(poi19.geom, cte.geom, 500)  
)
GROUP BY poi19.type;
