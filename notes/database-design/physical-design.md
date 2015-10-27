# Physical Database Design

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

Reference the [Database Management SQL](/notes/database-management/database-management-sql.md) notes for examples of how to manage physical components of the database.

## Database, Table, and Attribute Names

When using an existing relational dataset, its table names, and attribute names are often pre-defined.

When using an existing relational database, its name, table names, attribute names, and attribute datatypes are pre-defined.

When designing a relational database, the [Normalization Process](/notes/database-design/logical-design.md) will guide you  to arrive at an appropriate logical design in terms of database, table and attribute names. Logical design concepts will be introduced later in the semester.

## Datatypes

A column in a relational database table can be represented by only one datatype.

The datatype determines a column's storage capacity, in terms of **bytes**. Some DBMS also provide datatype-specific functions.

The column's datatype, along with the number and nature of values present, also influence storage and processing costs.

General classifications of datatype include:

datatype(s) | example(s) | description
--- | --- | ---
boolean/binary | 0 or 1 | values representing false or true
integer | 987 | a whole number
big integer | 98765432123456789 | a whole number comprised of enough digits/characters such that storing them requires extra bytes
decimal | 0.75 | a number with values before and after the decimal point
string/char/varchar/short-text | "2201 G Street NW" | one or more words
text/long-text/memo | "... this is around the 300th character in the string ..." | a paragraph-long description, or long-form text. some DBMS can store nested datatypes (e.g. arrays and hash objects) by using a text datatype
date | "2015-01-01" | a specific day
time | "12:01:01" | a general time of day
datetime/timestamp | "2015-09-23 13:17:08" | a combination of a specific time on a specific day, which sometimes may include a timezone

Refer to a comprehensive list of [DBMS-specific datatypes](http://www.w3schools.com/sql/sql_datatypes.asp).

## Index Attributes

An **index** is defined as a:

> "... data structure used to determine in a file the location of records that satisfy some condition." - [Hoffer](/README.md/#accompanying-textbook) chapter 5

Index also refers to a method by which the DBMS searches and finds records.
  An **indexed file organization** is defined as:

> "The storage of records either sequentially or nonsequentially with an index that allows software to locate individual records." - [Hoffer](/README.md/#accompanying-textbook) chapter 5

As a matter of practice, an index can be applied to one or more attributes.

Indexed attributes are the "connection points" of a relationship between two tables,
 specifically an attribute in one table and its related attribute in another table.

It is good practice to specify an `INDEX` for any attribute you would use repeatedly in a `WHERE` clause or a `JOIN` clause.

Indices can be applied during or after table creation.

### Primary Key

A primary key is a set of one or more attributes in a given table which **uniquely identifies each record in the table**.

A primary key is a specific type of index.

It is not necessary to assign an attribute as both an index and a primary key; it is sufficient to assign only a primary key.

The name `id` is the most common name used for a primary key attribute, followed by an attribute name which includes both the table name and an `id` suffix (e.g. `student_id` for a `students` table).

A primary key imposes a presence constraint and a uniqueness constraint on all values in that column.

#### Composite Key

A composite key is a primary key which is comprised of more than one attribute.

Composite key is a specific type of primary key.

Composite keys are common in polymorphic (supertype) relationships. Composite keys, when they exist, often form the basis for multi-condition join clauses, because each attribute is needed to perform the join.

### Foreign Key

A foreign key is a set of one or more attributes in a given table which **uniquely identifies each record in another table**.

It is common for the name of a foreign key attribute to reference the other table for which it is a primary key (e.g. a foreign key of `student_id` in a `bicycles` table). Foreign key attribute names sometimes also reflect the relationship between two tables (e.g. a foreign key of `student_owner_id` in a `bicycles` table).

You do not need to apply an additional index to a foreign key because the column should already be assigned as a primary key in its own table.
