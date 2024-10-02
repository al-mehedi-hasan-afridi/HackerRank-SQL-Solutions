select distinct CITY
from STATION
where UPPER(SUBSTRING(CITY, len(CITY), 1)) NOT IN ('A', 'E', 'I','O', 'U')