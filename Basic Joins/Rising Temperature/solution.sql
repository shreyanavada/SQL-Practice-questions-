-- Write your MySQL query statement below
select t2.id as id 
from weather as t1
join weather as t2
on DATEDIFF(t2.recordDate , t1.recordDate) = 1 
and t2.temperature > t1.temperature ;
