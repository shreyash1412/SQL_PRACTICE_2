SELECT c.first_name, o.order_date, SUM(oi.quantity * p.price) AS total_price FROM customers as c JOIN orders as o ON c.customer_id = o.customer_id
JOIN order_items as oi ON o.order_id = oi.order_id JOIN products as p ON oi.product_id = p.product_id JOIN orders as od 
ON o.order_id = od.order_id WHERE od.payment_mode = 'Credit Card' GROUP BY c.first_name, o.order_date;
