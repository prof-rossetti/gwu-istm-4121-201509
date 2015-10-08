# Physical Design Exercise Answers

Spoiler alert!

This document contains answers to the [Physical Design Exercises](/resources/database-design/physical-design/physical-design-exercises.md).

The examples below reference corresponding files in the [physical design examples](/resources/database-design/physical-design/examples) directory.

<hr>


## Examples





### Basic Examples

Examples A, B, and C demonstrate three basic classifications of relationship, which will be introduced later in the semester.

Examples D, E, and F demonstrate more or less the same three basic classifications, except they also convey slight differences in the number of rows in each table.

<hr>

#### Example A

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `bicycles.id` is the primary key in the `bicycles` table
 + both `bicyles_students.bicycle_id` and `bicyles_students.student_id` comprise a composite primary key in the `bicyles_students` table
 + `bicyles_students.bicycle_id` is a foreign key in the `bicyles_students` table (it references the `bicyles` table)
 + `bicyles_students.student_id` is a foreign key in the `bicyles_students` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students s
JOIN bicycles_students bs ON bs.student_id = s.id
JOIN bicycles b ON b.id = bs.bicycle_id
````

Assumptions: N/A

<hr>

#### Example B

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `bicycles.id` is the primary key in the `bicycles` table
 + `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````

Assumptions: N/A

<hr>

#### Example C

Index Attributes:

+ `students.id` is the primary key in the `students` table
+ `bicycles.id` is the primary key in the `bicycles` table
+ `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````

Assumptions: N/A

#### Example D

Index Attributes:

  + `students.id` is the primary key in the `students` table
  + `bicycles.id` is the primary key in the `bicycles` table
  + both `bicyles_students.bicycle_id` and `bicyles_students.student_id` comprise a composite primary key in the `bicyles_students` table
  + `bicyles_students.bicycle_id` is a foreign key in the `bicyles_students` table (it references the `bicyles` table)
  + `bicyles_students.student_id` is a foreign key in the `bicyles_students` table (it references the `students` table)

Query:

 ```` sql
 SELECT *
 FROM students s
 JOIN bicycles_students bs ON bs.student_id = s.id
 JOIN bicycles b ON b.id = bs.bicycle_id
 ````

Assumptions: N/A

#### Example E

Index Attributes:

+ `students.id` is the primary key in the `students` table
+ `bicycles.id` is the primary key in the `bicycles` table
+ `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````

Assumptions: N/A


#### Example F

Index Attributes:

+ `students.id` is the primary key in the `students` table
+ `bicycles.id` is the primary key in the `bicycles` table
+ `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN bicycles ON students.id = bicycles.student_owner_id
````

Assumptions: N/A










<hr>

### Advanced Examples






#### Example M

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `bicycles.id` is the primary key in the `bicycles` table
 + `rentals.id` is the primary key in the `rentals` table
 + `rentals.student_renter_id` is a foreign key in the `rentals` table (it references the `students` table)
 + `rentals.rentable_item_type` and `rentals.rentable_item_id` comprise a composite foreign key in the `rentals` table (it references either the `books` or `bicycles` table, depending on the row)

Query:

```` sql
SELECT *
FROM students
JOIN rentals ON rentals.student_renter_id = students.id
JOIN bicycles ON (rentals.rentable_item_id = bicycles.id AND rentals.rentable_item_type = "Bicycle")
````

Assumptions:

 + students rent books, as well as bicycles

#### Example N

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `bicycles.id` is the primary key in the `bicycles` table
 + `rentals.id` is the primary key in the `rentals` table
 + `rentals.bicycle_id` is a foreign key in the `rentals` table (it references the `bicycles` table)
 + `rentals.student_renter_id` is a foreign key in the `rentals` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN rentals ON students.id = rentals.student_renter_id
JOIN bicycles ON bicycles.id = rentals.bicycle_id
````

Assumptions: N/A

#### Example O

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `students.mentor_student_id` is a foreign key in the `students` table (it references the `students` table)

Query:

```` sql
-- table aliases are required to perform this self-join
SELECT *
FROM students s
JOIN students m ON s.mentor_student_id = m.id
````

Assumptions:

 + students mentor other students

#### Example P

Index Attributes:

 + `students.id` is the primary key in the `students` table
 + `bicycles.id` is the primary key in the `bicycles` table
 + `rentals.id` is the primary key in the `rentals` table
 + `rentals.bicycle_id` is a foreign key in the `rentals` table (it references the `bicycles` table)
 + `rentals.student_renter_id` is a foreign key in the `rentals` table (it references the `students` table)

Query:

```` sql
SELECT *
FROM students
JOIN rentals ON students.id = rentals.student_renter_id
JOIN bicycles ON bicycles.id = rentals.bicycle_id
````

Assumptions: N/A

#### Example Q

Index Attributes:

+ `bicycles.id` is the primary key in the `bicycles` table
+ `bicycles.student_owner_id` is a foreign key in the `bicycles` table (it references the `students` table)

Query:

```` sql
-- note the different sql prompt in the example (no need to join tables)
SELECT *
FROM bicycles
WHERE bicycle_type = "mountain"
````

Assumptions: N/A
