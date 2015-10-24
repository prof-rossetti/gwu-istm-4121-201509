# Logical Design

Proper relational database design produces proper database function.

Proper database functionality requires the absence of factual inconsistencies.

An **anomaly** is "an error or inconsistency that may result when a user attempts to update a table that contains redundant data" ([4](/README/#accompanying-textbook)).

Data redundancy, or duplicity, presents opportunities for data insertion, deletion, and modification errors.

Therefore, the main objective of the database design process is to minimize data redundancy.

A proper relational database design may entirely eliminate data redundancies,
 however reasonable business assumptions and decisions about database scope often
 dictate intentional incorporation of a limited amount of redundancy.

A properly designed database provides business value in terms at least of:

 + decreased processing costs
 + decreased likelihood for factual errors/discrepancies
 + increased likelihood of data quality/integrity/confidence

## Normalization





Normalization is defined as:

> "" - [Hoffer](/README/#accompanying-textbook) chapter X

A *functional dependency* is defined as:

> "" - [Hoffer](/README/#accompanying-textbook) chapter X

Normalization involves the decomposition or simplification of entity and relationship design decisions.

### Stages of Normalization

There are three general stages of the normalization process.

It is sometimes helpful or necessary to stop at a intermediate stages, but the ultimate  goal is to reach third normal form, which contains no functional dependencies.

#### First Normal (1NF)

#### First Normal (2NF)

#### Third Normal (3NF)
