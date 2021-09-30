-- # https://www.hackerrank.com/challenges/symmetric-pairs/problem

select f1.x, f1.y 
from functions f1
inner join functions as f2 on f2.y = f1.x
where f1.y >= f1.x and f2.x = f1.y
group by f1.x, f1.y
having count(*) > 1 or (count(*) = 1 and f1.y != f1.x)
order by f1.x
