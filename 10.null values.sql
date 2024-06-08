The IS NULL Operator
The IS NULL operator is used to test for empty values (NULL values).

The following SQL lists all customers with a NULL value in the "Address" field:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

Tip: Always use IS NULL to look for NULL values.

The IS NOT NULL Operator
The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).

The following SQL lists all customers with a value in the "Address" field:
Example
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
