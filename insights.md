
# Banking Analysis — Business Insights

## Project Summary

This project analyzes banking customer, account, and transaction data using SQL to identify customer behavior, account balance patterns, and transaction activity.

The analysis uses 20 customers, 20 accounts, and 20 transactions.

---

## 1. Customer Insights

### Customer Distribution by City

| City | Customers |
|---|---:|
| Hyderabad | 3 |
| Chennai | 3 |
| Bangalore | 3 |
| Mumbai | 3 |
| Delhi | 3 |
| Pune | 3 |
| Kochi | 2 |

The customer base is relatively balanced across cities, with most cities having three customers.

### Customer Demographics

- Total customers: **20**
- Male customers: **10**
- Female customers: **10**
- Average customer age: **35.1 years**
- Youngest customer: **24 years**
- Oldest customer: **52 years**

---

## 2. Account Insights

### Account Type Distribution

| Account Type | Number of Accounts |
|---|---:|
| Savings | 14 |
| Current | 6 |

Savings accounts represent the majority of accounts in the dataset.

### Total Balance by Account Type

| Account Type | Total Balance |
|---|---:|
| Savings | ₹941,000 |
| Current | ₹608,000 |

Savings accounts hold a larger share of the total account balance.

### Overall Account Balance

- Total balance across all accounts: **₹1,549,000**
- Average account balance: **₹77,450**
- Highest account balance: **₹140,000**
- Lowest account balance: **₹43,000**

The highest account balance is ₹140,000, indicating an opportunity to identify and retain high-value customers.

---

## 3. Transaction Insights

### Transaction Activity

| Transaction Type | Number of Transactions | Total Amount |
|---|---:|---:|
| Deposit | 13 | ₹802,000 |
| Withdrawal | 7 | ₹131,000 |

- Total transaction amount: **₹933,000**
- Deposits exceed withdrawals by **₹671,000**.

The transaction data shows substantially higher deposit activity than withdrawal activity.

### Payment Mode Usage

| Payment Mode | Number of Transactions |
|---|---:|
| UPI | 7 |
| Card | 6 |
| NetBanking | 4 |
| ATM | 3 |

UPI is the most frequently used payment mode, followed by Card.

### Monthly Transaction Activity

| Month | Transactions |
|---|---:|
| January 2026 | 10 |
| February 2026 | 10 |

Transaction activity was evenly distributed between January and February.

---

## 4. Top Customers by Total Deposits

| Rank | Customer | Total Deposit |
|---|---|---:|
| 1 | Aditya Singh | ₹92,000 |
| 2 | Yuvan Rao | ₹87,000 |
| 3 | Sara Khan | ₹72,000 |

Aditya Singh has the highest deposit transaction amount in the dataset, followed by Yuvan Rao and Sara Khan.

---

## 5. Key Business Insights

1. **Savings accounts dominate the portfolio**, representing 14 of the 20 accounts.

2. **Savings accounts hold ₹941,000**, compared with ₹608,000 in Current accounts.

3. **Deposits significantly exceed withdrawals**, with ₹802,000 in deposits versus ₹131,000 in withdrawals.

4. **UPI is the most frequently used payment mode**, accounting for 7 of the 20 transactions.

5. **Account balances range from ₹43,000 to ₹140,000**, showing variation in customer account value.

6. **The top three deposit customers are Aditya Singh, Yuvan Rao, and Sara Khan**, based on the transaction data analyzed.

7. **Transaction activity is evenly distributed across January and February 2026**, with 10 transactions recorded in each month.

---

## 6. Recommendations

Based on the analysis, the bank can consider the following actions:

- Develop targeted premium services for high-value customers.
- Focus retention strategies on customers with higher account balances.
- Continue promoting UPI and other digital payment channels.
- Analyze customer behavior by city to support targeted marketing.
- Use transaction trends to improve banking products and payment-channel strategies.
- Monitor deposit-heavy customers for potential cross-selling opportunities.

---

## 7. SQL Techniques Used

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

---

## 8. Project Conclusion

This project demonstrates how SQL can be used to transform banking data into meaningful business insights.

The analysis covers customer demographics, account balances, transaction behavior, payment methods, customer deposits, and advanced analytical techniques.

The project demonstrates practical SQL skills that can be applied to real-world data analyst roles.
