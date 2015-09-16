# Data Analysis

## SQL

Like an English  sentence, each SQL query is comprised of one or more clauses.

### Clauses

Here are all the clauses available for use in a SQL query, in the order they are to be used:

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

It is not necessary to use all, or even most, clauses in a SQL query.

<hr>




















### Single-table SQL

#### Clauses

##### SELECT

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

Selecting multiple attributes into a single resulting dataset.

```` sql
SELECT
  "fun times",
  2,
  2 + 2
````

Alias each attribute for clarity.

```` sql
SELECT
  "fun times" AS new_attribute_name
  ,2 AS original_count
  ,2 + 2 AS revised_count
````

##### FROM

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

To select all attributes from a given table,
 use a star (`*`) to denote all attributes instead of listing each attribute by name.

```` sql
SELECT *
FROM table_x
````

> NOTE: `SELECT *` is slower than selecting each attribute by name.

##### WHERE

The `WHERE` clause is optionally used to
 filter the set of returned results according to one or more logical operations.

Follow the different kind of logical operations in each of the queries below:

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
WHERE attribute_b LIKE "%some partial value%" -- string matching using `LIKE` and `%`
````

```` sql
SELECT
  attribute_a
  ,attribute_b
FROM table_x
WHERE attribute_b IN ("specific value 1", "specific value 2") -- inclusion in a list
````

```` sql
SELECT *
FROM my_table
WHERE attribute_a IS NULL -- lack of any value
````

```` sql
SELECT *
FROM my_table
WHERE attribute_a IS NOT NULL -- presence of any value
````

##### ORDER BY

The `ORDER BY` clause is optionally used to
 specify the attributes and method for sorting the resulting data set.

```` sql
SELECT *
FROM my_table
ORDER BY attribute_a -- sort in ascending order (ASC) by default
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

##### LIMIT

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

Here are a few important functions to know. Consult SQL documentation as well as DBMS documentation for a comprehensive list of functions and instructions on how to use them.

##### IF

```` sql
SELECT
  IF(courses.registration_name LIKE "%ISTM%", "Information Systems Department", "Other Department") AS department
FROM (
  SELECT "ISTM-4121-10" AS registration_name -- change this value and see what happens ...
) courses
````

##### CASE

```` sql
SELECT
  CASE
     WHEN courses.registration_name LIKE '%ISTM%' THEN 'Information Systems Department'
     WHEN courses.registration_name LIKE '%BADM%' THEN 'Business Administration Department'
     WHEN courses.registration_name LIKE '%MKTG%' THEN 'Marketing Department'
     ELSE 'Other Department'
  END department
FROM (
  SELECT "ISTM-4121-10" AS registration_name
) courses
````

##### String Functions

Consult SQL and DBMS documentation for comprehensive list of string functions, including `CAST`, `CONCAT`, `SUBSTRING_INDEX` and more.

```` sql
SELECT
  cast('2016-11-06' AS DATETIME) AS scheduled_at
  ,cast('2016-11-06' AS DATE) AS scheduled_on
````

##### Date Functions

Consult SQL and DBMS documentation for comprehensive list of date functions.

#### Sub-Queries

Follow this progression of nested sub-queries:

```` sql
SELECT *
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT my_table_view.*
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT my_table_view.order_date
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT
  mtv.order_date_string
  ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
  ,SUBSTRING_INDEX(
      SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
  ) AS order_month_abbrev
  ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
FROM (
    SELECT '1-Oct-14' AS order_date_string
) AS mtv
````

```` sql
SELECT
  mtv2.order_date_string
  ,mtv2.two_digit_order_year
  ,mtv2.order_month_abbrev
  ,mtv2.day_number
  ,concat(
    '20'
    ,mtv2.two_digit_order_year
    ,'-'
    ,mtv2.order_month_abbrev
    ,'-'
    ,mtv2.day_number
  ) AS order_date_string_formatted
FROM (
    -- my table view #2 (a.k.a. mtv2)
    SELECT
      mtv.order_date_string
      ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
      ,SUBSTRING_INDEX(
          SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
      ) AS order_month_abbrev
      ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
    FROM (
        -- my table view (a.k.a. mtv)
        SELECT '1-Oct-14' AS order_date_string
    ) AS mtv
) AS mtv2
````

```` sql
SELECT
  mtv3.order_date_string
  ,str_to_date(mtv3.order_date_string_formatted, '%Y-%b-%d') AS order_date
FROM (
    -- my table view #3 (a.k.a. mtv3)
    SELECT
      mtv2.order_date_string
      ,mtv2.two_digit_order_year
      ,mtv2.order_month_abbrev
      ,mtv2.day_number
      ,concat(
        '20'
        ,mtv2.two_digit_order_year
        ,'-'
        ,mtv2.order_month_abbrev
        ,'-'
        ,mtv2.day_number
      ) AS order_date_string_formatted
    FROM (
        -- my table view #2 (a.k.a. mtv2)
        SELECT
          mtv.order_date_string
          ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
          ,SUBSTRING_INDEX(
              SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
          ) AS order_month_abbrev
          ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
        FROM (
            -- my table view (a.k.a. mtv)
            SELECT purchase_orders.order_date as order_date_string
            -- for demonstration, use instead:  `SELECT '1-Oct-14' AS order_date_string`
        ) AS mtv
    ) AS mtv2
) mtv3
````

```` sql
SELECT
  '1-Oct-14' AS order_date_messy_string -- po.`Ordered Date`
  ,str_to_date(
      concat(
              concat("20",SUBSTRING_INDEX('1-Oct-14', '-', -1)),
              "-",
              SUBSTRING_INDEX(SUBSTRING_INDEX('1-Oct-14', '-', -2), '-', 1),
              "-",
              SUBSTRING_INDEX('1-Oct-14', '-', 1)
      ), '%Y-%b-%d'
  ) AS order_date
````

What is the difference between the last two queries?

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

These are the most common aggregate functions:

 + SUM()
 + COUNT()

> As a matter of practice, avoid `COUNT(*)` in favor of either `COUNT(attribute_name)` or `COUNT(DISTINCT attribute_name)`

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

> Use `LEFT JOIN` or `RIGHT JOIN` to denote an outer join

Left and right joins only differ in their consideration of which table is the original table
 and which is the joined table.

A right join can be re-written in opposite order to convey a left join, and vice-versa.

> Use left joins for all your outer joins, if possible, for consistency.

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
