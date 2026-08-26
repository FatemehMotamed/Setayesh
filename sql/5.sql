SELECT 
    order_id, customer_id, 'Done' AS status
FROM
    orders
WHERE
    packaging_id IS NOT NULL
UNION
SELECT 
    order_id, customer_id, 'In Progress' AS status
FROM
    orders
WHERE
    packaging_id IS NULL;