select Name
from STUDENTS
where Marks > 75 
order by substring(Name, len(Name)-2, 3) asc, ID asc