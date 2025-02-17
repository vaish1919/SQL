show databases;

use sakila;

show tables;

describe actor;

select * from actor;

SELECT ACTOR_ID, FIRST_NAME, ACTOR_ID*100 FROM ACTOR;

select * from actor 
where actor_id = 2;

-- >,<,<=,>=,!=,<>,=

-- operators => between, in and like operator
-- between => range of values

select * from actor
   where actor_id between 1 and 5;
   
select * from actor
    where actor_id in (2,5,50,500);

-- actor _id in first name only for those users 
-- whos name is nick or ed 

select * from actor;

select * from actor
   where first_name in ('NICK','ED');
   
-- like operator -> pattern dhundna
-- wildcard character -
-- % => zero or more character
-- _ => only one character
  
select * from actor
  where first_name like 'E%';

select * from actor
  where first_name like '%E';
  
select * from actor
  where first_name like 'S%Y';
  
select * from actor
  where first_name like '%A%';
  
select * from actor
  where first_name like '%SA%';
  
select * from actor
  where first_name like 'E%';
  
select * from actor
  where first_name like 'E_';

select * from actor
  where first_name like '_A';
  
select * from actor
  where first_name like '_A%';

-- get those name whose first name has four characters
-- ehere you have leeteer E in middle 
-- those users which have minimun 4 letters and last thir letter shiukd be R 
-- where EE is present in Firstname 
-- where second letter is H and second last Z 

select * from actor
  where first_name like '____';

select * from actor
  where first_name like '_%E%_';
  
select * from actor
  where first_name like '%R__';

select * from actor
  where first_name like '_%EE%_';
  
select * from actor
  where first_name like '_H%Z_';
  

-- Assignment -> 
-- SQL languages
-- DBMS VS RDBMS
-- DBMS AND ITS TYPES
-- FUNCTIONS (STRING)
-- hOW TO READ WILDCARD CHARACTER


