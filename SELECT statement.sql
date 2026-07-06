select * from snm_series.employee_demographics;
select * from snm_series.employee_salary;
select * from snm_series.parks_departments;


select first_name, 
age
from snm_series.employee_demographics;

select last_name, age, gender 
from snm_series.employee_demographics;

select first_name, occupation,salary
from snm_series.employee_salary;

select distinct salary
from snm_series.employee_salary;


select department_name from snm_series.parks_departments;

select * 
from snm_series.employee_demographics
where age<=45 
or not gender='male';

select first_name, salary
from snm_series.employee_salary
where salary<= 40000;

select first_name, salary
from snm_series.employee_salary
where first_name like 'an%'  or salary< 50000;


select first_name, last_name, age, gender
from employee_demographics
where gender='female' and last_name like '%m%' ;
