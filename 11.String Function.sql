-- Functions--
-- String Function--
--  CONCAT: Concatenates two or more strings together--
use collage;
SELECT ar_id, CONCAT(first_name, '' ,Address) AS full_name
FROM users;

-- UPPER: Converts a string to uppercase --
use collage;
SELECT ar_id, UPPER(first_name) AS first_name, city 
FROM users;

-- LOWER: Converts a string to lowercase--
SELECT ar_id, LOWER(first_name) AS first_name, city 
FROM users;

-- CHARACTER LENGTH--
SELECT ar_id, first_name ,character_length(first_name) AS Characters
FROM users;

SELECT ar_id, first_name ,length(first_name) AS Characters
FROM users;

-- SUBSTRING / SUBSTR--
SELECT substring("KRISHNA SHARMA", 4) AS Name;

SELECT substring("KRISHNA SHARMA", -3,6) AS Name; 

-- NAME LEFT--
SELECT LEFT('KRISHNA SHARMA',3) AS Name;

-- NAME RIGHT--
SELECT RIGHT('KRISHNA SHARMA',4) AS Name;

-- REVERSE--
SELECT REVERSE('KRISHNA SHRANA') AS Name;

-- REPLACE--
SELECT REPLACE('HELLO WORD','WORD','Wow' ) AS name;
SELECT * FROM users;
