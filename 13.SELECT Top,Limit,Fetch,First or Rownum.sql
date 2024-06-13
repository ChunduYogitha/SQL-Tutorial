SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause

The SQL SELECT TOP Clause
The SELECT TOP clause is used to specify the number of records to return.

The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

Select only the first 3 records of the Customers table:
SELECT TOP 3 * FROM Customers;

Note: Not all database systems support the SELECT TOP clause.
MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

MySQL Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition

The following SQL statement shows the equivalent example for MySQL:
Example
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
LIMIT number;

The following SQL statement shows the equivalent example for Oracle:
Example
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;

Oracle 12 Syntax:
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

Older Oracle Syntax:
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

Older Oracle Syntax (with ORDER BY):
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

LIMIT
The following SQL statement shows the equivalent example for MySQL:

Example
Select the first 3 records of the Customers table:
SELECT * FROM Customers
LIMIT 3;

SQL TOP PERCENT Example
The following SQL statement selects the first 50% of the records from the "Customers" table (for SQL Server/MS Access):
Example
SELECT TOP 50 PERCENT * FROM Customers;

The following SQL statement shows the equivalent example for Oracle:
Example
SELECT * FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;
ADD a WHERE CLAUSE
  
The following SQL statement selects the first three records from the "Customers" table, where the country is "Germany" (for SQL Server/MS Access):
Example
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

FETCH FIRST
The following SQL statement shows the equivalent example for Oracle:
Example
Select the first 3 records of the Customers table:
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;


ADD the ORDER BY Keyword
Add the ORDER BY keyword when you want to sort the result, and return the first 3 records of the sorted result.
Example
Sort the result reverse alphabetically by CustomerName, and return the first 3 records:
SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;

The following SQL statement shows the equivalent example for MySQL:
Example
SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;

The following SQL statement shows the equivalent example for Oracle:
Example
SELECT * FROM Customers
ORDER BY CustomerName DESC
FETCH FIRST 3 ROWS ONLY;
