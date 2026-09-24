-- Write your MySQL query statement below
SELECT employee_id, MIN(department_id) AS department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(*) = 1

union all

select employee_id , department_id
from Employee
where primary_flag = 'Y';
