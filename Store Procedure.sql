use shield;

DELIMITER //

CREATE PROCEDURE AvengerAssemble()
BEGIN

create table avengers(
  ar_id int PRIMARY key AUTO_INCREMENT,
  f_name varchar(30),
  l_name varchar(30),
  heroic_name varchar(30),
  city varchar(30));
  

  insert into avengers(f_name,l_name,heroic_name,city)
  VALUES('Roger','Steve','Captain America','NYC'),
        ('Tony','Stark','Iron Man','NYC'),
  ('Thor','Odinson','Thor','NYC'),
  ('Peter','Parker','Spider-Man','NYC'),
    ('Scott','Lang','Ant-Man','California'),
  ('Stephen','Strange','Dr.Strange','Florida'),
  ('James','Barnes','Winter Soldier','California');
  
select * from avengers;


END //

DELIMITER ;

CALL AvengerAssemble();

-- IN -==========

DELIMITER //

CREATE PROCEDURE GetavengersBycity(IN city_name VARCHAR (30))
BEGIN

SELECT * FROM avengers WHERE city=city_name;

END //

DELIMITER ;

CALL GetavengersBycity('NYC');

-- OUT-===========

DELIMITER //

CREATE PROCEDURE CountAvengersInCity(IN city_name varchar(30), OUT avengers_count INT)
BEGIN

SELECT COUNT(*)INTO avengers_count FROM avengers where city=city_name;

END //
DELIMITER ;

CALL CountAvengersInCity('NYC', @avengers_count);
SELECT @avengers_count;

CALL CountAvengersInCity('California',@avengers_count);
SELECT @avengers_count; 


-- INOUT Prameter-================

DELIMITER //

CREATE PROCEDURE UpdateHeroname(INOUT hero_name VARCHAR(30))
BEGIN

SET hero_name= CONCAT('I am', hero_name) ;

 END //
 
 DELIMITER ;
 
 SET @hero_name='Iron Man';
 CALL UpdateHeroname(@hero_name);
 SELECT @hero_name;

 
-- = IF-THEN Statement=======

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity(IN city_name VARCHAR(30), OUT message VARCHAR(30))
BEGIN

DECLARE avengers_count INT;

SELECT COUNT(*)INTO avengers_count FROM avengers WHERE city=city_name; 

IF avengers_count>0 THEN
 SET message = 'Avengers Exit in the city';
 END IF;
 END //
 
 DELIMITER ;
 
 
 CALL CheckAvengerExistsInCity('California',@message);
 SELECT @message;
 
 
 
 -- if the else===
 
 
 DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity2(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

IF avenger_count>0 THEN
    SET message ='Avengers Exists In the city';
ELSE
    SET message ="Avengers Doesn't Exists In the city";
END IF;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity2('California',@message);

SELECT @message;


-- ====== IF-THEN-ELSEIF-ELSE Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity3(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

IF avenger_count>2 THEN
    SET message ='Avengers Activity HiGH In the city';
ELSEIF avenger_count BETWEEN 1 AND 2 THEN
    SET message ="Avengers Activity MODERATE In the city";
ELSE
    SET message ="THis city is safe";
END IF;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity3('NYCs',@message);

SELECT @message;

-- ====== CASE Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity4(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

CASE
WHEN avenger_count>2 THEN
    SET message ='Avengers Activity HiGH In the city';
WHEN avenger_count BETWEEN 1 AND 2 THEN
    SET message ="Avengers Activity MODERATE In the city";
ELSE
    SET message ="THis city is safe";
END CASE;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity4('NYC',@message);

SELECT @message;


-- ====== CASE_2 Statement==========

DELIMITER //

CREATE PROCEDURE CheckDays(IN days INT, OUT message VARCHAR(255))

BEGIN

CASE
WHEN days=1 THEN
    SET message ='Sunday';
WHEN days=2 THEN
    SET message ="Monday";
ELSE
    SET message ="Holiday";
END CASE;

END //

DELIMITER ;

CALL CheckDays(2,@message);
SELECT @message;



-- ====== LOOP  Statement =======

DELIMITER //

CREATE PROCEDURE PrintNumber()
BEGIN 

DECLARE counter INT DEFAULT 1;

print_number:LOOP
 SELECT counter;
 
 IF counter>=5 THEN
 LEAVE print_number;
 END IF;
 
 SET counter= counter + 1;
 
 END LOOP;
 
 END //
 
 DELIMITER ;
 
 CALL PrintNumber();
 
 use shield;
 CREATE TABLE Avenger_Audit(
audit_id INT PRIMARY KEY AUTO_INCREMENT,
ar_id INT,
heroic_name VARCHAR(30),
actions VARCHAR(30),
action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ======= Before Insert =======
 DELIMITER //
 
 CREATE TRIGGER log_avenger_before_insert
 BEFORE INSERT ON Avengers
 FOR EACH ROW
 BEGIN
 
 INSERT INTO Avenger_Audit(ar_id,heroic_name,actions,action_time)
 VALUES(NEW.ar_id,NEW.heroic_name,'BEFORE INSERT',NOW());
 
 END //
 
 DELIMITER ;
 
 SELECT * FROM Avengers;
 
 SELECT * FROM Avenger_Audit;
 
 INSERT INTO Avengers(ar_id,f_name,l_name,heroic_name,city)
 VALUES(8,'Natasha','Roman-Off','Black Widow','Russia');
 use shield;
 
 
 

 create table employee(
 emp_id INT Primary Key,
 name varchar(30),
 dept varchar(30),
 salary float
 );
 drop table employee;
insert into employee(emp_id, name, dept, salary)
values(4, 'rohan', 'black widow', 15000),
(5, 'rohan', 'black widow', 15000),
(6, 'rohan', 'black widow', 15000);
		
        

 create table AuditLog(
 employee_id int,
 Actions varchar(30)
 );
 drop table AuditLog;
 
 DELIMITER //
 
 create trigger employeecreatetable
 AFTER INSERT ON employee
 FOR EACH ROW
 BEGIN

INSERT INTO AuditLog(employee_id, Actions)
VALUE (new.emp_id, 'Empolyee Created');


END //
DELIMITER ;
 use shield;
 
 drop trigger employeecreatetable;
 
 
 
SELECT * FROM employee;
SELECT * FROM AuditLog;


-- cursor=============

DELIMITER //

CREATE PROCEDURE ProcessAvengerByCity(IN city_name VARCHAR(30))

BEGIN

DECLARE hero_name VARCHAR(30);
DECLARE done INT DEFAULT 0;

DECLARE avenger_cursor CURSOR FOR
SELECT heroic_name FROM Avengers WHERE city = city_name;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;

OPEN avenger_cursor;

heros:LOOP
 FETCH avenger_cursor INTO hero_name;
 
 IF done THEN
    LEAVE heros;
END IF;

IF hero_name= 'iron man' THEN
UPDATE avengers
SET f_name ='potts'
WHERE ar_id=2;
END IF;

IF hero_name ='thor' THEN
DELETE FROM Avengers where ar_id =3;
END IF;

IF hero_name ='Ant-man' THEN
DELETE FROM Avengers where ar_id =5;
END IF;

END LOOP;

CLOSE avenger_cursor;

END //

DELIMITER ;

CALL ProcessAvengerByCity('NYC',@ProcessAvengerByCity);
select @ProcessAvengerByCity;
select * from avengers;
 
 
DELIMITER 