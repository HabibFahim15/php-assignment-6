-- A question answer
-- Find 3rd, second, lowest - salary from employee table
SELECT salary
FROM employee
ORDER BY salary ASC
LIMIT 3 OFFSET 0;

-- B question answer
-- Find second lowest salary from employee table using sub query
SELECT MIN(salary)
FROM employee
WHERE salary > (SELECT MIN(salary) FROM employee);

-- C question answer
-- Find average pending balance for active accounts, grouped by branch, where the balance is below 4300.
SELECT
    OPEN_BRANCH_ID,
    AVG(PENDING_BALANCE) AS average_pending_balance
FROM
    account
WHERE
    STATUS = 'ACTIVE' AND PENDING_BALANCE < 4300
GROUP BY
    OPEN_BRANCH_ID;

-- D question answer
-- Pagination query example.
-- This query retrieves the first 5 employees (Page 1).
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    salary
FROM
    employee
ORDER BY
    EMP_ID
LIMIT 5 OFFSET 0;

-- This query retrieves the next 5 employees (Page 2).
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    salary
FROM
    employee
ORDER BY
    EMP_ID
LIMIT 5 OFFSET 5;


-- E question answer
-- Find total number of branches from the account table.
SELECT COUNT(DISTINCT OPEN_BRANCH_ID) AS total_branches
FROM account;
