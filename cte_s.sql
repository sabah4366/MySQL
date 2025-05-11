--CTEs : common table expression
--going to allow to define a sub query block that we can  the  reference within the main query 
with CTE_EXAMPLE AS  
( 
    select gender,avg(salary) as avg_sal,min(salary) as min_sal,max(salary) as max_sal,count(salary) AS count_sal  
    from employee_demographics as emd  
    join employee_salary sal  
    on emd.employee_id = sal.employee_id  
    group by gender
) 

--now we can use the CTE_EXAMPLE for querying
SELECT * FROM CTE_EXAMPLE;

--another example
with CTE_EXAMPLE AS  
( 
    select gender,avg(salary) as avg_sal,min(salary) as min_sal,max(salary) as max_sal,count(salary) AS count_sal  
    from employee_demographics as emd  
    join employee_salary sal  
    on emd.employee_id = sal.employee_id  
    group by gender
) 
SELECT avg(avg_sal) FROM  CTE_EXAMPLE;