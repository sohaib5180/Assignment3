DROP DATABASE IF EXISTS MVCDB;

CREATE DATABASE MVCDB;

USE MVCDB;

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers(
customerId int NOT NULL AUTO_INCREMENT,
userName varchar(30) NOT NULL,
password varchar(16) NOT NULL,
firstName varchar(10) NOT NULL,
lastName varchar(10) NOT NULL,
address varchar(30) NOT NULL,
city varchar(30) NOT NULL,
postalCode varchar(7) NOT NULL,
PRIMARY KEY (customerId)
);

CREATE TABLE CSR (
employeeId int NOT NULL AUTO_INCREMENT,
userName varchar(30) NOT NULL,
password varchar(16) NOT NULL,
firstName varchar(10) NOT NULL,
lastName varchar(10) NOT NULL,
PRIMARY KEY (employeeId)
);

CREATE TABLE Shoes (
itemId int NOT NULL AUTO_INCREMENT,
itemName varchar(20) NOT NULL,
category varchar(10) NOT NULL,
showSize int NOT NULL,
price decimal(3,2) NOT NULL,
PRIMARY KEY (itemId)
);

CREATE TABLE Orders (
orderId int NOT NULL AUTO_INCREMENT,
customerId int NOT NULL,
itemId int NOT NULL,
FOREIGN KEY (customerId) REFERENCES Customers(customerId),
FOREIGN KEY (itemId) REFERENCES Shoes(itemId),
orderDate date,
quantity int(3),
status varchar(12),
PRIMARY KEY (orderId)
);

SELECT * FROM Orders;
