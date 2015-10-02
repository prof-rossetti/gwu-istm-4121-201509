-- mysql:

DROP TABLE IF EXISTS youtube_channels;

CREATE TABLE `youtube_channels` (
  `id` varchar(255) DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `published_at` datetime DEFAULT NULL,
  `thumbnails` text,
  `related_playlists` varchar(255) DEFAULT NULL,
  `google_plus_user_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE youtube_channels ADD PRIMARY KEY(id);
ALTER TABLE youtube_channels ADD INDEX(owner_type);
ALTER TABLE youtube_channels ADD INDEX(owner_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_channels.csv'
INTO TABLE youtube_channels
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

--  inspect table data
SELECT * FROM election_data.youtube_channels;
