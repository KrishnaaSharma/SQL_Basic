
-- GROUP BY clause--
SELECT * FROM xx;

SELECT name, count(name) 
from xx
group by name;

SELECT name, count(salary) 
from xx
group by name;

SELECT name, sum(salary) 
from xx
where salary>=8
group by name;

SELECT name, min(salary) 
from xx
where salary>=8
group by name;

SELECT name, max(salary) 
from xx
where salary>=8
group by name;