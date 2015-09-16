# Single-table, Aggregate SQL

Sometimes one or more records in a single database table may share the same attribute value.

## Clauses

### GROUP BY

The `GROUP BY` clause is optionally used to specify the attributes by which other attributes may be aggregated.

When grouping by one or more attributes,
 each attribute in the select clause must either be
  included in the group by clause,
  or aggregated as part of an aggregate function.

### HAVING

The `HAVING` clause
 is optionally used to filter the set of returned results according to one or more logical operations.

The having clause can specify renamed attributes and aggregated attributes because it executes **after** many of the other clauses.

## Functions

These are the most common aggregate functions:

 + SUM()
 + COUNT()

> As a matter of practice, avoid `COUNT(*)` in favor of either `COUNT(attribute_name)` or `COUNT(DISTINCT attribute_name)`

## Other Considerations

### Distinctness

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
HAVING x_count > 100
ORDER BY x_count DESC
````

```` sql
SELECT
 attribute_m
 ,count(DISTINCT attribute_x) as x_count
FROM table_z
GROUP BY attribute_m
HAVING x_count > 100
ORDER BY x_count DESC
LIMIT 10
````
