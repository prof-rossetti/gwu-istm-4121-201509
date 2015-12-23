# SQL Exercises

Download the [2016 US Presidential Campaign Data](https://github.com/gwu-business/2016-campaign-data/tree/master/data).
 Use a DBMS to import each of the related .csv files into a new database table.

During or after import, choose appropriate datatypes, and add indices and primary keys as applicable to replicate the database's specified physical design.

Reference the [schema diagram](https://github.com/gwu-business/2016-campaign-data/tree/master/design/erd.svg) for more information about the database's physical design properties. Note: not all tables represented in the diagram may have been published.

Reference the [YouTube Data API documentation](https://developers.google.com/youtube/v3/docs/) for additional subject matter context.

## Questions

For each question listed below, answer it using one or more English sentences followed by one or more SQL queries to demonstrate how you arrived at your answer. Optionally include tabular data or screenshots.

According to the database:

 1. Who are the candidates in the 2016 US Presidential election?
 * How many candidates are affiliated with the "Republican" party? How many are affiliated with the "Democrat" party?
 * Which candidates have YouTube channels?
 * How many videos have been published to the YouTube channel of each candidate?
   + per day?
 * What single video for each candidate has been the most successful, in terms of:
   + total viewers?
   + total views?
   + average views per video?
   + average views per day per video?
 * Of all the videos, which 25 have been watched the most, and how many times has each been watched?
 * Which five candidate's youtube channels are the most successful, in terms of:
   + total viewers?
   + total views?
   + average views per video?
   + average views per day per video?

> [Edit](https://github.com/gwu-business/istm-4121/edit/master/resources/data-analysis/sql-exercises.md) this list to provide your own fun/interesting questions!

<hr>

## Example Answer

1) The candidates are "Bobby Jindal","Jim Webb","Lindsey Graham","Ted Cruz","Mike Huckabee","Rick Perry","Martin O'Malley","Carly Fiorina","Donald Trump","Rand Paul","Marco Rubio","Jeb Bush","Rick Santorum","Ben Carson","George Pataki","Bernie Sanders","Lincoln Chafee","Chris Christie" and "Hillary Clinton".

```` sql
SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM candidates;
````

```` sql
-- or, depending on how fancy/precise you want to get...
-- postgresql:
SELECT
  array_agg(c.full_name) as list_of_names
FROM (
    SELECT DISTINCT concat(first_name, ' ', last_name) as full_name
    FROM candidates
) c
````
