

-- 1. Find the marks of all subjects for the student named "Charlie".

select subject, marks 
from marks_table
where student_name = 'Charlie';


--  2. List the names of students who scored more than 90 in Science.

select student_name 
from marks_table
where subject = 'Science' and marks > 90;

-- 3. Find the total marks scored by each student across all subjects.

select student_name, SUM(marks) as total_marks 
from marks_table 
group by  student_name; 

-- 4. Display the name and total marks of the top-scoring student in Science.

select student_name, marks as total_marks 
from marks_table 
where subject = 'Science' 
order by marks desc limit 1;

-- 5. List all students who have scored more than the average marks in Math.

-- 6.What are indexes in SQL, and why are they used?
-- indexes work like a roadmap, allowing the database 
-- to locate rows more efficiently.
-- indexes can be create on one or more columns. 


-- 7. What is the difference between RANK(), DENSE_RANK(), and ROW_NUMBER() functions in SQL?
-- RANK() => is used to assign a unique rank to rows 
-- based on columns value.
-- DENSE_RANK() => it is similiar to rank but it does not skip number.
-- ROW_NUMBER() => it assigns a unique sequential number to each row.


-- 8. Explain the difference between DDL (Data Definition Language), DML (Data Manipulation Language), and DCL
-- DDL => Data definition language defines the database schema and structure.
-- DML => Data manipulation language manages data within tables.
-- DCL => Data control language manages permission and access.
