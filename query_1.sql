USE company_db;

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    salary INT
);

DROP TABLE employees;

INSERT INTO employees VALUES
(1, 'rohith', 20, 'Chennai', 1000),
(2, 'Sowmya', 25, 'Pune', 2000),
(3, 'Anusha', 30, 'Bangalore', 3000),
(4, 'Nikhila', 35, 'Hyderabad', 4000),
(5, 'Dhanu', 40, 'Anantapur', 5000);

SELECT * FROM employees;

SELECT name, salary FROM employees;

SELECT * FROM employees WHERE age>25;

SELECT * FROM employees WHERE  city = 'Anantapur';

SELECT * FROM employees WHERE age>25 AND  salary>3000;

SELECT * FROM employees WHERE city = 'Anantapur' OR city ='Mumbai';

SELECT * FROM employees WHERE salary BETWEEN 2000 AND 5000;

SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

 




