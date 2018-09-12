Select SUM(c.POPULATION) from CITY c
join COUNTRY co on co.CODE = c.COUNTRYCODE where co.CONTINENT = 'Asia'
