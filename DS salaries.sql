SELECT * FROM data_salaries.`ds_salaries (3)`;

select distinct salary_currency from data_salaries.`ds_salaries (3)`;
select * from data_salaries.`ds_salaries (3)` where salary_currency = 'EUR';

select distict employee_residence from data_salaries.`ds_salaries (3)`
select * from data_salaries.`ds_salaries (3)` where employee_residence = 'DE';

select distinct experience_level from data_salaries.`ds_salaries (3)`;
select * from data_salaries.`ds_salaries (3)` where experience_level= "MI"

#Avg Salary
SELECT experience_level, AVG(salary_in_usd) AS average_salary
FROM data_salaries.`ds_salaries (3)`
GROUP BY experience_level;

select remote_ratio, COUNT(*) as job_count
from data_salaries.`ds_salaries (3)` group by remote_ratio

select job_title, avg(salary) as average_salary, employment_type
from data_salaries.`ds_salaries (3)` group by work_year, employment_type, job_title

select company_location, avg(salary) as average_salary from  data_salaries.`ds_salaries (3)` group by company_location order by average_salary desc;

select job_title, avg(salary) as average_salary 
from data_salaries.`ds_salaries (3)`
group by job_title
order by average_salary asc;

select job_title, experience_level, MAX(salary_in_usd) 
as max_salary 
from data_salaries.`ds_salaries (3)` 
group by job_title, experience_level;

SELECT 
    salary, 
    employee_residence, 
    employment_type, 
    remote_ratio, 
    ROW_NUMBER() OVER (ORDER BY salary) AS count,
    company_size 
FROM 
    data_salaries.`ds_salaries (3)` 
WHERE 
    remote_ratio > 1 
    AND company_size = 'S' 
GROUP BY 
    salary, 
    employee_residence, 
    employment_type, 
    remote_ratio;