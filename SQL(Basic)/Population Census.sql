select sum(c.POPULATION)
from CITY c, Country co   
where c.COUNTRYCODE = co.CODE and co.CONTINENT = 'Asia'