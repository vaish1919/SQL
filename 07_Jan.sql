create database sales_cc;

use sales;
select * from sales_cc;

-- Q1 get all transaction done for beauty category in the month of december

select * from sales_cc
where categoryProduct = 'Beauty' and month(str_to_date(sales_date, '%d/%m/%Y')) = 12
and (year(str_to_date(sales_date, '%d/%m/%Y')) = 2022);


-- 2]  Get the total sales done for each category in each month

select categoryProduct, month(sales_date) as month , sum(total_sale)as total_sales
from sales_cc
group by categoryProduct, month(sales_date);


-- 3] Find the maximum, minimum, and average age for people buying beauty products

select  max(age) as maximum, min(age) as minimum, avg(age) as average
from sales_cc
where categoryProduct = 'Beauty';


-- 4] Get the number of transactions done by each user in each category

select customer_id, categoryProduct, count(*) as all_transactions
from sales_cc
group by  customer_id, categoryProduct;


-- 5] Find the best-selling month for each year along with the average sales for each month
select * from sales_cc;

select sum(total_sale) as total_sales, 
avg(total_sale) as avg_sales
from sales_cc;



-- 6] Get the top 3 and bottom 3 customers based on their average sales

-- descending
select customer_id, avg(total_sale) as avg_sales
from sales_cc
group by customer_id
order by avg_sales DESC
limit 3;

-- ascending
select customer_id, AVG(total_sale) as avg_sales
from sales_cc
group by customer_id
order by avg_sales ASC
limit 3;

-- 7] Get the number of unique customers who purchased products for each category
-- distinct ==> different values 

select categoryProduct, count(distinct customer_id) as unique_
from sales_cc
group by categoryProduct;


-- 8] Orders based on time intervals

-- 12 bje tk
select count(*) as morning_orders
from sales_cc
where (time) < '13:00:00';

-- 1 se 3 bje tk
select count(*) as lunch_orders
from sales_cc
where (time) between '13:00::00' and '15:00:00';


-- 5 bje baad 
select count(*) as evening_orders
from sales_cc
where (time) < '17:00:00';