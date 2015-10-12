# Data Analysis Lab Assignment

Reference:

 + [SQL Overview](/notes/data-analysis.md)
 + [Single-table SQL](/notes/data-analysis/single-table-sql.md)
 * [Single-table SQL Subqueries](/notes/data-analysis/subqueries.md)
 * [Single-table SQL Aggregations](/notes/data-analysis/single-table-aggregate-sql.md)

## Description

Find a real world
 single-table dataset
 which contains business-related data.
 Try searching [data.gov](http://www.data.gov/),
 [opendata.dc.gov](http://opendata.dc.gov/),  or other open data websites. If you get stuck, you may choose one of the following suggested datasets:

 + [Washington DC Parks](http://opendata.dc.gov/datasets/287eaa2ecbff4d699762bbc6795ffdca_9)
 + [Washington DC Purchase Orders](http://opendata.dc.gov/datasets/f61f962c2ce84f2caa1919d425c8061d_0)
 + [Tampa, FL Building Permits](http://www.civicdata.com/dataset/tampa_permit_standard_permits_v11_11419/resource/05af49ae-72be-4dbe-b976-98ffd159a72a)

Reference also these [dataset copies](https://github.com/gwu-business/washington-dc-open-data). If you choose a dataset besides the ones contained in this repository, add it to the collection.

Download the corresponding .csv or .txt file(s).

Import the data into a spreadsheet,
 if necessary and/or possible,
 to get a feel for dataset properties like number of rows (size), and
  number,
  name and
  nature of attributes.

Import the data into a database using the DBMS of your choice. Identify which DBMS you are using.
 Write SQL queries to ask questions of the data and process the data into information. Use each of the single-table SQL clauses and many of the functions demonstrated in class.

Tell a story based on the knowledge you were able to acquire as a result of your data processing and analysis. Write 2-5 paragraphs in English describing what you learned. Embed or attach one or more queries to demonstrate mastery of a variety of clauses and functions, and to show how you processed the data and arrived at your conclusions.

Suggested Organizational Structure:

 1. Executive Summary of analytical findings (avoid personal language in favor of precise empirical scientific language)
 * Summary of analytical processes and methodologies (may use personal language)
 * SQL Appendix of repeatable queries (optionally include comments to provide further description of methodologies and assumptions)

## Submission Instructions

Upload .pdf file to [Blackboard](https://blackboard.gwu.edu/webapps/assignment/uploadAssignment?content_id=_6856968_1&course_id=_260328_1&assign_group_id=&mode=cpview).

If you found and analyzed your own dataset, include a URL and any other instructions on how to obtain the data.

## Evaluation Criteria

Full credit for a thorough, organized, and well-written analysis accompanied by strong **repeatable** supporting evidence of findings to include one or more SQL queries using all single-table clauses (e.g.`SELECT`,`FROM`,`WHERE`,`GROUP BY`,`ORDER BY`, and either `TOP` or `LIMIT`), as well as many aggregate functions and string/date functions.

Else 87% credit for a well-written or adequate analysis accompanied by supporting evidence.

Else 66% credit for a well-written or adequate or inadequate analysis lacking proper related supporting evidence.

Else no credit.
