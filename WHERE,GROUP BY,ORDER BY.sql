select gender 
 from employee_demographics
group by gender ;

select gender ,avg(age)
from employee_demographics
group by gender 
order by avg(age) desc;

select dept_id,sum(salary),avg(salary)
from employee_salary
where dept_id=6
group by dept_id;

select gender ,avg(age),avg(salary)
from employee_demographics as demo
join employee_salary as sal
  on demo.employee_id=sal.employee_id
group by gender;
  

select dept_id, avg(salary)as avg_sal,avg(age) avg_age
from employee_demographics as demo
join employee_salary as sal
  on demo.employee_id=sal.employee_id
group by dept_id 
order by avg(salary) desc;

select * from employee_salary;


select * from parks_departments;

select occupation, avg(salary)
from employee_salary
where occupation like '%ma%'
group by occupation
having avg(salary)>5000;





