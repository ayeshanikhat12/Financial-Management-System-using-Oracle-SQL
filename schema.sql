-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 1: Database Creation (Schema)
--  Database creation is performed using DDL (Data Definition Language) commands.
--  Tables are created to store data in rows and columns.
--  Author: Ayesha Nikhat 
-- ============================================================

CREATE DATABASE IF NOT EXISTS financial_management;
USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Customers Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(13),
    city VARCHAR2(13),
    phone NUMBER(13),
    email VARCHAR2(30)
);
-- ──────────────────────────────────────────────────────────────
-- Accounts Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE Accounts (
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    account_type VARCHAR2(13),
    balance NUMBER(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

-- ──────────────────────────────────────────────────────────────
-- Transactions Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE Transactions (
    transaction_id NUMBER PRIMARY KEY,
    account_id NUMBER,
    transaction_type VARCHAR2(13),
    amount NUMBER(13),
    transaction_date DATE,
    FOREIGN KEY(account_id)
    REFERENCES Accounts(account_id)
);

-- ──────────────────────────────────────────────────────────────
-- Loans Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE Loans ( loan_id number PRIMARY KEY,
    customer_id number, 
    loan_amount DECIMAL(10,2), 
    loan_status varchar2(13), 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- ──────────────────────────────────────────────────────────────
-- Employees Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE Employees (employee_id number PRIMARY KEY, 
    employee_name varchar2(13), 
    department varchar2(13), 
    salary DECIMAL(10,2)
);
