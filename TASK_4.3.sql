SELECT o.order_id, o.customer_id, o.order_date FROM orders AS o JOIN (SELECT customer_id FROM customers ORDER BY customer_id LIMIT 10 OFFSET 10) 
AS c ON o.customer_id = c.customer_id ORDER BY o.customer_id;
