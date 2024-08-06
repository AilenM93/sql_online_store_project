-- View for full order details
CREATE VIEW OrderDetailsView AS
SELECT
    o.OrderID,
    c.CustomerName,
    c.ContactName,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    p.Price,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    OrderDetails od ON o.OrderID = od.OrderID
JOIN
    Products p ON od.ProductID = p.ProductID;

-- View to get product inventory

CREATE VIEW ProductInventoryView AS
SELECT
    p.ProductID,
    p.ProductName,
    p.Price,
    s.SupplierName,
    s.ContactName,
    s.Country
FROM
    Products p
JOIN
    Suppliers s ON p.SupplierID = s.SupplierID;

-- View to get recent orders

CREATE VIEW RecentOrdersView AS
SELECT
    o.OrderID,
    c.CustomerName,
    o.OrderDate
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
WHERE
    o.OrderDate >= CURDATE() - INTERVAL 30 DAY;

-- View to get sales by product

CREATE VIEW SalesByProductView AS
SELECT
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantitySold,
    SUM(od.Quantity * p.Price) AS TotalRevenue
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY
    p.ProductID, p.ProductName;
