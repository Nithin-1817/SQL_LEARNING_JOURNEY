select * from employee_demographics;

select * from employee_salary;

select *
from employee_demographics
inner join employee_salary
  on employee_demographics.first_name=employee_salary.first_name;

select *
from employee_demographics
right join employee_salary
  on employee_demographics.first_name=employee_salary.first_name;
  
  select *
from employee_demographics
left join employee_salary
  on employee_demographics.first_name=employee_salary.first_name;
  
select demo.employee_id,
demo.first_name, 
demo.last_name,
salary
from employee_demographics as demo
 join employee_salary 
  on demo.employee_id=employee_salary.employee_id;
  
  
select employee_demographics.first_name,age,gender,occupation,salary
from employee_demographics
join employee_salary
 on employee_demographics.first_name=employee_salary.first_name
 order by age desc
 limit 3;
 
 select employee_demographics.first_name,age,gender,occupation,salary
from employee_demographics
join employee_salary
 on employee_demographics.first_name=employee_salary.first_name
 order by salary desc
 limit 3;
 
 
 select occupation,avg(salary)
from employee_demographics
join employee_salary
 on employee_demographics.first_name=employee_salary.first_name
 where occupation<> 'City Manager'
 group by occupation
 order by avg(salary) desc
 limit 5;
 
  select occupation,avg(salary)
from employee_demographics
join employee_salary
 on employee_demographics.first_name=employee_salary.first_name
 #where occupation<> 'City Manager'
 group by occupation
 having avg(salary)>60000
 order by avg(salary) desc
 limit 5;
 
 
 select occupation,employee_demographics.first_name
 from employee_demographics
  right join employee_salary
   on employee_demographics.employee_id=employee_salary.employee_id
 where occupation='City Manager';
 #inner join
 select * 
 from employee_demographics as demo
 join employee_salary as sal
  on demo.employee_id=sal.employee_id;
  #outer joins 
   select * 
 from employee_demographics as demo
  left join employee_salary as sal
  on demo.employee_id=sal.employee_id;
   select * 
 from employee_demographics as demo
  right join employee_salary as sal
  on demo.employee_id=sal.employee_id;

select demo.employee_id,
demo.first_name,
age,
gender,
occupation,
salary
from employee_demographics as demo 
join employee_salary as sal 
on demo.employee_id=sal.employee_id;

select
demo.first_name,
age,
gender,
occupation,
salary
from employee_demographics as demo 
right  join employee_salary as sal 
on demo.employee_id=sal.employee_id;


#MULTIPLE JOINS

select * 
 from employee_demographics as demo
 join employee_salary as sal 
 on demo.employee_id=sal.employee_id
 join parks_departments as dep 
 on sal.dept_id=dep.department_id;
 
 
 select sal.first_name, 
 age,
 gender,
 occupation,
 salary,
 department_name
 from employee_demographics as demo
 join employee_salary as sal 
 on demo.employee_id=sal.employee_id
 join parks_departments as dep 
 on sal.dept_id=dep.department_id;
 
 
 select sal.first_name, 
 age,
 gender,
 occupation,
 salary,
 department_name
 from employee_demographics as demo
 join employee_salary as sal 
 on demo.employee_id=sal.employee_id
 join parks_departments as dep 
 on sal.dept_id=dep.department_id
where gender = 'male' and age<40
 order by salary asc;
 
 
  select department_name,
  avg(salary),
  avg(age)
 from employee_demographics as demo
 join employee_salary as sal 
 on demo.employee_id=sal.employee_id
 join parks_departments as dep 
 on sal.dept_id=dep.department_id
 #where department_name like 'p%'
 group by department_name
 having avg(salary)>60000
 order by avg(salary) desc;
