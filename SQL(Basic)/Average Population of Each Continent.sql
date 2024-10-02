select co.CONTINENT, round(avg(c.POPULATION),1)
from CITY c, Country co   
where c.COUNTRYCODE = co.CODE 
group by co.CONTINENT