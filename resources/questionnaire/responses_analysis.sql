-- this script is in development/draft status...
-- references:
-- + http://www.sqlines.com/mysql/functions/str_to_date
-- + https://dev.mysql.com/doc/refman/5.1/en/datetime.html
-- + http://stackoverflow.com/a/14291826/670433

-- `CREATE DATABASE istm_4121;`
-- use the File > Import wizard to import a csv file or sql file into a new table called 'responses'
-- oops, datetime won't convert. or something went wrong. it's ok.
-- `DROP TABLE responses;`
-- re-try import wizard, but don't try to convert datatypes or do anything fancy
-- `SELECT * FROM responses;`

SELECT
 response_id
 -- working with the `created_at` attribute
 ,created_at
 ,cast(created_at AS DATETIME) AS created_at_casted
 ,str_to_date(created_at, '%Y-%m-%d') AS created_at_converted
 ,DATE(created_at) AS created_on
 -- working with the `created_at_converted` attribute ... much easier than the unformatted version ...
 ,created_at_formatted
 ,cast(created_at_formatted AS DATETIME) AS created_at_formatted_casted
 ,str_to_date(created_at_formatted, '%Y-%m-%d') AS created_at_formatted_converted
 ,DATE(created_at_formatted) AS created_on_formatted
  -- working with with the `majors` attribute ...
 ,majors
 ,IF(majors LIKE '%marketing%', 1,0) AS marketing_major
 ,IF((majors LIKE '%marketing%' OR majors LIKE '%finance%'), 1,0) AS business_major
 -- working with the `scheduling` attribute ...
 ,scheduling
 ,CASE
     WHEN (scheduling LIKE '%before%' AND scheduling LIKE '%after%') THEN 'before_and_after'
     WHEN scheduling LIKE '%before%' THEN 'before'
     WHEN scheduling LIKE '%after%' THEN 'after'
     ELSE NULL
  END class_conflicts
  -- working with the `learning_objective_data` attribute
 ,learning_objective_data
 ,cast(learning_objective_data AS BINARY) AS learning_objective_data_casted
FROM istm_4121.responses
