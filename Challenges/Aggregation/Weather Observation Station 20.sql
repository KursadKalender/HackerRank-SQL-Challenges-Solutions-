/* credits to : https://github.com/Thomas-George-T/HackerRank-SQL-Challenges-Solutions/blob/master/Aggregation/Weather%20Observation%20Station%2020.sql */

SELECT ROUND(ST.LAT_N, 4)
from STATION AS ST
WHERE (SELECT COUNT(LAT_N) from STATION WHERE LAT_N < ST.LAT_N) = (SELECT COUNT(LAT_N) from STATION WHERE LAT_N > ST.LAT_N);
