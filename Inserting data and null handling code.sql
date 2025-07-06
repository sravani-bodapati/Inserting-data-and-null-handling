use student_management;
-- Departments
INSERT INTO departments (dept_name) VALUES
('Computer Science'), ('Electronics'), ('Mechanical'),
('Civil'), ('Mathematics');

-- Faculty
INSERT INTO faculty (full_name, email, department_id) VALUES
('Dr. A. Verma', 'verma@univ.edu', 1),
('Dr. B. Reddy', 'reddy@univ.edu', 2),
('Dr. C. Singh', 'csingh@univ.edu', 3),
('Dr. D. Rao', NULL, 4),  -- NULL email
('Dr. E. Mehta', 'mehta@univ.edu', NULL); -- NULL department

-- Students
INSERT INTO students (full_name, email, gender, dob, department_id) VALUES
('Anjali Sharma', 'anjali@uni.edu', 'Female', '2002-01-15', 1),
('Ravi Verma', NULL, 'Male', '2001-07-19', 2), -- NULL email
('Sneha Rao', 'sneha@uni.edu', 'Female', NULL, 1), -- NULL dob
('Vikram Patel', 'vikram@uni.edu', 'Male', '2002-03-01', NULL), -- NULL department
('Riya Mehra', 'riya@uni.edu', 'Female', '2003-06-12', 2);

-- Courses
INSERT INTO courses (course_name, course_code, credit_hours, department_id, faculty_id) VALUES
('Data Structures', 'CS201', 4, 1, 1),
('Electronics Basics', 'EL101', 3, 2, 2),
('Thermodynamics', 'ME301', 4, 3, 3),
('Surveying', 'CE210', 3, 4, 4),
('Linear Algebra', 'MA102', 3, 5, NULL); -- NULL faculty

-- Enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-08-01'),
(2, 2, '2024-08-01'),
(3, 1, '2024-08-01'),
(4, 3, NULL),  -- NULL enrollment date
(5, 5, '2024-08-01');

-- Marks
INSERT INTO marks (enrollment_id, marks_obtained, grade) VALUES
(1, 88.50, 'A'),
(2, NULL, 'B'),  -- NULL marks
(3, 92.00, 'A'),
(4, 70.00, NULL), -- NULL grade
(5, 66.00, 'C');

-- Update Ravi Verma’s email and department
UPDATE students
SET email = 'ravi.verma@uni.edu', department_id = 1
WHERE full_name = 'Ravi Verma';

-- Update Dr. D. Rao’s email and department
UPDATE faculty
SET department_id = 5, email = 'd.rao@univ.edu'
WHERE full_name = 'Dr. D. Rao';
-- Delete courses with NULL faculty
DELETE FROM courses
WHERE faculty_id IS NULL;

-- Delete students with NULL email
DELETE FROM students
WHERE email IS NULL;
