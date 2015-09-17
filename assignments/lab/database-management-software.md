# Database Management Software Lab Assignment

## Description

Choose a DMBS.

Install and configure it.

Optionally install and configure
 personal computing software
 as an additional interface between you and the data.

Connect to the DBMS.

Use the DMBS to create a new database.

```` sql
CREATE DATABASE my_db;
````

Obtain a .csv or .tsv or .txt file.

Use the DMBS to import the .csv file into a new database table,
 perhaps named `my_table`.

Execute a query on the new database table.

```` sql
SELECT * FROM my_db.my_table;
````

## Submission Instructions

Demonstrate to an instructor.

## Evaluation Criteria

Full credit for using a DBMS to execute a SQL query.

Else no credit.

<hr>

## Bonus/Further Exploration

### Data Importation

Delete the table.

```` sql
DROP TABLE my_db.my_table;
````

Re-import the table,
 but this time change one or more attribute names or datatypes during import.
 Notice the importance of datatype decisions.

Import tables of varying sizes,
 and execute the same query on each table.
 Notice the affect of table-size on query execution time.

Create a new table from an existing table, manipulating attribute names or values as necessary:

```` sql
DROP TABLE IF EXISTS orders;
CREATE TABLE orders AS (
    SELECT
        po.agency AS agency_name
        ,po.commodity AS commodity_name
        ,po.supplier AS supplier_name
        /*
        -- manipulating the order date...
        ,po.`Ordered Date`
        ,str_to_date(po.`Ordered Date`, '%Y-%m-%d') AS order_date_fail -- doesn't work... need to manipulate string first, and maybe use different date conversion format than '%Y-%m-%d'
        ,SUBSTRING_INDEX(po.`Ordered Date`, '-', -1) AS yy -- almost in YYYY form...
        ,concat("20",SUBSTRING_INDEX(po.`Ordered Date`, '-', -1)) AS year_num -- in YYYY form
        ,SUBSTRING_INDEX(
           SUBSTRING_INDEX(po.`Ordered Date`, '-', -2) -- month and year
           , '-', 1
        ) AS month_abbrev
        ,SUBSTRING_INDEX(po.`Ordered Date`, '-', 1) AS day_num
        ,concat(
            concat("20",SUBSTRING_INDEX(po.`Ordered Date`, '-', -1)),
            "-",
            SUBSTRING_INDEX(SUBSTRING_INDEX(po.`Ordered Date`, '-', -2), '-', 1),
            "-",
            SUBSTRING_INDEX(po.`Ordered Date`, '-', 1)
        ) AS order_date_string
       */
       ,str_to_date(
            concat(
                concat("20",SUBSTRING_INDEX(po.`Ordered Date`, '-', -1)),
                "-",
                SUBSTRING_INDEX(SUBSTRING_INDEX(po.`Ordered Date`, '-', -2), '-', 1),
                "-",
                SUBSTRING_INDEX(po.`Ordered Date`, '-', 1)
            ), '%Y-%b-%d'
        ) AS order_date
        ,po.`po_#` AS order_number
        ,po.`PO Amount` AS order_price
        ,po.objectid AS order_id
    FROM purchase_orders po
); -- reference: http://stackoverflow.com/questions/17566573/convert-month-shortname-to-month-number
````

### Database Management

Create new database users, and manage their passwords and privileges.
