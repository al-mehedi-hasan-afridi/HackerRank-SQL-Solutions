(
  SELECT CITY, LENGTH(CITY) AS city_length
  FROM STATION
  ORDER BY city_length ASC, CITY ASC
  LIMIT 1
)
UNION
(
  SELECT CITY, LENGTH(CITY) AS city_length
  FROM STATION
  ORDER BY city_length DESC, CITY ASC
  LIMIT 1
)