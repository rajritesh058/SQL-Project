create database Auto_Sales;
use Auto_Sales;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    ContactFirstName VARCHAR(50),
    ContactLastName VARCHAR(50),
    Phone VARCHAR(20),
    AddressLine1 VARCHAR(150),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

ALTER TABLE Orders
ADD CONSTRAINT pk_orders PRIMARY KEY (OrderNumber);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customer FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;



ALTER TABLE Products
MODIFY ProductCode VARCHAR(50);

ALTER TABLE Products
ADD CONSTRAINT pk_products PRIMARY KEY (ProductCode);



ALTER TABLE OrderDetails
ADD CONSTRAINT pk_orderdetails PRIMARY KEY (OrderNumber, OrderLineNumber);

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_order FOREIGN KEY (OrderNumber)
REFERENCES Orders(OrderNumber)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_product FOREIGN KEY (ProductCode)
REFERENCES products(ProductCode)
ON DELETE CASCADE
ON UPDATE CASCADE;



CREATE TABLE Orders (
  OrderNumber INT PRIMARY KEY,
  OrderDate DATE,
  Status VARCHAR(50),
  Days_Since_LastOrder INT
);



ALTER TABLE Orders
ADD COLUMN CustomerID INT,
ADD COLUMN DealSize VARCHAR(50);

select * from orders;

TRUNCATE TABLE orders;







