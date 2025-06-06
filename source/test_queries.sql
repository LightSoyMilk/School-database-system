/*
This file is to have all the test queries regarding 
the school's database system, which includes "functions"/queries like:
1. List all students
2. List all courses
3. Show which course a specific student is taking
4. Show which students are taking a specific course
*/

--------------------

/*
Below is the list_all_students query.
The purpose of this query is to display a 
table of all students and their information, who 
are currently enrolled and can register in a course.
*/

SELECT *
FROM Students;

--------------------

/*
Below is the list_all_courses query.
The purpose of this query is to display a 
table of all courses in the school and their
specific information.
*/

SELECT *
FROM Courses;

--------------------

/*
Below is the list_student_courses query.
The purpose of this query is to display a
table of all courses that a student is taking
in the school.
*/

SELECT student_id, student_name, course_name
FROM Students
LEFT JOIN Enrollment
     ON Students.register_id = Enrollment.student_register_id
RIGHT JOIN Courses
     ON Enrollment.course_id = Courses.course_id
WHERE Students.student_name LIKE 'Jonah' -- Replace name in '' with any other students' name to find their courses
ORDER BY course_name ASC;

--------------------

/*
Below is the list_students_in_course query.
The purpose of this query is to display a 
table of all students who are currently 
taking this particular course.
*/

SELECT course_name, instructor, student_name
FROM Courses
LEFT JOIN Enrollment
     ON Courses.course_id = Enrollment.course_id
RIGHT JOIN Students
     ON Enrollment.student_register_id = Students.register_id
WHERE Courses.course_name = 'PHIL 100' -- Replace course in '' with any other course's name to list all students in that course
ORDER BY student_name ASC;

--------------------

/*
Below is the alter_student_email query.
The purpose of this query is to change a 
student's email in the school system.
However, this is a naive approach from a beginner
and did not take into account the best practices in ignorance.
*/

UPDATE Students
SET student_email = 'LongTran@uvic.vn'
WHERE Students.student_name = 'Ben';

--------------------

/*
Below is the delete_course query. 
The purpose of this query is to delete a course 
from the database of the school. 
*A better practice would be to record this transaction before deleting
the information in a separate table but this is for 
future reference as I have yet to learn functional sql*.
!!!BE VERY CAREFUL WHEN DOING THIS -> It's best to
check with SELECT FROM WHERE before using this query
to see if that is the course you want to delete!!!
*/

DELETE FROM Courses
WHERE Courses.course_name = 'MATH 222';

--------------------

/*
Below is the drop_course query.
The purpose of this query is to remove a
student's enrollment in a course.
As of right now, without the knowledge of functional sql,
I cannot fully implement this query.
!!!The same caution applies here as above with
the delete_course query!!!
*/

-- DELETE FROM Enrollment 
SELECT * 
FROM Enrollment
RIGHT JOIN Students
     ON Enrollment.student_register_id = Students.register_id
RIGHT JOIN Courses
     ON Enrollment.course_id = Courses.course_id
WHERE Students.student_name LIKE 'Lucas' AND Courses.course_name LIKE 'MATH 222';
