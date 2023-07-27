CREATE TABLE DimCustomer(
CustomerID INT Primary key NOT NULL,
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Age INT NOT NULL,
Gender VARCHAR (50) NOT NULL,
City VARCHAR (50) NOT NULL,
NoHp VARCHAR (50) NOT NULL
);
CREATE TABLE DimProduct(
ProductID INT Primary key not null,
ProductName varchar (255) not null,
ProductCategory varchar (255) not null,
ProductUnitPrice int not null
);
CREATE TABLE DimStatusOrder(
StatusID INT Primary key not null,
StatusOrder varchar (50) not null,
StatusOrderDesc varchar (50) not null
);
CREATE TABLE FactSalesOrder(
OrderID INT Primary key not null,
CustomerID INT FOREIGN KEY REFERENCES DimCustomer(CustomerID) not null,
ProductID INT FOREIGN KEY REFERENCES DimProduct (ProductID) not null,
Quantity int not null,
Amount int not null,
StatusID INT FOREIGN KEY REFERENCES DimStatusOrder(StatusID) Not null,
OrderDate date not null,
);