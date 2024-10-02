select  C.company_code, C.founder, count(distinct L.lead_manager_code), 
count(distinct S.senior_manager_code), count(distinct M.manager_code), 
count(distinct E.employee_code)
from Company C
left join Lead_Manager L ON C.company_code = L.company_code
left join Senior_Manager S ON C.company_code = S.company_code
left join Manager M ON C.company_code = M.company_code
left join Employee E ON C.company_code = E.company_code
group by C.company_code, C.founder
order by C.company_code asc