-- Creating new database
CREATE DATABASE university;
drop database university;

-- selecting database
USE university;

-- Creating new table
CREATE TABLE ece_students(
std_id int auto_increment,
name varchar(50) unique,
age tinyint unsigned,
s1_marks tinyint NOT NULL CHECK(s1_marks < 101),
s2_marks tinyint NOT NULL CHECK(s2_marks < 101),
s3_marks tinyint NOT NULL,
primary key(std_id)
);

-- inseting some dummy records
INSERT INTO ece_students(name, age, s1_marks, s2_marks, s3_marks)
VALUES("RAVI", 18,95,65,75),
("Shasi", 19,56,85,65),
("Siri", 20,65,69,68),
('Seenu', 21,68,69,89),
('siva', 21,89,85,78)
;
select * from ece_students;

-- add 5 marks to s1_marks for each student
-- varibale defination 
set @bouns_marks = 5;
-- turn off the safe updates mode
SET SQL_SAFE_UPDATES = 0;
UPDATE ece_students set s1_marks = s1_marks + @bouns_marks;

-- select all records
select * from ece_students;
-- updating s1_marks agin
UPDATE ece_students set s1_marks = s1_marks + @bouns_marks;


-- add constriant
ALTER TABLE ece_students modify s3_marks tinyint check(s3_marks <101);


-- computed column percentage
ALTER TABLE ece_students ADD COLUMN percentage float(4,2) 
generated always AS (((s1_marks + s2_marks + s3_marks) / 300)*100);

-- select all records
select * from ece_students;

-- Relational operators
-- oprators: =, <, > ,<=, >=, != or <>
-- 1. Filnd all records where student age is 19
-- 2. find all records where s1_marks morethan 75 marks
-- 3. find all records where peracentage lesserthan 70
-- 4. Find all records where peracentage morethan or equal to 65
-- 5. Find all records where peracentage lessthan or equal to 70
select  * from ece_students
where percentage <= 70;
 
select  * from ece_students
where not percentage > 70;
-- 6. Find all records where age not equal to 19
select * from ece_students
where not age = 19;

-- Logical operators :AND, OR, NOT
-- 1. return all record both s1_marks and s2_marks are morethan 75 and 
			-- sort by s1_marks in decending order
select * from ece_students
where s1_marks > 75 and s2_marks > 60 
order by s1_marks DESC;
-- 2. Select records either s3_marks lesserthan 75 or percentage 
					-- morethan 75 sort by name in ascending order

select * from ece_students
where s3_marks < 75 or percentage > 75 
order by name ;

-- Bitwise operators: &, |, ^, <<, >>, ~
select 11 & 1 as Bitwise_AND, 
		10 | 1 as Bitwise_OR,
        10 ^ 1 as Bitwise_Xor,
        10 << 3 as leftshift,
        10 >> 2 as rightshift,
        cast(~10 as SIGNED) as Bitwise2s_com;
        
-- string operators: LIKE, NOT LIKE, RLIKE
-- '%' - It selects zero or more characters
-- '_' - It selects exceatly one character

select * from ece_students;

-- retuen all records where namse starts with 's'
select * from ece_students
where name LIKE 's%';

-- retuen all records where name ends with 'i'
select * from ece_students
where name LIKE '%i';

-- return all records where name ends with 'i' and length is 4
select * from ece_students
where name LIKE '___i';

-- return all records where name second character is 'i'
select * from ece_students
where name LIKE '_i%';

-- return all records if name contains 'i'
select * from ece_students
where name LIKE '%i%';

select * from ece_students
where name RLIKE '[R]';

-- return records if name strats with 's' and ends 'i'
select * from ece_students
where name RLIKE '^s[a-z]+i$';
-- return records if name endswith 'i'
select * from ece_students
where name RLIKE 'i$';
-- return records if name length is 4
select * from ece_students
where name RLIKE '^[a-z]{4}$';
-- return records if name length is 4- 6 and starts with 's'
select * from ece_students
where name RLIKE '^s[a-z]{3,5}$';
-- return records if name not starts with 's'
select * from ece_students
where name RLIKE '^[^s]';

-- if name contains either 's' or 'i'
select * from ece_students
where name RLIKE '[ei]';


