# Lab 2

## Objectives
- Convert normalized ER model to Relational database tables
- Insert values into the tables
- Review of some basic queries on the tables

## Exercise

1. Create table courses as:

```sql
create table courses(
	course_id integer not null primary key,
	course_name varchar(30)
);
```

2. Create table students as:

```sql
create table students(
	student_id integer not null primary key,
	first_name varchar(30),
	last_name varchar(30),
	student_type varchar(20),
	course_id integer,
	foreign key (course_id) references courses
);
```
3. Populate the tables courses and students

```sql
insert into courses values('1','Computing Science'); 
insert into courses values('2', 'History');
insert into courses values('1', 'Databases');

insert into students values(1, 'Pavel', 'Dobovitch', 'Home student', 1);
insert into students values(2, 'Winston', 'Kodogo', 'Overseas student', 1);
insert into students values(3, 'Dawn', 'Cove', 'Overseas student', 1);
insert into students values(4, 'Satpal', 'Singh', 'Home student', 2);
insert into students values(5, 'Horace', 'Smith', 'Home student', 3);
```
4. Write queries to:
	
	4.1 Select first name and last name of all the students
	
	4.2 Select the names of all the courses ordered by the course name
	
	4.3 Select all the courses and students that are in them
	
	4.4 Select the last name and course name of all the overseas students
	
	4.5 Show the course data and names of all the students studying history

