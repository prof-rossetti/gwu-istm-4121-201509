CREATE TABLE `youtube_playlists` (
  `id` varchar(255) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `published_at` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnails` text,
  `privacy_status` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `player_html` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
