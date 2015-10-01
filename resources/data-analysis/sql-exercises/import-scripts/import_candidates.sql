-- mysql:

-- so self explainatory
DROP TABLE IF EXISTS candidates;

-- create a table and specify physical columns/attributes and datatypes
CREATE TABLE `candidates` (
  `id` INT(11) DEFAULT NULL,
  `party` VARCHAR(255) DEFAULT NULL,
  `first_name` VARCHAR(255) DEFAULT NULL,
  `last_name` VARCHAR(255) DEFAULT NULL,
  `url` VARCHAR(255) DEFAULT NULL,
  `campaign_name` VARCHAR(255) DEFAULT NULL,
  `slogans` VARCHAR(255) DEFAULT NULL,
  `social_urls` TEXT,
  `support_groups` VARCHAR(255) DEFAULT NULL,
  `created_at` VARCHAR(255) DEFAULT NULL,
  `updated_at` VARCHAR(255) DEFAULT NULL,
  `campaign_status` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8; -- this table create statement was copied from sequel pro's "table info" menu after manually importing the file the first time

-- add index attributes (you can also do this during table creation)
ALTER TABLE candidates ADD PRIMARY KEY(id);
ALTER TABLE candidates ADD INDEX(party);
ALTER TABLE candidates ADD INDEX(campaign_status);

-- load data from a .csv file into the table
LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/candidates.csv'
INTO TABLE candidates
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

--  inspect table data
SELECT * FROM election_data.candidates;
