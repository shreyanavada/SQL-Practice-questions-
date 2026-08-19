-- Write your MySQL query statement below
delete t2
from Person as t1
join person as t2        -- self join 
on t1.id != t2.id and t1.email = t2.email 
where t1.id < t2.id ;
