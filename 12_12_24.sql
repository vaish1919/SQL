-- Multiple Row Query

use sakila;
select * from payment;

select amount from payment where payment_id in (1,3);
-- IN operator
select * from payment 
where amount in (select amount from payment where payment_id in (1,3));


-- ANY operator 
select * from payment 
where amount < any (select amount from payment where payment_id in (1,3));

-- ALL operator
select * from payment 
where amount > all (select amount from payment where payment_id in (1,3));

select count(*) from payment 
where amount < all (select amount from payment where payment_id in (1,3));

-- Correlated query




-- DATATYPES OF SQL
-- int, str,date time

create database regex1;
use regex1;
create table xyz(id int);
insert into xyz values(-20 );
select * from xyz;

-- INT DATATYPE
-- DDL ( data definition language)
-- unsigned doesn't accept negative values
create table employee1(eid int unsigned);
insert into employee1 values(2147483648);
select * from employee1;

-- BOOLEAN 
create table abc(salary double(5,2));
insert into abc values(20.1);
insert into abc values(120.1);
insert into abc values(3420.1);  -- it will show error beacause of 4 digits before decimal
select * from abc;

-- 0 to 256 unsigned, -127 to 128
create table tset_bool (i BOOL);
insert into test_bool values(True),(False);

-- CHAR DATATYPE
create table ep2(name1 char (4));
insert into ep2 values("zz");
insert into ep2 values("zz k");
select name1, length(name1) from ep2;

-- variable character (var char)
create table ep_var(name1 varchar(3));
insert into  ep_var values("XX           ");
select name1, length(name1) from ep_var;

-- DATE (YYYY-MM-DD)
create table e1(DOB date);
insert into e1 values('2024-12-12');
select * from e1;

-- TIME (hh:mm:ss)
create table e2(TI time);
insert into e2 values('02:59:10');
select * from e2;

-- DATETIME
create table e3(DT datetime);
insert into e3 values('2024-12-12 02:59:10');
select * from e3;


-- CONDITIONAL STATEMENT 
use sakila;
select * from actor;

-- if condition is TRUe = 0 otherwise FALSE = 1
select first_name , if(first_name = 'NICK', 0,1) from actor;

select first_name , 
if(first_name = 'NICK', 0, if(first_name = "ED",2,"not value"))
from actor;


-- CASE FUNCTION
select first_name,
case
    when first_name = 'NICK' then 0
    when first_name = 'ED' then 1
    else 'No value'
end as "NEWCOL"
    from actor;

-- get the payment id customer id amount
--  mopnth of payment date  and quarter of payment date 
-- with the followinf increment in the amount
-- agr amount mera 2 dollar se upr hua to hume 10% ka amount increase krna h 
-- if the maount is greater than 5 dollar then amount increase 25%
-- if the maount is greater than 8 dollar then amount increase 50%

select * from payment;
select payment_id, customer_id, amount,month(payment_date),
case
    when amount > 2 then amount * 0.10
    when amount > 5 then amount * 0.25
    when amount > 7 then amount * 0.5
    else '_____'
end as UPDATED_AMT,
quarter(payment_date) as payment_quarter
from payment;







