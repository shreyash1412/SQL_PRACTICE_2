SELECT c.first_name FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN (SELECT order_id, SUM(oi.quantity * p.price) AS total_price 
FROM order_items oi JOIN products p ON oi.product_id = p.product_id GROUP BY order_id) ot ON o.order_id = ot.order_id 
WHERE ot.total_price > (SELECT AVG(total_price) FROM (SELECT SUM(oi.quantity * p.price) AS total_price FROM order_items oi
JOIN products p ON oi.product_id = p.product_id GROUP BY oi.order_id) subquery);
