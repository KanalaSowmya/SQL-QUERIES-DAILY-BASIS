-- QUESTION - 9 
-- A table named students contains a column class with values A, B, A, C, B. Write a SQL query to count how many students are in each class.

USE company_db;

-- Creating students table
CREATE TABLE students(
    id INT,
    student_number VARCHAR(20),
    name VARCHAR(50),
    class VARCHAR(10),
    age INT,
    city VARCHAR(30)
);

-- Inserting values
INSERT INTO students VALUES
(1, 'STU001', 'Rohith',  'A', 20, 'Chennai'),
(2, 'STU002', 'Sowmya',  'B', 21, 'Pune'),
(3, 'STU003', 'Anusha',  'A', 22, 'Bangalore'),
(4, 'STU004', 'Nikhila', 'C', 23, 'Hyderabad'),
(5, 'STU005', 'Dhanu',   'B', 24, 'Anantapur');

-- Display all records
SELECT * FROM students;

-- Count students in each class
SELECT class, COUNT(*) AS total_students
FROM students
GROUP BY class;