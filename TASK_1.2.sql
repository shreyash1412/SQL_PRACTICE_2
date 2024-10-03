SELECT p.product_name, p.category, (oi.quantity * p.price) AS total_price FROM customers AS c 
JOIN orders AS o ON c.customer_id = o.customer_id JOIN order_items AS oi ON o.order_id = oi.order_id 
JOIN products AS p ON oi.product_id = p.product_id WHERE c.city = 'Mumbai';
