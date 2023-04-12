CREATE DATABASE student_2023;
-- DROP DATABASE student_2023;

CREATE DATABASE student_2023_db;
USE student_2023_db;

CREATE TABLE student_2023(
student_id INT AUTO_INCREMENT,
student_name VARCHAR(30) NOT NULL,
city  VARCHAR(30) NOT NULL,
age INT(2) DEFAULT 18 CHECK (0<age AND age<100),
email VARCHAR(40) UNIQUE NOT NULL,
phone VARCHAR(13) UNIQUE NOT NULL,
PRIMARY KEY(student_id)
);

SELECT *FROM student_2023;

-- DROP TABLE student_tb;
-- DROP DATABASE logos;

DESCRIBE student_2023;

ALTER TABLE student_2023 ADD player VARCHAR(30);
DESCRIBE student_2023;

ALTER TABLE student_2023 DROP COLUMN player;
DESCRIBE student_2023;

ALTER TABLE student_2023 MODIFY COLUMN email VARCHAR(60);
ALTER TABLE student_2023 MODIFY COLUMN student_name VARCHAR(60);
DESCRIBE student_2023;

CREATE TABLE student_2023_db.teacher_2023(
teacher_id INT PRIMARY KEY,
name VARCHAR(50)
);
DESCRIBE student_2023_db.teacher_2023;

ALTER TABLE student_2023_db.teacher_2023 
ADD COLUMN date_of_birth DATE NULL AFTER name,
ADD COLUMN rating DECIMAL(5,2) NULL AFTER date_of_birth,
ADD COLUMN entry_date TIMESTAMP NULL AFTER rating,
ADD COLUMN face_foto BLOB NULL AFTER entry_date;

ALTER TABLE teacher_2023 ADD COLUMN education VARCHAR(30) AFTER rating;
ALTER TABLE teacher_2023 MODIFY education VARCHAR(15);

ALTER TABLE teacher_2023 MODIFY teacher_id INT AUTO_INCREMENT;

ALTER TABLE teacher_2023 
ADD COLUMN review VARCHAR(3) AFTER face_foto,
ADD COLUMN country VARCHAR(45) AFTER review;

ALTER TABLE teacher_2023 
DROP COLUMN country, 
ADD COLUMN department_id INT AFTER review;

ALTER TABLE teacher_2023 DROP COLUMN review,
ADD COLUMN reviews VARCHAR(100) AFTER education;

DESCRIBE student_2023_db.teacher_2023;
SELECT * FROM teacher_2023;

CREATE TABLE department(
department_id INT PRIMARY KEY,
name VARCHAR(100),
description VARCHAR(100)
);


-- Relation between tables

ALTER TABLE teacher_2023 ADD CONSTRAINT fk_on_teacher_2023_department_id FOREIGN KEY (department_id) REFERENCES department (department_id);
SELECT * FROM department;
SELECT * FROM teacher_2023;
SELECT * FROM student_2023;

SELECT 
teacher_2023.teacher_id,
teacher_2023.name,
teacher_2023.rating,
teacher_2023.education,
department.name FROM teacher_2023
Inner join department on department.department_id=teacher_2023.department_id;
 

