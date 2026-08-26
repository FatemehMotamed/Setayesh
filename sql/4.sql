use marketing;
SELECT 
    first_name, last_name
FROM
    customers
WHERE
    customer_id=(SELECT 
            customer_id
        FROM
            orders
        WHERE
            order_id = 4);
