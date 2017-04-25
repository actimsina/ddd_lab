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

-- 2.1
select concat(first_name, ' ', last_name) as full_name from students;

/*Exercise 3

*/

-- 3.1 Select all the data for students over the age of 21
select * from students
	where age > 21;

-- 3.2 Select the first name, last name and age for students who are twenty one or over
select first_name, last_name, age
	from students
	where age >= 21;

-- 3.3 Select the first name, last name, course id and course name for students who are not studying Computing Science
	from students, cours
	where students.course_id = courses.course_id
	and course_name <> "Computing science";

-- 3.4 Select all the details for the students under 30 who are studying computing science
select * from students, courses
	where students.course_id = courses.course_id
	and course_name = 'Computing science'
	and age < 30;

-- 3.5 Show the first names for students studying Computing Science who are not Home Students
select first_name
	from students, courses
	where students.course_id = courses.course_id
	and course_name = "Computing science"
	and student_type <>"Home Student";

-- OR 

select * 
from students, courses
where students.course_id = courses.course_id
and course_name != 'Computing science' ;

/*Exercise 1: Creating a table from another table and further qureies*/

-- 1.1 Create a table called student_types by selecting the distinct values of the student_type column from the students table
create table student_types as
	(select distinct student_type from students);

-- 1.2 Add a column to the student_types table to record the fees that will be charged
alter table student_types
	add fees float;

-- 1.3 Make the student_type attribute of the student_types the primary key. You should use the alter table command
alter table student_types
	add primary key(student_type);

-- 1.4 Use the alter table command to make the student_type attribute on students a foreign key to the new student_types table
alter table students
	add foreign key (student_type) references student_types(student_type);

-- 1.5 Update the student_types table to set the fees. Home students will pay 5000, overseas students will pay 10000
update student_types
	set fees = 5000
	where student_type = 'Home student';

update student_types
	set fees = 10000
	where student_type = 'Overseas student';

-- 1.6 Show each student's first and last names and the fees that they are paying
select first_name, last_name, fees
	from students, student_types
	where students.student_type = student_types.student_type;

-- create table student_types (id int primary key auto_increment) as select distinct student_type from students;
-- add column fees
alter table student_types add fees decimal(7,2);