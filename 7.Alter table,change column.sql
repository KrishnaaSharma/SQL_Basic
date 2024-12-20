
-- ALTER TABLE--
-- ADD Column--
-- 1.Adding columns without constraints--
ALTER TABLE users
ADD COLUMN gender varchar(30);

-- 2.Adding multiple columns without constraints--
ALTER TABLE users
ADD COLUMN father_name varchar(30),
ADD COLUMN mother_name varchar(30);
SELECT * FROM users;

-- 3.Adding column to specific position without constraint--
ALTER TABLE users
ADD COLUMN Salary varchar(30) FIRST;

ALTER TABLE users
ADD COLUMN EMAIL varchar(30) AFTER f_name;

-- 4.Adding columns with constraints--
ALTER TABLE users
ADD UNIQUE (EMAIL);

-- CHANGE Column--
ALTER TABLE users
CHANGE COLUMN f_name first_name varchar(30);