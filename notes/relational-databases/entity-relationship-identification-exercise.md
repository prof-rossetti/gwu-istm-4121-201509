# Entity and Relationship Identification Exercise

## Description

Given the following database table design, identify and describe all entities and relationships, including relationship optionality and cardinality.

Identify all known or likely indices and specify which are primary keys and which are foreign keys, as applicable.

Explicitly state your assumptions to provide additional justification for your choices.

Write a simple query to join the two tables together.

### Tables

#### `students`

id | first_name | last_name | net_id | immunized
--- | --- | --- | --- | ---
1 | John | Appleseed | johnnyapp | true
2 | John | Appleseed | johnnyapp | true
3 | John | Appleseed | johnnyapp | true
4 | John | Appleseed | johnnyapp | true
5 | John | Appleseed | johnnyapp | true
6 | John | Appleseed | johnnyapp | true
7 | John | Appleseed | johnnyapp | false
8 | John | Appleseed | johnnyapp | true
9 | John | Appleseed | johnnyapp | true
10 | John | Appleseed | johnnyapp | true

#### `bicycles`

id | make | model | color | wheel_size_inches | student_owner_id
--- | --- | --- | --- | --- | ---



<hr>

## Answer

Entities:
 + Student
 + Bicycle

Relationship: "A student may own one or more bicycles"

Relationship Cardinality: One-to-many

Relationship Optionality: Optional

Index Attributes:
 + `students.id` is the primary key for the `students` table
 + `students.net_id` is a regular index in the `students` table (we don't know exactly what this attribute is used for but we assume we might use it to look up individual records in a `WHERE` clause, or as a part of a `JOIN` clause condition, although we don't have enough information about other tables in this database to say for sure this attribute is a foreign key for some other table)
 + `students.immunized` is a regular index in the `students` table (we assume we might use it to look up individual records in a `WHERE` clause)
 + `bicycles.id` is the primary key for the `bicycles` table
 + `bicycles.student_owner_id` is a foreign key in the `bicycles` table (and is a regular index in that table)

Assumptions:

 +
 +

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````
