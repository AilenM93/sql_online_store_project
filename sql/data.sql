INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country) VALUES
(1, 'Maria Lopez', 'Maria', 'Spain'),
(2, 'Alberto Dos Santos', 'Alberto', 'Brasil'),
(3, 'Stephanie Dupperly', 'Stephanie', 'France'),
(4, 'Lucrecia Sanchez', 'Lucrecia', 'Spain'),
(5, 'Lautaro Martinez', 'Lautaro', 'Argentina'),
(6, 'Mateo Gomez', 'Mateo', 'Argentina'),
(7, 'Valentino Diaz', 'Valentino', 'Argentina'),
(8, 'Helena Oliveira', 'Maria', 'Brasil');

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Country) VALUES
(1, 'Amazon', 'Sophie Smith', 'USA'),
(2, 'Mercado Livre', 'Miguel Souza', 'Brasil'),
(3, 'Shein', 'Jayson Roman', 'USA');

INSERT INTO Products (ProductID, ProductName, SupplierID, Price) VALUES
(1, 'Floral Print Skirt', 3, 9.87),
(2, 'Mens Leather Boots', 3, 25.0),
(3, 'Insta360 Camera', 1, 499.0),
(4, 'Swim Halter Neck Bikini Set', 3, 4.75),
(5, 'Nike Court Vision Low Sneakers', 2, 120.0),
(6, 'Charger for iPhone 15', 1, 9.90),
(7, 'Kids Piggy Bank', 1, 13.99),
(8, 'Adidas Essentials Leggings', 2, 28.57),
(9, 'Slayr Two Piece Suit', 3, 18.59),
(10, 'Sujeet Night Light', 1, 9.99);

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1, 1, '2022-03-01'),
(2, 8, '2022-03-10'),
(3, 2, '2022-08-01'),
(4, 1, '2023-05-15'),
(5, 3, '2023-05-21'),
(6, 2, '2023-08-28'),
(7, 4, '2024-02-02'),
(8, 5, '2024-06-14'),
(9, 3, '2024-06-22'),
(10, 4, '2024-07-02'),
(11, 3, '2024-07-30'),
(12, 7, '2024-08-01'),
(13, 6, '2024-08-01');

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 2),
(2, 2, 4, 3),
(3, 3, 10, 1),
(4, 4, 8, 1),
(5, 5, 7, 5),
(6, 6, 2, 1),
(7, 7, 3, 2),
(8, 8, 5, 3),
(9, 9, 6, 1),
(10, 10, 4, 5),
(11, 11, 8, 3),
(12, 12, 4, 3),
(13, 13, 1, 1);
