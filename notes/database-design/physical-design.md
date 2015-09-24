# Physical Design

Physical database design incorporates elements of:

 + naming database schema
 + naming tables
 + naming columns (attributes)
 + choosing attribute datatypes
 + choosing index attributes

Physical design choices play a major role in database performance, in terms at least of:

 + query execution time
 + query execution costs and resources
 + storage costs

## Database, Table, and Attribute Names

When using an existing relational dataset, its table names, and attribute names are often pre-defined.

When using an existing relational database, its name, table names, attribute names, and attribute datatypes are pre-defined.

When designing a relational database, the [Normalization Process](/notes/relational-databases/logical-design.md) will guide you  to arrive at an appropriate logical design in terms of database, table and attribute names.

Reference the [Database Management](/notes/database-management.md) notes for examples of how to define databases and tables.

## Datatypes

A column in a relational database table can be represented by only one datatype.

The datatype determines a column's storage capacity.

The column's datatype, along with the number and nature of values present, also influence storage and processing costs.

General classifications of datatype include:

datatype_classification | example(s) | description
--- | --- | ---
boolean/binary | 0 or 1 | values representing false or true
string/char/varchar/short-text | "2201 G Street NW" | one or more words
text/long-text/memo | "... this is around the 300th character in the string ..." | a paragraph-long description, or long-form text. some DBMS can store nested datatypes (e.g. arrays and hash objects) by using a text datatype
date | "2015-01-01" | a specific day
time | "12:01:01" | a general time of day
datetime/timestamp | "2015-09-23 13:17:08" | a combination of a specific time on a specific day, which sometimes may include a timezone

Refer to a comprehensive list of [supported datatypes](http://www.w3schools.com/sql/sql_datatypes.asp) depending on DBMS.

Popular DBMS provide additional functions for processing certain kinds of datatypes (e.g. string functions and date functions).

## Index Attributes

An **index** is defined as a:

> "... data structure used to determine in a file the location of records that satisfy some condition." - [Hoffer](/README/#accompanying-textbook) chapter 5

Index also refers to a method by which the DBMS searches and finds records.
  An **indexed file organization** is defined as:

> "The storage of records either sequentially or nonsequentially with an index that allows software to locate individual records." - [Hoffer](/README/#accompanying-textbook) chapter 5

As a matter of practice, an index can be applied to one or more attributes.

Indexed attributes are the "connection points" of a relationship between two tables,
 specifically an attribute in one table and its related attribute in another table.

It is good practice to specify an `INDEX` for any attribute you would use repeatedly in a `WHERE` clause or a `JOIN` clause.

Indices can be applied during or after table creation.

```` sql
-- after table creation...
ALTER TABLE my_db.my_table ADD INDEX(my_index_attribute);
````

Indices can be removed and shown.

```` sql
DROP INDEX my_index_attribute ON my_db.my_table;
````

```` sql
SHOW INDEX
FROM my_db.my_table
````

### Primary Key

A primary key is a set of one or more attributes in a given table which **uniquely identifies each record in the table**.

A primary key is a specific type of index.

As a matter of practice, it is not necessary to assign an attribute as both an index and a primary key. It is sufficient to assign only a primary key.

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(my_primary_key_attribute);
````

As a matter of practice, it is common for a table's primary key to be an attribute named `id` or the table name appended in front of an `id` suffix (e.g. `student_id` for a `students` table).

A primary key imposes a presence constraint and a uniqueness constraint on all values in that column.

#### Composite Key

A composite key is a primary key which is comprised of more than one attribute.

Composite key is a specific type of primary key.

Composite keys are common in polymorphic (supertype) relationships. Composite keys, when they exist, often form the basis for multi-condition join clauses, because each attribute is needed to perform the join.

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(first_ck_attribute, second_ck_attribute);
````

### Foreign Key

A foreign key is a set of one or more attributes in a given table which **uniquely identifies each record in another table**.

As a matter of practice, it is common for the name of a foreign key attribute to reference the other table for which it is a primary key (e.g. a foreign key of `student_id` in a `bicycles` table). Foreign key attribute names sometimes also reflect the relationship between two tables (e.g. a foreign key of `student_owner_id` in a `bicycles` table).

You do not need to apply an additional index to a foreign key because the column should already be assigned as a primary key in its own table.
