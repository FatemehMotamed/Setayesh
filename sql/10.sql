use marketing;
select c.name,count(c.name) as count
from products p
join categories c
using(category_id)
group by c.name;