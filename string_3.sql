-- INSTR, LOCATE, STRCMP

select first_name from actor;

select first_name, instr(first_name, "E") from actor;

select first_name, instr(first_name, "EO") from actor;

-- LOCATE 

select first_name, locate( "E", first_name) from actor;

select first_name, locate( "E", first_name,3) from actor;


-- REPLACE (replace the value with given element)
select first_name, replace( first_name,"P","#") from actor;


-- STRCMP (it comapre two strings)
SELECT strcmp("nick2", "nick") from dual;

SELECT strcmp("nick", null) from dual;











