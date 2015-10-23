# Conceptual Design

## Entities

An **entity** is defined as:

> "a person, place, object, event, or concept in the user environment about which the organization wishes to maintain data." - [Hoffer](/README/#accompanying-textbook) chapter 1

Entities are nouns within the scope of your database design.

An entity represents a class of object.

Each entity is often represented by its own database table.

### Attributes

Each entity has one or more qualities called **attributes**, each of which usually corresponds to a column in a database table.

Some attributes do not require database storage. **Virtual attributes** can be evaluated and accessed through a logical function or mathematic calculation
 (e.g. a virtual `full_name` attribute which is a string concatenation of the database-stored `first_name` and `last_name` attributes).

### Instances

Given the definition of an entity as a class of object, an **instance** is a specific occurrence of that object class.

Each record, or row, in a database table represents a separate instance.

Instances of the same entity share attribute names, but do not necessarily share attribute values.







## Relationships

A **relationship** describes a logical or natural connection between two entities, or between an entity and itself. Relationships form on the basis of related attributes.

Relationships are verbs within the scope of your database design. When describing a relationship, use the verbs "has" and "belongs to" unless a reasonable assumption leads to increased verb specificity.

Some relationships require the addition of extra tables (see [join tables](#join-tables) below).

### Relationship Classifications

Relationships are classified in terms of degree, cardinality, and optionality. All classifications apply to the relationship as a whole, while
 cardinality and optionality also apply to each side of a relationship.

Relationship classifications are a function of both actual and intended data behavior. Examine with care existing data and business logic and process assumptions to arrive at the proper relationship classifications.

#### Relationship Degree

In chapter 2, Hoffer defines relationship **degree** as:

 > "... the number of entities which participate in the relationship."

 degree | definition
 --- | ---
 Unary | A relationship between instances of a single entity.
 Binary | A relationship between instances of two entities.
 Ternary | A relationship between instances of three entities.

 #### Relationship Optionality

 In chapter 2, Hoffer presents **optionality** as:

 > "... the number of instances of one entity that may be associated with each instance of another entity."

 optionality | criteria
 --- | --- | ---
 Not Optional | each instance of each entity relates to a **minimum of one** instance of the other entity
 Optional | each instance of each entity relates to a **minimum of zero** instances of the other entity

#### Relationship Cardinality

 In chapter 2, Hoffer describes **cardinality** as a constraint which:

 > "... specifies the number of instances of one entity that can (or must) be associated with each instance of another entity."

cardinality | criteria
--- | ---
One-to-one | each instance of each entity relates to a **maximum of one** instance of the other entity
One-to-many | each instance of one entity relates to a **maximum of more than one** instances of the other entity
Many-to-many | each instance of each entity relates to a **maximum of more than one** instances of the other entity

##### Join Tables

 Many-to-many relationships require the addition of a separate "join table" to properly form the relationship.

 Some join tables only contain two attributes: one for joining each of the other related tables. These attributes form a composite primary key.

 bicycle_id | student_id
 --- | ---
 1 | 1
 1 | 2
 1 | 3
 2 | 1
 2 | 2
 2 | 3

 Other join tables, in addition to carrying the related attributes, also carry their own attributes, which makes them eligible for consideration as stand-alone entities.

 bicycle_id | student_id | rented_at
 --- | --- | ---
 1 | 1 | 2015-10-01 14:00:00
 1 | 2 | 2015-10-02 14:00:00
 1 | 3 | 2015-10-03 14:00:00
 2 | 1 | 2015-10-04 14:00:00
 2 | 2 | 2015-10-05 14:00:00
 2 | 3 | 2015-10-06 14:00:00

 For join tables that are stand-alone entities, is acceptable to include an additional attribute to serve as the primary key.

 id | bicycle_id | student_id | rented_at
 --- | --- | --- | ---
 1 | 1 | 1 | 2015-10-01 14:00:00
 2 | 1 | 2 | 2015-10-02 14:00:00
 3 | 1 | 3 | 2015-10-03 14:00:00
 4 | 2 | 1 | 2015-10-04 14:00:00
 5 | 2 | 2 | 2015-10-05 14:00:00
 6 | 2 | 3 | 2015-10-06 14:00:00
