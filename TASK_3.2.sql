SELECT o.order_id, o.customer_id, o.order_date, SUM(oi.quantity * p.price) AS total_price FROM orders AS o 
JOIN order_items oi ON o.order_id = oi.order_id JOIN products p ON oi.product_id = p.product_id GROUP BY o.order_id, o.customer_id, o.order_date
ORDER BY total_price DESC;
