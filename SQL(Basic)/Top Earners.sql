select max(salary * months), count(employee_id)
from Employee 
where (salary * months) = (select max(salary * months)
                           from Employee) 