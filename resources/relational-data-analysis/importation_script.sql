/*

Use this script as an example of how to
  automate the importation of gtfs data files from a local directory.

This script does not assign the proper datatypes to each column,
  in an effort to avoid imporation errors.

You may need to revise and expand-upon this script
  by specifing the proper datatypes
    based on your observation of actual values in each column.

You may need to revise the order of column names to fit the specific dataset,
 as not all gtfs data is provided exactly according to the standard.

*/

/*

AGENCIES
 + https://developers.google.com/transit/gtfs/reference?hl=en#agencytxt

*/

DROP TABLE IF EXISTS agencies;

CREATE TABLE agencies (
  agency_id VARCHAR(255),
  agency_name VARCHAR(255),
  agency_url VARCHAR(255),
  agency_timezone VARCHAR(255),
  agency_lang VARCHAR(255),
  agency_phone VARCHAR(255),
  agency_fare_url VARCHAR(255)
);

ALTER TABLE agencies ADD PRIMARY KEY(agency_id);

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/agency.txt'
  INTO TABLE agencies
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"' -- if applicable
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM agencies;

/*

STOPS
 + https://developers.google.com/transit/gtfs/reference?hl=en#stops_fields

*/

DROP TABLE IF EXISTS stops;

CREATE TABLE stops (
  stop_id VARCHAR(255),
  stop_code VARCHAR(255),
  stop_name VARCHAR(255),
  stop_desc VARCHAR(255),
  stop_lat VARCHAR(255),
  stop_lon VARCHAR(255),
  zone_id VARCHAR(255),
  stop_url VARCHAR(255),
  location_type VARCHAR(255),
  parent_station VARCHAR(255),
  stop_timezone VARCHAR(255),
  wheelchair_boarding VARCHAR(255)
);

ALTER TABLE stops ADD PRIMARY KEY(stop_id);

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/stops.txt'
  INTO TABLE stops
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"' -- if applicable
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM stops;











/*

ROUTES
 + https://developers.google.com/transit/gtfs/reference?hl=en#routes_fields

*/


-- todo







/*

TRIPS
 + https://developers.google.com/transit/gtfs/reference?hl=en#trips_fields

*/




-- todo






/*

STOP_TIMES
 + https://developers.google.com/transit/gtfs/reference?hl=en#stop_times_fields

*/



-- todo







/*

CALENDAR
 + https://developers.google.com/transit/gtfs/reference?hl=en#calendar_fields

*/

-- todo
