SELECT start_date, MIN(end_date)
FROM (SELECT start_date FROM projects
      WHERE start_date NOT IN (SELECT end_date FROM projects)) a
      INNER JOIN
     (SELECT end_date FROM projects
      WHERE end_date NOT IN (SELECT start_date FROM projects)) b
WHERE start_date < end_date
GROUP BY start_date
ORDER BY MIN(end_date) - start_date, start_date;