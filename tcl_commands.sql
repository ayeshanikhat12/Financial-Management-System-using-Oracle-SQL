-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 7: TCL Commands (Transaction Control Language)
-- Transaction Control Language (TCL) commands are used to manage transactions safely.
--  Author: Ayesha Nikhat
-- ============================================================

USE financial_management;

-- Disable auto-commit to enable manual transaction control
SET autocommit = 0;

-- 1. Create SAVEPOINT before transfer
SAVEPOINT before_transfer;

-- 2. Deduct amount from Account 1001
UPDATE Accounts SET Balance = Balance - 5000 WHERE Account_ID = 201;

-- 3. Add amount to Account 1002
UPDATE accounts SET balance = balance + 5000 WHERE account_ID = 202;

-- 4. Create SAVEPOINT after transfer
SAVE POINT transfer_point;

-- 5. Rollback to state before transfer (undo if something goes wrong)
ROLLBACK TO transfer_point;

-- 6. Commit successful transaction
COMMIT;

-- Re-enable auto-commit (optional)
SET autocommit = 1;
