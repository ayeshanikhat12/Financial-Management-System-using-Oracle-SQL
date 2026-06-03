-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 4: Data Cleaning
-- Data cleaning improves data quality by correcting invalid, duplicate, or missing records.
--  Author: Ayesha Nikhat
-- ============================================================

USE financial_management;

-- 1. Find NULL email addresses
SELECT * FROM Customers WHERE Email IS NULL;
-- 2. Replace missing phone numbers with a default value
UPDATE Customers SET Phone = 9999999999 WHERE Phone IS NULL;

-- 3. Remove accounts with negative balances
DELETE FROM accounts WHERE balance < 0;

-- 4. Delete invalid transactions (negative amounts)
DELETE FROM transactions WHERE amount < 0;

-- 5. Identify duplicate customer names
SELECT customer_name, COUNT(*) AS count FROM customers GROUP BY customer_name HAVING COUNT(*) > 1;

-- 6. Standardize city names to UPPERCASE
UPDATE customers SET city = UPPER(city);
-- 7 
SELECT * FROM Customers;