SELECT c.first_name, SUM(oi.quantity) AS total_products_ordered FROM customers as c JOIN orders as o ON c.customer_id = o.customer_id 
JOIN order_items as oi ON o.order_id = oi.order_id GROUP BY c.first_name;
