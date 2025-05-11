-- LIMIT
-- limit will control the rows of records
-- in this it will get 2 records only
select * from employee_demographics order by age desc limit 2;

--in this will skip 2records  then get after that skipped 1 record
select * from employee_demographics order by age desc limit 2,1;

--in this will skip 3records from first then get after that skipped  that 4 records
select * from employee_demographics order by age desc limit 3,4;

-- Aliasing 
-- avg_age is as alias name of avg(age)
SELECT gender,avg(age) as avg_age FROM employee_demographics GROUP BY gender HAVING avg_age > 23;  