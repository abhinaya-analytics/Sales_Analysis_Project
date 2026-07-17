--step 1:creating database
CREATE DATABASE SalesProject;

--step 2:use database
USE SalesProject;

--step 3:create sales table
CREATE TABLE Sales(Order_ID INT,
                   Product_Name VARCHAR(100),
                   Category VARCHAR(50),
                   Region VARCHAR(50),
                   Sales DECIMAL(10,2),
                   Profit DECIMAL(10,2)
                   );

--step 4:insert values into table
INSERT INTO Sales
VALUES(1, 'Laptop', 'Technology', 'East', 50000, 8000),
      (2, 'Chair', 'Furniture', 'West', 7000, 1200),
      (3, 'Mobile', 'Technology', 'South', 25000, 5000),
      (4, 'Table', 'Furniture', 'North', 12000, 2500),
      (5, 'Printer', 'Technology', 'East', 15000, 3000);

--step 5:view all data
SELECT*FROM Sales;

--step 6:find total sales
SELECT SUM(Sales) AS Total_Sales
FROM Sales;

--step 7:find total profit
SELECT SUM(Profit) AS Total_Profit
FROM Sales;

--step 8:find sales by category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Category;

--step 9:find profit by region
SELECT Region, SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Region;

-- Step 10: Highest Sales Product
SELECT TOP 1 Product_Name, Sales
FROM Sales
ORDER BY Sales DESC;

-- Step 11: Lowest Sales Product
SELECT TOP 1 Product_Name, Sales
FROM Sales
ORDER BY Sales ASC;

-- Step 12: Count Total Products
SELECT COUNT(*) AS Total_Products
FROM Sales;

-- Step 13: Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM Sales;

-- Step 14: Highest Profit Product
SELECT TOP 1 Product_Name, Profit
FROM Sales
ORDER BY Profit DESC;

-- Step 15: Lowest Profit Product
SELECT TOP 1 Product_Name, Profit
FROM Sales
ORDER BY Profit ASC;

-- Step 16: Technology Products
SELECT *
FROM Sales
WHERE Category = 'Technology';

-- Step 17: East Region Sales
SELECT *
FROM Sales
WHERE Region = 'East';