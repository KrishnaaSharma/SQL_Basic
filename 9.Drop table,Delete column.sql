-- Drop Table--
DROP TABLE users;

-- Delete--
DELETE FROM users
WHERE first_name='Roger';
SELECT * FROM users;

-- Drop Column--
ALTER TABLE users
DROP COLUMN mother_name;

