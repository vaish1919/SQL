use sakila;

show tables;

select * from actor;

select actor_id,first_name,'V V', 10 from actor;

select first_name,actor_id from actor;

select *, first_name from actor;

select * from actor where actor_id = 2;

select * from actor where actor_id != 2;

select first_name, last_name from actor where 
actor_id=2;

-- between operator
select * from actor where actor_id between 2 and 7;

select * from actor where actor_id in ( 2 , 7);

select * from actor where first_name in ( 'NICK' , 'ED');

select * from actor 
where actor_id = 2 or actor_id = 7 ;

select * from actor where first_name = 'NICK' or actor_id > 50;

select * from actor where first_name = 'NICK' and actor_id > 50;

-- like operator 

select *from actor where first_name = 'ED';
select *from actor where first_name like 'E';

-- % --> 
select *from actor where first_name like 'E%';
select *from actor where first_name like '%E';

select *from actor where first_name like '%E%';

select *from actor where first_name like 'E%' or 
first_name like 'T%';

select *from actor where first_name like '_D%';

select *from actor where first_name like '%T_';

select * from actor;

select concat(first_name, last_name) from actor;










