# Relational Database Theory

A **relational database** is defined as:

> "a database that represents data as a collection of of tables in which all data relationships are represented by common values in related tables." - [Hoffer](/README/#accompanying-textbook) chapter 1

## Entities

An **entity** is defined as:

> "a person, place, object, event, or concept in the user environment about which the organization wishes to maintain data." - [Hoffer](/README/#accompanying-textbook) chapter 1

Entities are nouns within the scope of your database design.

## Relationships I (Physical)

A relationship describes a logical or natural connection between two entities.

Relationships are verbs within the scope of your database design.

Following from the definition of relational databases, the "common values in related tables" refer to special index attributes known as primary and foreign keys.

### Index Attributes

An **index** is defined as:

> "A table or other data structure used to determine in a file the location of records that satisfy some condition." - [Hoffer](/README/#accompanying-textbook) chapter 5

Index also refers to a method by which the DBMS searches and finds records.
  An **indexed file organization** is defined as:

> "The storage of records either sequentially or nonsequentially with an index that allows software to locate individual records." - [Hoffer](/README/#accompanying-textbook) chapter 5

As a matter of practice, an index can be applied to one or more attributes.

Indexed attributes are the "connection points" of a relationship between two entities,
 specifically an attribute in one table and its related attribute in another table.

Indices are a major component of database design, in terms of:

 + query execution time
 + processing costs and resources

```` sql
SHOW INDEX
FROM my_db.my_table
````

It is good practice to specify an `INDEX` for any attribute you would use in a `WHERE` clause or a `JOIN` clause.

```` sql
ALTER TABLE my_db.my_table ADD INDEX(my_index_attribute);
````

```` sql
DROP INDEX my_index_attribute ON my_db.my_table;
````

#### Primary Key

A primary key is a set of one or more attributes in a given table which **uniquely identifies each record in the table**.

A primary key is a specific type of index.

As a matter of practice, it is not necessary to assign an attribute as both an index and a primary key. It is sufficient to assign only a primary key.

```` sql
ALTER TABLE my_db.my_table ADD PRIMARY KEY(my_primary_key_attribute);
````

Most primary keys are represented as single attributes, and are most commonly named `id`.

##### Composite Key

A composite key is a primary key which is comprised of more than one attribute.

A composite key is just another way of referring to a primary key that is comprised of more than one attribute.

Composite keys are common in polymorphic (supertype) relationships, which are outside the scope of this course. Composite keys, when they exist, often form the basis for multi-condition join clauses, because each attribute is needed to perform the join.

#### Foreign Key

A foreign key is a set of one or more attributes in a given table which **uniquely identifies each record in another table**.



<hr>

## Entity and Relationship Identification Example

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_id

/*

  Entities:
   + Student
   + Bicycle

  Tables:
   + `students`
   + `bicycles`

  Relationship: "A student may own one or more bicycles"

  Relationship Cardinality: One-to-many

  Relationship Optionality: Optional

  Index Attributes:
   + `students.id` is the primary key for the `students` table
   + `bicycles.id` is the primary key for the `bicycles` table
   + `bicycles.student_id` is a foreign key in the `bicycles` table (and is a regular index in that table)

*/
````

<hr>


























































## Relationships II (Logical)

### Relationship Classifications

In relational databases, there are three types of relationship cardinalities and two types of relationship optionalities, which combine to form six different general classifications of relationship.

#### Cardinality

 + One-to-one
 + One-to-many
 + Many-to-many

#### Optionality

 + Required (*must have*)
 + Optional (*may have*)

























## Normalization

Normalization is defined as:

> "" - [Hoffer](/README/#accompanying-textbook) chapter X

The objective of the normalization process is to decompose, or simplify, entity and relationship definitions.

Benefits of normalization include:

 + ____
 + _____
 + _____

A *functional dependency* is defined as:

> "" - [Hoffer](/README/#accompanying-textbook) chapter X

### Stages of Normalization

There are three general stages of the normalization process.

It is sometimes helpful or necessary to stop at a intermediate stages, but the ultimate  goal is to reach third normal form, which contains no functional dependencies.

#### First Normal (1NF)

#### First Normal (2NF)

#### Third Normal (3NF)
