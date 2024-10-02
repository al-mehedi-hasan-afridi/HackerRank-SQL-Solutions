select distinct CITY
from STATION
where UPPER(SUBSTRING(CITY, 1, 1)) IN ('A', 'E', 'I', 'O', 'U')
      AND UPPER(SUBSTRING(CITY, length(CITY), 1)) IN ('A', 'E', 'I', 'O', 'U')