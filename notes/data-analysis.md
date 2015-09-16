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
````

There is also the ability to use `TOP` as part of the `SELECT` clause as a way to restrict the number of resulting records. In mysql, this is alternatively done using a `LIMIT` clause, which is its own clause and is expected to be the last clause in any given query.

There is also a `UNION` clause used in special cases, but it is outside the scope of this course.

It is not necessary to use all, or even most, clauses in a SQL query.

### Instructional SQL Modules

 1. [Single-table](data-analysis/single-table-sql.md)
  * [Subqueries](data-analysis/subqueries.md)
  * [Aggregations](data-analysis/single-table-aggregate-sql.md)
 * [Multi-Table](data-analysis/multi-table-sql.md)
  * [Multi-Schema](notes/data-analysis/multi-database-sql.md)
