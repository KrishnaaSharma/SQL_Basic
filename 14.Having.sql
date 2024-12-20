-- HAVING--
SELECT name, min(salary)
from xx
group by name
having max(salary)>13;

select name,min(salary) from xx group by name having sum(salary)>13;

select name,max(salary) from xx group by name having sum(salary)>13;

select salary from xx
order by salary desc
limit 1 offset 1;
