-- Write your MySQL query statement below
select s.name 
from SalesPerson as s
where s.sales_id not in (
    select o.sales_id       -- problem is kinda fun to solve 
    from Company as c
    inner join Orders as o
    on c.com_id = o.com_id
    where c.name ='RED'
);
