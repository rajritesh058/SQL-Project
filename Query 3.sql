-- Retrieve all orders that have status "Shipped"

SELECT OrderNumber, OrderDate, Status, CustomerID, DealSize
FROM auto_sales.Orders
WHERE Status = "Shipped";