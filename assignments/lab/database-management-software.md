# Database Management Software Lab Assignment

Choose a DMBS.

Install and configure it.

Optionally install and configure
 personal computing software
 as an additional interface between you and the data.

Connect to the DBMS.

Use the DMBS to create a new database.

```` sql
CREATE DATABASE my_db;
````

Obtain a .csv or .tsv or .txt file.

Use the DMBS to import the .csv file into a new database table,
 perhaps named `my_table`.

Execute a query on the new database table.

```` sql
SELECT * FROM my_db.my_table;
````

## Submission Instructions

Demonstrate to an instructor.

## Evaluation Criteria

Full credit for using a DBMS to execute a SQL query.

Else no credit.

## Bonus/Further Exploration

Delete the table.

```` sql
DROP TABLE my_db.my_table;
````

Re-import the table,
 but this time change one or more attribute datatypes during import.
 Notice the importance of datatype decisions.

Import tables of varying sizes,
 and execute the same query on each table.
 Notice the affect of table-size on query execution time.
