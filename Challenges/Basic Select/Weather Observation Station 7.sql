/* Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates. */

SELECT distinct CITY from STATION WHERE CITY LIKE '%e' OR CITY LIKE '%a' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'
