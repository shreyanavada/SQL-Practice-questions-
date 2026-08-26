-- Write your MySQL query statement below
select t.id , count(*) as num 
from
(select requester_id as id
from RequestAccepted

union all

select accepter_id as id
from RequestAccepted) as t

group by t.id
order by count(*) desc
limit 1;
