-- Write your MySQL query statement below
select p.product_name , sum(unit) as unit
from Products as p
inner join Orders as o
on p.product_id = o.product_id 
where date_format(o.order_date , '%Y-%m') =  '2020-02' -- Instead of extracting the year and the month , we can use BETWEEN aswell !!!!!!!
group by  p.product_id , p.product_name 
having sum(o.unit)>=100 ;
