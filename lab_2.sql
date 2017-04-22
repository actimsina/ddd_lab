-- courses
create table courses(
	course_id integer not null primary key,
	course_name varchar(30)
);

-- students
create table students(
	student_id integer not null primary key,
	first_name varchar(30),
	last_name varchar(30),
	student_type varchar(20),
	course_id integer,
	foreign key (course_id) references courses
);

-- 
insert into courses values('1','Computing Science'); 
insert into courses values('2', 'History');
insert into courses values('1', 'Databases');

-- 
insert into students values(1, 'Pavel', 'Dobovitch', 'Home student', 1);
insert into students values(2, 'Winston', 'Kodogo', 'Overseas student', 1);
insert into students values(3, 'Dawn', 'Cove', 'Overseas student', 1);
insert into students values(4, 'Satpal', 'Singh', 'Home student', 2);
insert into students values(5, 'Horace', 'Smith', 'Home student', 3);

-- 4.1  Select first name and last name of all the students
select first_name, last_name from students;

-- 4.2 Select the names of all the courses ordered by the course name
select course_name from courses order by course_name;

-- 4.3 Select all the courses and students that are in them
select * from studnets s, courses c
where s.course_id = c.course_id;

-- 4.4 Select the last name and course name of all the overseas students
select * from studnets s, courses c
where s.course_id = c.course_id 
and s.student_type = 'Obverseas student';

-- 4.5 Show the course data and names of all the students studying history
select * from studnets s, courses c
where s.course_id = c.course_id 
and c.course_name = 'History';

