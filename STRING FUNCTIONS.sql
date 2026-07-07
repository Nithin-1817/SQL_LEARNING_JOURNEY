select * from employee_demographics;

#STRING FUNCTIONS ;

select last_name , length(last_name)
from employee_demographics
where length(last_name)>7
order by length(last_name);

select first_name
from employee_demographics
where first_name like 's%';

select first_name,last_name,
concat(first_name,' ',last_name) as full_name,
length(first_name),
length(last_name)
from employee_demographics;







