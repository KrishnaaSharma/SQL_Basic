
--  Equal Operator--
SELECT* FROM users
WHERE ar_id=5;

-- Not Equal Operator--
SELECT* FROM users
WHERE ar_id!=5;

--  Greater Than Operator--
SELECT* FROM users
WHERE ar_id>5;

SELECT* FROM users
WHERE f_name>'R';

--  Less Than Operator--
SELECT* FROM users
WHERE ar_id<5;

SELECT* FROM users
WHERE f_name<'R';

-- . Greater than or equal to (>=) Operator --
SELECT* FROM users
WHERE ar_id >=5;

SELECT* FROM users
WHERE f_name >='R';

-- Less than or equal to (<=) Operator--
SELECT* FROM users
WHERE ar_id <=5;

SELECT* FROM users
WHERE f_name <='R';

-- IS NULL--
SELECT* FROM users
WHERE city IS NULL;

-- IS NOT NULL--
SELECT* FROM users
WHERE CITY IS NOT NULL;

-- AND Operator--
SELECT* FROM users
WHERE city='florida' AND f_name='Stephen';

-- OR OPERATOR--
SELECT* FROM users
WHERE city='NYC' OR f_name='Thor';

-- Combination AND and OR Operator--
SELECT* FROM users
WHERE city='NYC' OR (f_name='thor' AND l_name='Odishon');

SELECT* FROM users
WHERE (ar_id=1 AND city='USA') OR (f_name='Stephen' AND l_name='Strange');

--  IN Operator--
SELECT * FROM users
WHERE ar_id IN(4,6,7);

-- NOT IN Operator--
SELECT * FROM users
WHERE ar_id NOT IN (3,5,7);

SELECT * FROM users
WHERE l_name NOT IN ('steve', 'Parker','Strange');

-- BETWEEN Operator--
SELECT * FROM users
WHERE ar_id BETWEEN 2 and 5;

SELECT * FROM users
WHERE f_name BETWEEN 'p' and 't';

--  NOT BETWEEN Operator--
SELECT * FROM users
WHERE ar_id NOT BETWEEN 1 AND 6;

SELECT * FROM users
WHERE f_name NOT BETWEEN 'S' AND 'T';

-- LIKE OPERATOR ---
SELECT * FROM users
WHERE f_name LIKE 's%';

SELECT * FROM users
WHERE f_name LIKE '%s';

SELECT * FROM users
WHERE f_name LIKE '%o%';

SELECT * FROM users
WHERE f_name LIKE '%_o%';

SELECT * FROM users
WHERE f_name LIKE '%_a_e%';

-- NOT LIKE Operator--
SELECT * FROM users
WHERE f_name NOT LIKE 's%';

SELECT * FROM users
WHERE f_name NOT LIKE '%s';

SELECT * FROM users
WHERE f_name NOT LIKE '%o%';

SELECT * FROM users
WHERE f_name NOT LIKE '%_o%';

SELECT * FROM users
WHERE f_name NOT LIKE '%_a_e%';