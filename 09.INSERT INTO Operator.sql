SQL INSERT INTO Statement
The SQL INSERT INTO Statement
The INSERT INTO statement is used to insert new records in a table.

INSERT INTO Syntax
It is possible to write the INSERT INTO statement in two ways:

1. Specify both the column names and the values to be inserted:

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. 
However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

INSERT INTO Example
The following SQL statement inserts a new record in the "Customers" table:

ExampleGet your own SQL Server
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
The selection from the "Customers" table will now look like this:

CustomerID	  CustomerName	               ContactName	                       Address	                                   City	          PostalCode	          Country
89	          White Clover Markets	    Karl Jablonski	                      305 - 14th Ave. S. Suite 3B	                 Seattle	          98128	             USA
90            Wilman Kala	              Matti Karttunen	                      Keskuskatu 45	                               Helsinki	          21240	             Finland
91            Wolski	                  Zbyszek	                              ul. Filtrowa 68	                             Walla	            01-012	           Poland
92	          Cardinal	                Tom B. Erichsen	                      Skagen 21	                                   Stavanger	        4006               Norway

Did you notice that we did not insert any number into the CustomerID field?
The CustomerID column is an auto-increment field and will be generated automatically when a new record is inserted into the table.

Insert Data Only in Specified Columns
It is also possible to only insert data in specific columns.

The following SQL statement will insert a new record, but only insert data in the "CustomerName", "City", and "Country" columns (CustomerID will be updated automatically):

Example
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');


CustomerID	   CustomerName	                  ContactName	              Address	                              City	            PostalCode	                Country
89	           White Clover Markets          	Karl Jablonski	          305 - 14th Ave. S. Suite              3B	Seattle	      98128                       	USA
90             Wilman Kala	                  Matti Karttunen	           Keskuskatu 45	                      Helsinki	        21240	                      Finland
91             Wolski	                        Zbyszek	                   ul. Filtrowa                         68	Walla	        01-012	                     Poland
92	           Cardinal	                      null	                      null 	                              Stavanger         	null	                     Norway


Insert Multiple Rows
It is also possible to insert multiple rows in one statement.

To insert multiple rows of data, we use the same INSERT INTO statement, but with multiple values:

Example
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

Make sure you separate each set of values with a comma ,.

The selection from the "Customers" table will now look like this:

CustomerID	CustomerName	                ContactName	                    Address	                          City	              PostalCode	        Country
89	        White Clover Markets	        Karl Jablonski	                305 - 14th Ave. S. Suite 3B	      Seattle	            98128	                USA
90          Wilman Kala	                  Matti Karttunen	                Keskuskatu 45	                     Helsinki	          21240	              Finland
91          Wolski	                      Zbyszek	                        ul. Filtrowa 68	                   Walla	            01-012	             Poland
92	        Cardinal	                    Tom B. Erichsen	                Skagen 21	                         Stavanger	         4006	               Norway
93	        Greasy Burger	                Per Olsen	                      Gateveien 15	                     Sandnes	           4306	               Norway
94	        Tasty Tee	                    Finn Egan	                      Streetroad 19B	                   Liverpool	         L1 0AA              	UK

Exercise:
Insert a new record in the Customers table.

insert into
 Customers 
(CustomerName, Address, City, PostalCode,Country)
values('Hekkan Burger','Gateveien 15','Sandnes','4306','Norway');












