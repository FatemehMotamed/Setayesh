select pt.type, count(pt.type)
from payments p
join payment_types pt
using(payment_type_id)
group by pt.type;