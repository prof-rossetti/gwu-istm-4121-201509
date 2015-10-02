-- mysql:

DROP TABLE IF EXISTS youtube_video_measures;

CREATE TABLE `youtube_video_measures` (
  `id` int(11) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `dislike_count` int(11) DEFAULT NULL,
  `favorite_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE youtube_video_measures ADD PRIMARY KEY(id);
ALTER TABLE youtube_video_measures ADD INDEX(video_id);

LOAD DATA LOCAL INFILE '~/projects/gwu-business/2016-campaign-data/data/youtube_video_measures.csv'
INTO TABLE youtube_video_measures
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT * FROM election_data.youtube_video_measures;
