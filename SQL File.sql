-- SQL Assignment: Data Extraction & Analysis
-- Skills: SELECT, WHERE, ORDER BY, GROUP BY, COUNT, SUM, AVG
-- Dataset: Orders Dataset

SELECT *
FROM Orders;

SELECT COUNT(*) AS TotalOrders
FROM Orders;

SELECT OrderStatus, COUNT (*) AS TotaLOrderStatus
FROM Orders
GROUP BY OrderStatus
ORDER BY TotalOrderStatus DESC;

SELECT *
FROM Orders
ORDER BY TotalPrice DESC;

SELECT COUNT(*) AS TotalOrders
FROM Orders;

SELECT PaymentMethod,
COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod
ORDER BY TotalOrders DESC;

SELECT Product,SUM(TotalPrice) AS TotalRevenue
FROM Orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

SELECT Product, AVG(TotalPrice) AS AverageSpendingPerOrder
FROM Orders
GROUP BY Product
ORDER BY AverageSpendingPerOrder DESC;

SELECT SUM(TotalPrice) AS TotalRevenue
FROM Orders;

SELECT ReferralSource, COUNT (*) AS TotalReferrals
FROM Orders
GROUP BY ReferralSource
ORDER BY TotalReferrals DESC;

SELECT Product, SUM(Quantity) AS TotalUnitsSold
FROM Orders
GROUP BY Product
ORDER BY TotalUnitsSold DESC;

SELECT TOP 10 CustomerID, SUM(TotalPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
