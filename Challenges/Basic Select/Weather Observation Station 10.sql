/* Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. */

SELECT distinct CITY from STATION WHERE LOWER(SUBSTR(CITY,-1,1)) NOT IN('a','e','i','u','o')
