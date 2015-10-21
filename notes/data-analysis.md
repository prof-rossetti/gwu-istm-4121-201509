# Data Analysis

## Structured Query Language (SQL)

SQL is the language of relational databases.
 All major RDBMS tools recognize SQL.

SQL enables a human to ask questions of the database management system in an automated, programmatic way.

SQL helps humans transform **data** into **information**.

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

It is not necessary to use all clauses in a single query.

There is also a `UNION` clause used in special cases, but it is outside the scope of this course.

Additional clauses and sub-clauses exist, but may or may not be uniformly recognized across DBMSs. For example, open source DBMS like MySQL and PostgreSQL recognize a stand-alone `LIMIT` clause, whereas MS Access instead recognizes `TOP` as a sub-clause of the select clause. Beware of DBMS differences, and use your knowledge to inform your DBMS preferences.

### Instructional Resources

#### Lecture Notes

##### I. Single-table Analysis Notes

 + [Single-table SQL](data-analysis/single-table-sql.md)
 + [Single-table Aggregations](data-analysis/single-table-aggregate-sql.md)

##### II. Multi-table Analysis Notes

 + [Multi-Table SQL](data-analysis/multi-table-sql.md)

#### Background Material

+ [SQL Sub-queries](/notes/data-analysis/subqueries.md)
+ [Multi-Schema SQL](/notes/data-analysis/multi-database-sql.md)
+ [Database Management SQL](/notes/database-management/database-management-sql.md)
+ [Professor Rossetti's SQL Best Practices](/notes/data-analysis/best-practices.md) :smile:
+ [Professor Rossetti's SQL Style Guide](/notes/data-analysis/sql-style-guide.md) :smile:

#### Lab Datasets

##### Single-table Datasets

 + Real student survey responses (.csv files each containing ~40 rows)
  + [ISTM 4121 responses](https://github.com/gwu-business/istm-4121/blob/master/resources/questionnaire/responses.csv)
  + [BADM 2301 responses](https://github.com/gwu-business/badm-2301/blob/master/resources/questionnaire/responses.csv)
 + [Fake student survey responses](https://github.com/gwu-business/fake-responses/tree/master/data) (.csv files containing between 100 and 100k rows)
 + A [growing collection of open data](https://github.com/gwu-business/open-data-reference)
 + Any of the [BLDS](http://permitdata.org/) [datasets](http://permitdata.org/#samples)

##### Relational Datasets

 + [2016 US Presidential Election/Campaign Data](https://github.com/gwu-business/2016-election-data/tree/master/data) (related .csv files)
 + [Radio Data](https://github.com/gwu-business/radio-data/tree/master/data)
 + Any of the [GTFS](https://developers.google.com/transit/gtfs/reference?hl=en) [datasets](http://www.gtfs-data-exchange.com/agencies) (related .txt files)
 + Any of the [LIVES](http://www.yelp.com/healthscores) [datasets](http://www.yelp.com/healthscores/feeds) (related .csv files)


### Additional Resources

#### Internet Tutorials

 + [W3 Schools](http://www.w3schools.com/sql/default.asp)
 + [SQL Bolt](http://sqlbolt.com/)
 + [SQL Zoo](http://sqlzoo.net/)
 + [Code Academy](https://www.codecademy.com/courses/learn-sql)
 + [Tech on the Net](http://www.techonthenet.com/sql/)

#### Wild Datasets

Students are encouraged to scour open data portals for more data.

Students are encouraged to add interesting/helpful datasets to the learning community's [open data library](#https://github.com/gwu-business/open-data-reference).

#### Open Data Portals

 + [United States Open Data Portal](http://www.data.gov/)
 + [Washington, DC Open Data Portal](http://opendata.dc.gov/)
 + [San Francisco, CA Open Data Portal](https://data.sfgov.org/)
 + [New York, NY Open Data Portal](https://nycopendata.socrata.com/)
 + [Seattle, WA Open Data Portal](https://data.seattle.gov/)
 + [London, UK Open Data Portal](http://data.london.gov.uk/dataset)
 + [India Open Data Portal](https://data.gov.in/catalogs)
 + [Socrata Open Data Portal](https://opendata.socrata.com/)
 + [Civic Data Portal](http://www.civicdata.com)

> Did you find a valuable open data portal? Add it to the list!
