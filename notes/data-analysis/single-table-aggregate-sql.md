# Single-table, Aggregate SQL

## Clauses

### GROUP BY

The `GROUP BY` clause is optionally used to specify the attributes by which other attributes may be aggregated.

```` sql
SELECT
 attribute_m
 ,count(attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
````

When grouping by one or more attributes,
 each attribute in the select clause should either be
  included in the group by clause,
  or aggregated as part of an aggregate function.

```` sql
SELECT
 attribute_m
 ,attribute_n
 ,count(attribute_x) as x_count
 ,sum(attribute_y) as y_sum
FROM table_z
GROUP BY attribute_m, attribute_n
````

Do not count or otherwise aggregate attributes used in grouping. Avoid `COUNT(*)` in favor of either `COUNT(attribute_name)` or `COUNT(DISTINCT attribute_name)`. See the [style guide](/notes/data-analysis/sql-style-guide.md#aggregate-with-care) for an example.

### HAVING

The `HAVING` clause
 is optionally used to filter the set of returned results according to one or more logical conditions.

 ```` sql
 SELECT
  attribute_m
  ,count(attribute_x) as x_count
 FROM table_z
 GROUP BY attribute_m
 HAVING count(attribute_x) > 100
 ````

The having clause is similar to the where clause, in that they both apply a filter to the resulting dataset based on one or more logical conditions.

The major advantage of the having clause is that it executes **after** many of the other clauses, enabling it to recognize attribute aliases applied during execution of the select clause, including the names of aggregated attributes.

```` sql
SELECT
 attribute_m
 ,count(attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
HAVING x_count > 100
````

## Functions

Databases share many familiar aggregation functions as spreadsheets. These are the most common/useful aggregate functions:

 + `SUM()`
 + `COUNT()`
 + `MAX()`
 + `MIN()`
 + `GROUP_CONCAT()` -- mysql only

## Other Considerations

### Distinctness in Aggregations

```` sql
--- open source dbms:
SELECT
 attribute_m
 ,attribute_n
 ,count(attribute_x) as x_count
 ,count(DISTINCT attribute_x) as x_count_distinct
FROM table_z
GROUP BY attribute_m, attribute_n
````
