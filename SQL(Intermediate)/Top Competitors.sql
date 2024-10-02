select h.hacker_id, h.name
from Hackers h
left join Submissions s ON h.hacker_id = s.hacker_id
left join Challenges c ON s.challenge_id = c.challenge_id
left join Difficulty d ON d.difficulty_level = c.difficulty_level
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(h.hacker_id) > 1
order by count(h.hacker_id) desc, h.hacker_id asc