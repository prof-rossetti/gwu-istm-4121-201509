# Relational Data Processing and Analysis Lab Assignment

Find a real world multi-table (relational) dataset which contains business-related data. Or choose one of the following pre-selected open datasets:

 + [Washington DC Transit Data](http://www.wmata.com/rider_tools/license_agreement.cfm) (agree and submit to reveal the data download)

Download the corresponding .csv or .txt file(s).

Import the data into one or more spreadsheets,
 if necessary and/or possible,
 to get a feel for dataset properties like number of rows (size), and
  number,
  name and
  nature of attributes.

Import the data into a database using the DBMS of your choice. Refer to the additional support provided below.

Identify any existing relationships between the tables. Create indices as necessary to improve performance.

Write SQL queries to ask questions of the data and process the data into information. Use the `JOIN` and `LEFT JOIN` clauses demonstrated in class, as well as other previously-demonstrated single-table clauses and functions.

Tell a story based on the knowledge you were able to acquire as a result of your data processing and analysis. Write 2-5 paragraphs in English describing what you learned. Embed or attach one or more queries to demonstrate mastery of a variety of clauses and functions, and to show how you processed the data and arrived at your conclusions.

Suggested Organizational Structure:

 1. Executive Summary of analytical findings (avoid personal language in favor of precise empirical scientific language)
 * Summary of analytical processes and methodologies (may use personal language)
 * SQL Appendix of repeatable queries (optionally include comments to provide further description of methodologies and assumptions)

## Submission Instructions

Upload .pdf file to [Blackboard](https://blackboard.gwu.edu/webapps/assignment/uploadAssignment?content_id=_6858175_1&course_id=_260328_1&assign_group_id=&mode=cpview).

If using a non-suggested dataset, attach a compressed dataset of .csv file(s) or .sql file or .mdb file along with your submission.

## Evaluation Criteria

Full credit for a thorough, organized, and well-written analysis accompanied by strong supporting evidence of findings to include one or more SQL queries using the `JOIN` and `LEFT JOIN` clauses.

Else 4/5 credit for a well-written or adequate analysis accompanied by supporting evidence.

Else 2/3 credit for a well-written or adequate analysis lacking proper or related supporting evidence.

Else no credit.

<hr>

## Support for working with the Suggested Dataset

### Schema Reference

The suggested dataset conforms to the [General Transit Feed Specification](https://developers.google.com/transit/gtfs/reference?hl=en), which defines and describes table attributes in a data dictionary.

### Import Process

#### Files

If there are additional files (e.g. *too_fast.txt* or *route_xref.txt*) in the .zip dataset extract besides those described in the data dictionary, then do not attempt to import the extraneous files. Only focus on the [specified files](https://developers.google.com/transit/gtfs/reference?hl=en#feed-files) (e.g. *agency.txt*, *routes.txt*, *stops.txt*, *stop_times.txt*, etc.).

#### Datatypes

If you encounter import errors after attempting to import a given field as an *integer*, *date*, *time*, or *datetime* datatype, instead choose the *string*/*varchar*/*short-text* datatype to remediate errors. If text attribute values are too large to fit in a *string*/*varchar*/*short-text* datatye, instead choose a *text*/*memo* datatype.

#### Line-breaks

The suggested dataset .txt files contain windows-style line breaks, and may throw [errors](https://code.google.com/p/sequel-pro/issues/detail?id=1282#c2) for mac users attempting to import via Sequel Pro software. To remediate: either a) open each .txt file in a text editor or spreadsheet and save as a .csv and import the .csv as usual, or b) write custom SQL table creation and import statements like the examples below...

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
  LINES TERMINATED BY '\r\n' -- windows-style line breaks
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

Don't forget to add indices and primary keys as appropriate.

```` sql
ALTER TABLE agencies ADD PRIMARY KEY(agency_id);
````
