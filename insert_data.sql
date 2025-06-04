/*
This file is to insert data into the 3 tables for the school system, including:
- The Students table
- The Courses
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

-- Inserting specific values into the Students table to test
INSERT INTO Students VALUES
                      (1, 'Ben', 'longKhaitran@uvic.vn', 'Rid1'),
					  (2, 'Lucas', 'bigWheel@uvic.vn', 'Rid2'),
					  (3, 'Jonah', 'keating@uvic.vn', 'Rid3');

SELECT *
FROM Students
ORDER BY student_id ASC;

--------------------

/*
Below is the Courses table with 3 fields/parameters: 
- Course_id (Primary key): text: i.e: 'V1', 'V2'
- Course_name: text: 'Math 100', 'CSC 115'
- Instructor: text: 'Trefor Bazett', 'Roberto Bittencourt'
*/

-- Inserting specific values into the Courses table to test
INSERT INTO Courses VALUES
                      ('V1', 'MATH 211', 'Trefor Bazett'),
					  ('V2', 'CSC 115', 'Roberto Bittencourt'),
					  ('V3', 'PHIL 100', 'Karen Brown'),
					  ('V4', 'MATH 222', 'Gary');

SELECT *
FROM Courses;

--------------------

/*
Below is the Enrollment table with 3 fields/parameters: 
- Enrollment_id (Primary key): text: i.e: 'E1', 'E2'
- Student_register_id: text: 'Rid1', 'Rid2'
- Course_id: text: 'V1', 'V2'
*/

/*
Inserting specific values into the Enrollment table to test.
Assuming we have 2 enrollments per student, let's give them specific fields
Ben would take the Math and CSC courses,
Lucas would take the Math and Phil courses,
and Jonah would take the CSC and Phil courses.
*/
INSERT INTO Enrollment VALUES
                        ('E1', 'Rid1', 'V1'),
						('E2', 'Rid1', 'V2'),
						('E3', 'Rid2', 'V1'),
						('E4', 'Rid2', 'V3'),
						('E5', 'Rid3', 'V2'),
						('E6', 'Rid3', 'V3'),
						('E7', 'Rid2', 'V4');

SELECT *
FROM Enrollment;