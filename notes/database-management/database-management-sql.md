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

### Tables

Tables are a physical component of the database.

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

### Indices

Indices are another physical component of a database.
 They will be introduced later in the semester
   as a [physical design](/notes/database-design/physical-design.md) concept.

```` sql
ALTER TABLE my_table ADD INDEX(my_index_attribute);
````

Remove indices.

```` sql
DROP INDEX my_index_attribute ON my_table;
````

Show indices.

```` sql
SHOW INDEX FROM my_table;
````

### Primary Key Indices

Primary keys are a special kind of index that will also be covered later as a physical design concept.

```` sql
ALTER TABLE my_table ADD PRIMARY KEY(my_primary_key_attribute);
````

#### Composite Key Indices

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(first_ck_attribute, second_ck_attribute);
````

### Data

Create records.

```` sql
INSERT INTO my_well_defined_table
VALUES ('Fluffy','George Washington','dog','m','1956-10-28', NULL);
````

```` sql
INSERT INTO my_well_defined_table
VALUES
  ('Fluffy','George Washington','dog','m','1756-10-28', NULL),
  ('Ruffles','George Washington','dog','f','1766-09-01', NULL)
;
````

Remove records from a table.

```` sql
DELETE FROM my_table; -- removes all records
````

```` sql
DELETE FROM my_table
WHERE attribute_a = "some value"; -- removes all records matching a given condition (see data analysis lecture notes for more info on the where clause...)
````
