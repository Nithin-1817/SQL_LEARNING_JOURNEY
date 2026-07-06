select salary,first_name,last_name
from snm_series.employee_salary
group by salary,first_name,last_name
order by salary ;

select gender,age
from snm_series.employee_demographics
group by gender,age
order by gender;

select gender, min(age), max(age),sum(age),avg(age),count(age)
from snm_series.employee_demographics
group by gender;

select occupation , avg(salary),min(salary),max(salary),count(salary),sum(salary)
from snm_series.employee_salary
group by occupation;

select * from employee_salary;

select occupation , avg(salary)
from snm_series.employee_salary
group by occupation
having avg(salary)<50000
order by occupation  ;

select occupation , avg(salary)
from snm_series.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>50000;
#order by occupation;

select gender,avg(age)
from snm_series.employee_demographics
#where gender like'ma%'
group by genderemployee_salaryemployee_salary;
