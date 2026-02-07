/*
- Project: Sales Analytics Using Relational SQL
- Author: Ayobami Edunjobi
- Description: Defines the relational schema, constaints, referential integrity, and SQL Analytics
*/

IF OBJECT_ID('Sales.Offices','U')IS NOT NULL DROP TABLE Sales.Offices
CREATE TABLE Sales.Offices(
Office_Id INT,
City VARCHAR(30)NOT NULL,
Region VARCHAR(30) NOT NULL,
Mgr_Id INT,
Target DECIMAL(12,2),
Amount DECIMAL(12,2) NOT NULL,
PRIMARY KEY (Office_Id) 
);

IF OBJECT_ID('Sales.Salesreps','U')IS NOT NULL DROP TABLE Sales.Salesreps
CREATE TABLE Sales.Salesreps (
Empl_Id INT,
Name VARCHAR (100) NOT NULL,
Age INT,
Office_Id INT,
Tittle VARCHAR (20),
Hire_Date DATE NOT NULL,
Mgr_Id INT,
Quota DECIMAL (12,2),
Amount DECIMAL (12,2),
PRIMARY KEY (Empl_Id),
CONSTRAINT Manager
FOREIGN KEY (Mgr_Id)
REFERENCES Sales.Salesreps (Empl_Id),
CONSTRAINT Works_In
FOREIGN KEY (Office_Id)
REFERENCES Sales.Offices (Office_Id)
ON DELETE SET NULL 
);
ALTER TABLE Sales.Offices
ADD CONSTRAINT Has_Manager
FOREIGN KEY (Mgr_Id)
REFERENCES Sales.Salesreps (Empl_Id)


IF OBJECT_ID('Sales.Customers','U')IS NOT NULL DROP TABLE Sales.Customers
CREATE TABLE Sales.Customers(
Customer_Id INT,
Company VARCHAR (100) NOT NULL,
Cust_Rep INT,
Credit_Limit DECIMAL (12,2),
PRIMARY KEY (Customer_Id),
CONSTRAINT Has_Rep
FOREIGN KEY (Cust_Rep)
REFERENCES Sales.Salesreps (Empl_Id)
ON DELETE SET NULL
);

IF OBJECT_ID('Sales.Orders','U')IS NOT NULL DROP TABLE Sales.Orders
CREATE TABLE Sales.Orders  (
Order_Id INT,
Order_Date DATE NOT NULL,
Customer_Id INT NOT NULL,
Empl_Id INT,
Mfr_Id VARCHAR (30) NOT NULL,
Product_Id VARCHAR (30) NOT NULL,
Quantity INT NOT NULL  CHECK (Quantity > 0),
Price DECIMAL (12,2) NOT NULL,
PRIMARY KEY (Order_Id),
CONSTRAINT Place_By
FOREIGN KEY (Customer_Id)
REFERENCES Sales.Customers (Customer_Id)
ON DELETE CASCADE,
CONSTRAINT Taken_By
FOREIGN KEY (Empl_Id)
REFERENCES Sales.Salesreps (Empl_Id)
ON DELETE SET NULL
);

IF OBJECT_ID('Sales.Products','U')IS NOT NULL DROP TABLE Sales.Products
CREATE TABLE Sales.Products (
Mfr_Id VARCHAR (30),
Product_Id VARCHAR (30),
Description VARCHAR(50) NOT NULL,
Qty_On_Hand INT NOT NULL,
Unit_Price DECIMAL (12,2),
PRIMARY KEY (Mfr_Id, Product_Id)
);

ALTER TABLE Sales.Orders
ADD CONSTRAINT Is_For
FOREIGN KEY (Mfr_Id, Product_Id)
REFERENCES Sales.Products (Mfr_Id, Product_Id)
ON DELETE NO ACTION


