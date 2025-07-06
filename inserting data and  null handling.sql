-- 1. Create the database
CREATE DATABASE IF NOT EXISTS mini_attendance;
USE mini_attendance;

-- 2. Create tables
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status ENUM('Present', 'Absent') DEFAULT 'Absent',
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- 3. Insert data with some NULLs
INSERT INTO students (name, email) VALUES
('Amit Sharma', 'amit@school.edu'),
('Rita Das', NULL),               -- NULL email
('Kunal Mehta', 'kunal@school.edu');

INSERT INTO attendance (student_id, date, status) VALUES
(1, '2024-07-01', 'Present'),
(2, '2024-07-01', NULL),          -- NULL status, should default to 'Absent'
(3, NULL, 'Absent');              -- NULL date

-- 4. Update records with missing values
set sql_safe_updates=0;
UPDATE students
SET email = 'rita.das@school.edu'
WHERE name = 'Rita Das';

UPDATE attendance
SET date = '2024-07-01'
WHERE student_id = 3;

-- 5. Delete records with missing data
DELETE FROM students
WHERE email IS NULL;

DELETE FROM attendance
WHERE date IS NULL;
