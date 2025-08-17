-- Customer Retention Analysis → classify customers into Active, At Risk, and Lost based on Days_Since_LastOrder


SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Country,
    DATEDIFF(CURDATE(), MAX(o.OrderDate)) AS Days_Since_LastOrder,
    CASE
        WHEN DATEDIFF(CURDATE(), MAX(o.OrderDate)) <= 30 THEN 'Active'
        WHEN DATEDIFF(CURDATE(), MAX(o.OrderDate)) BETWEEN 31 AND 60 THEN 'At Risk'
        ELSE 'Lost'
    END AS RetentionStatus
FROM Customers c
LEFT JOIN Orders o 
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.Country
ORDER BY RetentionStatus, Days_Since_LastOrder;

