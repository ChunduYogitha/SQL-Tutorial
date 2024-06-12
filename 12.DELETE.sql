The SQL DELETE Statement
The DELETE statement is used to delete existing records in a table.

DELETE Syntax
DELETE FROM table_name WHERE condition;

Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!

SQL DELETE Example
The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

The "Customers" table will now look like this:

CustomerID	  CustomerName	                            ContactName	                   Address	                            City	            PostalCode	        Country
2	            Ana Trujillo Emparedados y helados	      Ana Trujillo	                 Avda. de la Constitución 2222	      México D.F.	      05021	               Mexico
3	            Antonio Moreno Taquería	                  Antonio Moreno	               Mataderos 2312	                      México D.F.	      05023	               Mexico
4             Around the Horn	                          Thomas Hardy	                 120 Hanover Sq.	                    London	          WA1 1DP	              UK
5	            Berglunds snabbköp	                      Christina Berglund	           Berguvsvägen 8	                      Luleå	            S-958 22	            Swede

Delete All Records
It is possible to delete all rows in a table without deleting the table. 
This means that the table structure, attributes, and indexes will be intact:

DELETE FROM table_name;

The following SQL statement deletes all rows in the "Customers" table, without deleting the table:

Example
DELETE FROM Customers;

Delete a Table
To delete the table completely, use the DROP TABLE statement:

Example
Remove the Customers table:

DROP TABLE Customers;

Exercise:
Delete all the records from the Customers table where the Country value is 'Norway'.

DELETE FROM Customers
WHERE Country = 'Norway';
