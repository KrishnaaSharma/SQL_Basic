
-- Aggregate function--
-- 1. COUNT--
SELECT COUNT(first_name) AS Name FROM users;
SELECT COUNT(DISTINCT first_name) AS Name FROM users;

USE collage;
CREATE TABLE xx (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20),
    salary int
);

insert INTO
    xx (name, salary)
values ('a', 1),
    ('a', 2),
    ('a', 3),
    ('a', 4),
    ('b', 5),
    ('b', 6),
    ('b', 7),
    ('b', 8),
    ('c', 9),
    ('c', 10),
    ('c', 11),
    ('c', 12),
    ('d', 13),
    ('d', 14),
    ('d', 15),
    ('d', 16);
   
Select * from xx;
-- MAX---
SELECT MAX(salary) AS salary FROM xx;

-- SUM--
SELECT SUM(salary) AS Total FROM xx;

-- AVG--
SELECT AVG(salary) AS Average FROM xx;

-- Minimum--
SELECT MIN(salary) AS Minimum FROM xx;