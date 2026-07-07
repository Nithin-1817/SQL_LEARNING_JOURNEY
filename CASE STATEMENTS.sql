select * from employee_demographics;
select* from employee_salary;
select * from parks_departments;

select * 
from employee_salary
join parks_departments 
  on employee_salary.dept_id=parks_departments.department_id;
  
  

  
select *,
case 
    when salary<30000 Then 'LOW'
    else 'HIGH'
end
from employee_salary;

select first_name,salary,occupation,department_name,
case 
   when salary<30000 then 'low'
   when salary between 30000 and 50000 then 'mid'
   else 'high' 
end as salary_type
from employee_salary
join parks_departments
  on employee_salary.dept_id=parks_departments.department_id
order by salary ;

select * from employee_demographics;

select first_name, age, gender,
case 
    when age<35 then 'adult'
    when age between 35 and 45 then 'old'
    else 'kelava'
end as age_category 
from employee_demographics
order by age;

select occupation,count(occupation)
from employee_demographics
join employee_salary
  on employee_demographics.employee_id=employee_salary.employee_id
group by occupation
having occupation='Nurse';


select occupation,avg(salary) as avg_salary,
case 
    when avg(salary) <60000 then 'okay'
    when avg(salary) between 60000 and 80000 then 'good'
    else 'love it'
end as salary_type
from employee_demographics
join employee_salary
  on employee_demographics.employee_id=employee_salary.employee_id
group by occupation
having avg(salary)>60000
order by avg(salary);



