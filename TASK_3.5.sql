SELECT o.delivery_city, COUNT(o.order_id) AS total_orders FROM orders o GROUP BY o.delivery_city ORDER BY o.delivery_city ASC;
