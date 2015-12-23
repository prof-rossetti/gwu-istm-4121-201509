/*

Use this mysql script as an example of how to
  automate the importation of gtfs data files from a local directory.

This script does not assign the proper datatypes to each column,
  in an effort to avoid imporation errors.

You may need to revise and expand this script
  by specifing proper datatypes
    based on your observation of actual values in each column.

You may need to revise the order of column names to fit the specific dataset,
 as not all gtfs data is provided exactly according to the standard.

*/

/*

AGENCIES
  https://developers.google.com/transit/gtfs/reference?hl=en#agencytxt

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

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/agency.txt'
  INTO TABLE agencies
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM agencies;

ALTER TABLE agencies ADD PRIMARY KEY(agency_id);

/*

CALENDAR DATES
  https://developers.google.com/transit/gtfs/reference?hl=en#calendar_fields

*/

DROP TABLE IF EXISTS calendar_dates;

CREATE TABLE `calendar_dates` (
  `service_id` INT(11) DEFAULT NULL,
  `date` INT(11) DEFAULT NULL,
  `exception_type` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

SELECT * FROM calendar_dates;

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/calendar_dates.txt'
  INTO TABLE calendar_dates
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

-- ALTER TABLE calendar_dates ADD PRIMARY KEY(???);
ALTER TABLE calendar_dates ADD INDEX(service_id);

/*

ROUTES
  https://developers.google.com/transit/gtfs/reference?hl=en#routes_fields

*/

DROP TABLE IF EXISTS routes;

CREATE TABLE `routes` (
  `route_id` VARCHAR(255) DEFAULT NULL,
  `agency_id` VARCHAR(255) DEFAULT NULL,
  `route_short_name` VARCHAR(255) DEFAULT NULL,
  `route_long_name` VARCHAR(255) DEFAULT NULL,
  `route_type` INT(11) DEFAULT NULL,
  `route_url` VARCHAR(255) DEFAULT NULL,
  `route_color` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/routes.txt'
  INTO TABLE routes
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM routes;

ALTER TABLE routes ADD PRIMARY KEY(route_id);
ALTER TABLE routes ADD INDEX(agency_id); -- FK: a route belongs to an agency

/*

SHAPES
  https://developers.google.com/transit/gtfs/reference?hl=en#shapes_fields

*/

DROP TABLE IF EXISTS shapes;

CREATE TABLE `shapes` (
  `shape_id` INT(11) DEFAULT NULL,
  `shape_pt_lat` VARCHAR(255) DEFAULT NULL,
  `shape_pt_lon` VARCHAR(255) DEFAULT NULL,
  `shape_pt_sequence` INT(11) DEFAULT NULL,
  `shape_dist_traveled` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/shapes.txt'
  INTO TABLE shapes
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"' -- if applicable
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM shapes;

-- ALTER TABLE shapes ADD PRIMARY KEY(???);
ALTER TABLE shapes ADD INDEX(shape_id);

/*

STOP_TIMES
 + https://developers.google.com/transit/gtfs/reference?hl=en#stop_times_fields

*/

DROP TABLE IF EXISTS stop_times;

CREATE TABLE `stop_times` (
  `trip_id` INT(11) DEFAULT NULL,
  `arrival_time` VARCHAR(255) DEFAULT NULL,
  `departure_time` VARCHAR(255) DEFAULT NULL,
  `stop_id` INT(11) DEFAULT NULL,
  `stop_sequence` INT(11) DEFAULT NULL,
  `pickup_type` INT(11) DEFAULT NULL,
  `drop_off_type` INT(11) DEFAULT NULL,
  `shape_dist_traveled` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/stop_times.txt'
  INTO TABLE stop_times
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM stop_times;

-- ALTER TABLE stop_times ADD PRIMARY KEY(???);
ALTER TABLE stop_times ADD INDEX(trip_id); -- regular index for now for join performance
ALTER TABLE stop_times ADD INDEX(stop_id); -- regular index for now for join performance

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

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/stops.txt'
  INTO TABLE stops
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM stops;

ALTER TABLE stops ADD PRIMARY KEY(stop_id);
-- not sure about stops.zone_id...

/*

TRIPS
 + https://developers.google.com/transit/gtfs/reference?hl=en#trips_fields

*/

DROP TABLE IF EXISTS trips;

CREATE TABLE `trips` (
  `route_id` VARCHAR(255) DEFAULT NULL,
  `service_id` INT(11) DEFAULT NULL,
  `trip_id` INT(11) DEFAULT NULL,
  `trip_headsign` VARCHAR(255) DEFAULT NULL,
  `direction_id` INT(11) DEFAULT NULL,
  `block_id` VARCHAR(255) DEFAULT NULL,
  `shape_id` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '~/Desktop/google_transit/trips.txt'
  INTO TABLE trips
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

ALTER TABLE trips ADD PRIMARY KEY(trip_id);
ALTER TABLE trips ADD INDEX(route_id);
ALTER TABLE trips ADD INDEX(service_id);
ALTER TABLE trips ADD INDEX(shape_id);
-- not sure about trips.direction_id ...
