# Data Analysis

## Structured Query Language (SQL)

SQL is the language recognized by relational databases.

### Clauses

Like an English sentence, each SQL query is comprised of one or more clauses.

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
  * [Multi-Schema](data-analysis/multi-database-sql.md)

### Instructional Datasets

Single-table datasets:

 + Real student survey responses (.csv files each containing ~40 rows)
  + [ISTM 4121 responses](https://github.com/gwu-business/istm-4121/blob/master/resources/questionnaire/responses.csv)
  + [BADM 2301 responses](https://github.com/gwu-business/badm-2301/blob/master/resources/questionnaire/responses.csv)
 + [Fake student survey responses](https://github.com/gwu-business/fake-responses/tree/master/data) (.csv files containing between 100 and 100k rows)
 + A [growing collection of open data](https://github.com/gwu-business/open-data-reference)
 + Any of the [BLDS](http://permitdata.org/) [datasets](http://permitdata.org/#samples)

Relational (multi-table) datasets:

 + Any of the [GTFS](https://developers.google.com/transit/gtfs/reference?hl=en) [datasets](http://www.gtfs-data-exchange.com/agencies) (related .txt files)
 + Any of the [LIVES](http://www.yelp.com/healthscores) [datasets](http://www.yelp.com/healthscores/feeds) (related .csv files)
 + [2016 US Presidential Election Data](https://github.com/gwu-business/2016-election-data/tree/master/data) (related .csv files)

Students are encouraged to scour open data portals for more data:

 + [United States Open Data](http://www.data.gov/)
 + [Washington, DC Open Data](http://opendata.dc.gov/)
 + [San Francisco, CA Open Data](https://data.sfgov.org/)
 + [New York, NY Open Data](https://nycopendata.socrata.com/)
 + [Seattle, WA Open Data](https://data.seattle.gov/)
 + [London, UK Open Data](http://data.london.gov.uk/dataset)
 + [India Open Data](https://data.gov.in/catalogs)
 + [Socrata Open Data](https://opendata.socrata.com/)
 + [Civic Data](http://www.civicdata.com)

<hr>

Additional Resources:

 + [SQL Best Practices](data-analysis/best-practices.md)
 + [W3 Schools SQL Tutorial](http://www.w3schools.com/sql/default.asp)
 + [SQL Zoo](http://sqlzoo.net/)
 + [Code Academy SQL Course](https://www.codecademy.com/courses/learn-sql)
 + [Tech on the Net SQL Tutorial](http://www.techonthenet.com/sql/)
