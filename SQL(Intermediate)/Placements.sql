select s.name
from Students s
left join Friends f on s.ID = f.ID
left join Packages p1 on s.ID = p1.ID
left join Packages p2 on f.Friend_ID = p2.ID
where p1.Salary < p2.Salary
order by p2.Salary