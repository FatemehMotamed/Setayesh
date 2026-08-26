-- select 14<any (select 12 union select 13 union select 15)as a;
SELECT 
    *
FROM
    products
WHERE
    unit_price>ALL(SELECT 
            unit_price
        FROM
            products
        WHERE
            product_id IN (SELECT 
                    product_id
                FROM
                    order_items
                WHERE
                    order_id = 1))
