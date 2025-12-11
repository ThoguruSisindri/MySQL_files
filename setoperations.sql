create database seto;
use seto;

CREATE TABLE Customers_2023 (
    cust_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers_2023 (cust_id, name, city) VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Chennai'),
(3, 'Carol', 'Mumbai'),
(4, 'David', 'Bangalore');

CREATE TABLE Customers_2024 (
    cust_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers_2024 (cust_id, name, city) VALUES
(3, 'Carol', 'Mumbai'),
(4, 'David', 'Bangalore'),
(5, 'Emma', 'Hyderabad'),
(6, 'Frank', 'Pune');

select * from Customers_2023;
select * from Customers_2024;

-- List all unique customers from 2023 and 2024.
SELECT name, city FROM Customers_2023
UNION
SELECT name, city FROM Customers_2024;

-- List all customers from both years including duplicates.
SELECT name, city FROM Customers_2023
UNION ALL
SELECT name, city FROM Customers_2024;

-- Find customers who exist in both 2023 and 2024 lists.
SELECT name, city FROM Customers_2023
where (name, city) in (
SELECT name, city FROM Customers_2024);











