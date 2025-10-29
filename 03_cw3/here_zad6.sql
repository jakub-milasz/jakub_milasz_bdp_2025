SELECT 
    sn.*,
    ST_Distance(
        ST_Transform(sn.geom, 3068),
        (SELECT ST_MakeLine(geometry ORDER BY id) FROM input_points)
    ) AS distance_m
FROM t2019_kar_street_node sn
WHERE ST_DWithin(
    ST_Transform(sn.geom, 3068),
    (SELECT ST_MakeLine(geometry ORDER BY id) FROM input_points),
    200
)
ORDER BY distance_m;
