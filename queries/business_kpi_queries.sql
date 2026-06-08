-- Total Sales
SELECT SUM(SalesAmount) AS TotalSales
FROM FactSales;

-- Top 10 Customers
SELECT TOP 10
    dc.CustomerName,
    SUM(fs.SalesAmount) AS Revenue
FROM FactSales fs
JOIN DimCustomer dc
ON fs.CustomerKey = dc.CustomerKey
GROUP BY dc.CustomerName
ORDER BY Revenue DESC;

-- Top Products
SELECT TOP 10
    dp.ProductName,
    SUM(fs.SalesAmount) AS Revenue
FROM FactSales fs
JOIN DimProduct dp
ON fs.ProductKey = dp.ProductKey
GROUP BY dp.ProductName
ORDER BY Revenue DESC;
