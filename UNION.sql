select * from employee_demographics
union 
select * from employee_salary;

select employee_id,first_name,last_name
from employee_demographics
union 
select employee_id,first_name,last_name
from employee_salary
order by employee_id;

select employee_id,first_name,last_name
from employee_demographics
union distinct
select employee_id,first_name,last_name
from employee_salary
order by employee_id;

select employee_id,first_name,last_name
from employee_demographics
union all
select employee_id,first_name,last_name
from employee_salary
order by employee_id;

select first_name,last_name,'old man' as label
from employee_demographics
where age>40 and gender = 'male'
union 
select first_name,last_name,'old women ' as label
from employee_demographics
where age >40 and gender = 'female'
union 
select first_name, last_name,'high pay' as label
from employee_salary
where salary >70000
order by first_name;


