-- mysql:

DROP TABLE IF EXISTS youtube_playlists;

CREATE TABLE `youtube_playlists` (
  `id` varchar(255) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnails` text,
  `privacy_status` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `player_html` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE youtube_playlists ADD PRIMARY KEY(id);
ALTER TABLE youtube_playlists ADD INDEX(channel_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_playlists.csv'
INTO TABLE youtube_playlists
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM election_data.youtube_playlists;
