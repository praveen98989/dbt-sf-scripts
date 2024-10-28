
select
    c.customer_id,
    c.name,
    c.email,
    o.order_id,
    o.order_date,
    o.total_amount
from {{ ref('customers') }} as c
left join {{ ref('orders') }} as o
on c.customer_id = o.customer_id
