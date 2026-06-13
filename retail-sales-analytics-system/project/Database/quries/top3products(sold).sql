--top 3 products according to sales

SELECT TOP(3)
    o.ProductID,
    p.ProductName,
    SUM(o.Quantity) AS TotalProductSold
FROM OrderItems o
INNER JOIN Products p
    ON o.ProductID = p.ProductID
GROUP BY
    o.ProductID,
    p.ProductName
ORDER BY TotalProductSold DESC;