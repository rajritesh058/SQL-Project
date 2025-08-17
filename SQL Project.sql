-- Deal Size Impact → do Large deals get delayed/cancelled more often than Small ones?

SELECT 
    o.DealSize,
    SUM(CASE WHEN o.Status IN ('Cancelled', 'On Hold') THEN 1 ELSE 0 END) AS ProblemOrders,
    COUNT(*) AS TotalOrders,
    ROUND((SUM(CASE WHEN o.Status IN ('Cancelled', 'On Hold') THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ProblemRatePercent
FROM Orders o
GROUP BY o.DealSize
ORDER BY ProblemRatePercent DESC;
