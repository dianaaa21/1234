#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Debitis adipisci consectetur alias et. Esse qui tempore tempore expedita ut corporis veniam. Occaecati non qui quia nemo recusandae totam officia. Alias ut consequatur dolorem aliquam neque.', 'inventore', 0, NULL, '1995-10-26 03:33:56', '1983-09-16 23:17:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Perspiciatis et ipsam veritatis aperiam. Et adipisci amet facere maiores. Consectetur omnis ex et quis nesciunt. Perspiciatis ratione necessitatibus dolor nihil ex qui voluptatum molestiae.', 'quam', 411037405, NULL, '1973-08-31 11:13:32', '2005-04-20 15:50:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Eveniet suscipit consequatur facere voluptatibus dolor. Rerum dolorum perferendis nostrum atque animi assumenda nemo quo. Et odio corporis rerum corrupti officia. Corporis eius officiis eveniet quaerat.', 'consequatur', 0, NULL, '1981-06-22 05:40:41', '1974-09-22 19:27:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Consequatur et quae consectetur non dolor deserunt dolores. At enim eligendi eius. Animi eum quo repellat pariatur.', 'officia', 14, NULL, '2011-07-18 03:39:55', '2014-12-01 12:10:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Enim consectetur ipsum est numquam. Excepturi eveniet nemo natus quia ea. Numquam est voluptas rerum sed delectus labore est dolor.', 'eveniet', 459, NULL, '2004-07-13 08:35:19', '1991-04-25 20:48:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Alias dolor dolorem cum possimus. Velit dolorum commodi laborum consequatur quaerat. Porro in in porro ut.', 'inventore', 277638, NULL, '2015-05-21 03:30:15', '2003-02-02 14:22:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Iusto blanditiis inventore id sint dolor aut dolores magnam. Illo vero velit consequuntur inventore enim. Dolorem et fugiat qui provident reprehenderit.', 'quia', 0, NULL, '1977-08-15 17:30:01', '2007-10-13 03:49:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Sed sit totam est voluptas. Maxime excepturi molestiae rerum est voluptatum.', 'voluptatem', 930695, NULL, '1996-05-01 04:28:50', '1975-08-01 03:55:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Voluptatem aut incidunt quidem eveniet et. Et quibusdam ab aut non dicta beatae ut. Eos laudantium fuga aliquam qui quo.', 'molestiae', 952, NULL, '2018-04-14 17:15:28', '2009-07-27 16:51:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Pariatur aut qui qui vitae. Quisquam tempora sit non nam minus molestias nesciunt. Quo fuga amet aut saepe excepturi. Sint in sequi qui commodi.', 'molestias', 0, NULL, '2010-07-27 07:01:21', '1998-05-06 15:26:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', '11', 'Quia recusandae accusantium cupiditate doloremque animi voluptatum. Distinctio qui quisquam repudiandae facilis quia dolor. Iusto repellendus quo eum velit incidunt aliquid. Maiores laudantium et perferendis voluptas ut asperiores non.', 'et', 56050, NULL, '1970-12-15 12:04:31', '2010-07-13 03:42:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '12', 'Aut soluta suscipit consequatur sunt et. Sequi velit qui animi perferendis qui vero. Animi reprehenderit omnis tenetur quia. Sint est minus excepturi quia eum.', 'nihil', 0, NULL, '1979-08-02 11:50:44', '1974-04-02 13:02:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', '13', 'Et quia quis minus sapiente animi perspiciatis. Ut commodi aut cupiditate cupiditate repudiandae. Omnis excepturi nostrum dolore quidem nihil assumenda enim id.', 'laboriosam', 629827986, NULL, '2001-06-01 22:23:03', '1977-08-13 22:54:08');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'id', '2020-04-25 06:48:06', '2018-12-17 08:49:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'officia', '1976-11-28 14:06:15', '2009-10-11 03:59:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'aperiam', '1972-06-13 09:49:24', '1995-03-14 03:51:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'corporis', '2009-08-23 04:57:05', '1996-08-01 01:37:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'ad', '1983-12-04 10:06:20', '1982-02-08 17:14:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'facilis', '1977-11-27 19:52:09', '2013-06-15 00:34:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'dolor', '1972-05-27 19:53:45', '2001-11-24 08:36:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'nisi', '2019-08-28 09:20:18', '1997-06-24 09:59:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'alias', '1971-01-23 16:49:09', '2008-09-22 05:13:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'itaque', '2020-05-17 08:54:11', '1998-12-09 20:33:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'debitis', '1994-09-09 00:38:51', '1978-12-13 08:28:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'non', '2018-09-01 05:28:36', '2003-12-09 21:22:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'iste', '2022-03-08 10:16:36', '2004-10-18 15:02:59');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '7', '5', 'Aliquid corporis laborum nihil voluptatem dolor. A voluptatibus veniam rem autem. Asperiores asperiores blanditiis placeat iure qui architecto temporibus.', '2002-07-23 14:05:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '11', '9', 'Maiores dolorem alias quo earum deleniti id quae quisquam. Delectus ipsa accusamus aperiam in voluptatem cupiditate. Eveniet commodi sunt ullam itaque culpa necessitatibus iure dolorem. Voluptatibus unde numquam debitis fugit tempore.', '1993-01-06 22:21:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '11', '2', 'Quis libero numquam nihil. Nisi commodi unde laudantium qui voluptatem dolores. Cumque eum cum voluptatem dignissimos in et.', '2016-09-21 09:14:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '3', '2', 'Ipsa pariatur sit aut sit ut dignissimos. Aut ipsam enim quibusdam doloribus ab dolores facilis. Aut qui quae atque fugiat aspernatur adipisci quas.', '1988-10-30 11:52:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '7', '9', 'Quia et voluptatum quo adipisci quam eaque placeat. Culpa est dolor corrupti dolore at veritatis. Laudantium aut aut aut.', '1988-08-31 10:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '11', '12', 'Illo facilis odit aut quis doloremque deserunt quas. Nisi voluptas deleniti laboriosam vel.', '1977-12-08 03:25:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '1', '7', 'Reiciendis omnis maiores aut eum omnis recusandae fugiat. Et molestiae quis non suscipit sit. Laboriosam sint veniam earum aut tenetur dolores. Dolores atque est dolorum qui in iste sed.', '1994-12-05 16:48:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '6', '8', 'Neque commodi voluptas quod veritatis consequuntur sequi hic dolore. Quaerat qui omnis quis quo. Cumque est voluptatum adipisci quia voluptas accusamus. Sed hic dolores fugit ut accusamus est. Sed quae pariatur unde rem modi fuga deserunt.', '1976-03-20 23:51:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '8', 'Quis debitis et illo cum. Ut cumque ipsum saepe ut vero. Id quibusdam consequatur et. Et voluptatem ipsum officiis est.', '1975-03-28 05:11:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '3', '11', 'Optio maiores tenetur sequi quos minus debitis non. Cupiditate deleniti culpa aspernatur repellat velit reprehenderit voluptas ipsam. Vero molestiae quaerat sed. Consequuntur consequatur et ab eveniet.', '1981-04-04 14:22:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '9', '5', 'Error accusantium quia nihil est vel labore aut dolorem. Ipsum corporis vero nesciunt temporibus. Ratione quia inventore maiores voluptas.', '2022-10-31 04:50:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '13', '1', 'Consequatur laboriosam enim nisi. Corrupti et aut possimus voluptatem voluptatem consequatur tenetur. Facere natus qui exercitationem fugit. Et enim nulla eum sint fugit temporibus delectus itaque.', '2006-08-04 05:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '6', '1', 'Qui dignissimos eos occaecati dicta. Voluptas porro ex necessitatibus nihil modi pariatur. Voluptatem in voluptas nemo aliquam. Aut occaecati consequatur consequatur et ut ea expedita ea.', '1990-04-04 14:40:05');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'quia', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'nobis', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'repudiandae', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'facilis', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'et', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'iusto', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'laudantium', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'qui', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'occaecati', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'temporibus', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'veniam', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'ex', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'iste', '13');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '3', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '1', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '10', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '12', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '6', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '11', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '11', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '13', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '2', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '11', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '3', '13');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '2012-09-14', '1', '1989-12-28 21:42:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '2010-12-23', '2', '1993-07-12 17:51:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '1979-05-09', '3', '1977-09-19 07:51:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '1993-10-31', '4', '1975-06-28 17:38:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '1999-02-16', '5', '2005-02-19 11:32:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '1986-12-13', '6', '1981-09-20 06:14:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '1973-05-28', '7', '1981-12-24 11:58:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '1984-08-15', '8', '1995-12-29 22:54:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '2008-12-10', '9', '1979-03-14 08:16:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '2007-10-26', '10', '1972-02-27 02:12:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', NULL, '2013-07-09', '11', '1984-06-25 16:35:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', NULL, '1975-05-10', '12', '1992-04-01 23:10:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', NULL, '1992-12-25', '13', '1991-01-16 14:47:33', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Adaline', 'Crooks', 'marquardt.freida@example.net', 'eeb7dd1598816b42772a2d00175076a80d03139e', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Kaleb', 'Adams', 'dubuque.kiara@example.com', '682c65a09e20c284424936e38e445dcd9eb13124', '6286792223', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Athena', 'Muller', 'braulio91@example.org', '952934a90c143c61b96613f25d00071c9ce636b5', '993775', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Verdie', 'Mraz', 'olson.bert@example.org', '447a91f16f9463f280948a5656839c412764bbf9', '387050', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Izabella', 'Cartwright', 'kenyon.lindgren@example.com', '22adc86fc3dacd1e848ea2f955ac904f2118af5f', '847', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Marlene', 'Homenick', 'karolann.gaylord@example.net', 'f6a886d61211c32337da2432db75471e50179b9c', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Consuelo', 'Wintheiser', 'eugene49@example.net', '11a13eda0a544452a3a09393f6fa193415e5415d', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Jessy', 'Bogisich', 'wiza.sandy@example.com', '09cf26f5438bd8703428b5de677f39b6899d5604', '372', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Casey', 'Mraz', 'marquise54@example.org', 'e31a80ba41737b3db1f2c8f11239cdfdebeff372', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Dariana', 'Ankunding', 'cdicki@example.org', 'e8ea0bd0dc8e87bfa6a0dc64d384b43b339c10f4', '368361', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Macie', 'Hane', 'ernser.nichole@example.net', '547ce01301ad13803d74147e3aecc8f1a0e01c9b', '12', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Ken', 'Legros', 'declan92@example.org', 'dbe9e5bfabbe60fefc44d63ecc1ca92cdab2424b', '91', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Samantha', 'Buckridge', 'marcos06@example.net', '8d6154986181eff5ffe4cd776b8e9e6f51bb6453', '0', '1');


