-- List customers who haven’t ordered in the last 60 days (Days_Since_LastOrder > 60)

SELECT DISTINCT c.CustomerID,
       c.CustomerName,
       c.Country,
       o.Days_Since_LastOrder
FROM Customers c
JOIN Orders o 
    ON c.CustomerID = o.CustomerID
WHERE o.Days_Since_LastOrder > 60
ORDER BY o.Days_Since_LastOrder DESC;
