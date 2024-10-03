SELECT DISTINCT c.FIRST_Name FROM Customers c WHERE c.Customer_ID IN (SELECT o.Customer_ID FROM Orders o 
JOIN Order_ITEMS oi ON o.Order_ID = oi.Order_ID WHERE oi.total_Price > 30000);
