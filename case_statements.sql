--CASE STATEMENTS
--WE CAN WRITE MULTIPLE CONDITIONS
select first_name,last_name,age ,
case 
    when age <= 25 then 'Young' 
    when age between 26 and 40 then 'Elder' 
    when age >= 40 then 'Close to Death' 
end as age_group 
from employee_demographics;

--pay increases and bonus
--  < 50000  = 5%
--  > 50000 =  7%
-- Finance = 10% bonus
select first_name ,occupation,salary, 
case 
    when salary < 50000 then salary * 1.05 
    when salary >= 50000 then salary * 1.07 
end as Inc_Salary, 
case 
    when dept_id = 7 then salary + 10000 
end as Bonus
from employee_salary;
