-- Order Funnel Analysis → percentage of orders in each status (Shipped, Cancelled, On Hold)

SELECT 
    o.Status,
    COUNT(*) AS TotalOrders,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Orders)), 2) AS Percentage
FROM Orders o
GROUP BY o.Status
ORDER BY Percentage DESC;
