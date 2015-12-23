# Conceptual Design Exercises

These exercises add an additional conceptual layer to the [physical design exercises](/resources/database-design/physical-design/physical-design-exercises.md).

## Description

For each [example relational database table design](/resources/database-design/physical-design/examples):

  + Identify all known or likely indices and specify which are primary keys and which are foreign keys, as applicable.
  + **Identify all entities and relationships, including relationship classifications, cardinality, and optionality**.
  + Write a simple query to join the two tables together.

Explicitly state your assumptions to provide additional justification for your answers.

<hr>

## Example Answer

Entities:
 + Student
 + Bicycle

Relationship: "A student may own zero or more bicycles"

Relationship Cardinality: One-to-many

Relationship Optionality: Optional

Index Attributes:
 + `students.id` is the primary key for the `students` table
 + `bicycles.id` is the primary key for the `bicycles` table
 + `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````
