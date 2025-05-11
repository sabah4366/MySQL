--WINDOW FUNCTIONS
--this is using group by but we can use window function instead of this
select gender, avg(salary) 
from employee_demographics emd 
join employee_salary sal 
on emd.employee_id = sal.employee_id 
group by gender;


--it will get the all gender also get duplicates means all rows in the table in every column has the same
-- average that average is all employees salary average (total salary divided by total rows)
select gender, avg(salary) 
over() 
from employee_demographics emd 
join employee_salary sal 
on emd.employee_id = sal.employee_id;

--this query will partition by gender means now the average will get based on the gender not taking entire salary average
--its taking female avg and male avg
select gender, avg(salary) 
over(partition by gender) 
from employee_demographics emd 
join employee_salary sal 
on emd.employee_id = sal.employee_id;


--sum of salary
select gender, sum(salary) 
over(partition by gender) 
from employee_demographics emd 
join employee_salary sal 
on emd.employee_id = sal.employee_id;



--rolling total
--rolling total means each salary add by add
--eg 200,300,400,500,600 are salaries then it will add like 200,200+300,200+300+400,200+300+400+500,200+300+400,200+300+400+500+600 like this
--means it will calculate this for each genders 
select gender, sum(salary) 
over(partition by gender ORDER BY emd.employee_id) as rolling_total 
from employee_demographics emd 
join employee_salary sal 
on emd.employee_id = sal.employee_id;


--row_number will give you for the number of rows of each group by starting like eg
--eg for male,female,other -> male 6peoples,female 3peoples,other 2 peoples
--eg 1,2,3,4,5,6,1,2,3,1,2
select gender, salary ,row_number() 
over(partition by gender)  
from employee_demographics emd  
join employee_salary sal  
on emd.employee_id = sal.employee_id;

--also you can order by salary descending order
select gender, salary ,row_number() 
over(partition by gender order by salary desc)  
from employee_demographics emd  
join employee_salary sal  
on emd.employee_id = sal.employee_id;


--rank -used for ranking if duplicate value then the rank is same
--it will goes like the position if the position at 5 then the next values same its also 5 then next 7 not 6 but dense_rank takes next 6
select gender, salary ,row_number() 
over(partition by gender order by salary desc)  
rank() over(partition by gender order by salary desc)
from employee_demographics emd  
join employee_salary sal  on emd.employee_id = sal.employee_id;


--but dense_rank takes next 6
select gender, salary ,row_number() 
over(partition by gender order by salary desc)  
rank() over(partition by gender order by salary desc),
dense_rank() over(PARTITION BY gender order by salary desc)
from employee_demographics emd  
join employee_salary sal  on emd.employee_id = sal.employee_id;

