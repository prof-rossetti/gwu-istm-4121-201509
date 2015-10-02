-- mysql:

DROP TABLE IF EXISTS youtube_channel_measures;

CREATE TABLE `youtube_channel_measures` (
  `id` int(11) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `subscriber_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `video_count` int(11) DEFAULT NULL,
  `hidden_subscriber_count` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE youtube_channel_measures ADD PRIMARY KEY(id);
ALTER TABLE youtube_channel_measures ADD INDEX(channel_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_channel_measures.csv'
INTO TABLE youtube_channel_measures
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

--  inspect table data
SELECT * FROM election_data.youtube_channel_measures;
