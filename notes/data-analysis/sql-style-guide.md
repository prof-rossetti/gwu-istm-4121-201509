# SQL Style Guide

## Database Design

All database, table, and attribute names should be in [snake-case](https://en.wikipedia.org/wiki/Snake_case), and should be comprised of only **lower-case** letters.

## Database Usage

 + align major clauses on the left margin
 + if there is a single clause parameter, keep it on the same line as the clause
 + if there are multiple clause parameters, write each on a new indented line
 + use table aliases and database aliases when applicable
 + indent subqueries, maintaining a nested left margin for each

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































### Specifying Table Names

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

### Aliasing Table Names

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


### Explicit Database Name Specification

```` sql
SELECT *
FROM database_x.table_a
````

```` sql
SELECT a.*
FROM database_x.table_a AS a
````

```` sql
SELECT a.*, g.*
FROM database_x.table_a AS a
JOIN database_y.table_g as g on g.some_attr = a.related_attr
````
