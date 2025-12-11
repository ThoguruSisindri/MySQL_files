create database agg;
use agg;

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME VARCHAR(30),
    SALARY INT,
    DEPARTMENT_ID INT,
    MANAGER_ID INT
);

INSERT INTO EMPLOYEES VALUES
(101, 'John', 'Smith', 12000, 10, 100),
(102, 'David', 'Williams', 18000, 20, 101),
(103, 'Sarah', 'Jones', 9000, 10, 101),
(104, 'Mike', 'Brown', 15000, 20, 102),
(105, 'Emma', 'Davis', 8000, 30, 103),
(106, 'Sophia', 'Taylor', 6000, 30, 103),
(107, 'Chris', 'Wilson', 22000, 20, 101),
(108, 'Olivia', 'Martin', 4000, 50, 104),
(109, 'Liam', 'Walker', 5000, 50, 104);

select * from employees;

-- Find total employees
SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM EMPLOYEES;

-- Total salary company spends
SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEES;

-- Average salary of all employees
SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES;

-- Maximum salary
SELECT MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES;

-- Minimum salary
select min(salary) as min_salary from employees;

-- Total salary spending for department 50
SELECT SUM(SALARY) AS TOTAL_SALARY_50
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50;

-- Total employees under Manager ID = 101
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES
WHERE MANAGER_ID = 101;

-- Total employees in each department
SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
-- Total salaries, max salary, min salary for each manager ID
SELECT MANAGER_ID,
       SUM(SALARY) AS TOTAL_SALARY,
       MAX(SALARY) AS MAX_SALARY,
       MIN(SALARY) AS MIN_SALARY
FROM EMPLOYEES
GROUP BY MANAGER_ID;

-- Return total employees per Manager ID and Department ID sorted descending
SELECT MANAGER_ID, DEPARTMENT_ID, COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES
GROUP BY MANAGER_ID, DEPARTMENT_ID
ORDER BY TOTAL_EMPLOYEES DESC;
-- ind departments where total salary > 35000
SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 35000;
-- Employees count where salary > 10000 per department
SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES
WHERE SALARY > 10000
GROUP BY DEPARTMENT_ID;
-- Departments where avg salary > 7000 and each salary < 10000
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
WHERE SALARY < 10000
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 7000;











