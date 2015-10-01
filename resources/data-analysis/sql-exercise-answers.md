# SQL Exercise Answers

## Import the data

Reference [automated import scripts](/resources/data-analysis/sql-exercises/import-scripts/).

## Answer the questions

### Question 1 - Example SQL

```` sql
-- Who are the candidates in the 2016 US Presidential election?
SELECT
  DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM candidates;
````

```` sql
-- optional mysql to list all candidate names so you can copy and paste them:
SELECT
  group_concat(c.full_name SEPARATOR ", ") AS list_of_names
FROM (
  SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
  FROM candidates
) c
````

### Question 2 - Example SQL

```` sql
-- How many candidates are affiliated with the "Republican" party? How many are affiliated with the "Democrat" party?
SELECT * FROM candidates WHERE party = "Republican";
SELECT * FROM candidates WHERE party = "Democrat";
````

```` sql
-- or use aggregations to show both at the same time ...
SELECT
 party
 ,count(DISTINCT id) AS candidate_count
FROM candidates
GROUP BY party
ORDER BY candidate_count DESC
````

### Question 3 - Example SQL

```` sql
-- Which candidates have YouTube channels?
SELECT
  concat(c.first_name, " ", c.last_name) AS full_name
  ,ytc.*
FROM youtube_channels ytc
JOIN candidates c ON (ytc.owner_id = c.id AND ytc.owner_type = "Candidate")
-- note: an inner join is sufficient; a where clause is not necessary
````

### Question 4 - Example SQL

```` sql
-- How many videos have been published to the YouTube channel of each candidate?
SELECT
  concat(c.first_name, " ", c.last_name) AS candidate_full_name
  ,ytc.title AS channel_title
  ,count(DISTINCT ytv.id) AS video_count
FROM youtube_channels ytc
JOIN candidates c ON (ytc.owner_id = c.id AND ytc.owner_type = "Candidate")
JOIN youtube_videos ytv ON ytv.channel_id = ytc.id
GROUP BY candidate_full_name, channel_title
ORDER BY video_count DESC
````

```` sql
-- ... per day?
-- mysql:
SELECT
  concat(c.first_name, " ", c.last_name) AS candidate_full_name
  ,ytc.title AS channel_title
  ,count(DISTINCT ytv.id) AS video_count
  ,min(DATE(ytv.published_at)) AS first_video_published_on
  ,max(DATE(ytv.published_at)) AS latest_video_published_on

  ,datediff(
    max(DATE(ytv.published_at))
    ,min(DATE(ytv.published_at))
  ) AS days_between_publishings

  ,count(DISTINCT ytv.id) / -- division!
    datediff(
      max(DATE(ytv.published_at))
      ,min(DATE(ytv.published_at))
    ) AS publishings_per_day -- yea?

FROM youtube_channels ytc
JOIN candidates c ON (ytc.owner_id = c.id AND ytc.owner_type = "Candidate")
JOIN youtube_videos ytv ON ytv.channel_id = ytc.id
GROUP BY candidate_full_name, channel_title
ORDER BY publishings_per_day DESC
````

### Question 5 - Example SQL

```` sql
-- What single video for each candidate has been the most successful, in terms of:
-- total viewers?





````

```` sql
-- What single video for each candidate has been the most successful, in terms of:
-- total views?



````

```` sql
-- What single video for each candidate has been the most successful, in terms of:
-- average views per video?







````

```` sql
-- What single video for each candidate has been the most successful, in terms of:
-- average views per day per video?




````




### Question 6 - Example SQL


```` sql
-- _________
````

### Question 7 - Example SQL


```` sql
-- _________
````
