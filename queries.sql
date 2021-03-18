-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the databASe. Shows 77 records.

SELECT p.ProductName, c.CategoryName 
FROM Product AS p 
JOIN Category as c
ON p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT
    o.Id
FROM [Order] AS o
WHERE o.orderdate < 20120809

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT
    p.ProductName,
    od.Quantity
FROM [Product] AS p
JOIN [OrderDetail] AS od
  ON od.ProductId = p.Id
JOIN [Order] AS o
  ON o.Id = od.OrderId
  WHERE o.Id = 10251
ORDER BY p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LAStName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT
    o.Id AS "Order ID",
    c.CompanyName,
    e.LastName AS "Employee Last Name"
FROM [Order] AS o
    JOIN [Customer] AS c
    ON o.CustomerId = c.Id
    JOIN [Employee] AS e
    ON o.EmployeeId = e.Id
