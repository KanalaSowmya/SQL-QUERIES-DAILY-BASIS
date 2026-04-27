USE company_db;

CREATE TABLE employee(
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    salary INT
);

DROP TABLE employee;

INSERT INTO employee VALUES
(1, 'rohith sharma', 20, 'Chennai', 1000),
(2, 'Sowmya Kanala', 25, 'Pune', 2000),
(3, 'Anusha', 30, 'Bangalore', 3000),
(4, 'Venkata Nikhila', 35, 'Hyderabad', 4000),
(5, 'Dhanu', 40, 'Anantapur', 5000);

SELECT * FROM employee;

-- question - 6
-- A table named employees contains a column full_name with values Rahul Sharma and Amit Verma. Write a SQL query to display the column as employee_name instead of full_name in the output.

SELECT name AS employee_name
FROM employee;




