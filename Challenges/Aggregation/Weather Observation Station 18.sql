SELECT ROUND(ABS(A - C) + ABS(B - D), 4) AS MANHATTAN_DISTANCE
from(
    SELECT MIN(LAT_N) AS A, MIN(LONG_W) AS B, MAX(LAT_N) AS C, MAX(LONG_W)AS D from STATION
)AS SUBQUERY;
