# Inserting-data-and-null-handling

Task Overview
This task involves creating a students database, inserting data with some NULL values, updating records with missing values, and deleting records with missing data.

Database students
The database schema consists of two tables: `students` and `attendance`.

Students Table
- `student_id` (primary key)
- `name`
- `email`

Attendance Table
- `attendance_id` (primary key)
- `student_id` (foreign key referencing `students`)
- `date`
- `status` (ENUM('Present', 'Absent') with default value 'Absent')

SQL Queries
Create Database and Tables
The database and tables are created using the following SQL queries.

Insert Data with NULL Values
Sample data is inserted into the tables, including some NULL values.

Update Records with Missing Values
Records with missing values are updated using the UPDATE statement.

Delete Records with Missing Data
Records with missing data are deleted using the DELETE statement.

Learning Outcome
This task helps you understand how to:

- Create a database and tables
- Insert data with NULL values
- Update records with missing values
- Delete records with missing data
