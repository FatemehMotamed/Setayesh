SELECT 
	o.order_id,
    c.first_name as customer_name,
    c.last_name as customer_last_name,
    o.date_of_creation,
    s.first_name as seller_name,
    s.last_name as seller_last_name
from orders o
join customers c
using (customer_id)
join sellers s
using (seller_id);