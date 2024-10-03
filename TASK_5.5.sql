SELECT product_id, SUM(quantity) AS total_quantity_ordered FROM order_items GROUP BY product_id;
