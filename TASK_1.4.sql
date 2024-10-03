SELECT p.product_name, p.category, SUM(oi.quantity * p.price) AS total_price FROM orders AS o JOIN order_items AS oi ON o.order_id = oi.order_id
JOIN products AS p ON oi.product_id = p.product_id WHERE o.order_date BETWEEN '2023-01-01' AND '2023-06-30' GROUP BY p.product_name, p.category;
