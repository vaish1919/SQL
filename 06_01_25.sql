
-- find out the top 3 product id based on the no. of quantity sold.
-- get the order date the product id, prodcut name, and the order id which has
-- been sold in the multiples of two.
-- get the brand name , order value , product name for each prodcut sold.
-- get the avgerage order value for each order which has been placed after 
-- half an hour.
-- get the order id no. of quantity sold the month
-- and the total price for each brand.  




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema demo_db
--

CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;
show tables;
select * from brands;
select * from order_lines;
select * from orders;

-- 1] 
select * from order_lines;
select product_id, sum(quantity) as total_quantity from order_lines
group by product_id
order by total_quantity desc limit 3;


-- 2]
select order_lines.order_id,orders.order_date,products.product_id,products.product_name
from order_lines

join orders on order_lines.id = orders.id
join products on order_lines.product_id = products.product_id
where order_lines.quantity % 2 = 0;



-- 3] 

select ol.product_id, b.brand, o.order_value, p.product_name,SUM(ol.quantity) AS total_quantity_sold
from brands b
join order_lines ol on b.product_id = ol.product_id
join orders o on  b.id = o.id
join products p on ol.product_id = p.product_id
group by ol.product_id, b.brand, o.order_value, p.product_name;

-- 4] 
select * from orders;
select avg(order_value) as average_order_value from orders;

select avg(order_value) as average_order_value from orders 
where order_date > DateTime (order_date = '30 minutes');

