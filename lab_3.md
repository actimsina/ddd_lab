# Lab 3

## Objectives
- Learn to add new column in existing table
- Learn to update values in existing tuples
- Creating a table from another table and further queries

## Exercises

1. Add age column to student table from `lab_2`.

`alter table students add age integer`

2. Update the student table with this data

| student_id  | age |
| ----------- | --- |
| 1           | 30  |
| 2           | 21  |
| 3           | 21  |
| 4           | 33  |
| 5           | 19  |


```sql
update students 
	set age = 30
	where student_id = 1;
``` 

3. Select all the data for students over the age of 21

4. Select the first name, last name and age for students who are 21 or over

5. select the first name, last name, course id and course name for students who are not studying 'Computing Science'.

6. Select all the details of student under 30 who are studying `Computing Science`.

7. Show the first names of students studying 'Computing Science', who are not 'Home Students'.

8. Create a table called `student_types` by selecting the distinct values of the `student_type` column from the students table. 

9. Add a column to the student_types table to record the fees that will be charged.

10. Make the student_type attribute of the student_types the primary key. You should use the alter table command.

11. Use the alter table command to make the student_type attribute on students a foreign key to the new student_types table.

12. Update the student_types table to set the fees. Home students will pay 5000, overseas students will pay 10000.

13. Show each student's first and last names and the fees that they are paying.
