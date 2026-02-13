/*
================================
INSERT ORDERS DATA
================================
Description: Populates the Sales.Orders table with transaction records linking
customers, products, sales representatives, and order details.

This script creates realistic order scenarios showing:
- Multiple orders per customer
- Varying quantities and prices
- Assignment to different sales representatives
- Diverse product purchases across manufacturers

CONSTRAINTS ENFORCED:
- Quantity must be > 0
- Customer must exist (CASCADE delete)
- Sales rep is optional (SET NULL if deleted)
- Product must exist (NO ACTION)

Execute AFTER: 04_products.sql
================================
*/

-- ============================================
-- NEW YORK CUSTOMER ORDERS (Customer_Id 1001-1005)
-- ============================================
-- Acme Corporation (1001) ordered by sales rep 111
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (100001, '2024-01-15', 1001, 111, 'MFR001', 'PROD-001', 2, 15000.00),
    (100002, '2024-02-03', 1001, 111, 'MFR002', 'PROD-101', 1, 18000.00),
    (100003, '2024-03-20', 1001, 111, 'MFR006', 'PROD-501', 3, 25000.00);

-- Global Industries Inc (1002) ordered by sales rep 112
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (100004, '2024-01-22', 1002, 112, 'MFR002', 'PROD-102', 1, 22000.00),
    (100005, '2024-02-14', 1002, 112, 'MFR003', 'PROD-201', 2, 45000.00),
    (100006, '2024-04-10', 1002, 112, 'MFR004', 'PROD-301', 4, 12000.00);

-- Tech Solutions Ltd (1003) ordered by sales rep 113
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (100007, '2024-01-30', 1003, 113, 'MFR003', 'PROD-202', 3, 32000.00),
    (100008, '2024-03-05', 1003, 113, 'MFR004', 'PROD-304', 2, 20000.00);

-- Enterprise Analytics (1004) ordered by sales rep 111
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (100009, '2024-02-18', 1004, 111, 'MFR005', 'PROD-401', 1, 42000.00);

-- Innovation Labs (1005) ordered by sales rep 112
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (100010, '2024-01-25', 1005, 112, 'MFR001', 'PROD-003', 2, 12000.00),
    (100011, '2024-03-12', 1005, 112, 'MFR007', 'PROD-601', 1, 35000.00);

-- ============================================
-- LOS ANGELES CUSTOMER ORDERS (Customer_Id 2001-2006)
-- ============================================
-- West Coast Manufacturing (2001) ordered by sales rep 121
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200001, '2024-01-10', 2001, 121, 'MFR002', 'PROD-103', 1, 35000.00),
    (200002, '2024-02-22', 2001, 121, 'MFR005', 'PROD-402', 3, 16000.00),
    (200003, '2024-04-05', 2001, 121, 'MFR006', 'PROD-503', 2, 24000.00);

-- Pacific Trade Group (2002) ordered by sales rep 122
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200004, '2024-01-18', 2002, 122, 'MFR001', 'PROD-002', 5, 8500.00),
    (200005, '2024-03-08', 2002, 122, 'MFR004', 'PROD-302', 2, 15000.00);

-- Silicon Valley Ventures (2003) ordered by sales rep 123
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200006, '2024-01-28', 2003, 123, 'MFR003', 'PROD-201', 4, 45000.00),
    (200007, '2024-02-25', 2003, 123, 'MFR008', 'PROD-701', 2, 38000.00),
    (200008, '2024-04-15', 2003, 123, 'MFR002', 'PROD-104', 1, 28000.00);

-- Digital Enterprises (2004) ordered by sales rep 124
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200009, '2024-02-05', 2004, 124, 'MFR007', 'PROD-602', 3, 12000.00);

-- Cloud Systems Corp (2005) ordered by sales rep 121
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200010, '2024-01-20', 2005, 121, 'MFR001', 'PROD-004', 2, 9500.00),
    (200011, '2024-03-15', 2005, 121, 'MFR002', 'PROD-102', 1, 22000.00);

-- Media Solutions Inc (2006) ordered by sales rep 122
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (200012, '2024-02-12', 2006, 122, 'MFR007', 'PROD-603', 6, 9500.00);

-- ============================================
-- CHICAGO CUSTOMER ORDERS (Customer_Id 3001-3004)
-- ============================================
-- Midwest Trading Co (3001) ordered by sales rep 131
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (300001, '2024-01-12', 3001, 131, 'MFR005', 'PROD-403', 2, 19000.00),
    (300002, '2024-03-22', 3001, 131, 'MFR006', 'PROD-502', 1, 19000.00);

-- Central Supply Chain (3002) ordered by sales rep 132
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (300003, '2024-02-08', 3002, 132, 'MFR005', 'PROD-404', 3, 21000.00),
    (300004, '2024-04-01', 3002, 132, 'MFR001', 'PROD-001', 1, 15000.00);

-- Great Lakes Distribution (3003) ordered by sales rep 133
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (300005, '2024-01-25', 3003, 133, 'MFR002', 'PROD-101', 2, 18000.00),
    (300006, '2024-03-18', 3003, 133, 'MFR003', 'PROD-203', 1, 28000.00);

-- Heartland Logistics (3004) ordered by sales rep 131
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (300007, '2024-02-28', 3004, 131, 'MFR008', 'PROD-702', 4, 16000.00);

-- ============================================
-- LONDON CUSTOMER ORDERS (Customer_Id 4001-4004)
-- ============================================
-- British Trading Partners (4001) ordered by sales rep 141
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (400001, '2024-01-05', 4001, 141, 'MFR002', 'PROD-102', 2, 22000.00),
    (400002, '2024-03-10', 4001, 141, 'MFR006', 'PROD-504', 1, 30000.00);

-- European Commerce Ltd (4002) ordered by sales rep 142
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (400003, '2024-02-01', 4002, 142, 'MFR003', 'PROD-202', 3, 32000.00),
    (400004, '2024-04-12', 4002, 142, 'MFR004', 'PROD-303', 2, 18000.00);

-- UK Financial Services (4003) ordered by sales rep 143
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (400005, '2024-01-19', 4003, 143, 'MFR002', 'PROD-104', 1, 28000.00),
    (400006, '2024-02-16', 4003, 143, 'MFR005', 'PROD-401', 2, 42000.00),
    (400007, '2024-03-25', 4003, 143, 'MFR008', 'PROD-701', 1, 38000.00);

-- Thames Distribution (4004) ordered by sales rep 141
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (400008, '2024-02-20', 4004, 141, 'MFR001', 'PROD-003', 3, 12000.00);

-- ============================================
-- PARIS CUSTOMER ORDERS (Customer_Id 5001-5004)
-- ============================================
-- Société Générale Commerce (5001) ordered by sales rep 151
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (500001, '2024-01-08', 5001, 151, 'MFR006', 'PROD-501', 2, 25000.00),
    (500002, '2024-03-02', 5001, 151, 'MFR002', 'PROD-103', 1, 35000.00);

-- Entreprise Française (5002) ordered by sales rep 152
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (500003, '2024-02-10', 5002, 152, 'MFR004', 'PROD-301', 3, 12000.00),
    (500004, '2024-04-05', 5002, 152, 'MFR007', 'PROD-601', 1, 35000.00);

-- Paris Trade Group (5003) ordered by sales rep 153
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (500005, '2024-01-30', 5003, 153, 'MFR001', 'PROD-002', 4, 8500.00);

-- European Partners Ltd (5004) ordered by sales rep 151
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (500006, '2024-02-25', 5004, 151, 'MFR003', 'PROD-201', 2, 45000.00);

-- ============================================
-- TOKYO CUSTOMER ORDERS (Customer_Id 6001-6005)
-- ============================================
-- Yamaha Industries (6001) ordered by sales rep 161
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (600001, '2024-01-14', 6001, 161, 'MFR002', 'PROD-101', 2, 18000.00),
    (600002, '2024-03-20', 6001, 161, 'MFR006', 'PROD-502', 1, 19000.00);

-- Sony Trade Partners (6002) ordered by sales rep 162
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (600003, '2024-02-05', 6002, 162, 'MFR003', 'PROD-202', 2, 32000.00),
    (600004, '2024-04-08', 6002, 162, 'MFR008', 'PROD-702', 3, 16000.00);

-- Tokyo Electronics (6003) ordered by sales rep 163
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (600005, '2024-01-23', 6003, 163, 'MFR004', 'PROD-304', 2, 20000.00);

-- Nippon Manufacturing (6004) ordered by sales rep 161
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (600006, '2024-02-18', 6004, 161, 'MFR005', 'PROD-403', 2, 19000.00);

-- Asia Pacific Traders (6005) ordered by sales rep 162
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (600007, '2024-03-28', 6005, 162, 'MFR001', 'PROD-001', 1, 15000.00),
    (600008, '2024-04-10', 6005, 162, 'MFR007', 'PROD-603', 2, 9500.00);

-- ============================================
-- SINGAPORE CUSTOMER ORDERS (Customer_Id 7001-7003)
-- ============================================
-- Southeast Asia Trading (7001) ordered by sales rep 171
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (700001, '2024-01-17', 7001, 171, 'MFR002', 'PROD-102', 1, 22000.00),
    (700002, '2024-03-12', 7001, 171, 'MFR004', 'PROD-302', 2, 15000.00);

-- Singapore Commerce Group (7002) ordered by sales rep 172
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (700003, '2024-02-09', 7002, 172, 'MFR001', 'PROD-004', 3, 9500.00);

-- Maritime Logistics Ltd (7003) ordered by sales rep 171
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (700004, '2024-04-02', 7003, 171, 'MFR005', 'PROD-402', 2, 16000.00);

-- ============================================
-- SYDNEY CUSTOMER ORDERS (Customer_Id 8001-8003)
-- ============================================
-- Australian Industries (8001) ordered by sales rep 181
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (800001, '2024-01-11', 8001, 181, 'MFR002', 'PROD-101', 1, 18000.00),
    (800002, '2024-03-15', 8001, 181, 'MFR006', 'PROD-503', 2, 24000.00);

-- Pacific Rim Trading (8002) ordered by sales rep 182
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (800003, '2024-02-06', 8002, 182, 'MFR003', 'PROD-203', 1, 28000.00),
    (800004, '2024-04-09', 8002, 182, 'MFR007', 'PROD-602', 2, 12000.00);

-- Down Under Supply (8003) ordered by sales rep 181
INSERT INTO Sales.Orders (Order_Id, Order_Date, Customer_Id, Empl_Id, Mfr_Id, Product_Id, Quantity, Price)
VALUES
    (800005, '2024-01-29', 8003, 181, 'MFR001', 'PROD-002', 3, 8500.00);

-- Verify inserts
SELECT 
    Order_Id,
    Order_Date,
    Customer_Id,
    Empl_Id,
    Mfr_Id,
    Product_Id,
    Quantity,
    Price
FROM Sales.Orders
ORDER BY Order_Date, Order_Id;