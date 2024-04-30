The SQL SELECT DISTINCT Statement
The SELECT DISTINCT statement is used to return only distinct (different) values.
Example
Select all the different countries from the "Customers" table:

SELECT DISTINCT Country FROM Customers;

Inside a table, a column often contains many duplicate values; and 
sometimes you only want to list the different (distinct) values.

SELECT Example Without DISTINCT
If you omit the DISTINCT keyword, the SQL statement returns the "Country" value from all the records of the "Customers" table:

Example
SELECT Country FROM Customers;

Count Distinct
By using the DISTINCT keyword in a function called COUNT, we can return the number of different countries.

Example
SELECT COUNT(DISTINCT Country) FROM Customers;
