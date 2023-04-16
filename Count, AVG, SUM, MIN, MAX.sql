use world;
SELECT * FROM country;

-- ORDER BY
SELECT * FROM country ORDER BY LifeExpectancy DESC;
SELECT * FROM country ORDER BY SurfaceArea;
SELECT * FROM country ORDER BY SurfaceArea DESC;
SELECT * FROM country ORDER BY `Code` DESC;

SELECT SurfaceArea, IndepYear FROM country ORDER BY IndepYear;
SELECT Continent, Region, Population FROM country ORDER BY Population DESC;
SELECT Continent, Region, Population FROM country ORDER BY Population DESC, Continent ASC;

-- COUNT
SELECT COUNT(Population) FROM country;
SELECT COUNT(LifeExpectancy) FROM country;
SELECT DISTINCT Population FROM country;

-- AVG
SELECT AVG(LifeExpectancy) AS Average_LifeEXP FROM country;
SELECT AVG(LifeExpectancy) AS Average_LifeEXP_ASIA FROM country WHERE Continent = 'Asia';
SELECT AVG(LifeExpectancy) AS Average_LifeEXP_EUROPE FROM country WHERE Continent = 'Europe';
SELECT AVG(LifeExpectancy) AS Average_LifeEXP_Africa FROM country WHERE Continent = 'Africa';
SELECT AVG(Population * LifeExpectancy) FROM country;
SELECT AVG(Population / LifeExpectancy) FROM country;
SELECT AVG(Population + LifeExpectancy) FROM country;
SELECT AVG(Population - LifeExpectancy) FROM country;

-- SUM
SELECT SUM(LifeExpectancy) FROM country;
SELECT SUM(Population) FROM country;
SELECT SUM(Population) FROM country WHERE Continent = 'Asia';
SELECT SUM(Population) FROM country WHERE Continent = 'Europe';
SELECT SUM(Population) FROM country WHERE Continent = 'Africa';
SELECT SUM(Population + LifeExpectancy) FROM country;
SELECT SUM(Population - LifeExpectancy) FROM country;

-- MIN & MAX
SELECT MAX(Population) FROM country;
SELECT MIN(Population) FROM country;
SELECT MAX(Population), MIN(Population) FROM country;
SELECT MAX(LifeExpectancy), MIN(LifeExpectancy) FROM country;
SELECT MAX(LifeExpectancy), MIN(LifeExpectancy) FROM country WHERE Continent = 'Europe';
SELECT MAX(Population), MIN(Population), MAX(LifeExpectancy), MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia';
SELECT MAX(Code) FROM country;
SELECT MIN(Code) FROM country; 