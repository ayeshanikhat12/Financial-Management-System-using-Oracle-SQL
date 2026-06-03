-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 3: Raw Data Insertion
--  Data insertion is performed using INSERT statements to add records into database tables.
--  Author: Ayesha Nikhat
-- ============================================================

USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Insert Customers (includes NULLs and duplicates)
-- ──────────────────────────────────────────────────────────────
INSERT INTO Customers VALUES (101,'Ayesha','Hyderabad',9876543210,'ayesha@gmail.com');
INSERT INTO Customers VALUES (102,'Ruhi','Mumbai',9123456780,NULL);
INSERT INTO Customers VALUES (103,'Shaista','Hyderabad',9988776655,'shaista@gmail.com');
INSERT INTO Customers VALUES (104,'Arjun','Delhi',NULL,'arjun@gmail.com');
INSERT INTO Customers VALUES (105,'Sariya','Chennai',9012345678,'sariya@gamil.com');
INSERT INTO Customers VALUES (106,'Meena','Pune',9871234567,'meena@gmail.com');
INSERT INTO Customers VALUES (107,'Saba',NULL,9765432109,'saba@gamil.com');
INSERT INTO Customers VALUES (108,'Divya','Bangalore',NULL,'divya@gmail.com');
INSERT INTO Customers VALUES (109,'Pooja','Kolkata',9345678910,'pooja@gmail.com');
INSERT INTO Customers VALUES (110,'Aliya',NULL,9234567891,'aliya@gamil.com');

-- ──────────────────────────────────────────────────────────────
-- Insert Accounts (includes negative balance for data cleaning)
-- ──────────────────────────────────────────────────────────────
INSERT INTO Accounts VALUES (201,101,'Savings',50000);
INSERT INTO Accounts VALUES (202,102,'Current',75000);
INSERT INTO Accounts VALUES (203,103,'Current',25000);
INSERT INTO Accounts VALUES (204,104,'Savings',110000);
INSERT INTO Accounts VALUES (205,105,'Current',15000);
INSERT INTO Accounts VALUES (206,106,'Savings',82000);
INSERT INTO Accounts VALUES (207,107,'Current',43000);
INSERT INTO Accounts VALUES (208,108,'Savings',67000);
INSERT INTO Accounts VALUES (209,109,'Savings',120000);
INSERT INTO Accounts VALUES (210,110,'Current',35000);
-- ──────────────────────────────────────────────────────────────
-- Insert Transactions (includes negative amount for data cleaning)
-- ──────────────────────────────────────────────────────────────
INSERT INTO Transactions VALUES (301,201,'Deposit',10000,TO_DATE('2026-05-10','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (302,202,'Withdraw',5000,TO_DATE('2026-05-11','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (303,203,'Deposit',7000,TO_DATE('2026-05-12','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (304,204,'Withdraw',8000,TO_DATE('2026-05-13','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (305,205,'Deposit',2000,TO_DATE('2026-05-14','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (306,206,'Withdraw',15000,TO_DATE('2026-05-15','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (307,207,'Deposit',3000,TO_DATE('2026-05-16','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (308,208,'Withdraw',9000,TO_DATE('2026-05-17','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (309,209,'Deposit',25000,TO_DATE('2026-05-18','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (310,210,'Withdraw',4000,TO_DATE('2026-05-19','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (311, 201, 'Deposit', 12000, TO_DATE('2026-05-20','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (312, 202, 'Withdraw', 3000, TO_DATE('2026-05-21','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (313, 203, 'Deposit', 4500, TO_DATE('2026-05-22','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (314, 204, 'Withdraw', 10000, TO_DATE('2026-05-23','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (315, 205, 'Deposit', 6000, TO_DATE('2026-05-24','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (316, 206, 'Withdraw', 7000, TO_DATE('2026-05-25','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (317, 207, 'Deposit', 8500, TO_DATE('2026-05-26','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (318, 208, 'Withdraw', 2500, TO_DATE('2026-05-27','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (319, 209, 'Deposit', 18000, TO_DATE('2026-05-28','YYYY-MM-DD'));
INSERT INTO Transactions VALUES (320, 210, 'Withdraw', 5500, TO_DATE('2026-05-29','YYYY-MM-DD'));

-- ──────────────────────────────────────────────────────────────
-- Insert Employees
-- ──────────────────────────────────────────────────────────────
INSERT INTO Employees VALUES (501,'Ruhi','HR',45000);
INSERT INTO Employees VALUES (502,'Saba','Finance',55000);
INSERT INTO Employees VALUES (503,'Sariya','IT',40000);
INSERT INTO Employees VALUES (504,'Ayesha','Admin',38000);
INSERT INTO Employees VALUES (505,'Pooja','Sales',35000);

-- ──────────────────────────────────────────────────────────────
-- Insert Loans
-- ──────────────────────────────────────────────────────────────
INSERT INTO Loans VALUES (401,101,250000,'Approved');
INSERT INTO Loans VALUES (402,102,150000,'Pending');
INSERT INTO Loans VALUES (403,103,200000,'Rejected');
INSERT INTO Loans VALUES (404,104,300000,'Approved');
INSERT INTO Loans VALUES (405,105,500000,'Pending');