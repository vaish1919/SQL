use sakila;

-- ORDER BY (DESC & ASC)
select * from address
order by district,city_id desc;

select customer_id, sum(amount)
 from payment group by custommer_id order by sum(amount);

select customer_id, sum(amount) as "Totalamount" 
from payment group by custommer_id order by Totalamount;


-- SUBQUERY (nested query)

use sakila;
select * from payment;

select  amount from payment where payment_id =3;  -- nested query
select * from payment where amount= 5.99;

select  amount from payment where payment_id =5;
select * from payment where amount= 9.99;


select * from payment 
where amount= (select  amount from payment where payment_id =4);

-- get the paymetn id staff id rental id and amount only for that payment
-- where the rental id is greater than the rental id of payment id 4

 
select rental_id from payment where payment_id = 4; 
select * from payment where rental_id > 1422 ;

select payment_id, staff_id, rental_id, amount from payment 
where rental_id > (select rental_id from payment
 where payment_id=4);
 
 
 -- get the payment id amount, the 10% increment in mamount 
 -- for those payment where the month of payment date
 -- = the month of payment id = 5
 -- 


select  amount from payment where payment_id;
select month(payment_date) from payment where payment_id =5 ;

select payment_id, amount from payment 
where month(payment_date) = (select month(payment_date)
 from payment where payment_id =5);
 

-- get the customer id and the total no of payments done by each customer 
-- only for those whose total no of payment should be greater than total 
-- no of payments done by customer_id = 2
 
 select * from payment;
 select sum(payment_id) from payment;
 select sum(customer_id)  from payment where customer_id = 2;
 select payment_id from payment where payment_id > 54;


 select payment_id from payment 
 where payment_id > ( select sum(customer_id) 
 from payment where customer_id = 2);