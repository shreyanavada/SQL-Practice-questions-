-- Write your MySQL query statement below
select round ((count(*) / 
    (select count(distinct customer_id) from Delivery) )*100 ,2) as immediate_percentage

from Delivery
  
where (customer_id , customer_pref_delivery_date)  in 
( 
    select customer_id , min(order_date) -- sunquery which returns themin date and its order_id .
    from Delivery
    group by customer_id
) ;
