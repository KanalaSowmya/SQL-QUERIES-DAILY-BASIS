-- QUESTION - 8 
-- A table named sales contains a column amount with values 500, 1000, 1500, 2000. Write a SQL query to calculate the total sales amount.

USE company_db;

-- Creating sales table
CREATE TABLE sales(
    id INT,
    name VARCHAR(50),
    product VARCHAR(50),
    amount INT,
    quantity INT,
    city VARCHAR(30)
);

-- Inserting values
INSERT INTO sales VALUES
(1, 'Rohith',  'Laptop',  500,  2, 'Chennai'),
(2, 'Sowmya',  'Mobile',  1000, 5, 'Pune'),
(3, 'Anusha',  'Tablet',  1500, 3, 'Bangalore'),
(4, 'Nikhila', 'Monitor', 2000, 4, 'Hyderabad');

-- Display all records
SELECT * FROM sales;

-- Total sales amount
SELECT SUM(amount) AS total_sales FROM sales;

-- Average amount
SELECT AVG(amount) AS average_sales FROM sales;

-- Minimum amount
SELECT MIN(amount) AS min_sales FROM sales;

-- Maximum amount
SELECT MAX(amount) AS max_sales FROM sales;

-- Count of rows
SELECT COUNT(id) AS total_rows FROM sales;

-- Total quantity sold
SELECT SUM(quantity) AS total_quantity FROM sales;

-- Sales by each person
SELECT name, amount, quantity
FROM sales;

-- Sales from specific city
SELECT name, product, amount,quantity,city
FROM sales
WHERE city = 'Pune';
