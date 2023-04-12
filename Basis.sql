SELECT * FROM world.country;

-- select Name from world.country;
-- select Continent from world.country;
-- select distinct Continent from world.country;
-- select distinct Continent, Region from world.country;
select * from world.country where Continent='Europe' or Continent='Asia' or Continent='Africa';
select * from world.country where Continent in ('Europe', 'Asia', 'Africa' );
select * from world.country where Continent not in ('Europe', 'Asia', 'Africa');

select * from world.country where SurfaceArea >= 600000 and SurfaceArea <= 800000;
select * from world.country where SurfaceArea between 600000 and 800000; 

select * from world.country where SurfaceArea <=600000 or SurfaceArea >= 800000;
select * from world.country where SurfaceArea not between 600000 and 800000;

select * from world.country where Name >= "al" and Name <= 'Denmark';
select * from world.country where Name between 'Albania' and 'Denmark';


select * from world.country where Name between 'Albania' and 'Denmark' and Continent = 'Asia';

select * from world.country where Continent = 'Europe' and Region != 'Western Europe'  and SurfaceArea between 30000 and 300000;

select * from world.country where Name  like 'u%';
select * from world.country where Name like '%u';
select * from world.country where name like '%tan%' ;
select * from world.country where name like '%t_n%';
select * from world.country where name like '%_t__n%';
select * from world.country where name not like 'a%';

select * from world.country where name regexp '^u';
select * from world.country where name regexp 'u$';
select * from world.country where name regexp 'tan';
select *from world.country where name regexp '.t..n';

select * from world.country where name regexp '^u......$';
select * from world.country where region regexp 'Asia|Africa';

select * from world.country where IndepYear is null;
select * from world.country where IndepYear is not null;

select * from world.country where Name like '%ne%' and LifeExpectancy between '60.0' and '69.9' and GNPOld is not null ;

select name as Name, Continent,  LifeExpectancy, GNPOld from world.country  
where Name like '%ne%' and LifeExpectancy between '60.0' and '69.9' and GNPOld is not null ;



-- Оператор сортування
select * from world.country ; 
select * from world.country order by Name;
select * from world.country order by Name asc;
select * from world.country order by Name desc;
select * from world.country where Continent = 'Europe' order by name asc;
select * from world.country order by Population asc;
select * from world.country order by Population desc, name asc;
select * from world.country limit 10;
select * from world.country limit 2, 5;
select * from world.country where Continent='Europe' order by SurfaceArea asc limit 5;
select * from world.country where Continent ='Africa' order by Population asc limit 10;
select * from world.country order by Name desc limit 5;

-- Агрегативні функції   AVG, SUM, MIN, MAX, COUNT
select * from world.country ; 
select avg(LifeExpectancy) as AVG from world.country ;
select avg(LifeExpectancy) as AVG from world.country where Continent='Africa';
select avg(Population / SurfaceArea) as A from world.country ;
select sum(Population) as ALLPopulation from world.country; 
select count(*) from world.country; 
select count(name) from world.country;
select distinct Continent from world.country; -- показує всі континенти 
select count(distinct Continent) from world.country; -- показує всі континенти кількість в число
select *, max(Population) from world.country;

select count(*) as CountContry,
 sum(Population) as ALLPopulation,
 min(Population) as minOneCountryPopulation, 
 max(Population) as maxOneCountryPopulation,
 avg(LifeExpectancy) as avgLife from world.country;
 
 -- Оператори Групування
 select * from world.country ; 
 select distinct(Continent), count(Region) from world.country;
 
 select Continent, count(Region) from world.country group by Continent;
 select avg(LifeExpectancy) from world.country;
 select * from world.country where LifeExpectancy >= (select avg(LifeExpectancy) from world.country );
 
 
 -- Підзапити  =  where, having, from, select 
 
 -- Вивести регіони, кількість країн та тривалість життя в яких тривалість життя менша чим сер.арифм. по світу
 select Region, count(Name), LifeExpectancy from world.country where LifeExpectancy
 <= (select avg(LifeExpectancy) from world.country )
 group by Region ;
