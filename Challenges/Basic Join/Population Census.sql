SELECT SUM(CITY.POPULATION) from COUNTRY LEFT JOIN CITY ON COuNTRY.CODE = CITY.COUNTRYCODE WHERE COUNTRY.CONTINENT = 'Asia'