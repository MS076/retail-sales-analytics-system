INSERT INTO Categories (CategoryName)
VALUES
('Electronics'),
('Groceries'),
('Stationery');

INSERT INTO Products
(ProductName, CategoryID, SupplierID, Price, StockQuantity)
VALUES
('Laptop',1,1,55000,15),
('Mouse',1,1,500,50),
('Rice Bag',2,2,1200,30),
('Notebook',3,3,80,100);

INSERT INTO Suppliers
(SupplierName, Phone, Email)
VALUES
('ABC Traders','1234567890','abc@gmail.com'),
('Fresh Foods','1234567809','fresh@gmail.com'),
('Office Mart','1234567089','office@gmail.com');