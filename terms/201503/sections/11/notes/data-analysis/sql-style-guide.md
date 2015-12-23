# SQL Style Guide

## Database Design

All database, table, and attribute names should be [snake-case](https://en.wikipedia.org/wiki/Snake_case), and comprised only of **lower-case** letters. Databases conforming to this physical design style are easier to use.

## Database Usage

Query-writing Style Guidelines:

 1. Align major clauses on the left margin.
 + If there is a single clause parameter, you may keep it on the same line as the clause.
 + If there are multiple clause parameters, write each on a new indented line.
 + Use either two spaces or four spaces to indicate line indentation, but be consistent.
 + Indent subqueries, maintaining a nested left margin for each.
 + Specify database names if working with more than one database.
 + Specify table names when selecting attributes from more than one table.
 + Alias attribute names when appropriate, which is often.
 + Alias table names when working with more than one table, which is often.
 + Use only `LEFT JOIN` to denote an outer join; translate right joins to left joins as necessary.

### Clause Alignment

```` sql
-- aligned clauses; one clause param on same line as clause:
SELECT *
FROM my_table
WHERE some_date_attribute > '2015-01-01'
````

```` sql
-- aligned clauses; multiple, indented clause params:
SELECT
  first_attribute
  ,second_attribute
  ,third_attribute
FROM my_table
WHERE some_date_attribute > '2015-01-01'
  AND some_string_attribute = 'Sun Valley'
  AND some_text_attribute LIKE '%CA%'
````

```` sql
-- aligned clauses; multiple, indented clause params; table aliasing
SELECT
  t.first_attribute
  ,t.second_attribute
  ,t.third_attribute
  ,r.other_attribute
FROM my_table AS t
JOIN another_table AS r ON t.some_attribute = r.related_attribute
WHERE t.some_date_attribute > '2015-01-01'
  AND t.some_string_attribute = 'Sun Valley'
  AND t.some_text_attribute LIKE '%CA%'
````

```` sql
SELECT *
FROM table_b AS b
JOIN table_f AS f ON b.some_attribute = f.related_attribute
  AND date(b.created_at) = date(f.started_at)
````

```` sql
-- indentation of subqueries
SELECT *
FROM (
    -- aligned clauses; multiple, indented clause params; table aliasing
    SELECT
      t.first_attribute
      ,t.second_attribute
      ,t.third_attribute
      ,r.other_attribute
    FROM my_table AS t
    JOIN another_table AS r ON t.some_attribute = r.related_attribute
      AND t.another_attribute = r.another_related_attribute -- indentation of multiple join conditions
    WHERE t.some_date_attribute > '2015-01-01'
      AND t.some_string_attribute = 'Sun Valley'
      AND t.some_text_attribute LIKE '%CA%'
) AS tv
ORDER BY tv.third_attribute
````

### Attribute Address Specificity

It is often sufficient to select the name of one or more attributes from the name of a single table.

````sql
SELECT attribute_d FROM table_a;
````
> ... like placing a phone call within an area code.

When the data environment grows more complex with the addition of another table, it becomes helpful to explicitly refer to each table by name.

```` sql
SELECT
  table_a.attribute_d
  ,table_b.some_awesome_attribute
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

This often becomes necessary when an attribute of the same name exists in more than one table.

```` sql
SELECT
  table_a.some_attribute
  ,table_a.created_at
  ,table_b.created_at
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

> ... like placing a phone call across area codes, which requires the specification of an area code.

When using many databases, specify which database contains each of the tables used in your query.

```` sql
SELECT *
FROM database_x.table_a
````

```` sql
SELECT *
FROM database_x.table_a
JOIN database_y.table_g ON database_y.table_g.some_attr = database_x.table_a.related_attr
````

> ... like placing an international phone call which requires the specification of a country code.

### Table and Attribute Aliases

Assign to each selected attribute a new name for clarity and disambiguation. Use the `AS` keyword to denote attribute aliases.

```` sql
SELECT
  "fun times" AS new_attribute_name
  ,2 AS original_count
  ,2 + 2 AS revised_count
````

```` sql
SELECT
  some_attribute AS renamed_attribute
  ,a_poorly_named_attribute AS a_well_named_attribute
FROM table_a
````

```` sql
SELECT
  table_a.some_attribute
  ,table_a.created_at
  ,table_b.created_at AS a_disambiguated_attribute_name
FROM table_a
JOIN table_b ON table_a.some_attribute = table_b.other_attribute
````

Improve the readability and usability of your queries by assigning to each table a shorter name, or alias.
Use the `AS` keyword, or a space, to denote table aliases.

```` sql
SELECT *
FROM table_a AS a
````

When aliasing a table, instead of specifying its full name,
 you may substitute the alias.

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
  a.*
  ,b.*
FROM table_a AS a
JOIN table_b AS b ON a.some_attribute = b.other_attribute
````

```` sql
SELECT
  a.some_attribute
  ,a.created_at
  ,b.created_at AS a_disambiguated_attribute_name
FROM table_a AS a
JOIN table_b AS b ON a.some_attribute = b.other_attribute
````

```` sql
SELECT *
FROM database_x.table_a AS a
JOIN database_y.table_g AS g ON g.some_attr = a.related_attr
````

### No Right Joins

```` sql

-- re-write ...
SELECT *
FROM table_a AS a
RIGHT JOIN table_g AS g ON g.some_attr = a.related_attr

-- ... as:
SELECT *
FROM table_g AS g
LEFT JOIN table_a AS a ON g.some_attr = a.related_attr
````

### Aggregate with Care

Count distinct identifiers whenever possible.

```` sql
--- open source dbms:

SELECT
 commodity_name

 -- DO:
 ,count(DISTINCT order_id) AS distinct_order_count -- default to this
 ,count(order_id) AS order_count -- do this if a distinct count doesn't apply to the situation

 -- DO NOT:
 ,count(*) AS row_count -- don't do this
 ,count(commodity_name) AS commodity_count -- don't do this
 ,count(DISTINCT commodity_name) AS distinct_commodity_count -- don't do this

FROM dc_purchase_orders
GROUP BY commodity_name
````
