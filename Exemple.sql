create database logos;
use logos;
create table users 
(
id int(3) auto_increment primary key,
firstName varchar(30) not null,
lastName varchar(30) not null,
age int(2) default 18 check(age>0 and age<100),
email varchar (30) unique not null,
phone int (13) not null
);

alter table users modify column phone varchar (13) not null;
insert into users
(firstName, lastName, age, email, phone)
 values 
('Erik', 'Petrov', '25', 'epetrova@gmail.com', '+380501234000'),
('Arik', 'ketrov', '35', 'apetrove@gmail.com', '+380501233000'),
('drik', 'tetrov', '45', 'tpetrovi@gmail.com', '+380501232000'),
('frik', 'yetrov', '85', 'ypetrovj@gmail.com', '+380501231000'),
('grik', 'uetrov', '65', 'upetrovi@gmail.com', '+380501235000');

SELECT * FROM  users where age > 35;
SELECT * FROM  users where age > 45 AND firstName = 'Erik';
SELECT * FROM  users where age < 45 OR firstName = 'Erik';
SELECT * FROM  users where NOT age > 45;

use world;
select * from city; 
select * from city where Population > 1000000;
select * from city where Population > 1000000 and Population < 2000000;

select Name, Population from country where SurfaceArea> 100;
select * from country where Capital > 100 and Capital < 200; 
select Population, Continent  from country where Capital < 1000;
select * from country where Capital < 500;

select * from country;
select Continent, SurfaceArea, LocalName from country where SurfaceArea > 100 and SurfaceArea < 500 and LifeExpectancy <70;

select * from countrylanguage;

insert into countrylanguage (CountryCode, Language, IsOfficial, Percentage)
values ('AZA', 'Aaaaazzz', 'T', 49);

update countrylanguage set CountryCode = '111' where  CountryCode = 'ABW';

SELECT * from world.city;