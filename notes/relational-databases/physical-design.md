# Physical Design

Physical database design incorporates elements of:

 + choosing table names
 + choosing column (attribute) names
 + choosing column (attribute) datatypes
 + choosing index attributes

Physical design choices play a major role in database performance, in terms at least of:

 + query execution time
 + query execution costs and resources
 + storage costs

## Table and Attribute Names

For datasets provided to you, you have little control over table and attribute names, except perhaps by creating a personal copy of the dataset and renaming tables and attributes as part of that process.

For datasets you are responsible for designing, you are likely to arrive at the proper table and attribute names as a result of the [logical design](/notes/relational-databases/logical-design.md) process.

## Datatypes

Common choices for datatypes include:

  + boolean/binary (e.g. 0 or 1 representing false or true, respectively)
  + string/char/varchar/short-text (i.e. a multiple-word name or title)
  + text/long-text/memo (i.e. a paragraph-long description)
  + date (e.g. a day like "2015-01-01")
  + time (e.g. a general time of day like "12:01:01")
  + datetime/timestamp (i.e. a combination of a specific time on a specific day, which sometimes may include a timezone)

The amount of storage capacity in terms of bytes required for an attribute is a function of its datatype.

Refer to a comprehensive list of [supported datatypes](http://www.w3schools.com/sql/sql_datatypes.asp) depending on DBMS.

## Index Attributes

An **index** is defined as a:

> "... data structure used to determine in a file the location of records that satisfy some condition." - [Hoffer](/README/#accompanying-textbook) chapter 5

Index also refers to a method by which the DBMS searches and finds records.
  An **indexed file organization** is defined as:

> "The storage of records either sequentially or nonsequentially with an index that allows software to locate individual records." - [Hoffer](/README/#accompanying-textbook) chapter 5

As a matter of practice, an index can be applied to one or more attributes.

Indexed attributes are the "connection points" of a relationship between two tables,
 specifically an attribute in one table and its related attribute in another table.

It is good practice to specify an `INDEX` for any attribute you would use in a `WHERE` clause or a `JOIN` clause.

```` sql
SHOW INDEX
FROM my_db.my_table
````

```` sql
ALTER TABLE my_db.my_table ADD INDEX(my_index_attribute);
````

```` sql
DROP INDEX my_index_attribute ON my_db.my_table;
````

### Primary Key

A primary key is a set of one or more attributes in a given table which **uniquely identifies each record in the table**.

A primary key is a specific type of index.

As a matter of practice, it is not necessary to assign an attribute as both an index and a primary key. It is sufficient to assign only a primary key.

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(my_primary_key_attribute);
````

As a matter of practice, it is common for a table's primary key to be an attribute named `id` or the table name appended in front of an `id` suffix (e.g. `student_id` for a `students` table).

#### Composite Key

A composite key is a primary key which is comprised of more than one attribute.

Composite key is a specific type of primary key.

Composite keys are common in polymorphic (supertype) relationships. Composite keys, when they exist, often form the basis for multi-condition join clauses, because each attribute is needed to perform the join.

### Foreign Key

A foreign key is a set of one or more attributes in a given table which **uniquely identifies each record in another table**.

As a matter of practice, it is common for the name of a foreign key attribute to reference the other table for which it is a primary key (e.g. a foreign key of `student_id` in a `bicycles` table). Foreign key attribute names sometimes also reflect the relationship between two tables (e.g. a foreign key of `student_owner_id` in a `bicycles` table).
