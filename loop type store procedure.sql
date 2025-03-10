use company;

DELIMITER //

create procedure numberloop()
begin

declare counter int default 1;

my_loop: loop
select counter;
set counter= counter+1;

if counter >= 5 then
leave my_loop;
end if;
end loop;

end //
DELIMITER ;

call numberloop();

--  Question 1: Write LOOP to print numbers from 1 to 10.

DELIMITER //

create procedure printnumber()
begin

declare counter int default 1;

my_loop: loop
select counter;
set counter= counter+1;

if counter > 10 then
leave my_loop;
end if;
end loop;
end//

DELIMITER ;

call printnumber();


-- WHILE LOOP-------

DELIMITER //  
CREATE PROCEDURE printwhileloop()  
BEGIN  
    DECLARE counter INT DEFAULT 1;  

    WHILE counter <= 5 DO  
        SELECT counter;
        SET counter = counter + 1;  
    END WHILE;  

END//  
DELIMITER ;

CALL printwhileloop();


-- REPEATE UNTIL LOOP------

DELIMITER //

CREATE PROCEDURE printuntilloop(in n int)
begin 

declare fact int default 1;
declare counter int default 1;

repeat 
set fact = fact * counter;
set counter = counter + 1;

until counter > n
end repeat;
 
 SELECT fact AS Factorial_Result;  
end //
DELiMITER ;

call printuntilloop(5);

