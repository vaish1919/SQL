# functions
# date functions

select current_date(), curtime(),current_timestamp() from dual;

select now() , adddate(now(),2) from dual;

select now() , adddate(now(),interval 2 month ) from dual;

-- datediff()
select datediff(now(), '2024-11-30') from dual;
select datediff(now(), '2024-11-28') from dual;

-- last day()
select last_day(now()) from dual;

select month(now()) from dual;
select year(now()) from dual;
select date(now()) from dual;

-- date format() ==> it is used to display in string format 
select date_format(now(),"Current day is %a") from dual; -- %a show day
select date_format(now(),"Current day is %m ") from dual; -- %m show month in number
select date_format(now(),"Current day is %M") from dual; -- %M show month in words
select date_format(now(),"Current day is %h") from dual; 


-- MULTI-ROW FUNCTIONS
use sakila;
select * from payment;

select distinct(customer_id) from payment;
select distinct(customer_id), amount from payment;


-- sum()
select sum(amount) from payment;
-- count()
select sum(amount), count(amount) from payment;
select sum(amount), count(amount), count(*) from payment;
-- count(*) it  counts null values 

select sum(amount), count(amount), count(*), avg(amount) from payment;
select sum(amount), count(amount), count(*), avg(amount),
min(amount), max(amount) 
from payment;

select sum(amount) from payment where customer_id = 1;
select sum(amount) from payment where customer_id = 2;
select sum(amount) from payment where customer_id = 3;


-- GROUP BY 
select customer_id from payment group by customer_id;
select customer_id, amount from payment group by customer_id; -- it shows error 

-- sum(), count(), max(), min()
select customer_id, sum(amount), count(*) , max(amount), min(amount)
from payment group by customer_id;


--  find out the total number of customer deal each staff 
select * from payment;
select staff_id , count(customer_id) from payment group by staff_id;


-- you have to find out the total no of payments, total amount spend
-- and total no of customer serve in each month but 

select * from payment;
select month(payment_date), sum(amount), count(*)
from payment group by month(payment_date)
having count(*) > 2000;


select * from address;
select count(address_id), count(address2) from address;


-- Get the each district name the total district present 
-- and sum of city id for each district 

select * from address;
select district, count(district), sum(city_id) 
from address group by district;












