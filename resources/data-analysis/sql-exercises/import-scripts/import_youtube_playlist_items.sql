CREATE TABLE `youtube_playlist_items` (
  `id` varchar(255) DEFAULT NULL,
  `playlist_id` varchar(255) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `published_at` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `thumbnails` text,
  `privacy_status` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
