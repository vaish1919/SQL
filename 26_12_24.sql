# views ==> virtual table 
# IT is a saved SQL query that acts as a virtual table.
# It keeps secure the data using views method 
# query ==> store

use sakila;
select * from actor ;
select * from actor join film_actor 
where actor.actor_id = film_actor.actor_id;

create view actor_view as
select actor.actor_id, first_name, film_id
from actor join film_actor
where actor.actor_id = film_actor.actor_id;

select * from actor_view;



# actor, film, film actor ==> actor id,film id,
# the name of the film id that actor has worked


select a.actor_id, f.film_id, fm.title
from actor as a join film_actor as f
join film fm
where a.actor_id = f.actor_id and f.film_id = fm.film_id;


# using view ==> 
create or replace view aview as
select a.actor_id, f.film_id, fm.title
from actor as a join film_actor as f
join film fm
where a.actor_id = f.actor_id and f.film_id = fm.film_id;
select * from aview;


# create a table of student id or name or insert 3 rows 
# and make a view of this table

create table students (student_id int primary key ,student_name varchar(50));
insert into students (student_id, student_name)values(1, 'Vaishnavi'),
(2, 'Anjali'),
(3, 'Shivangi');

create view student_view as
select student_id, student_name
from students;
select * from student_view;


# update method 
update students
set student_name = 'Aman'
where student_name  = 'Vaishnavi'; 


# create one more table by groupby 

select * from students;
create view v1 as select * from t1 where a < 2
with check option;
select * from t1; 
 





