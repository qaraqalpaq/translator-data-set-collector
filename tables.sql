CREATE TABLE `groups` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `target_lang` varchar(255),
  `src_lang` varchar(255),
  `src_txt_file` varchar(255),
  `tgt_txt_file` varchar(255),
  `status` enum,
  `author_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `lavel` varchar(255),
  `status` enum,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `words` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `src_content` text,
  `tgt_content` text,
  `group_id` int,
  `status` enum,
  `version` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `languages` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `name` varchar(255)
);

CREATE TABLE `translations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `target_lang` varchar(255),
  `src_lang` varchar(255),
  `tgt_value` text,
  `status` enum,
  `group_id` int,
  `src_value` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `expressions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `regex` varchar(255),
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `expression_groups` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `expression_ids` json,
  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `groups` ADD FOREIGN KEY (`id`) REFERENCES `words` (`group_id`);

ALTER TABLE `languages` ADD FOREIGN KEY (`code`) REFERENCES `translations` (`target_lang`);

ALTER TABLE `languages` ADD FOREIGN KEY (`code`) REFERENCES `translations` (`src_lang`);

ALTER TABLE `groups` ADD FOREIGN KEY (`id`) REFERENCES `translations` (`group_id`);

ALTER TABLE `languages` ADD FOREIGN KEY (`code`) REFERENCES `groups` (`target_lang`);

ALTER TABLE `languages` ADD FOREIGN KEY (`code`) REFERENCES `groups` (`src_lang`);

ALTER TABLE `users` ADD FOREIGN KEY (`id`) REFERENCES `groups` (`author_id`);
