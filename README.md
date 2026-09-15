# Banking Customer & Transaction Analysis using SQL

## Project Overview

This project analyzes banking customer, account, and transaction data using SQL.

The goal is to understand customer behavior, account balances, transaction activity, and identify useful business insights that can support banking decision-making.

## Business Objectives

- Analyze customer demographics
- Analyze account balances and account types
- Analyze deposits and withdrawals
- Identify high-value customers
- Analyze transaction methods
- Identify transaction trends
- Apply advanced SQL techniques to solve business problems

## Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## Database Structure

### 1. customers

Contains customer demographic information.

Key columns:
- `customer_id`
- `customer_name`
- `city`
- `age`
- `gender`

### 2. accounts

Contains bank account information.

Key columns:
- `account_id`
- `customer_id`
- `account_type`
- `balance`
- `opening_date`

### 3. transactions

Contains banking transaction information.

Key columns:
- `transaction_id`
- `account_id`
- `transaction_date`
- `transaction_type`
- `amount`
- `payment_mode`

### 4. employees

Contains bank employee information.

Key columns:
- `employee_id`
- `employee_name`
- `department`
- `city`

## Business Questions

- How many customers are located in each city?
- What are the top 5 accounts by balance?
- How many accounts exist by account type?
- What is the total balance by account type?
- Which customers have the highest total deposits?
- Which payment modes are used most frequently?
- How many transactions occur each month?
- Which accounts have balances above the average?
- How can customers be ranked based on their deposits?

## SQL Skills Demonstrated

### SQL Fundamentals

- SELECT
- WHERE
- ORDER BY
- LIMIT
- DISTINCT

### Aggregation

- COUNT()
- SUM()
- AVG()
- GROUP BY
- HAVING

### Conditional & Data Handling

- CASE WHEN
- NULL Handling
- COALESCE

### Functions

- String Functions
- Date Functions

### JOINs

- INNER JOIN
- LEFT JOIN
- Multi-table JOINs

### Advanced SQL

- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- ROW_NUMBER()
- LAG()
- LEAD()

## Project Structure

```text
Banking-SQL-Analysis/
├── README.md
├── 01_database_setup.sql
├── 02_customer_analysis.sql
├── 03_account_analysis.sql
├── 04_transaction_analysis.sql
├── 05_advanced_analysis.sql
└── insights.md
