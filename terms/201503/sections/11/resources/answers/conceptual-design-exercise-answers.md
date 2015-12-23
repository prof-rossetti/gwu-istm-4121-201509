# Conceptual Design Exercise Answers

Spoiler alert!

This document contains answers to the [Conceptual Design Exercises](/resources/database-design/conceptual-design/conceptual-design-exercises.md).

The examples below reference corresponding files in the [physical design examples](/resources/database-design/physical-design/examples) directory.
 Also reference the [physical design exercise answers](/resources/database-design/physical-design/physical-design-exercise-answers.md) for each example.

<hr>

## Examples

### Basic Examples

Examples A, B, and C demonstrate the three basic types of cardinality.

Examples D, E, and F demonstrate the same three basic types of cardinality, except the data suggests optionality in each case as well.


<hr>


































#### Example A

Entities:

 + Student
 + Bicycle

Relationship Description(s):

 + "A student has many bicycles."
 + "A bicycle belongs to many students."
 + "A student has and belongs to many bicycles."
 + "A bicycle has and belongs to many students."

Relationship Cardinality:
 **Many-to-many**

Relationship Optionality:
 **Not optional**

#### Example B

Entities:

 + Student
 + Bicycle

Relationship Description(s):

 + "A student owns many bicycles" / "A student may own one or more bicycles"
 + "A bicycle belongs to a student"

Relationship Cardinality: **One-to-many**

Relationship Optionality: **Not optional**

#### Example C

Entities:
 + Student
 + Bicycle

Relationship Description(s):

 + "A student owns one bicycle"
 + "A bicycle is owned by one student"

Relationship Cardinality: **One-to-one**

Relationship Optionality: **Not optional**

#### Example D

Entities:

 + Student
 + Bicycle

Relationship Description(s):

 + "A student has zero or more bicycles"
 + "A bicycle has many students"
 + "A student has and belongs to zero or more bicycles"
 + "A bicycle has and belongs to many students"

Relationship Cardinality: **Many-to-many**

Relationship Optionality: **Optional** (at least one direction)

#### Example E

Entities:
 + Student
 + Bicycle

Relationship Description(s):

+ "A student owns zero or more bicycles" / "A student may own many bicycles"
+ "A bicycle is owned by a student"

Relationship Cardinality: **One-to-many**

Relationship Optionality: **Optional**

#### Example F

Entities:
 + Student
 + Bicycle

Relationship Description(s):

+ "A student owns zero or one bicycle" / "A student may own one bicycle"
+ "A bicycle is owned by a student"

Relationship Cardinality: **One-to-one**

Relationship Optionality: **Optional**





























<hr>






### Advanced Examples

#### Example M

Many-to-many Polymorphic (Supertype) relationship

#### Example N

Many-to-many relationship through a join entity

#### Example O

One-to-many self-relationship

#### Example P

Optional Many-to-many relationship through a join entity

#### Example Q

Single-table-inheritance (subtype) relationship
