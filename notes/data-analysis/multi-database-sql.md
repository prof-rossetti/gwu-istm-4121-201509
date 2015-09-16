# Multi-database SQL

Sometimes tables in one database may have relationships with one or more tables in one or more other databases.

This is the case in a data warehouse, or collection of databases.

## Considerations

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
