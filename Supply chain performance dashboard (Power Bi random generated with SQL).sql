-- Check if the database exists, if not, create it
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'SupplyChainDB')
BEGIN
    CREATE DATABASE SupplyChainDB;
END;
GO

-- Switch to the database
USE SupplyChainDB;
GO

-- Check if the Deliveries table exists, if not, create it
IF OBJECT_ID('Deliveries', 'U') IS NULL
BEGIN
    CREATE TABLE Deliveries (
        delivery_id INT IDENTITY(1,1) PRIMARY KEY,
        delivery_date DATE,
        on_time_delivery BIT, -- 1 for on-time, 0 for late
        transportation_cost DECIMAL(10, 2)
    );
END;
GO

-- Check if the Inventory table exists, if not, create it
IF OBJECT_ID('Inventory', 'U') IS NULL
BEGIN
    CREATE TABLE Inventory (
        product_id INT IDENTITY(1,1) PRIMARY KEY,
        product_name NVARCHAR(100),
        stock_level INT,
        warehouse_location NVARCHAR(100)
    );
END;
GO

-- Check if the Orders table exists, if not, create it
IF OBJECT_ID('Orders', 'U') IS NULL
BEGIN
    CREATE TABLE Orders (
        order_id INT IDENTITY(1,1) PRIMARY KEY,
        product_id INT,
        delivery_id INT,
        order_quantity INT,
        order_date DATE,
        FOREIGN KEY (product_id) REFERENCES Inventory(product_id),
        FOREIGN KEY (delivery_id) REFERENCES Deliveries(delivery_id)
    );
END;
GO


-- Insert sample data into Deliveries table
INSERT INTO Deliveries (delivery_date, on_time_delivery, transportation_cost)
VALUES
('2024-09-01', 1, 500.00),
('2024-09-02', 0, 600.50),
('2024-09-03', 1, 450.75),
('2024-09-04', 1, 520.10),
('2024-09-05', 0, 700.30);

-- Insert sample data into Inventory table
INSERT INTO Inventory (product_name, stock_level, warehouse_location)
VALUES
('Widget A', 150, 'New York'),
('Widget B', 300, 'Los Angeles'),
('Widget C', 250, 'Chicago'),
('Widget D', 120, 'Houston'),
('Widget E', 180, 'San Francisco');

-- Insert sample data into Orders table
INSERT INTO Orders (product_id, delivery_id, order_quantity, order_date)
VALUES
(1, 1, 10, '2024-08-30'),
(2, 2, 20, '2024-08-31'),
(3, 3, 15, '2024-09-01'),
(4, 4, 25, '2024-09-02'),
(5, 5, 30, '2024-09-03');


-- Calculate deliver time rate
SELECT delivery_date, 
  (COUNT(CASE WHEN on_time_delivery = 1 THEN 1 END) * 100.0) / COUNT(*) AS on_time_delivery_rate
FROM Deliveries
GROUP BY delivery_date;



--Check Data for all tables
SELECT *
FROM Deliveries

SELECT *
FROM Inventory

SELECT *
FROM Orders