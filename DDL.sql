-- creating new database syntax: CREATE database_object object_name
CREATE DATABASE university;


-- create the new database not exists


-- create DATABASE IF NOT EXISTS college;
-- secting the database syntax: USE database_name

USE university;

-- create a nw table

CREATE TABLE student(
id INT, Name CHAR(30),
class INT
);


select * from student;

DESCRIBE student;
-- add new column to an existing table
-- syntax: 
ALTER TABLE student ADD COLUMN marks INT;
DESCRIBE student;

-- delete a column from an existing table
-- synyax:
ALTER TABLE student DROP COLUMN class;
DESCRIBE student;


--- modify datatype of a column in the table
-- syntax: alter table table_name modify col_name NEW_datatype;
ALTER TABLE student MODIFY name varchar(40);
DESCRIBE student;

-- renaming the table
-- syntax: RENAME table old_table_name To new_table_name;
RENAME TABLE student TO student_info;

-- renaming a column in the table
-- sy:ALTER TABLE table_name RENAME COLUMN old_Col_name TO NEW_col_name;
ALTER TABLE student_info
RENAME COLUMN marks To percentage;
DESCRIBE student_info;

DROP TABLE student_info;
