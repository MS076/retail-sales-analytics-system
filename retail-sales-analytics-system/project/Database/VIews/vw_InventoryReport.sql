CREATE VIEW vw_InventoryReport
AS
SELECT
    p.ProductID,
    p.ProductName,
    p.StockQuantity,

    ISNULL(SUM(o.Quantity), 0) AS TotalSold,

    p.StockQuantity - ISNULL(SUM(o.Quantity), 0) AS StockLeft,

    CASE
        WHEN (p.StockQuantity - ISNULL(SUM(o.Quantity), 0)) < 15 THEN 'LOW'
        WHEN (p.StockQuantity - ISNULL(SUM(o.Quantity), 0)) < 50 THEN 'MEDIUM'
        ELSE 'SUFFICIENT STOCK'
    END AS StockStatus

FROM Products p
LEFT JOIN OrderItems o
    ON p.ProductID = o.ProductID

GROUP BY
    p.ProductID,
    p.ProductName,
    p.StockQuantity;