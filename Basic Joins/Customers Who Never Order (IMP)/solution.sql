-- Write your MySQL query statement below
select c.name as Customers
from Customers as c
left outer join Orders as o
on c.id = o.customerId 
where o.id is null ; -- something like o.id = null is not allowed . 
