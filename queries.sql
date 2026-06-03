-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 6: SQL Queries & Reports
--  SQL queries are used to retrieve and analyze information from database tables.
--  Author: Ayesha Nikhat
-- ============================================================

USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Basic Queries
-- ──────────────────────────────────────────────────────────────

-- 1. Display all customers
SELECT * FROM customers;

-- 2. Show all account details
SELECT * FROM accounts;

-- 3. Find customers from Hyderabad
SELECT * FROM customers WHERE city = 'HYDERABAD';

-- 4. Display accounts with balance greater than 50,000
SELECT * FROM accounts WHERE balance > 50000;

-- ──────────────────────────────────────────────────────────────
-- JOIN Queries
-- ──────────────────────────────────────────────────────────────

-- 5. Show customer name with account details
SELECT C.customer_name,
       A.account_id,
       A.account_type,
       A.balance
FROM Customers C
INNER JOIN Accounts A
ON C.customer_id = A.customer_id;
-- 6. Display full transaction history for each customer
SELECT C.customer_name,
       T.transaction_ID,
       T.transaction_type, 
       T.amount
FROM customers C
JOIN accounts A    ON C.customer_ID = A.customer_ID
JOIN transactions T ON A.account_ID  = T.account_ID;

-- 7. Find customers who made transactions above 10,000
SELECT DISTINCT C.customer_name
FROM customers C
JOIN accounts A    ON C.customer_ID = A.customer_ID
JOIN transactions T ON A.account_ID  = T.account_ID
WHERE T.amount > 10000;

-- 8. Show account type-wise total balance
SELECT account_type, SUM(balance) AS total_balance FROM Accounts GROUP BY account_type;
-- ──────────────────────────────────────────────────────────────
-- Aggregate Functions
-- ──────────────────────────────────────────────────────────────

-- 9. Find total bank balance
SELECT SUM(balance) AS total_bank_balance FROM Accounts;

-- 10. Find average account balance
SSELECT AVG(balance) AS average_balance FROM Accounts;

-- 11. Find maximum transaction amount
SELECT MAX(amount) AS maximum_transaction FROM Transactions;

-- 12. Count total customers
SELECT COUNT(*) AS total_customers FROM Customers;
