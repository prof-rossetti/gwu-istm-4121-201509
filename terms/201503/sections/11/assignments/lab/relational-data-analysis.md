# Relational Data Analysis Lab Assignment

Reference:

 + [SQL Overview](/notes/data-analysis.md)
 * [Multi-Table SQL](/notes/data-analysis/multi-table-sql.md)

## Description

Find a real world multi-table dataset which contains business-related data. You may use a dataset from an [open data portals](https://github.com/gwu-business/istm-4121/blob/9884c4063f728fb84e75f41432ae9a34325bde0f/notes/data-analysis.md#open-data-portals) or an [instructional relational datasets](https://github.com/gwu-business/istm-4121/blob/9884c4063f728fb84e75f41432ae9a34325bde0f/notes/data-analysis.md#relational-datasets) or one of the following pre-selected datasets:

 + [Evanston, IL Health and Safety Inspection Data](http://opendata-hub.cloudapp.net/lives/yelp_evanston_healthscores.zip)
 + [Washington, DC Transit Data](http://www.wmata.com/rider_tools/license_agreement.cfm) (agree and submit to reveal the data download)

Download the corresponding .csv or .txt file(s).

Import the data into one or more spreadsheets,
 if necessary and/or possible,
 to get a feel for dataset properties like number of rows, and
  number and nature of column-names.

Import the data into a database using the DBMS of your choice. Refer to the additional support provided below. Identify which DBMS you are using.

Write SQL queries to ask questions of the data and process the data into information. Use the `INNER JOIN` and `LEFT JOIN` clauses demonstrated in class, as well as other previously-demonstrated single-table clauses and functions.

Create indices as necessary to [improve query performance](/resources/database-design/physical-design/benefits_of_indices.sql).

Tell a story based on the knowledge you were able to acquire as a result of your data processing and analysis. Write 2-5 paragraphs in English describing what you learned. Embed or attach one or more queries to demonstrate mastery of a variety of clauses and functions, and to show how you processed the data and arrived at your conclusions.

Suggested Organizational Structure:

 1. Executive Summary of analytical findings (avoid personal language in favor of precise empirical scientific language)
 * Summary of analytical processes and methodologies (may use personal language)
 * SQL Appendix of repeatable queries (optionally include comments to provide further description of methodologies and assumptions)

## Submission Instructions

Upload .pdf file to [Blackboard](https://blackboard.gwu.edu/webapps/assignment/uploadAssignment?content_id=_6858175_1&course_id=_260328_1&assign_group_id=&mode=cpview).

If you found and analyzed your own dataset, include a URL and any other instructions on how to obtain the data.

## Evaluation Criteria

Full credit for a thorough, organized, and well-written analysis accompanied by strong **repeatable** supporting evidence of findings to include one or more SQL queries using the `JOIN` and `LEFT JOIN` clauses.

Else 87% credit for a well-written or adequate analysis accompanied by supporting evidence.

Else 66% credit for a well-written or adequate or inadequate analysis lacking proper related supporting evidence.

Else no credit.


<hr>

## Support for working with LIVES datasets

See [automated data importation script](https://github.com/gwu-business/open-data-library/blob/master/support/scripts/import_evanston_inspections.sql).

<hr>

## Support for working with GTFS Datasets

### Schema Reference

The suggested dataset conforms to the [General Transit Feed Specification](https://developers.google.com/transit/gtfs/reference?hl=en), which defines and describes table attributes in a data dictionary.

### Import Process

#### Files

If there are additional files (e.g. *too_fast.txt* or *route_xref.txt*) in the .zip dataset extract besides those described in the data dictionary, then do not attempt to import the extraneous files. Only focus on the [required files](https://developers.google.com/transit/gtfs/reference?hl=en#feed-files) (e.g. *agency.txt*, *routes.txt*, *stops.txt*, *stop_times.txt*, etc.).

#### Datatypes

If you encounter import errors after attempting to import a given field as an *integer*, *date*, *time*, or *datetime* datatype, instead choose the *string*/*varchar*/*short-text* datatype to remediate errors. If text attribute values are too large to fit in a *string*/*varchar*/*short-text* datatye, instead choose a *text*/*memo* datatype.

![choosing-datatypes-in-sequel-pro](/resources/images/sequel-pro-datatype-options.png)

#### Line-breaks

If you encounter line-break [errors](https://code.google.com/p/sequel-pro/issues/detail?id=1282#c2) during the importation process, specify the proper field and line delineation character(s).

![choosing-deliniation-option-from-dropdown-in-sequel-pro](/resources/images/sequel-pro-imporation-deliniation-options.png)

#### Character Enclosures

Like line-breaks, if you encounter character-enclosure issues, specify the proper field enclosure character during the importation process.

#### Automation

Use .sql queries and scripts to automate your manual efforts, as appropriate.

Create the table, including its physical structure.

```` sql
CREATE TABLE agencies (
  agency_id VARCHAR(255),
  agency_name VARCHAR(255),
  agency_url VARCHAR(255),
  agency_timezone VARCHAR(255),
  agency_lang VARCHAR(255),
  agency_phone VARCHAR(255),
  agency_fare_url VARCHAR(255)
);
/*
table creation references :
  + http://dev.mysql.com/doc/refman/5.1/en/create-table.html
  + https://developers.google.com/transit/gtfs/reference?hl=en#agencytxt
*/
````

Import the data.

```` sql
LOAD DATA LOCAL INFILE '~/Desktop/google_transit/agency.txt'
  INTO TABLE agencies
  FIELDS TERMINATED BY ','
  -- FIELDS ENCLOSED BY '""' -- if applicable
  LINES TERMINATED BY '\r\n' -- windows-style line breaks
  -- LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;
/*
data importation references:
  + https://dev.mysql.com/doc/refman/5.0/en/loading-tables.html
  + https://dev.mysql.com/doc/refman/5.0/en/insert.html
  + https://dev.mysql.com/doc/refman/5.0/en/load-data.html
  + csv/txt line break characters:
    + windows: '\r\n'
    + mac: either '\n' (OS-X), or '\r' (OS-9 and earlier)
*/
````

Add indices and primary keys as appropriate.

```` sql
ALTER TABLE agencies ADD PRIMARY KEY(agency_id);
````
