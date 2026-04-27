-- QUESTION - 11
-- A table named customers contains a column age with values 15, 22, 30. Write a SQL query to display age along with a new column status such that if age is greater than or equal to 18, display "Adult", otherwise display "Minor".

USE company_db;

-- Creating customers table
CREATE TABLE customer(
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30)
);

-- Inserting values
INSERT INTO customer VALUES
(1, 'Rohith',  15, 'Chennai'),
(2, 'Sowmya',  22, 'Pune'),
(3, 'Anusha',  30, 'Bangalore'),
(4, 'Mahitha',  24, 'Delhi'),
(5, 'Hema',  12, 'Anantapur');

-- Display all records
SELECT * FROM customer;

-- Display age with status column
SELECT age,
CASE
    WHEN age >= 18 THEN 'Adult'
    ELSE 'Minor'
END AS status
FROM customer;

-- Count Adults and Minors
SELECT
CASE
    WHEN age >= 18 THEN 'Adult'
    ELSE 'Minor'
END AS status,
COUNT(*) AS total
FROM customer
GROUP BY status;