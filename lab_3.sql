-- 1 add age column to students
alter table students add age integer;

/* 
2 Add these ages to the students
student_id	age
---------------
1			30
2           21
3           21
4           33
5           19
*/

update students set age = 30 where student_id = 1;
update students set age = 21 where student_id = 2;
update students set age = 21 where student_id = 3;
update students set age = 33 where student_id = 4;
update students set age = 19 where student_id = 5;

/*Exercise 2:
2.1 Select first name and the last name of all the students
2.2 Select the names of all the courses ordered by the course name
2.3 Select all the courses and the students that are in them
2.4 Select the last name and course name of all the overseas students
2.5 Show the course data and names of all the students studying history
*/
-- 2.1
select concat(first_name, ' ', last_name) as full_name from students;

-- 2.2
select course_name from courses order by course_name;

-- 2.3
select course_name, first_name, last_name, student_type
	from Students, courses
	where students.course_id = courses.course_id;

-- 2.4
select course_name, last_name, student_type
	from students, courses
	where students.course_id=course.course_id
	and student_type='Overseas student';

-- 2.5
select course_name, student_id, first_name, last_name, student_type
	from students, courses
	where students.course_id = course.course_id
	and course_name = 'History';

/*Exercise 3
3.1 Select all the data for students over the age of 21
3.2 Select the first name, last name and age for students 
	who are twenty one or over

3.3 Select the first name, last name, course id and course 
	name for students who are not studying Computing Science
3.4 Select all the details for the students under 30 who are 
	studying computing science
3.5 Show the first names for students studying Computing 
	Science who are not Home Students
*/

-- 3.1
select * from students
	where age > 21;
-- 3.2
select first_name, last_name, age
	from students
	where age >= 21;
-- 3.3 
select first_name, last_name, age, courses.course_id, course_name
	from students, courses
	where students.course_id = courses.course_id
	and course_name <> "Computing science";

-- 3.4
select * from students, courses
	where students.course_id = courses.course_id
	and course_name = 'Computing science'
	and age < 30;
-- 3.5
select first_name
	from students, courses
	where students.course_id = courses.course_id
	and course_name = "Computing science"
	and student_type <>"Home Student";
	
select * 
	from students, courses
	where students.course_id = courses.course_id
	and course_name != 'Computing science' ;