# Conceptual Design

## Entities

An **entity** is defined as:

> "a person, place, object, event, or concept in the user environment about which the organization wishes to maintain data." - [Hoffer](/README/#accompanying-textbook) chapter 1

Entities are nouns within the scope of your database design.

An entity represents a class of object.

As a matter of practice, each entity is often represented in its own database table.

## Arributes

Describe all or most occurrences of each entity.

An attribute may be an entity.

At least one attribute (could be an attribute or combination of attributes) takes on a unique value for each occurence of an entity. Called an identifier, primary key. 


## Relationships

A relationship describes a logical or natural connection between two entities.

Relationships are verbs within the scope of your database design.

As a matter of practice, some but not all relationships require the addition of extra tables.

### Relationship Classifications

In relational databases, there are three main types of relationship cardinalities and two types of relationship optionalities, which combine to form six different general classifications of relationship.

Relationship classifications are a function of both actual and intended data behavior. Examine with care existing data and business logic and process assumptions to arrive at the proper relationship classifications.

#### Relationship Optionality

 + Required (*must have*)
 + Optional (*may have*)

#### Relationship Cardinality

 + One-to-one
 + One-to-many
 + Many-to-many

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

Other join tables, in addition to carrying the related attributes, also  carry their own attributes, which makes them eligible for consideration as their own separate entities.

bicycle_id | student_id | rented_at
--- | --- | ---
1 | 1 | 2015-10-01 14:00:00
1 | 2 | 2015-10-02 14:00:00
1 | 3 | 2015-10-03 14:00:00
2 | 1 | 2015-10-04 14:00:00
2 | 2 | 2015-10-05 14:00:00
2 | 3 | 2015-10-06 14:00:00

For join tables that are entities, is acceptable to create an additional attribute to serve as the primary key.

id | bicycle_id | student_id | rented_at
--- | --- | --- | ---
1 | 1 | 1 | 2015-10-01 14:00:00
2 | 1 | 2 | 2015-10-02 14:00:00
3 | 1 | 3 | 2015-10-03 14:00:00
4 | 2 | 1 | 2015-10-04 14:00:00
5 | 2 | 2 | 2015-10-05 14:00:00
6 | 2 | 3 | 2015-10-06 14:00:00
