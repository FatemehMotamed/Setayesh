-- select * from products where product_id in (2,11,17);

SELECT 
    *
FROM
    products
WHERE
    product_id IN (SELECT 
            product_id
        FROM
            order_items
        WHERE
            order_id = 3);