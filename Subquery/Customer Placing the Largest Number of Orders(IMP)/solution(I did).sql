-- Write your MySQL query statement below
select customer_number
from ( select customer_number , count(*) as countt
       from Orders 
       group by customer_number
     ) as table1 -- every derived table from sub query should be aliased .
order by countt desc
limit 1;
