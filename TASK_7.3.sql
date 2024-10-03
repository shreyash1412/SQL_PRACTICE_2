SELECT DISTINCT Product_Name FROM products WHERE Product_ID IN (SELECT p.Product_ID FROM Orders o JOIN products p ON o.Order_ID = o.Order_ID
JOIN Customers c ON o.Customer_ID = c.Customer_ID WHERE c.City = 'Pune');
