




-- Find all the employees who work in the ‘Human Resources’ department

SELECT*
FROM employees
WHERE department = 'Human Resources'



-- Get the first_name, last_name, and country of the employees who work in the ‘Legal’ department.

SELECT first_name, last_name, country 
FROM employees
WHERE department = 'Legal'

-- Count the number of employees based in Portugal.

SELECT
    count(*)
FROM employees
WHERE country = 'Portugal'

-- Count the number of employees based in either Portugal or Spain.

SELECT
count(*)
FROM    employees
WHERE country = 'Portugal' OR country='Spain';

-- Count the number of pay_details records lacking a local_account_no.

SELECT 
     count(*) 
FROM pay_details
WHERE local_account_no IS NULL

-- Are there any pay_details records lacking both a local_account_no and iban number?


SELECT * 
FROM pay_details  
WHERE (local_account_no = NULL) AND (iban = NULL);

-- Get a table with employees first_name and last_name ordered alphabetically by last_name (put any NULLs last).

SELECT 
    last_name, 
    first_name  
FROM employees 
ORDER BY
    last_name ASC NULLS LAST;
 

-- Get a table of employees first_name, last_name and country, ordered alphabetically first by country and then by last_name (put any NULLs last).

SELECT 
    first_name,
    last_name, 
    country  
FROM employees 
ORDER BY
    country ASC NULLS LAST,
    last_name ASC NULLS LAST;

-- Find the details of the top ten highest paid employees in the corporation.

SELECT 
    first_name,
    last_name,
    salary
FROM employees 
ORDER BY salary DESC NULLS LAST 
LIMIT 10;

-- Find the first_name, last_name and salary of the lowest paid employee in Hungary.
SELECT 
    first_name,
    last_name,
    salary
FROM employees 
ORDER BY salary ASC NULLS LAST 
LIMIT 1;

-- How many employees have a first_name beginning with ‘F’

SELECT 
     count(first_name)
FROM employees 
WHERE first_name LIKE 'F%';

-- Find all the details of any employees with a ‘yahoo’ email address?

SELECT *
FROM employees 
WHERE email ILIKE '%yahoo%'

-- Count the number of pension enrolled employees not based in either France or Germany.

SELECT 
     count(*)
FROM employees
WHERE country NOT IN ('France', 'Germany')AND pension_enrol = TRUE 

-- What is the maximum salary among those employees in the ‘Engineering’ department who work 1.0 full-time equivalent hours (fte_hours)?

SELECT *
FROM employees 
WHERE department = 'Engineering' AND fte_hours = 1
ORDER BY
  salary DESC  NULLS LAST
  LIMIT 1

