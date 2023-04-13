-- SQL Query & SQL Command 
-- CRUD (Create, Read, Update, Delete)

use world;
SELECT * FROM city;
--------------------------------------
SELECT * FROM city 
WHERE Population  > 1000000 
AND CountryCode = 'BRA';

SELECT * FROM country
WHERE CAPITAL > 100
AND Continent = 'Europe'
AND LifeExpectancy > 60 
AND LifeExpectancy < 70  
AND Population < 5000000;
--------------------------------------

-- Read
SELECT * FROM country;

-- Create
INSERT INTO country 
VALUES ('AAA', 'Therion', 'Asia', 'Middle East', 1250888, 1951,
 1850009, 99.3, 4155.2, 3500, 'Azärbaycan', 'ЦАРСТВО ТАНОСА', 'Ecrfksre', 999, 'AS' );
 
 -- Update
 UPDATE country SET Capital= 2999 WHERE Code = 'AAA';

-- Delete
DELETE FROM country WHERE Code='AAA';