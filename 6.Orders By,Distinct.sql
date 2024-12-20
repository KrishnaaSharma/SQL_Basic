-- ORDER BY--
SELECT * FROM users
ORDER BY ar_id ASC;

SELECT * FROM users
ORDER BY ar_id  DESC;

-- DISTINCT: identify unique values --
SELECT DISTINCT * FROM users;
SELECT DISTINCT ar_id, f_name FROM users;
