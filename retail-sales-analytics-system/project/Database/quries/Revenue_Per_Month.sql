SELECT 
    (YEAR(OrderDate) * 100) + MONTH(OrderDate) AS YearMonthNumber, 
    CONCAT(DATENAME(MONTH, OrderDate), ' ', YEAR(OrderDate)) AS timeline,
    SUM(TotalAmount) AS TotalSales
FROM orders
GROUP BY 
    YEAR(OrderDate), 
    MONTH(OrderDate), 
    DATENAME(MONTH, OrderDate)