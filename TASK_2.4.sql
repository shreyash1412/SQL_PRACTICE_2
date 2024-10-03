SELECT DISTINCT p.category FROM products AS p JOIN order_items AS oi ON p.product_id = oi.product_id;
