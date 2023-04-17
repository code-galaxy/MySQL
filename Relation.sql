USE galaxy_db;

-- 	INNER JOIN 					        
-- 	SELECT column 			        
-- 	FROM table1				          
--      INNNER JOIN table2      
--      ON condition1           
--      INNER JOIN table3       
--      ON condition3;          
-- ------------------------------------------------------------------------------------------------------------------
-- first table
CREATE TABLE customer(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (100));
INSERT INTO customer(first_name)
VALUES ('Tom'),('Bob'), ('SAM');
DESCRIBE customer;
SELECT * FROM customer;
-- ------------------------------------------------------------------------------------------------------------------
-- second table
CREATE TABLE orders(
orders_id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
customer_id INT,
created_at DATE,
product_count INT,
price DECIMAL(10,2)
);
INSERT INTO orders(product_id, customer_id, created_at, product_count,price)
VALUES 
(5, 1, '2018-05-21', 2, 46000),
(1, 1, '2018-05-23', 1, 76000),
(1, 2, '2018-05-21', 1, 36000);
SELECT * FROM orders;
-- ------------------------------------------------------------------------------------------------------------------
-- third table
CREATE TABLE products (
products_id INT AUTO_INCREMENT PRIMARY KEY,
product_names VARCHAR(50),
manufacturer VARCHAR(50),
product_count INT,
price DECIMAL(10,2)
);
INSERT INTO products(product_names, manufacturer,  product_count, price)
VALUES
('Iphone X', 'APPLE', 2, 76000),
('Iphone XI', 'APPLE', 2, 88000),
('Galaxy', 'SAMSUNG', 5, 56000),
('Iphone XII', 'APPLE', 2, 176000),
('Iphone XIV', 'APPLE', 1, 96000),
('Galaxy X', 'SAMSUNG', 2, 76000),
('3310 X', 'NOKIA', 2, 76000);
SELECT * FROM products;
-- ------------------------------------------------------------------------------------------------------------------
ALTER TABLE orders CHANGE COLUMN `product_id` `products_id` INT;
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
ALTER TABLE orders ADD FOREIGN KEY (products_id) REFERENCES products(products_id);
-- ------------------------------------------------------------------------------------------------------------------
-- Неявний звязок таблиць -- 
SELECT * FROM orders, customer 
WHERE orders.customer_id = customer.customer_id;

SELECT customer.first_name, products.product_names, orders.created_at 
FROM customer, products, orders
WHERE orders.customer_id=customer.customer_id AND orders.products_id=products.products_id;

SELECT customer.first_name, products.product_names, orders.created_at, orders.price 
FROM customer, products, orders
WHERE orders.customer_id=customer.customer_id AND orders.products_id=products.products_id and orders.price > 50000;

SELECT C.first_name, P.product_names, O.created_at, O.price 
FROM customer AS C, products AS P, orders AS O
WHERE O.customer_id=C.customer_id AND O.products_id=P.products_id and O.price > 40000;

SELECT C.first_name, P.product_names, O.created_at, O.* 
FROM customer AS C, products AS P, orders AS O
WHERE O.customer_id=C.customer_id AND O.products_id=P.products_id;
-- ------------------------------------------------------------------------------------------------------------------
-- Явний звязок таблиць --
-- INNER JOIN 

-- SELECT column 
-- FROM table1
--      INNNER JOIN table2
--      ON condition1
--      INNER JOIN table3
--      ON condition3;

SELECT O.created_at, O.product_count, P.product_names
FROM orders AS O
INNER JOIN products AS P
ON O.products_id=P.products_id;

SELECT O.created_at, O.product_count, P.product_names, C.first_name
FROM orders AS O
INNER JOIN products AS P
ON O.products_id=P.products_id
INNER JOIN customer AS C
ON O.customer_id = C.customer_id;

SELECT O.created_at, O.product_count, P.product_names, C.first_name
FROM orders AS O
INNER JOIN products AS P
ON O.products_id=P.products_id
INNER JOIN customer AS C
ON O.customer_id = C.customer_id AND C.first_name = 'Tom';

-- ------------------------------------------------------------------------------------------------------------------
USE world;
-- вивести назву країни, площу, континент, та к-ть населення з таблиці country
-- вивести назву міста, населення міста з таблиці city
-- де площа країни більша за 300 тис., к-ть населення в країні більша 50 млн
-- міста в країнах мають букву А і населення в місті більше 3 млн

SELECT country.name AS Country, country.Continent, country.SurfaceArea, country.Population, city.name AS City, city.Population
FROM world.country
INNER JOIN world.city
ON country.Code=city.CountryCode
WHERE world.country.SurfaceArea > 300000 AND world.country.Population > 50000000 AND world.city.Name LIKE '%A%' AND world.city.Population > 3000000;
