-- A CORRELATED SUBQUERY ==> 
-- It is a type of subquery 
-- that depends on the outer query for its values.
-- it depends on outer query.
-- it executes repeatedly.


-- super key is a group of single or multiple keys that identifies rows in a table 
-- it is combination of columns that can uniquely identify rows.
-- it supports null values

-- candidate key is a super key with no related data
-- it can't contains null values
-- it contain unique values

-- foreign key contains duplicate values
-- it also contain null values
-- it connects two table by referring primary key.

-- primary is a unique key.
-- it has no duplicate values.
-- it can't be 

create database regex;
use regex;

create table product(pid int, pname varchar(20), price int);
insert into product values(10,"TV",100),(20,"MOBILE",200),
(30,"GYSER",4000),(40,"YASH",5000);
select * from product;


create table orders(oid int, city varchar(20), product_id int);
insert into orders values(1991,"jaipur",10),(1992,"goa",20),
(1993,"UK",10),(1994,"shimla",40),(1995,"kerala",80);
select * from orders;

select o.oid, o.city, o.product_id,p.pid,p.pname,p.price
from orders as o join product as p
where o.product_id = p.pid;


-- LEFT JOIN 
select o.oid, o.city, o.product_id,p.pid,p.pname,p.price
from orders as o left join product as p
on o.product_id = p.pid;

select * from orders;

-- RIGHT JOIN 
select o.oid, o.city, o.product_id,p.pid,p.pname,p.price
from orders as o right join product as p
on o.product_id = p.pid;


-- get the actor id the full name of actor the film id
-- and the last update column from these two table

use sakila;
select * from actor;
select * from film_actor;

select a.actor_id, f.film_id, a.first_name,last_name,
CONCAT(a.first_name, ' ', a.last_name) AS full_name,f.last_update
from actor as a right join film_actor as f
on a.actor_id = f.film_id;










