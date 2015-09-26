# Multi-table SQL

A database, or schema, may contain one or more tables.

Each table is often related to one or more other tables in the database.

This document provides an overview of common SQL clauses, functions, and considerations for performing SQL analysis on a multiple related database tables.

Students familiar with the spreadsheet `VLOOKUP()` function have already demonstrated the ability to join tables together.

## Clauses

### Joins

One or more `JOIN` clauses may be used to relate additional table(s) to the original table specified in the from clause.

Each join clause must state at least one join condition, which must evaluate to true or false.

Most join conditions set equal the values of one attribute in one table
 to the value of another attribute in another table.

The keyword `ON` is used to specify the join condition(s).

Two different methods for joining tables together are:

 + an inner join
 + an outer join

#### Inner Joins

An inner join returns only the results from each table that match the join condition.

Records from both the original table and joined table may be excluded.

Use `INNER JOIN` to denote an inner join. Open source DBMSs also recognize `JOIN`.

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

#### Outer Joins

An outer join will append onto the original table any results from the joined table that happen to match the join condition.

Records from the original table will all be included, while some records from the joined table may be excluded.

Use `LEFT JOIN` or `RIGHT JOIN` to denote an outer join.

##### LEFT JOINS vs RIGHT JOINS

Left and right joins only differ in their consideration of which table is the original table
 and which is the joined table.

A right join can be re-written in opposite order to convey a left join, and vice-versa.

> Use left joins for all your outer joins, if possible, for consistency.

<hr>

## Other Considerations

### Ordering Joins

With an inner join, it doesn't matter which table you choose as the original table, and which you choose as the joined table, as long as the join conditions remain the same.

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_a AS a -- FYI
JOIN table_b AS b ON a.some_attribute = b.other_attribute
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_b AS b  -- FYI
JOIN table_a AS a ON b.other_attribute = a.some_attribute
````

However, with outer joins, different combinations of table orders and join types (e.g. left or right) can result in an array of different outcomes.

### Ordering Join Conditions

It doesn't matter how you write your join condition, in terms of attribute order.

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_a AS a
JOIN table_b AS b ON (a.some_attribute = b.other_attribute) -- FYI
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_a AS a
JOIN table_b AS b ON (b.other_attribute = a.some_attribute) -- FYI
````

### Multiple Joins

Unlike the other clauses, which may only be used once in a query,
 you may use a new join clause
  for each new table you would like to include.

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
  ,c.another_awesome_attribute
  ,d.the_best_attribute_ever
FROM table_b AS b
JOIN table_a AS a ON b.other_attribute = a.some_attribute
JOIN table_c AS c ON b.attribute_x = c.attribute_y
JOIN table_d AS d ON b.attribute_x = c.attribute_y
JOIN table_y AS y ON a.another_attr = y.attr2
````

### Joins with Multiple Conditions

On rare occasions, you may have need to join two tables together using more than one logical condition.

```` sql
SELECT *
FROM table_b AS b
JOIN table_f AS f
  ON b.some_attribute = f.related_attribute
  AND date(b.created_at) = date(f.started_at)
````

```` sql
SELECT *
FROM table_b AS b
JOIN table_f AS f
  ON b.some_attribute = f.related_attribute
  AND b.created_at BETWEEN f.started_at AND f.ended_at -- you may use any logical operator in a join condition, however equality is the most common
````

Often multiple join conditions are used in conjunction with polymorphic (supertype) associations.

```` sql
SELECT *
FROM songs AS s
JOIN google_play_songs gps
  ON gps.id = s.source_id
  AND s.source_type = "Google Play"
JOIN itunes_songs its
  ON its.id = s.source_id
  AND s.source_type = "iTunes"
````

### Indices

When executing a query which joins together two or more tables on a related set of attributes, execution time is significantly decreased if each attribute in the join condition is indexed.

See [physical design notes](/notes/database-design/physical-design.md) for more info about indices.
