select 
case
   when g.Grade < 8 then Null
   else s.Name
end
, g.Grade, s.Marks
from Students s
join Grades g on s.Marks between g.Min_Mark and g.Max_Mark
order by g.Grade desc, s.Name asc, s.Marks asc