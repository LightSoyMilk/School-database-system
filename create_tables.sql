/*
This file is to create the 3 tables needed for the school system, which include:
- Students table
- Courses table
- Enrollment table
*/

--------------------

/*
Below is the Students table with 4 fields/parameters: 
- Student_id (Primary Key): int i.e: 1, 2, 3
- Student_name: text: "Ben", "Lucas"
- Student_email: text: "JohnDoe@uvic.ca"
- Register_id (Foreign Key): text: "Rid1", "Rid2"
*/

--CREATE TABLE IF NOT EXISTS Students; -- Tester should use this to avoid conflict with their own database
DROP TABLE IF EXISTS Students; -- This is to make it easy for me to test

-- The table format
CREATE TABLE Students (Student_id int DEFAULT -1,
                       Student_name text DEFAULT 'None',
					   Student_email text DEFAULT 'None',
					   Register_id text DEFAULT 'Rid-1',
					   PRIMARY KEY (Student_id));
					   --FOREIGN KEY (Register_id) REFERENCES Enrollment(Student_register_id));

SELECT *
FROM Students;

--------------------

/*
Below is the Courses table with 3 fields/parameters: 
- Course_id (Primary key): text: i.e: 'V1', 'V2'
- Course_name: text: 'Math 100', 'CSC 115'
- Instructor: text: 'Trefor Bazett', 'Roberto Bittencourt'
*/

--CREATE TABLE IF NOT EXISTS Courses; -- Tester should use this to avoid conflict with their own database
DROP TABLE IF EXISTS Courses; -- This is to make it easy for me to test

-- The table format
CREATE TABLE Courses (Course_id text DEFAULT 'V-1',
                       Course_name text DEFAULT 'None',
					   Instructor text DEFAULT 'None',
					   PRIMARY KEY (Course_id));
					   
SELECT *
FROM Courses;

--------------------

/*
Below is the Enrollment table with 3 fields/parameters: 
- Enrollment_id (Primary key): text: i.e: 'E1', 'E2'
- Student_register_id: text: 'Rid1', 'Rid2'
- Course_id: text: 'V1', 'V2'
*/

--CREATE TABLE IF NOT EXISTS Enrollment; -- Tester should use this to avoid conflict with their own database
DROP TABLE IF EXISTS Enrollment; -- This is to make it easy for me to test

-- The table format
CREATE TABLE Enrollment (Enrollment_id text DEFAULT 'E-1',
                         Student_register_id text DEFAULT 'Rid-1',
						 Course_id text DEFAULT 'V-1',
						 PRIMARY KEY (Enrollment_id));

SELECT *
FROM Enrollment;