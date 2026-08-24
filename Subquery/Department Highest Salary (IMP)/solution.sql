-- Write your MySQL query statement below

select 
    D.name as Department , 
    e.name as Employee , 
    e.Salary
from employee as e
inner join Department as D -- join 2 tables 
on e.departmentId = d.id -- on this condition 
where (e.salary ,e.departmentId ) in
 (
    select max(salary) , e.departmentId
    from employee as e
    group by departmentId 
 );

 
