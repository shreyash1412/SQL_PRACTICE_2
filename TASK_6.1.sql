SELECT customer_id FROM orders WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31' 
INTERSECT 
SELECT customer_id FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
