-- NUMERIC FUNCTIONS 

-- ROUND() it converts the number to round off means overall
select round(12.6) from dual;

select round(12.423,1) from dual;
select round(12.463,1) from dual;
select round(12.463,2) from dual;
select round(12.467,2) from dual;

select round(46.467,-1) from dual;

-- truncate()  it only extract the value 
select truncate(46.467,2) from dual;

-- floor() and ceil()
select floor(10.99999),ceil(10.91111) from dual;



