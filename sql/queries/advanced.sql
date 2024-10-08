-- Get total sales for each product
SELECT p.ProductName, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName;

-- Get the total income generated by each supplier
SELECT s.SupplierName, SUM(od.Quantity * p.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName;

-- Get the total number of orders placed by each customer in each country
SELECT c.Country, c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Country, c.CustomerName
ORDER BY c.Country, TotalOrders DESC;

-- Get the total amount of products sold by each supplier
SELECT s.SupplierName, SUM(od.Quantity) AS TotalProductsSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName
ORDER BY TotalProductsSold DESC;

-- Get the total amount of revenue generated by each customer
SELECT c.CustomerName, SUM(od.Quantity * p.Price) AS TotalSpent
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC;

-- Get the products that have been sold in the largest quantity
SELECT p.ProductName, SUM(od.Quantity) AS TotalQuantitySold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantitySold DESC;

-- Get the best selling product for each supplier
SELECT s.SupplierName, p.ProductName, SUM(od.Quantity) AS TotalQuantitySold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName, p.ProductName
ORDER BY s.SupplierName, TotalQuantitySold DESC;

-- Get the customers who have placed orders in the last 6 months
SELECT DISTINCT c.CustomerName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
ORDER BY o.OrderDate DESC;

-- Get the average number of products per order
SELECT AVG(Quantity) AS AverageProductsPerOrder
FROM OrderDetails;

-- Get the average revenue generated per order for each customer
SELECT c.CustomerName, AVG(od.Quantity * p.Price) AS AverageOrderValue
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;

-- Get the total number of products sold by each customer in a specific country (e.g., 'Argentina')
SELECT c.CustomerName, SUM(od.Quantity) AS TotalProductsPurchased
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Argentina'
GROUP BY c.CustomerName
ORDER BY TotalProductsPurchased DESC;

-- Get the total income generated in each month of the year
SELECT DATE_FORMAT(o.OrderDate, '%Y-%m') AS Month, SUM(od.Quantity * p.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY Month
ORDER BY Month;

-- Get products that have not been sold at all
SELECT p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.OrderDetailID IS NULL;
