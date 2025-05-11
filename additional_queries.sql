--we can change the column name to another name from the table
alter table employee_demographics rename column  id to  employee_id;
--we can update a column value 
update employee_salary set employee_id = 16 where first_name = 'Naseef';
