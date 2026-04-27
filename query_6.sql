-- QUESTION - 10
-- A table named transactions contains a column payment_mode with values Cash, Card, Cash, UPI, Card, Card. Write a SQL query to display only those payment modes that are used more than once.

USE company_db;

-- Creating transactions table
CREATE TABLE transactions(
    id INT,
    name VARCHAR(50),
    payment_mode VARCHAR(30),
    amount INT
);

-- Inserting values
INSERT INTO transactions VALUES
(1, 'Rohith',  'Cash', 500),
(2, 'Sowmya',  'Card', 1000),
(3, 'Anusha',  'Cash', 1500),
(4, 'Nikhila', 'UPI',  2000),
(5, 'Dhanu',   'Card', 2500),
(6, 'Rakesh',  'Card', 3000);

-- Display all records
SELECT * FROM transactions;

-- Display payment modes used more than once
SELECT payment_mode, COUNT(*) AS total_count
FROM transactions
GROUP BY payment_mode
HAVING COUNT(*) > 1;

-- Order by most used payment mode
SELECT amount, COUNT(*) AS total_count
FROM transactions
GROUP BY amount
ORDER BY total_count DESC;