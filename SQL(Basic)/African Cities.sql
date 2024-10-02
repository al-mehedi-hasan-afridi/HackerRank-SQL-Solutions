select c.Name
from CITY c, Country co   
where c.COUNTRYCODE = co.CODE and co.CONTINENT = 'Africa'