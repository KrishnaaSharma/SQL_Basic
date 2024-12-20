
-- INSERT INTO--
INSERT INTO users(heroic_name,city,l_name,f_name)
VALUES('Black Window','Russia','Romaof','Natasha');

SELECT * fROM users;

-- 1.INSERTING RECORD OR MULTIPLE ROW--
INSERT INTO users(ar_id,f_name,l_name,heroic_name,city)
VALUES(1,'Roger','Steve','Captain Amarican','USA'),
(2, 'Tony', 'Stark', 'Iron Man', 'NYC'),
(6,'Stephen','Strange','Dr.Strange','Florida'),
(3, 'Thor', 'Odishon', 'thor','NYC'),
(4,'peter', 'Parker','Spider-Man','NYC'),
(5,'Scott','Lange','Ant-Man','NYC'),
(7,'James','Bernes','Winter Solider','Califorina');
SELECT * FROM users;

-- 2.Inserting Records Changing order of column --
INSERT INTO users(heroic_name,city,l_name,f_name)
VALUES('Black Window','Russia','Romaof','Natasha');
SELECT* FROM users;

 -- 3.Inserting Records In Specific Column--
 INSERT INTO users(f_name,l_name)
VALUES('Romaof','Natasha');
SELECT* FROM users;

--  4.Inserting Records Without Specifying Column--
INSERT INTO users
VALUES(1,'Stephen','Strange','Dr.Strange','Florida');

-- 5.Insert a single quote --
INSERT INTO users(ar_id,f_name,l_name,heroic_name,city)
VALUES(1,'Wanda''s', 'Maximoff\'s', 'Scarlrt Witch','NYC');
