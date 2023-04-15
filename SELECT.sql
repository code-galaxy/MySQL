USE galaxy_db;

CREATE TABLE product(
`product_id` INT AUTO_INCREMENT PRIMARY KEY,
`type` VARCHAR(50),
`name` VARCHAR (100),
`condition` VARCHAR(20), -- (new or use)
`weight` DECIMAL(10,2),
`manufacturer` VARCHAR(50),
`country` VARCHAR(50),
`color` VARCHAR(20),
`date_produced` DATE,
`price` DECIMAL (10,2),
`description` VARCHAR(100),
`warnings` VARCHAR(100)
);

DESCRIBE product;

INSERT INTO  `product`( `type`, `name`, `condition`, `weight`, `manufacturer`, `country`, `color`, `date_produced`, `price`, `description`, `warnings`)
VALUES ( 'Fleece Hoodie', 'POLO RALPH LAUREN', 'new', 1.5, 'RL factory', 'USA', 'red', '2022-04-11', 82.00, 'Ralph Laurens cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Tommy Hilfiger', 'new', 1.2, 'TH factory', 'USA', 'black', '2022-01-5', 63.00, 'Tommy Hilfiger cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Calvin Klein', 'new', 2.0, 'CK factory', 'USA', 'green', '2022-02-7', 63.00, 'Calvin Klein cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Columbia', 'new', 0.9, 'TH factory', 'USA', 'yellow', '2022-03-01', 63.00, 'Columbia cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'POLO RALPH LAUREN', 'new', 1.5, 'RL factory', 'USA', 'red', '2022-04-05', 82.00, 'Ralph Laurens cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Tommy Hilfiger', 'new', 0.2, 'TH factory', 'USA', 'black', '2022-05-05', 73.00, 'Tommy Hilfiger cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Calvin Klein', 'new', 2.5, 'CK factory', 'USA', 'red', '2022-08-07', 38.00, 'Calvin Klein cotton-blend hoodie is sure to become a well-loved piece', 'for men'),
       ( 'Fleece Hoodie', 'Columbia', 'new', 1.9, 'TH factory', 'USA', 'grey', '2022-04-05', 55.00, 'Columbia cotton-blend hoodie is sure to become a well-loved piece', 'for men');
       
SELECT * FROM product;      
 
INSERT INTO  `product`( `type`, `name`, `condition`, `weight`, `manufacturer`, `country`, `color`, `date_produced`, `price`, `description`, `warnings`)
VALUES ( 'Fleece Hoodie', 'POLO RALPH LAUREN', 'new', 1.5, 'RL factory', 'USA', 'red', '2022-04-11', 82.00, 'Ralph Laurens cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Tommy Hilfiger', 'new', 1.2, 'TH factory', 'USA', 'orange', '2022-01-5', 63.00, 'Tommy Hilfiger cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Calvin Klein', 'new', 2.0, 'CK factory', 'USA', 'green', '2022-02-7', 63.00, 'Calvin Klein cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Columbia', 'new', 0.9, 'TH factory', 'USA', 'yellow', '2022-03-01', 63.00, 'Columbia cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'POLO RALPH LAUREN', 'new', 1.5, 'RL factory', 'USA', 'red', '2022-04-05', 82.00, 'Ralph Laurens cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Tommy Hilfiger', 'new', 0.2, 'TH factory', 'USA', 'pink', '2022-05-05', 73.00, 'Tommy Hilfiger cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Calvin Klein', 'new', 2.5, 'CK factory', 'USA', 'red', '2022-08-07', 38.00, 'Calvin Klein cotton-blend hoodie is sure to become a well-loved piece', 'for women`s'),
       ( 'Fleece Hoodie', 'Columbia', 'new', 1.9, 'TH factory', 'USA', 'pink', '2022-04-05', 55.00, 'Columbia cotton-blend hoodie is sure to become a well-loved piece', 'for women`s');

ALTER TABLE product MODIFY COLUMN `warnings` VARCHAR(20);
UPDATE product SET warnings = 'for kids' WHERE color = 'red';
UPDATE product SET warnings = 'for men' WHERE warnings = 'for men`s';
UPDATE product SET warnings = 'for women' WHERE warnings = 'for women`s';
SELECT * FROM product;      

SELECT `type`,`name`,`color`, `price`, `warnings` FROM product WHERE color = 'pink' AND  price < 100;
SELECT `type` FROM product;
SELECT `name` FROM product;
SELECT `type`, `name`, `price` FROM product;

SELECT * FROM product WHERE `name`= 'Calvin Klein'; 
SELECT * FROM product WHERE `name`='Columbia' AND (color = 'pink' OR color = 'yellow') ;
SELECT * FROM product WHERE `weight`> 1;
SELECT * FROM product WHERE `name`= 'Calvin Klein' AND `weight` > 2 ;
SELECT * FROM product WHERE `name`= 'Calvin Klein' OR `weight` > 2 ;

SELECT * FROM product WHERE `name` = 'Calvin Klein' OR `name`= 'POLO RALPH LAUREN' ;
SELECT * FROM product WHERE `name` IN ('Calvin Klein', 'POLO RALPH LAUREN');
SELECT * FROM product WHERE `name` NOT IN ('Calvin Klein', 'POLO RALPH LAUREN');

SELECT * FROM product WHERE `name` LIKE 'c%';
SELECT * FROM product WHERE `name` LIKE '%a';
SELECT * FROM product WHERE `name` LIKE '%v%';
SELECT * FROM product WHERE `name` LIKE '%to%';

SELECT * FROM product WHERE `date_produced`  BETWEEN '2022-01-01' AND '2023-01-01';
SELECT * FROM product WHERE `weight` BETWEEN 1.50 AND 2.00;
SELECT * FROM product WHERE `price` BETWEEN 50 AND 70;

-- AND, OR, =, <>  !=, >, <, BETWEEN, IN(...), NOT IN (...), LIKE, IS NULL, IS NOT NULL;

 


