select distinct CITY
from STATION
where UPPER(SUBSTRING(CITY,1,1)) IN ('A', 'E', 'I', 'O', 'U')