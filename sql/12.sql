SELECT 
    s.seller_id, s.first_name, s.last_name,
    sum(oi.quantity*oi.unit_price) as total_sales
FROM
    orders o
        JOIN
    order_items oi USING (order_id)
        JOIN
    sellers s USING (seller_id)
GROUP BY s.seller_id
having total_sales>10000000
order by total_sales DESC