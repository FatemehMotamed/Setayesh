with top_3_products as (select * from products order by unit_price DESC 
limit 3 )

select * from top_3_products where unit_price>1999000;