CREATE TABLE `youtube_channels` (
  `id` varchar(255) DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `published_at` varchar(255) DEFAULT NULL,
  `thumbnails` text,
  `related_playlists` varchar(255) DEFAULT NULL,
  `google_plus_user_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
