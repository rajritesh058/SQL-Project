-- Get the total number of orders placed in 2018

SELECT COUNT(*) AS TotalOrders2018
FROM Orders
WHERE YEAR(OrderDate) = 2018;
