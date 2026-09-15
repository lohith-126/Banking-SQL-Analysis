-- ============================================================
-- Advanced SQL Analysis
-- ============================================================

USE banking_analysis;


-- 1. Accounts with balance above the average balance

SELECT account_id,
       customer_id,
       balance
FROM accounts
WHERE balance > (
    SELECT AVG(balance)
    FROM accounts
)
ORDER BY balance DESC;


-- 2. High-balance accounts using a CTE

WITH high_balance_accounts AS (
    SELECT account_id,
           customer_id,
           balance
    FROM accounts
    WHERE balance > 80000
)
SELECT *
FROM high_balance_accounts
ORDER BY balance DESC;


-- 3. Rank accounts by balance

SELECT account_id,
       customer_id,
       balance,
       RANK() OVER (ORDER BY balance DESC) AS balance_rank
FROM accounts;


-- 4. Assign a unique row number to accounts

SELECT account_id,
       customer_id,
       balance,
       ROW_NUMBER() OVER (ORDER BY balance DESC) AS account_number
FROM accounts;


-- 5. Compare each transaction with the previous transaction

SELECT transaction_id,
       transaction_date,
       amount,
       LAG(amount) OVER (
           ORDER BY transaction_date
       ) AS previous_amount
FROM transactions;


-- 6. Compare each transaction with the next transaction

SELECT transaction_id,
       transaction_date,
       amount,
       LEAD(amount) OVER (
           ORDER BY transaction_date
       ) AS next_amount
FROM transactions;


-- 7. Rank customers by total deposit amount

WITH customer_deposits AS (
    SELECT c.customer_id,
           c.customer_name,
           SUM(t.amount) AS total_deposit
    FROM customers c
    INNER JOIN accounts a
        ON c.customer_id = a.customer_id
    INNER JOIN transactions t
        ON a.account_id = t.account_id
    WHERE t.transaction_type = 'Deposit'
    GROUP BY c.customer_id,
             c.customer_name
)
SELECT customer_id,
       customer_name,
       total_deposit,
       RANK() OVER (
           ORDER BY total_deposit DESC
       ) AS deposit_rank
FROM customer_deposits
ORDER BY deposit_rank;
