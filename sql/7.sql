SELECT 
    'sale of 2025' AS year,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    orders o
        JOIN
    order_items oi USING (order_id)
WHERE
    o.date_of_creation BETWEEN '2025-01-01' AND '2026-01-01'
union 
SELECT 
    'sale of 2024' AS year,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    orders o
        JOIN
    order_items oi USING (order_id)
WHERE
    o.date_of_creation BETWEEN '2024-01-01' AND '2025-01-01';