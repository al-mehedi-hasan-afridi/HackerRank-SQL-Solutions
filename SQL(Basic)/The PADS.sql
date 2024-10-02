select concat(Name, '(', SUBSTRING(Occupation, 1, 1), ')')
from OCCUPATIONS
order by Name

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY Count(Occupation), Occupation