# SQL Exercises

Download the
 [2016 US Presidential Election Campaign Data](https://github.com/gwu-business/2016-campaign-data/tree/master/data)
 and use a DBMS to import the related .csv files as new tables in a new relational database.

Reference the [schema diagram](https://github.com/gwu-business/2016-campaign-data/tree/master/design/erd.svg) for more information about the database's physical design properties. Not all tables represented in the diagram have been made available.

Choose appropriate datatypes, and add indices and primary keys as applicable to replicate the database's specified physical design.

Refer to the specific questions below. For each, answer it using one or more English sentences followed by one or more SQL queries you used to arrive at each each answer.

## Questions

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

> Add your own questions to this list!

If the dataset does not perfectly or accurately represent information from the real-world, answer these questions in terms of database data.

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
SELECT array_agg(c.full_name) as list_of_names
FROM (
    SELECT DISTINCT concat(first_name, ' ', last_name) as full_name
    FROM candidates
) c
````
