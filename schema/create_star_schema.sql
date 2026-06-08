CREATE TABLE DimCustomer (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50)
);

CREATE TABLE DimProduct (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID VARCHAR(50),
    ProductName VARCHAR(200),
    Category VARCHAR(100),
    SubCategory VARCHAR(100)
);

CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    MonthName VARCHAR(20),
    QuarterNo INT,
    YearNo INT
);

CREATE TABLE FactSales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey INT,
    ProductKey INT,
    DateKey INT,
    SalesAmount DECIMAL(18,2),
    Quantity INT,
    Profit DECIMAL(18,2)
);
