--total quality sold per product
CREATE VIEW vw_ProductSales
AS
SELECT
    p.ProductID,
    p.ProductName,
    ISNULL(SUM(o.Quantity),0) AS TotalSold
FROM Products p
LEFT JOIN OrderItems o
    ON p.ProductID = o.ProductID
GROUP BY
    p.ProductID,
    p.ProductName;

