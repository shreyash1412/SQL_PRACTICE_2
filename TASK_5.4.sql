SELECT MAX(total_price) AS max_total_price, MIN(total_price) AS min_total_price FROM (SELECT o.order_id, SUM(oi.quantity * p.price) 
AS total_price FROM orders o JOIN order_items oi ON o.order_id = oi.order_id JOIN products p ON oi.product_id = p.product_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31' GROUP BY o.order_id) AS order_totals;
