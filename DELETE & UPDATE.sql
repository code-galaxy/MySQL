SELECT * FROM galaxy_db.product;

-- DELETE

DELETE FROM product WHERE product_id = 5;
DELETE FROM product WHERE product_id = 6;
DELETE FROM product WHERE price > 65;
DELETE FROM product WHERE product_id in (23, 24);

-- UPDATE

UPDATE product SET price = 128.5 WHERE product_id = 31; 
UPDATE product SET description = ' Oppa opppa , good Job' WHERE product_id = 31;
UPDATE product SET price = 99.99, color = 'lightgrey' WHERE product_id = 20;
UPDATE product SET price = (price + 50) WHERE `name` Like '%POLO%' ; 
UPDATE product SET price = (price / 2) WHERE `name` Like '%Calvin%';
UPDATE product SET price = (price * 2) WHERE `name` Like '%POLO%';
UPDATE product SET price = (price - 25) WHERE `name` Like '%Colum%';


SELECT * FROM product;