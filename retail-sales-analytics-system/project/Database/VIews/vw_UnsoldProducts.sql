CREATE VIEW vw_UnsoldProducts
AS
SELECT
    p.ProductID,
    p.ProductName,
    p.StockQuantity
FROM Products p
LEFT JOIN OrderItems o
    ON o.ProductID = p.ProductID
GROUP BY
    p.ProductID,
    p.ProductName,
    p.StockQuantity
HAVING ISNULL(SUM(o.Quantity),0) = 0;