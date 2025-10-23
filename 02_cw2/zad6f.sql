WITH bC AS (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
bB AS (SELECT geometry FROM buildings WHERE name = 'BuildingB')
SELECT ST_Area(ST_Difference(bC.geometry, ST_Buffer(bB.geometry, 0.5)))
AS area_m2_part_of_BuildingC_gt_0_5_from_BuildingB
FROM bC, bB;