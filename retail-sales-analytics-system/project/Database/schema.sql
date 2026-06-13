--CREATE DATABASE RetailManagement;
CREATE TABLE Categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Suppliers (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT,
    SupplierID INT,
    Price DECIMAL(10,2),
    StockQuantity INT,

    FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID),

    FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    TotalAmount DECIMAL(10,2),
    OrderDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE OrderItems (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);