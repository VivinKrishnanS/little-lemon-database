CREATE DATABASE LittleLemonDB;

USE LittleLemonDB;

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
FullName VARCHAR(100),
ContactNumber VARCHAR(20),
Email VARCHAR(100)
);

CREATE TABLE Bookings (
BookingID INT PRIMARY KEY,
BookingDate DATE,
TableNumber INT,
CustomerID INT,
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
);

CREATE TABLE MenuItems (
MenuItemID INT PRIMARY KEY,
CourseName VARCHAR(100),
StarterName VARCHAR(100),
DessertName VARCHAR(100)
);

CREATE TABLE Menus (
MenuID INT PRIMARY KEY,
MenuName VARCHAR(100),
Cuisine VARCHAR(100),
MenuItemID INT,
FOREIGN KEY (MenuItemID)
REFERENCES MenuItems(MenuItemID)
);

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
Quantity INT,
TotalCost DECIMAL(10,2),
CustomerID INT,
MenuID INT,
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID),
FOREIGN KEY (MenuID)
REFERENCES Menus(MenuID)
);
