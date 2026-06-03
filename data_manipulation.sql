-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 5: Data Manipulation
--  DML commands are used to insert, update, and delete records.
--  Author: Ayesha Nikhat
-- ============================================================

USE financial_management;

-- 1. Update account balances after transactions
UPDATE Accounts SET Balance = Balance + 10000 WHERE Account_ID = 201;
UPDATE Accounts SET Balance = Balance - 5000 WHERE Account_ID = 202;

-- 2. Add a new customer into the system

INSERT INTO Customers VALUES (111,'Farah','Hyderabad', 9876501234,'farah@gmail.com');
 
-- 3. Delete inactive customer accounts (zero balance)
DELETE FROM accounts WHERE balance = 0;

-- 4. Modify customer contact details
UPDATE Customers SET Phone = 9123456789, Email = 'ruhi@gmail.com' WHERE Customer_ID = 102; UPDATE customers SET email      = 'ram_new@gmail.com' WHERE customer_ID = 101;

-- 5. Increase loan amount for selected customers
UPDATE Loans SET Loan_Amount = Loan_Amount + 5000 WHERE Customer_ID = 101;
