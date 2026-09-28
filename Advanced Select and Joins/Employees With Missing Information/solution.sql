-- Write your MySQL query statement below
select employee_id
from (
    select e1.employee_id , e1.name , e2.salary
    from Employees as e1
    left outer join Salaries as e2
    on e1.employee_id = e2.employee_id 

    union all -- This makes it full outer join .

    select e2.employee_id , e1.name , e2.salary
    from Employees as e1
    right outer join Salaries as e2
    on e1.employee_id = e2.employee_id 
) as t1 -- aliasing the new table .
where name is null or salary is null 
order by employee_id;
