# Relational Database Theory

## Entities

## Relationships

### Cardinality

 + One-to-one
 + One-to-many
 + Many-to-many

### Optionality

 + Required (*must have*)
 + Optional (*may have*)

### Attributes

#### Primary Key

A primary key is a set of one or more attributes in a given table which **uniquely identifies each record in the table**.

Most primary keys are represented as single attributes, and are most commonly named `id`.

##### Composite Key

A composite key is a primary key which is comprised of more than one attribute.

Composite keys are common in polymorphic (supertype) relationships, which are outside the scope of this course. Composite keys, when they exist, often form the basis for join clauses with multiple conditions, because each attribute is needed to perform the join.

#### Foreign Key

A foreign key is a set of one or more attributes in a given table which **uniquely identifies each record in another table**.

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
  Relationship Attributes:
   + `students.id` is the primary key for the `students` table
   + `bicycles.id` is the primary key for the `bicycles` table
   + `bicycles.student_id` is a foreign key in the `bicycles` table
*/
````

<hr>

## Normalization

(definition of normalization)

(objective(s) of normalization)

### Forms

There are three general stages of the normalization process.

#### First Normal (1NF)

#### First Normal (2NF)

#### Third Normal (3NF)
