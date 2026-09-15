-- ============================================================
-- Transaction Analysis
-- ============================================================

USE banking_analysis;


-- 1. Total transaction amount

SELECT SUM(amount) AS total_transaction_amount
FROM transactions;


-- 2. Total amount by transaction type

SELECT transaction_type,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;


-- 3. Number of transactions by payment mode

SELECT payment_mode,
       COUNT(transaction_id) AS no_of_transactions
FROM transactions
GROUP BY payment_mode;


-- 4. Deposit transactions made through UPI

SELECT transaction_id,
       transaction_date,
       amount,
       payment_mode
FROM transactions
WHERE transaction_type = 'Deposit'
  AND payment_mode = 'UPI';


-- 5. Total deposits for each customer

SELECT c.customer_name,
       SUM(t.amount) AS total_deposit
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_type = 'Deposit'
GROUP BY c.customer_name
ORDER BY total_deposit DESC;


-- 6. Customers with total deposits above 100,000

SELECT c.customer_name,
       SUM(t.amount) AS total_deposit
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_type = 'Deposit'
GROUP BY c.customer_name
HAVING SUM(t.amount) > 100000
ORDER BY total_deposit DESC;


-- 7. Number of transactions by month

SELECT MONTH(transaction_date) AS transaction_month,
       COUNT(transaction_id) AS no_of_transactions
FROM transactions
GROUP BY MONTH(transaction_date)
ORDER BY transaction_month;


-- 8. Top 3 customers by total deposits

SELECT c.customer_name,
       SUM(t.amount) AS total_deposit
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_type = 'Deposit'
GROUP BY c.customer_name
ORDER BY total_deposit DESC
LIMIT 3;
