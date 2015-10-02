-- mysql:

DROP TABLE IF EXISTS youtube_videos;

CREATE TABLE `youtube_videos` (
  `id` varchar(255) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `published_at` datetime DEFAULT NULL,
  `thumbnails` text,
  `category_id` int(11) DEFAULT NULL,
  `live_broadcast_content` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `licensed_content` varchar(255) DEFAULT NULL,
  `upload_status` varchar(255) DEFAULT NULL,
  `privacy_status` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `embeddable` varchar(255) DEFAULT NULL,
  `public_stats_viewable` varchar(255) DEFAULT NULL,
  `player_html` text DEFAULT NULL,
  `topic_ids` text DEFAULT NULL,
  `relevant_topic_ids` text DEFAULT NULL,
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE youtube_videos ADD PRIMARY KEY(id);
ALTER TABLE youtube_videos ADD INDEX(channel_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_videos.csv'
INTO TABLE youtube_videos
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM election_data.youtube_videos;
