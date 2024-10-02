select w.id, wp.age, w.coins_needed, w.power
from Wands w
join Wands_Property wp ON w.code = wp.code
where wp.is_evil = 0 and w.coins_needed = (select min(w1.coins_needed)
                                           from Wands w1
                                           join Wands_Property wp1 ON w1.code = wp1.code
                                           where w1.power = w.power and wp1.age = wp.age)
order by w.power desc, wp.age desc