# Entity and Relationship Identification Exercise

## Description

Given the following database table design, identify and describe all entities and relationships, including relationship optionality and cardinality.

Identify all known or likely indices and specify which are primary keys and which are foreign keys, as applicable.

Explicitly state your assumptions to provide additional justification for your choices.

Write a simple query to join the two tables together.

### Tables

#### `students`

id | first_name | last_name | net_id | immunized | gender
--- | --- | --- | --- | --- | ---
1 | John | Appleseed | johnnyapp | true | male
2 | John | Smith | jsmitty | true | male
3 | Adam | Smith | adamsmith | true | male
4 | Adam | Smith | asmith | false | male
5 | Mary | Wilson | mwilson | true | female
6 | Sarah | Johnson | sj145 | true | female
7 | Jen | Yi | jyi | true | female
8 | Anna | Jett | amjet42 | true | female

#### `bicycles`

id | make | model | color | wheel_size_inches | student_owner_id
--- | --- | --- | --- | --- | ---
1 | Cannondale | Smooth Rider | blue | 13 | 5
2 | Cannondale | City Rider | red | 26 | 2
3 | Specialized | R-81 | green | 23 | 8
4 | Cannondale | City Rider Pro | pink | 25 | 8
5 | Trek | R2-81 | black | 13 | 1
6 | Specialized | R-81 | blue | 13 | 6

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
 + `students.net_id` is a regular index in the `students` table
 + `students.immunized` is a regular index in the `students` table
 + `bicycles.id` is the primary key for the `bicycles` table
 + `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Your own index selection may differ based on your assumptions.

Assumptions:

 + we assume `students.net_id` might be used regularly to look up individual records as part of a `WHERE` clause condition, or as a part of a `JOIN` clause condition,
 + we don't have enough information about other tables in this database to say for sure `students.net_id` attribute is a foreign key for some other table
 + we know we have to compile weekly reports of any un-immunized students, to we assign `students.immunized` a regular index

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````
