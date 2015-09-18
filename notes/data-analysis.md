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

There is also a `UNION` clause used in special cases, but it is outside the scope of this course.

Additional clauses and sub-clauses exist, but may or may not be uniformly recognized across DBMSs. For example, open source DBMS like MySQL and PostgreSQL recognize a stand-alone `LIMIT` clause, whereas MS Access instead recognizes `TOP` as a sub-clause of the select clause. Beware of DBMS differences, and use your knowledge to inform your DBMS preferences.

It is not necessary to use all, or even most, clauses in a SQL query.

### Instructional SQL Modules

 1. [Single-table](data-analysis/single-table-sql.md)
  * [Subqueries](data-analysis/subqueries.md)
  * [Aggregations](data-analysis/single-table-aggregate-sql.md)
 * [Multi-Table](data-analysis/multi-table-sql.md)
  * [Multi-Schema](notes/data-analysis/multi-database-sql.md)

### Instructional Datasets

 + Real student survey responses (.csv files each containing ~40 rows)
  + [ISTM 4121 responses](https://github.com/gwu-business/istm-4121/blob/master/resources/questionnaire/responses.csv)
  + [BADM 2301 responses](https://github.com/gwu-business/badm-2301/blob/master/resources/questionnaire/responses.csv)
 + [Fake student survey responses](https://github.com/gwu-business/fake-responses/tree/master/data) (.csv files containing between 100 and 100k rows)

### Additional Resources

 + [SQL Best Practices](data-analysis/best-practices.md)
 + [W3 Schools SQL Tutorial](http://www.w3schools.com/sql/default.asp)
 + [MS Access SQL Documentation](https://msdn.microsoft.com/en-us/library/office/ff841692.aspx)
 + [MS Access Video Tutorials](https://www.youtube.com/view_play_list?p=4DD96CF7EF8C1955)
 + [MySQL Language Documentation](http://dev.mysql.com/doc/refman/5.7/en/language-structure.html)
 + [MySQL Syntax Documentation](http://dev.mysql.com/doc/refman/5.7/en/sql-syntax.html)
 + [MySQL Functions Documentation](http://dev.mysql.com/doc/refman/5.7/en/functions.html)
 + [MySQL Tutorial](http://dev.mysql.com/doc/refman/5.7/en/tutorial.html)
