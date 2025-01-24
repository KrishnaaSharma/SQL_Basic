
-- Foreign key--
use shield;
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

create table avengers_enemy(
ae_id int primary key auto_increment,
enamy_name varchar(30),
ar_id int,
FOREIGN KEY (ar_id) REFERENCES avengers(ar_id)
);

INSERT INTO avengers_enemy(enamy_name,ar_id)
VALUES('Armin Zola',1),
     ('Doctor octopus',4),
      ('Dormammu',6),
      ('Electro',4),
      ('Green Goblin',4),
      ('Red Skull',1),
      ('Obadiah Stane',2),
      ('Hela',3);
      
INSERT INTO avengers_enemy(enamy_name)
VALUES('Gorr'),
        ('Whiplash'),
              ('zemo');
              
create table weapon(
  wp_id int PRIMARY key AUTO_INCREMENT,
  weapon_name varchar(30),
  ar_id int,
  ae_id int,
  FOREIGN key(ar_id) REFERENCES avengers(ar_id),
  FOREIGN key(ae_id) REFERENCES avengers_enemy(ae_id)
  );
select * from weapon;
 insert into weapon(weapon_name,ar_id,ae_id)
  VALUES ('web',4,2),
                 ('pym particle',5,null),
                 ('magic',6,3),
                 ('shield',1,6),
              ('suit',2,7),
                ('milonir',3,8),
                ('vibranium Hand',null,null);
                
select * from avengers;   
SELECT * FROM avengers_enemy; 
select * from weapon;
drop table weapon;
drop table avengers_enemy;
drop table avengers;

select *from avengers as a
join avengers_enemy as ae
on a.ar_id=ae.ar_id;




select sum(a.ar_id * ae.ae_id ) as totalrevenue from avengers as a
join avengers_enemy as ae 
on a.ar_id = ae.ar_id;


delete from avengers
where heroic_name <'Spider-Man';

select * from avengers; 