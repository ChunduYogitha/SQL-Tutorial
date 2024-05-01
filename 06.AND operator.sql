The SQL AND Operator
The WHERE clause can contain one or many AND operators.

The AND operator is used to filter records based on more than one condition, 
like if you want to return all customers from Spain that starts with the letter 'G':

Example
Select all customers from Spain that starts with the letter 'G':
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
AND vs OR
The AND operator displays a record if all the conditions are TRUE.

The OR operator displays a record if any of the conditions are TRUE.
All Conditions Must Be True
The following SQL statement selects all fields from Customers where Country is "Germany" AND City is "Berlin" AND PostalCode is higher than 12000:

Example
SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > 12000;
