# Physical Design Exercises

## Description

For each [example relational database table design](/resources/database-design/physical-design/examples)
 and each [instructional relational dataset](https://github.com/gwu-business/istm-4121/blob/master/notes/data-analysis.md#instructional-datasets):

  + Identify all known or likely indices and specify which are primary keys and which are foreign keys, as applicable.
  + Write a simple query to join the two tables together.

Explicitly state your assumptions to provide additional justification for your answers.

<hr>

## Example Answer

Index Attributes:
 + `students.id` is the primary key for the `students` table
 + `students.net_id` is a regular index in the `students` table
 + `students.immunized` is a regular index in the `students` table
 + `bicycles.id` is the primary key for the `bicycles` table
 + `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````

Assumptions:

 + students communicate their net_id to us when they enter our help desk
 + we have to compile weekly reports of un-immunized students
