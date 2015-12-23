-- mysql:

DROP TABLE IF EXISTS youtube_playlist_items;

CREATE TABLE `youtube_playlist_items` (
  `id` varchar(255) DEFAULT NULL,
  `playlist_id` varchar(255) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `thumbnails` text,
  `privacy_status` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE youtube_playlist_items ADD PRIMARY KEY(id);
ALTER TABLE youtube_playlist_items ADD INDEX(playlist_id);
ALTER TABLE youtube_playlist_items ADD INDEX(resource_type);
ALTER TABLE youtube_playlist_items ADD INDEX(resource_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_playlist_items.csv'
INTO TABLE youtube_playlist_items
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

--  inspect table data
SELECT * FROM election_data.youtube_playlist_items;
