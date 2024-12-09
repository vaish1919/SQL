-- SUBSTRING, INSTR, PADDING, REPLACE

USE SAKILA;

select first_name, substr(first_name,3) from actor;

select first_name, substr(first_name,2,3) from actor;
-- start from 2 position and total chararcters 3 

-- TRIM 

select trim(leading " " from "   hey ");

select trim(trailing " " from "   hey ");


-- LPAD AND RPAD
select first_name from actor;

select first_name, lpad(first_name,4,"#") from actor;
-- it is used mostly for numerical data

select first_name, rpad(first_name,5,"_") from actor;

