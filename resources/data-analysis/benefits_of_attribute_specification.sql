/*

reference: assignments/lab/relational-data-analysis.md

given: a `stop_times` table containing 1,976,447 rows:

lesson:
  selecting all attributes with star(*)
  costs more than
  selecting each attribute by name

*/

SELECT *
FROM stop_times;  -- recurring cost: 2.2ms

SELECT
  trip_id
  ,arrival_time
  ,departure_time
  ,stop_id
  ,stop_sequence
  ,pickup_type
  ,drop_off_type
  ,shape_dist_traveled
FROM stop_times; -- recurring cost: 1.2ms
