# Data Analysis

## SQL

Each SQL query is like a sentence. Like a sentence, a query is comprised of one or more clauses.

### Anatomy of a Query

Here are all the clauses available for use in a SQL query, in the order they need to be used:

```` sql
SELECT ...
FROM ...
JOIN ...
WHERE ...
GROUP BY ...
HAVING ...
ORDER BY ...
LIMIT ...
````

There is also a `UNION` clause used in special cases, but it is outside the scope of this course.

Not all clauses need to be used in every query.

<hr>




















### Single-table Analysis

#### Clauses

The `SELECT` clause specifies the attributes to be included in the resulting dataset.

```` sql
SELECT "fun times"
````

```` sql
SELECT 2
````

```` sql
SELECT 2+2
````

> To select all attributes from a given table,
 use select `*` (star) instead of selecting each attribute by name.
 NOTE: this is slower than selecting each attribute by name.

The `FROM` clause is mandatory except for non-table-related selections and functions.
 It specifies the database table from which to select results.

```` sql
SELECT attribute_name
FROM table_name
````

```` sql
SELECT
  attribute_a
  ,attribute_b
FROM table_x
````

The `WHERE` clause is optionally used to
 filter the set of returned results according to one or more logical operations.

```` sql
SELECT
 attribute_a
 ,attribute_b
FROM table_x
WHERE attribute_b = "some specific value" -- equal to
````

```` sql
SELECT
 attribute_a
 ,attribute_b
FROM table_x
WHERE attribute_b <> "some specific value" -- not equal to
````

```` sql
SELECT
 attribute_a
 ,attribute_b
FROM table_x
WHERE attribute_b > "some numeric value" -- greater than, less than, etc.
````

```` sql
SELECT
 attribute_a
 ,attribute_b
FROM table_x
WHERE attribute_b >= "some numeric value" -- greater than or equal to, less than or equal to, etc.
````

```` sql
SELECT
  attribute_a
  ,attribute_b
FROM table_x
WHERE attribute_b LIKE "%a wildcard value%"
````

```` sql
SELECT
  attribute_a
  ,attribute_b
FROM table_x
WHERE attribute_b IN ("specific value 1", "specific value 2")
````

```` sql
SELECT *
FROM my_table
WHERE attribute_a IS NULL
````

```` sql
SELECT *
FROM my_table
WHERE attribute_a IS NOT NULL
````

The `ORDER BY` clause is optionally used to
 specify the attributes and method for sorting the resulting data set.

```` sql
SELECT *
FROM my_table
ORDER BY attribute_a -- sort ASC (in ascending order) by default
````

```` sql
SELECT *
FROM my_table
ORDER BY attribute_a DESC -- sort in descending order
````

```` sql
SELECT
 attribute_a
 ,attribute_b
FROM table_x
WHERE attribute_b = "some specific value"
ORDER BY attribute_a
````

The `LIMIT` clause is optionally used to restrict the total number of results returned.

```` sql
SELECT *
FROM table_a
LIMIT 200
````

```` sql
SELECT *
FROM table_a
ORDER BY attribute_a DESC
LIMIT 10
````

#### Functions

 + CAST()
 + IF()
 + CASE
 + String Functions
 + Date Functions

#### Attribute Aliasing

```` sql
SELECT "fun times" AS new_attribute_name
````


<hr>











### Single-table SQL Aggregations

#### Clauses

The `GROUP BY` clause is optionally used to specify the attributes by which other attributes may be aggregated.

> When grouping by one or more attributes,
 each attribute in the select clause must either be
  included in the group by clause,
  or aggregated as part of an aggregate function.

The `HAVING` clause
 is optionally used to filter the set of returned results according to one or more logical operations.

> The having clause can specify renamed attributes and aggregated attributes because it executes **after** many of the other clauses.

#### Functions

 + SUM
 + COUNT

#### Distinctness

```` sql
SELECT DISTINCT attribute_a
FROM table_z
````

```` sql
SELECT
 count(DISTINCT attribute_x) as x_count
FROM table_z
````

```` sql
SELECT
 attribute_m
 ,count(DISTINCT attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
````

```` sql
SELECT
 attribute_m
 ,count(DISTINCT attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
ORDER BY x_count ASC
````

```` sql
SELECT
 attribute_m
 ,count(DISTINCT attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
ORDER BY x_count DESC
````

```` sql
SELECT
 attribute_m
 ,count(DISTINCT attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
ORDER BY x_count DESC
LIMIT 10
````

<hr>





















### Multi-table SQL

#### Clauses

Zero or more `JOIN` clauses may be used to relate additional table(s) to the table specified in the from clause.

Each join clause must state which attributes are being used to join the tables together. Usually joins happen when one attribute in one table equals another attribute in another table.

There are different kinds of joins: inner and outer.

An inner join will return only the results that match the join condition.
 Records from both the original table and joined table may be excluded.

> Use `JOIN` to denote an inner join

An outer join will append onto the original table any results from the joined table that happen to match the join condition.
 Records from the original table will all be included, while some records from the joined table may be excluded.

Outer joins reference both a `LEFT JOIN` and a `RIGHT JOIN`.
 They only differ in their consideration of which table is the original table
 and which is the joined table.

> A right join can be re-written in opposite order to convey a left join, and vice-versa. Use left joins for all your outer joins, if possible, for consistency.

#### Table Aliases

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
FROM table_a AS a
JOIN
````








<hr>

### Multi-schema SQL

#### Explicit Database Specification

```` sql
SELECT *
FROM database_x.table_a
````

```` sql
SELECT a.*
FROM database_x.table_a AS a
````
