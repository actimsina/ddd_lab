# Lab 5

## Objectives

- Practice and use types of joins
	
	- left join
	- right join
	- full outer join 

- Retrieving data using joins

- Retrieving data using sub-queries

## Exercises

1. Insert the following tuples into tables students and courses

```sql
	insert into students values(6, 'Ram', 'Khatri', 'Overseas student', '', 25);

	insert into courses values(4, 'Humanities');
```

2. Now perform `equi-join` on tables students and courses. Where are the tuples that you have just inserted?

3. Re-write the above query so that it shows even students who are not yet allocated a course

4. Write a query that retrieves the course_name and the students' first and last names and includes courses that do not yet have any students allocated to them

5. Find both the courses without students and the students without courses using a full outer join. 

6. Select all the students who are over the age of 20. Include those students who are not yet allocated a course

7. Now select all the students and their corresponding courses, who are over 20 and paying more than 6000 in fees. (using sub-query)

8. Select the course name and average age of students on that course. Include students who do not have a course
