-- functions.sql

-- Function to calculate the total of an order
DELIMITER //
CREATE FUNCTION CalculateOrderTotal(OrderID INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(p.Price * od.Quantity) INTO total
    FROM OrderDetails od
    JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = OrderID;
    RETURN total;
END;
//
DELIMITER ;

-- Function to get the full name of the client
DELIMITER //
CREATE FUNCTION GetCustomerName(CustomerID INT)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
    DECLARE fullName VARCHAR(200);
    SELECT CONCAT(CustomerName, ' (', ContactName, ')') INTO fullName
    FROM Customers
    WHERE CustomerID = CustomerID;
    RETURN fullName;
END;
//
DELIMITER ;

-- Function to count the number of products from a supplier
DELIMITER //
CREATE FUNCTION CountProductsBySupplier(SupplierID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE productCount INT;
    SELECT COUNT(*) INTO productCount
    FROM Products
    WHERE SupplierID = SupplierID;
    RETURN productCount;
END;
//
DELIMITER ;

-- Function to calculate the average price of products
DELIMITER //
CREATE FUNCTION AverageProductPrice()
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE avgPrice DECIMAL(10, 2);
    SELECT AVG(Price) INTO avgPrice
    FROM Products;
    RETURN avgPrice;
END;
//
DELIMITER ;

