-- Creating new Database syntax: CREATE database_object object_name
CREATE DATABASE university;

-- create the new database 	f not exists
CREATE DATABASE IF NOT EXISTS University;

CREATE DATABASE IF NOT EXISTS college;
-- selecting the database Syntax: USE database_name
USE university;


-- Create a new table 
-- SYNTAX: CREATE TABLE table_name(col_name1 datatype, col_name2 datatype, ....);
CREATE TABLE Students(
id INT, 
Name CHAR(30),
class INT
);

select * from students;
-- Table describe Syntax: DESCRIBE table_name
DESCRIBE students;

-- Add new column to an existing table 
-- Syntax: ALTER TABLE table_name ADD COLUMN col_name datatype;
ALTER TABLE students ADD COLUMN marks int;
DESCRIBE students;

-- delete a column from an existing table 
-- Syntax: ALTER TABLE table_name DROP COLUMN col_name;
ALTER TABLE students DROP COLUMN class;
DESCRIBE students;

-- modify datatype of a column in the table 
-- Syntax: ALTER TABLE table_name MODIFY col_name new_|datatype;
ALTER TABLE students MODIFY name VARCHAR(40);
DESCRIBE students;

-- renaming the a table 
-- synatx: REMANE TABLE old_table_name TO New_table_name;
RENAME TABLE students TO students_info;

-- renaming a column in the a table 
-- synatx: ALTER TABLE table_name REMANE COLUMN old_col_name TO New_col_name;
ALTER TABLE Students_info 
RENAME COLUMN marks TO Percentage;
DESCRIBE students_info;

-- Drop Databse
-- syntax: DROP DATABASE databse_name
DROP DATABASE college;
DROP DATABASE IF EXISTS college;
