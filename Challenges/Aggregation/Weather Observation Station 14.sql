SELECT ROUND(MGREATEST, 4)
from(
    SELECT MAX(LAT_N) AS MGREATEST from STATION WHERE LAT_N < 137.2345
)AS SUBQUERY;
