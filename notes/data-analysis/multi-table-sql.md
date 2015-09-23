# Multi-table SQL

A database, or schema, may contain one or more tables.

Each table is often related to one or more other tables in the database.

This document provides an overview of common SQL clauses, functions, and considerations for performing SQL analysis on a multiple related database tables.

> Students familiar with the spreadsheet `VLOOKUP()` function have already demonstrated an ability to perform table joins.

## Clauses

### JOINS

One or more `JOIN` clauses may be used to relate additional table(s) to the original table specified in the from clause.

Each join clause must state at least one join condition, which must evaluate to true or false.

Most join conditions set equal the values of one attribute in one table
 to the value of another attribute in another table.

The keyword `ON` is used to specify the join condition(s).

Two different methods for joining tables together are:

 + an inner join
 + an outer join

#### INNER JOINS

An inner join returns only the results from each table that match the join condition.

Records from both the original table and joined table may be excluded.

Use `INNER JOIN` to denote an inner join. Open source DBMSs also recognize `JOIN` for this use.

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

#### OUTER JOINS

An outer join will append onto the original table any results from the joined table that happen to match the join condition.

Records from the original table will all be included, while some records from the joined table may be excluded.

Use `LEFT JOIN` or `RIGHT JOIN` to denote an outer join.

##### LEFT JOINS vs RIGHT JOINS

Left and right joins only differ in their consideration of which table is the original table
 and which is the joined table.

A right join can be re-written in opposite order to convey a left join, and vice-versa.

> Use left joins for all your outer joins, if possible, for consistency.

## Other Considerations

### Table Name Specification

When using multiple tables, explicitly refer to each by name when selecting attributes.

```` sql
SELECT
  table_a.attribute_d -- FYI
  ,table_a.attribute_t -- FYI
  ,table_b.some_awesome_attribute -- FYI
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

This often becomes necessary when an attribute of the same name exists in more than one table.

```` sql
SELECT
  table_a.some_attribute
  ,table_a.created_at -- FYI
  ,table_b.created_at  -- FYI
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

### Table Aliasing

Improve the readability and usability of your queries by assigning to each table a shorter name, or alias.
Use the `AS` keyword to denote table aliases.

```` sql
SELECT *
FROM table_a AS a -- FYI
````

```` sql
SELECT a.* -- FYI
FROM table_a AS a
````

```` sql
SELECT
  a.attribute_d -- FYI
  ,a.attribute_t
FROM table_a AS a
````

### Ordering Join Conditions

It doesn't matter what table you choose as the original table, and which you choose as the joined table, unless using an outer join.

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
FROM table_b AS b -- FYI
JOIN table_a AS a ON a.some_attribute = b.other_attribute
````

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
FROM table_b AS b
JOIN table_a AS a ON b.other_attribute = a.some_attribute -- FYI
````

### Multiple Joins

Use a join clause for each new table you would like to include in your query.

```` sql
SELECT
  a.attribute_d
  ,a.attribute_t
  ,b.some_awesome_attribute
  ,c.another_awesome_attribute
  ,d.the_best_attribute_ever
FROM table_b AS b
JOIN table_a AS a ON b.other_attribute = a.some_attribute -- so ...
JOIN table_c AS c ON b.attribute_x = c.attribute_y -- ... many...
JOIN table_d AS d ON b.attribute_x = c.attribute_y -- ... joins!
JOIN table_y AS y ON a.another_attr = y.attr2 -- FYI you can join to any table in any order, just make sure your join conditions are correct.
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

When executing a query which joins together two or more tables on a related set of attributes, execution time is significantly descreased if each attribute in the join condition is indexed.

You may define indices during or after table creation.

```` sql
-- after table creation:
ALTER TABLE my_table ADD INDEX(attribute_name);
````

You may also define primary keys in a similar way.

```` sql
-- after table creation:
ALTER TABLE my_table ADD PRIMARY KEY(attribute_name);
````

See [physical design notes](/notes/relational-databases/physical-design.md) for more info about indices.
