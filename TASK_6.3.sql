SELECT DISTINCT supplier_city FROM products
EXCEPT
SELECT DISTINCT city FROM customers;
