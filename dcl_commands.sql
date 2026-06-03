-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 8: DCL Commands (Data Control Language)
--  Data Control Language (DCL) commands are used to manage database permissions.
--  Run these as root/admin user.
--  Author: Ayesha NIkhat
-- ============================================================

-- 1. Create a new database user for finance team
CREATE USER finance_user IDENTIFIED BY finance123;
-- 2. Grant SELECT, INSERT and DELETE permissions on key tables
GRANT SELECT, INSERT, DELETE ON Customers TO finance_user;
-- 3. Revoke DELETE permission from finance_user
REVOKE DELETE ON Customers FROM finance_user;
-- 4. Provide Limited Access to Finance Employee
GRANT SELECT ON Accounts TO finance_user;

GRANT SELECT, UPDATE ON Transactions TO finance_user;

-- Apply all permission changes immediately
FLUSH PRIVILEGES;
