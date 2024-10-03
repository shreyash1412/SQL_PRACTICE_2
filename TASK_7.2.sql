SELECT p.Product_ID, p.Product_Name, COUNT(*) AS OrderCount FROM products p JOIN Orders o ON o.Order_ID = o.Order_ID 
GROUP BY p.Product_ID, p.Product_Name HAVING COUNT(*) > 1;
