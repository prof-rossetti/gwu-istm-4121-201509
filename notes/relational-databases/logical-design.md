# Logical Design

## Entities

An **entity** is defined as:

> "a person, place, object, event, or concept in the user environment about which the organization wishes to maintain data." - [Hoffer](/README/#accompanying-textbook) chapter 1

Entities are nouns within the scope of your database design.

An entity represents a class of object.

As a matter of practice, each entity is often represented in its own database table.

## Relationships

A relationship describes a logical or natural connection between two entities.

Relationships are verbs within the scope of your database design.

As a matter of practice, some but not all relationships require the addition of extra tables.

### Relationship Classifications

In relational databases, there are three types of relationship cardinalities and two types of relationship optionalities, which combine to form six different general classifications of relationship.

Relationship classifications are a function of both actual and intended data behavior. Examine with care existing data and business logic and process assumptions to arrive at the proper relationship classifications.

#### Relationship Cardinality

 + One-to-one
 + One-to-many
 + Many-to-many

> Many-to-many relationships require the addition of a separate "join table" to properly form the relationships.

#### Relationship Optionality

 + Required (*must have*)
 + Optional (*may have*)
