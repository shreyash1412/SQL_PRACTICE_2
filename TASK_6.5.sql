SELECT DISTINCT p.product_name FROM products p JOIN order_items oi ON p.product_id = oi.product_id JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31'
INTERSECT
SELECT DISTINCT p.product_name FROM products p JOIN order_items oi ON p.product_id = oi.product_id JOIN orders o ON oi.order_id = o.order_id 
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31';
