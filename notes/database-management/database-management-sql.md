# Database Management SQL

Use DBMS-specific functionality or SQL queries to manage the physical properties of the database environment, including databases, tables, columns, and data itself.

## Databases

### Creating Databases

Create a database.

```` sql
CREATE DATABASE my_db;
````

### Removing Databases

Delete a database.

```` sql
DROP DATABASE my_db;
````

```` sql
DROP DATABASE IF EXISTS my_db;
````

### Showing Databases

```` sql
-- mysql:
SHOW DATABASES;

-- sqlite:
.databases

-- postgresql:
\list
````

### Tables

Tables are a physical component of the database.

#### Creating Tables

Create tables.

```` sql
CREATE TABLE my_table; -- only some dbms let you create an undefined table structure like this
````

```` sql
CREATE TABLE IF EXISTS my_table; -- conditionally create a table
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

```` sql
CREATE TABLE my_table_copy AS (
  SELECT * FROM my_table
);
````

#### Removing Tables

Remove tables.

```` sql
DROP TABLE my_table;
````

```` sql
DROP TABLE IF EXISTS my_table;
````

### Showing Tables

```` sql
-- mysql:
SHOW DATABASES;

-- sqlite:
.tables

-- postgresql:
\connect db_name
\dt
````

### Index Attributes

Indices are another physical component of a database.
 They will be introduced later in the semester
   as a [physical design](/notes/database-design/physical-design.md) concept.

#### Creating Indices

Create a normal index.

```` sql
-- mysql:
ALTER TABLE my_table ADD INDEX(my_index_attribute);

-- postgresql:
CREATE INDEX my_index ON my_table (my_index_attribute);

--sqlite:
CREATE INDEX `my_index` ON `my_table` (`my_index_attribute` ASC);
````

Create a primary key.

```` sql
-- mysql:
ALTER TABLE my_table ADD PRIMARY KEY(my_primary_key_attribute);

-- sqlite:
CREATE UNIQUE INDEX `my_pk_index` ON `my_table` (`my_primary_key_attribute` ASC);
````

Create a composite primary key.

```` sql
-- mysql:
ALTER TABLE my_db.my_table ADD PRIMARY KEY(first_compisite_key_attribute, second_compisite_key_attribute, another_compisite_key_attribute);

-- sqlite:
CREATE UNIQUE INDEX `my_ck_index` ON `my_table` (`first_compisite_key_attribute`, `second_compisite_key_attribute`, `another_compisite_key_attribute` ASC);
````

#### Removing Indices

Remove indices.

```` sql
-- mysql:
DROP INDEX my_index_attribute ON my_table;

-- sqlite:
DROP INDEX my_index;
````

#### Showing Indices

Show indices.

```` sql
-- mysql:
SHOW INDEX FROM my_table;

-- sqlite:
.indices
````

### Data

#### Creating Records

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

Load records from a text file.

```` sql
LOAD DATA LOCAL INFILE '~/Desktop/some_file.txt'
INTO TABLE my_well_defined_table
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' -- windows-style line breaks
-- LINES TERMINATED BY '\n' -- mac-style line breaks
IGNORE 1 LINES
;
/*
data importation references:
  + https://dev.mysql.com/doc/refman/5.0/en/loading-tables.html
  + https://dev.mysql.com/doc/refman/5.0/en/insert.html
  + https://dev.mysql.com/doc/refman/5.0/en/load-data.html
  + csv/txt line break characters:
    + windows: '\r\n'
    + mac: either '\n' (OS-X), or '\r' (OS-9 and earlier)
*/
````

#### Deleting Records

Remove records from a table.

```` sql
DELETE FROM my_table; -- removes all records
````

```` sql
DELETE FROM my_table
WHERE attribute_a = "some value"; -- removes all records matching a given condition (see data analysis lecture notes for more info on the where clause...)
````
