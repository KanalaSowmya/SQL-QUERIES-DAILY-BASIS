-- question - 7
-- A table named orders contains a column product_category with values Electronics, Clothing, Electronics, Grocery. Write a SQL query to display only unique product categories.

USE company_db;

-- Creating orders table
CREATE TABLE orders(
    id INT,
    product_category VARCHAR(50),
    quantity INT,
    price INT
);

DROP TABLE orders;

-- Inserting values into orders table
INSERT INTO orders VALUES
(1, 'Electronics', 10, 500),
(2, 'Clothing',    5,  200),
(3, 'Electronics', 8,  500),
(4, 'Grocery',     15, 100);

-- Display all records
SELECT * FROM orders;

-- Display only unique product categories
SELECT DISTINCT product_category
FROM orders;