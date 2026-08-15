-- Write your MySQL query statement below
select E1.employee_id , E1.name , count(*) as reports_count , round(AVG(E2.age)) as average_age
from Employees as E1
join Employees as E2
on E1.employee_id = E2.reports_to 
group by E1.employee_id , E1.name
order by  E1.employee_id;
