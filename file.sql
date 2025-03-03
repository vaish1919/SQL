create database xyz;
use xyz;

create table vaishnavi(name varchar(20));

insert into vaishnavi values("pet"), ("petter"), ("pe%"), ("pe"),("pe%hey");

select * from tushar where name like "pe\%";

use sakila;
select * from customer order by store_id desc;
