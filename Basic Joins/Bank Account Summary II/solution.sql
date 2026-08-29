-- Write your MySQL query statement below
select  u.name as name , SUM(amount)  as balance
from Users as u
inner join Transactions as t
on u.account = t.account
group by u.account , u.name 
having SUM(amount) > 10000 ;
