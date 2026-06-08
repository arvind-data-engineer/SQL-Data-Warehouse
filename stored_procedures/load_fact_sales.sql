CREATE PROCEDURE LoadFactSales
AS
BEGIN

INSERT INTO FactSales
(
    CustomerKey,
    ProductKey,
    DateKey,
    SalesAmount,
    Quantity,
    Profit
)
SELECT
    CustomerKey,
    ProductKey,
    DateKey,
    SalesAmount,
    Quantity,
    Profit
FROM StagingSales;

END;
