--Write your MySQL query statement below
-- the rule for Triangle line is: Lenth of one line is less than sum of lenth 2 others lines.
select x , y , z ,
(case
    when x < y+z and y < x+z and z < x+y then 'Yes'
    else 'No'
end ) as triangle 
from Triangle ;



-- while summing why cant i use aggregate function sum() ?
/* SUM() is an aggregate function, which means it works on multiple rows, not on values within the same row.

For example, if your table is:

x	y	z
3	4	5
1	2	3

When you write:

x + y

MySQL simply adds the values from the current row:

Row 1: 3 + 4 = 7
Row 2: 1 + 2 = 3

But when you write:

SUM(x)

MySQL thinks:

"Add all the x values from multiple rows."

Result:

SUM(x) = 3 + 1 = 4 
