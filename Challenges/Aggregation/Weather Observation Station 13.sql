SELECT ROUND(MY_SUM, 4)
from(
    SELECT SUM(LAT_N) AS MY_SUM from STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345
)AS SUBQUERY;
