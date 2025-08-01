select 
it.order_id ,
o.order_date,
o.order_status,
sum (total_price) as total_price
from 
{{ref('stg_orders')}} o
left join {{ref('stg_order_items')}} it
on it.order_id = o.order_id
group by 1,2,3
