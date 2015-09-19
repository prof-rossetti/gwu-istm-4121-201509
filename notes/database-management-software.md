# Database Management Systems/Software (DBMS)

## MS Access

## MySQL

## PostgreSQL

<hr>

# Database Usage

Reference [Data Analysis Notes](/notes/data-analysis.md)

# Database Administration and Management

Create users and edit passwords/privileges.

Create databases.

```` sql
CREATE DATABASE my_db;
````

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

Remove records from a table.

```` sql
DELETE FROM my_table; -- removes all records
````

```` sql
DELETE FROM my_table
WHERE attribute_a = "some value"; -- removes all records matching a given condition (see data analysis lecture notes for more info on the where clause...)
````
