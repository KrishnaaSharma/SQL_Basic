
-- Constraint--
use collage;
CREATE TABLE personal(
id INT NOT NULL UNIQUE,
name varchar(30) NOT NULL,
age INT NOT NULL CHECK(age >=18),
gender varchar(1) NOT NULL,
Phone varchar(10) NOT NULL UNIQUE,
city varchar(30) NOT NULL DEFAULT 'Agra'
);

INSERT INTO personal(id, name, age, gender, phone)
VALUEs
(5, 'natsha', 18, 'M', "9059755922");

SELECT * FROM personal;