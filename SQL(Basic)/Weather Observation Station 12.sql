select distinct CITY
from STATION
where UPPER(SUBSTRING(CITY, 1, 1)) NOT IN ('A', 'E', 'I','O', 'U')
      AND UPPER(SUBSTRING(CITY, len(CITY), 1)) NOT IN ('A', 'E', 'I','O', 'U')