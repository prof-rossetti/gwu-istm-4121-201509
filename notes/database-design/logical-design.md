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

**Normalization** is the simplification process by which a data architect arrives at a proper database design.

Normalization involves "... decomposing relations with anomalies to produce smaller, well-structured relations" ([4](/README/#accompanying-textbook)).

Normalization aims to eliminate the presence of functional dependencies.

A **functional dependency** is "... a constraint between two attributes by which the value of one (determines) the value of the other" ([4](/README/#accompanying-textbook)).

### Stages of Normalization

There are three general stages of the normalization process.

It is sometimes helpful or necessary to stop at a intermediate stages, but the ultimate goal is to reach Third Normal Form (3NF), which contains no functional dependencies.

#### First Normal Form

**First Normal Form (1NF)** is "______" ([4](/README/#accompanying-textbook)).

#### Second Normal Form

**First Normal Form (1NF)** is "______" ([4](/README/#accompanying-textbook)).

#### Third Normal Form

**First Normal Form (1NF)** is "______" ([4](/README/#accompanying-textbook)).
