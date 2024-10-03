SELECT supplier_city AS city FROM products
UNION
SELECT city FROM customers ORDER BY city;