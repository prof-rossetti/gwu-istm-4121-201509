/*

reference: assignments/lab/relational-data-analysis.md

given: a `stop_times` table containing 1,976,447 rows...

*/

/*

observation:
  using indexed attributes in a WHERE clause condition
  costs less than
  using non-indexed attributes in a WHERE clause condition...

lesson: add an index to any attribute which will be repeatedly used in a WHERE clause condition

*/

SELECT *
FROM stop_times
WHERE stop_id = "40028"; -- recurring cost: 1.05s

ALTER TABLE stop_times ADD INDEX(stop_id); -- one-time cost: 4.19s

SELECT *
FROM stop_times
WHERE stop_id = "40028"; -- recurring cost after indexing: 13.5ms

/*

observation:
   joining tables on indexed attributes
   costs less than
   joining on non-indexed attributes...

lesson: add an index to any attribute which will be used in a JOIN clause condition

*/

SELECT
  st.trip_id
  ,st.arrival_time
  ,st.departure_time
  ,st.stop_id
  ,st.stop_sequence
  ,st.pickup_type
  ,st.drop_off_type
  ,st.shape_dist_traveled
  ,t.route_id
  ,t.service_id
  ,t.trip_headsign
  ,t.direction_id
  ,t.block_id
  ,t.shape_id
FROM stop_times st
JOIN trips t ON t.trip_id = st.trip_id; -- recurring cost: I can't wait for this to finish ... its been at least 5-10 mins ...

ALTER TABLE stop_times ADD INDEX(trip_id);
ALTER TABLE trips ADD INDEX(trip_id);

SELECT
  st.trip_id
  ,st.arrival_time
  ,st.departure_time
  ,st.stop_id
  ,st.stop_sequence
  ,st.pickup_type
  ,st.drop_off_type
  ,st.shape_dist_traveled
  ,t.route_id
  ,t.service_id
  ,t.trip_headsign
  ,t.direction_id
  ,t.block_id
  ,t.shape_id
FROM stop_times st
JOIN trips t ON t.trip_id = st.trip_id; -- recurring cost after indexing: 5.7ms
