# Entity-Relationship Diagramming

An Entity Relationship Diagram (ERD) is a visual database design representation. It depicts database entities and relationships, including relationship cardinality. In many cases an ERD also depicts column names, primary keys, and other indices.

ERDs provide value to data professionals by acting as a learning resource, a time-saving reference, and a communication mechanism.

## Notation

### Entity Notation

Represent each entity as a rectangle.
  Write the name of the entity in the rectangle.

Include a bullet-style vertical list of attribute names inside the rectangle for each entity. Optionally indicate which attributes are primary keys, foreign keys, and indices. Optionally indicate the datatype of each attribute.

### Relationship Notation

Represent each relationship as a line connecting two entities, or in some cases a line connecting an entity to itself.
 For each relationship direction, label the line with a text box relationship description.

#### Relationship Cardinality Notation

To denote cardinality,
  use `1` to represent "one",
  and <code>&infin;</code> (infinity sign) or `m` to represent "many".
  Mark cardinality for each relationship direction.

#### Relationship Optionality Notation

If there is an opportunity to denote relationship optionality
 without obfuscating the diagram,
 add a leading `0` next to the cardinality mark for any optional relationships,
 and a leading `|` next to the cardinality mark for any non-optional relationships.
 Mark optionality for each relationship direction.
