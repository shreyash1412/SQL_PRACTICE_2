SELECT DISTINCT product_id FROM order_items oi JOIN orders o ON oi.order_id = o.order_id WHERE o.order_date BETWEEN '2022-01-01' AND '2022-12-31'
EXCEPT
SELECT DISTINCT product_id FROM order_items oi JOIN orders o ON oi.order_id = o.order_id WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31';
