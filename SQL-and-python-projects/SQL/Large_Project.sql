-- ecommerce_orders.sql

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES
(1, 'Ravi', 'Hyderabad'),
(2, 'Sneha', 'Bangalore'),
(3, 'Anil', 'Chennai');

INSERT INTO Orders VALUES
(101, 1, 1200.50, '2025-08-01'),
(102, 2, 2500.00, '2025-08-02'),
(103, 1, 800.00, '2025-08-05');

-- 1. Find total spending of each customer
SELECT C.Name, SUM(O.Amount) as TotalSpent
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.Name;

-- 2. Show customers with orders above 1000
SELECT C.Name, O.Amount
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.Amount > 1000;
