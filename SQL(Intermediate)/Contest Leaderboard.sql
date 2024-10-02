select h.hacker_id, h.name, sum(MaxScore) as SumMaxScore
from Hackers h 
left join (select hacker_id, challenge_id, max(score) as MaxScore
           from Submissions
           group by hacker_id, challenge_id) s
ON h.hacker_id = s.hacker_id
group by h.hacker_id, h.name
having SumMaxScore > 0
order by SumMaxScore desc, h.hacker_id asc