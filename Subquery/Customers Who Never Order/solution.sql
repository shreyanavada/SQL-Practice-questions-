-- Write your MySQL query statement below
select c.name as Customers
from Customers as c
where c.id not in (
    select customerId  -- separate table will be created here
    from Orders as o) ;
