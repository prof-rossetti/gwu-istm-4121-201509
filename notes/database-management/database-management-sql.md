# Database Management SQL

Use DBMS-specific functionality or SQL queries to manage the physical properties of the database environment, including databases, tables, columns, and data itself.

## Databases

Create databases.

```` sql
CREATE DATABASE my_db;
````

Remove databases.

```` sql
DROP DATABASE my_db;
````

```` sql
DROP DATABASE IF EXISTS my_db;
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

```` sql
CREATE TABLE orders AS (
    SELECT
        po.agency AS agency_name
        ,po.commodity AS commodity_name
        ,po.supplier AS supplier_name
       ,str_to_date(
            concat(
                concat("20",SUBSTRING_INDEX(po.`Ordered Date`, '-', -1)),
                "-",
                SUBSTRING_INDEX(SUBSTRING_INDEX(po.`Ordered Date`, '-', -2), '-', 1),
                "-",
                SUBSTRING_INDEX(po.`Ordered Date`, '-', 1)
            ), '%Y-%b-%d'
        ) AS order_date
        ,po.`po_#` AS order_number
        ,po.`PO Amount` AS order_price
        ,po.objectid AS order_id
    FROM purchase_orders AS po
); -- reference: http://stackoverflow.com/questions/17566573/convert-month-shortname-to-month-number
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

```` sql
ALTER TABLE my_table ADD PRIMARY KEY(my_primary_key_attribute);
````

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(first_compisite_key_attribute, second_compisite_key_attribute, another_compisite_key_attribute);
````

Remove indices.

```` sql
DROP INDEX my_index_attribute ON my_table;
````

Show indices.

```` sql
SHOW INDEX FROM my_table;
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
