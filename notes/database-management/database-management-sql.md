# Database Management SQL

Use DBMS-specific functionality or SQL queries to manage the physical properties of the database environment, including databases, tables, columns, and data itself.

## Databases

Create databases.

```` sql
CREATE DATABASE my_db;
````

Remove databases.

```` sql
DROP TABLE my_table;
````

```` sql
DROP TABLE IF EXISTS my_table;
````

## Tables

Create tables.

```` sql
CREATE TABLE my_table;
````

```` sql
CREATE TABLE my_well_defined_table (
  name VARCHAR(20),
  owner VARCHAR(20),
  species VARCHAR(20),
  sex CHAR(1),
  birth DATE,
  death DATE
);
````

Remove tables.

```` sql
DROP TABLE my_table;
````

```` sql
DROP TABLE IF EXISTS my_table;
````

## Data

Create records.


Remove records from a table.

```` sql
DELETE FROM my_table; -- removes all records
````

```` sql
DELETE FROM my_table
WHERE attribute_a = "some value"; -- removes all records matching a given condition (see data analysis lecture notes for more info on the where clause...)
````
