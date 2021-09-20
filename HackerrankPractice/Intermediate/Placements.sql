## - https://www.hackerrank.com/challenges/placements/problem

select s.name
from (students s join friends f using(id)
join packages p1 on s.id = p1.id
join packages p2 on f.friend_id = p2.id)
where p2.salary > p1.salary
order by p2.salary;
