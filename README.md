## Students and Courses – SQL DML Practice

## Objective

Practice *Data Manipulation Language (DML)* operations such as INSERT, UPDATE, and DELETE, along with handling NULL, DEFAULT, and partial column data. This helps build real-world database skills using SQLite tools.

##  Tables Overview

### Students

* STUDENT_ID
* NAME
* AGE
* EMAIL
* CITY

### Courses

* COURSE_ID
* COURSE_NAME
* INSTRUCTOR
* DURATION 


## Data Insertion Patterns

* Inserted complete student records 
* Used *default values* for missing columns 
* Handled *NULL* entries 
* Demonstrated *partial inserts* where not all columns are supplied.

## Update Operations

* Updated individual rows 
* Updated *multiple rows at once* -

## Deletion

* Deleted specific rows using DELETE FROM ... WHERE clause

## Derived Insert

* Inserted a new row **using SELECT** from existing data with some modifications.

# Null Checks

* Queried rows where values were NULL using IS NULL 



### Students Table

| ID | Name    | Age  | Email                                         | City      |
| -- | ------- | ---- | --------------------------------------------- | --------- |
| 1  | SRAVANI | 20   | sravani@gmail.com                             | Hyderabad |
| 2  | RAM     | 22   | ram@gmail.com                                 | Unknown   |
| 3  | HARINI  | NULL | harini@gmail.com                              | Mumbai    |
| 5  | SRAVANI | 20   | name@gmail.com                                | Hyderabad |

### Courses Table

| ID  | Course Name     | Instructor | Duration |
| --- | --------------- | ---------- | -------- |
| 101 | SQL Basics      | SATYAVENI  | 30       |
| 102 | Data Structures | NULL       | NULL     |

## Key Learning Points

* Using INSERT INTO for full and partial rows
* Handling *default values* and *NULLs*
* Safe updates with WHERE condition
* Row deletions with filtering
* Reuse of existing data via INSERT ... SELECT
* Filtering nulls using IS NULL


## Tools Used

* *SQLite Workbench*
