-- Write your MySQL query statement below
select  p.project_id , round(AVG(emp.experience_years),2) as average_years
from Project as p
inner join Employee as emp
on p.employee_id =emp.employee_id
group by   p.project_id;
