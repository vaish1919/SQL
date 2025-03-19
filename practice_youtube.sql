

CREATE TABLE vaish (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    City CHAR(50),
    Salary NUMERIC
);
select * from vaish;

-- INSERT DATA 
INSERT into vaish 
(ID, Name, Age, City, Salary)
values
(1, 'Sam',26, 'Delhi', 9000)
(2, 'Ram',19, 'Banglore', 11000)
(3, 'Pam', 31, 'Mumbai',6000)
(4, 'Jam', 42, 'Pune', 10000);
select * from vaish;


-- UPDATE DATA 
update vaish
set Name = 'Cam', Age = 32
where ID = 4;
select * from vaish;

-- DELETE DATA 
delete from vaish
where ID = 3;
select * from vaish;

-- ALETER DATA  1] Add column 2] Drop column 3] Alter/Modify column

-- Drop & Truncate Table 


