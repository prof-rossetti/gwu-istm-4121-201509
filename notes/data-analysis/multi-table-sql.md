# Multi-table SQL

A database, or schema, may contain one or more tables.

Each table is often related to one or more other tables in the database.

This document provides an overview of common SQL clauses, functions, and considerations for performing SQL analysis on a multiple related database tables.

## Clauses

### JOIN

Zero or more `JOIN` clauses may be used to relate additional table(s) to the table specified in the from clause.

Each join clause must state which attributes are being used to join the tables together. Usually joins happen when one attribute in one table equals another attribute in another table. The keyword `ON` is used to specify the join condition(s).

There are different kinds of joins: inner and outer.

#### INNER

An inner join returns only the results from each table that match the join condition.
 Records from both the original table and joined table may be excluded.

> Use `JOIN` to denote an inner join

```` sql
SELECT
  table_h.attribute_a
  ,table_h.attribute_b
  ,table_j.attribute_a
  ,table_j.attribute_x
  ,table_j.attribute_y
FROM table_h
JOIN table_j ON table_j.some_attribute = table_h.related_attribute
````

#### OUTER

An outer join will append onto the original table any results from the joined table that happen to match the join condition.
 Records from the original table will all be included, while some records from the joined table may be excluded.

> Use `LEFT JOIN` or `RIGHT JOIN` to denote an outer join

Left and right joins only differ in their consideration of which table is the original table
 and which is the joined table.

A right join can be re-written in opposite order to convey a left join, and vice-versa.

> Use left joins for all your outer joins, if possible, for consistency.

## Other Considerations

### Table Name Specification

When using multiple tables, it is good practice to explicitly refer to each by name.

```` sql
SELECT
  table_a.attribute_d
  ,table_a.attribute_t
  ,table_b.some_awesome_attribute
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

This often becomes necessary when there is an attribute of the same name in more than one table.

```` sql
SELECT
  table_a.some_attribute
  ,table_a.created_at
  ,table_b.created_at
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

### Table Aliasing

As a matter of good practice, you may optionally improve the readability and usability of your queries by assigning to each table a shorter name, or alias.
Use the `AS` keyword to denote table aliases.

```` sql
SELECT *
FROM table_a AS a
````

```` sql
SELECT a.*
FROM table_a AS a
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
FROM table_a AS a
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_a AS a
JOIN table_b AS b ON a.some_attribute = b.other_attribute
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_b AS b
JOIN table_a AS a ON a.some_attribute = b.other_attribute
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_b AS b
JOIN table_a AS a ON b.other_attribute = a.some_attribute
````
