-- List all customers in "USA"

SELECT CustomerID, CustomerName, ContactFirstName, ContactLastName, City, Country
FROM Customers
WHERE Country = 'USA';