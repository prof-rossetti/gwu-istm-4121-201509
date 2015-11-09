# Conceptual Database Design

## Entities

An **entity** is defined as "a person, place, object, event, or concept in the user environment about which the organization wishes to maintain data" ([1](/README.md/#accompanying-textbook)).

Entities are nouns within the scope of your database design.

An entity represents a class of object.

To derive an entity name from a table name when applicable, singularize and capitalize the table name (e.g. for a table named `bicycles`, the entity name would most likely be `Bicycle`).

> NOTE: description of an entity using singular language and either title-case (e.g. `My Entity`) or camel-case (e.g. `MyEntity`)

In some cases, there may exist more than one entity per each database table. A **sub-type** entity is a collection of entity attributes which "... shares common relationships or attributes distinct from other sub-groupings" ([3](/README.md/#accompanying-textbook)). Sub-type entities are often indicated with an attribute named `type`.

In other cases, an entity may span multiple database tables. A **super-type**, or **polymorphic** entity is one which has a relationship that includes "... one or more sub-types" ([3](/README.md/#accompanying-textbook)). Super-type entities are often indicated by a composite foreign key of two attributes which share a prefix but differ in suffix, most commonly `_id` and `_type`, respectively, where the prefix indicates the name of the super-type entity.

Sub-type entities **inherit** attributes from related super-type entities.

### Attributes

An entity has one or more qualities, or **attributes**. Given a corresponding database table, the list of entity attributes roughly maps to the list of column names.

Some attributes do not require database storage. **Virtual attributes** can be evaluated and accessed through logical functions and/or mathematic calculations
 (e.g. a virtual `full_name` attribute which is a string concatenation of the database-stored `first_name` and `last_name` attributes).

### Instances

Given the definition of an entity as a class of object, an **instance** is a specific occurrence of that object class.

Each record, or row, in a database table represents a separate instance.

Instances of the same entity share attribute names, but do not necessarily share attribute values.

> NOTE: description of a specific instance (e.g. `my_entity`) or instances (e.g. `my_entities`) in either lower-case or snake-case

## Relationships

A **relationship** describes a logical or natural connection between two entities. Some relationships connect an entity with itself. Relationships form on the basis of related attributes.

Relationships are verbs within the scope of your database design. When describing a relationship, use the verbs "has" and "belongs to" unless a reasonable assumption leads to increased verb specificity.

Some relationships require the addition of extra tables (see [join tables](#join-tables) below).

### Relationship Classifications

Relationships are classified in terms of degree, cardinality, and optionality. All classifications apply to the relationship as a whole, while
 cardinality and optionality also apply to each side of a relationship.

Relationship classifications are a function of both actual and intended data behavior. Examine with care existing data, business logic, and process assumptions to arrive at the proper relationship classifications.

#### Relationship Degree

Relationship **degree** specifies "the number of entities which participate in the relationship" ([2](/README.md/#accompanying-textbook)).

degree | participating entity count | description
--- | --- | ---
Unary | 1 | a relationship between instances of a single entity
Binary | 2 | a relationship between instances of two entities
Ternary | 3 | a relationship between instances of three entities

Degree is determined by entity counts, not table counts. Some relationships between two entities involve three tables, and would still be considered *binary*.

#### Relationship Optionality

Relationship **optionality** specifies for each instance of one entity the minimum number of instances of another entity to which it may relate.

optionality | minimum foreign instance count | description
--- | --- | ---
Optional | 0 | an instance of one entity relates to a **minimum of zero** instances of the other entity
Not Optional | 1 | an instance of one entity relates to a **minimum of one** instance of the other entity

#### Relationship Cardinality

Relationship **cardinality** specifies for each instance of one entity the maximum number of instances of another entity to which it may relate.

cardinality | maximum foreign instance count | cardinality participation | description
--- | --- | --- | ---
One-to-one | 1 | both-sides | each instance of each entity relates to a **maximum of one** instance of the other entity
One-to-many | greater than one (infinity/ many) | either-side | each instance of one entity relates to a **maximum of more than one** instance of the other entity
Many-to-many | greater than one (infinity/ many) | both-sides | each instance of each entity relates to a **maximum of more than one** instance of the other entity

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

<hr>

Additional Resources:

 + https://www.lucidchart.com/pages/ER-diagram-symbols-and-meaning
