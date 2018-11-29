-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: helpdesk
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_22_115516_create_ticketit_tables',2),(4,'2015_07_22_123254_alter_users_table',2),(5,'2015_09_29_123456_add_completed_at_column_to_ticketit_table',2),(6,'2015_10_08_123457_create_settings_table',2),(7,'2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments',2),(8,'2016_01_15_040207_enlarge_settings_columns',2),(9,'2016_01_15_120557_add_indexes',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit`
--

DROP TABLE IF EXISTS `ticketit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` int(10) unsigned NOT NULL,
  `priority_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `agent_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketit_subject_index` (`subject`),
  KEY `ticketit_status_id_index` (`status_id`),
  KEY `ticketit_priority_id_index` (`priority_id`),
  KEY `ticketit_user_id_index` (`user_id`),
  KEY `ticketit_agent_id_index` (`agent_id`),
  KEY `ticketit_category_id_index` (`category_id`),
  KEY `ticketit_completed_at_index` (`completed_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit`
--

LOCK TABLES `ticketit` WRITE;
/*!40000 ALTER TABLE `ticketit` DISABLE KEYS */;
INSERT INTO `ticketit` VALUES (1,'teste','teste','<p>teste<br /></p>',2,2,1,2,1,'2018-11-29 03:49:33','2018-11-29 03:56:06','2018-11-29 03:56:04'),(2,'teste','teste','<p>teste<br /></p>',2,2,1,2,1,'2018-11-29 03:50:32','2018-11-29 03:56:34','2018-11-29 03:56:32'),(3,'Teste helpdesk','Teste helpdesk','<p>Teste helpdesk<br /></p>',1,1,1,2,1,'2018-11-29 04:06:08','2018-11-29 04:06:08',NULL);
/*!40000 ALTER TABLE `ticketit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_audits`
--

DROP TABLE IF EXISTS `ticketit_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_audits`
--

LOCK TABLES `ticketit_audits` WRITE;
/*!40000 ALTER TABLE `ticketit_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketit_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_categories`
--

DROP TABLE IF EXISTS `ticketit_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_categories`
--

LOCK TABLES `ticketit_categories` WRITE;
/*!40000 ALTER TABLE `ticketit_categories` DISABLE KEYS */;
INSERT INTO `ticketit_categories` VALUES (1,'Support','#000000');
/*!40000 ALTER TABLE `ticketit_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_categories_users`
--

DROP TABLE IF EXISTS `ticketit_categories_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_categories_users` (
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_categories_users`
--

LOCK TABLES `ticketit_categories_users` WRITE;
/*!40000 ALTER TABLE `ticketit_categories_users` DISABLE KEYS */;
INSERT INTO `ticketit_categories_users` VALUES (1,2);
/*!40000 ALTER TABLE `ticketit_categories_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_comments`
--

DROP TABLE IF EXISTS `ticketit_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketit_comments_user_id_index` (`user_id`),
  KEY `ticketit_comments_ticket_id_index` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_comments`
--

LOCK TABLES `ticketit_comments` WRITE;
/*!40000 ALTER TABLE `ticketit_comments` DISABLE KEYS */;
INSERT INTO `ticketit_comments` VALUES (1,'tessfss','<p>tessfss<br /></p>',1,2,'2018-11-29 03:56:28','2018-11-29 03:56:28');
/*!40000 ALTER TABLE `ticketit_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_priorities`
--

DROP TABLE IF EXISTS `ticketit_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_priorities`
--

LOCK TABLES `ticketit_priorities` WRITE;
/*!40000 ALTER TABLE `ticketit_priorities` DISABLE KEYS */;
INSERT INTO `ticketit_priorities` VALUES (1,'High','#830909'),(2,'Normal','#090909'),(3,'Low','#125f71');
/*!40000 ALTER TABLE `ticketit_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_settings`
--

DROP TABLE IF EXISTS `ticketit_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  KEY `ticketit_settings_lang_index` (`lang`),
  KEY `ticketit_settings_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_settings`
--

LOCK TABLES `ticketit_settings` WRITE;
/*!40000 ALTER TABLE `ticketit_settings` DISABLE KEYS */;
INSERT INTO `ticketit_settings` VALUES (1,NULL,'main_route','tickets','tickets','2018-11-29 03:46:22','2018-11-29 03:46:22'),(2,NULL,'main_route_path','tickets','tickets','2018-11-29 03:46:22','2018-11-29 03:46:22'),(3,NULL,'admin_route','tickets-admin','tickets-admin','2018-11-29 03:46:22','2018-11-29 03:46:22'),(4,NULL,'admin_route_path','tickets-admin','tickets-admin','2018-11-29 03:46:22','2018-11-29 03:46:22'),(5,NULL,'master_template','layouts.app','layouts.app','2018-11-29 03:46:22','2018-11-29 03:46:22'),(6,NULL,'bootstrap_version','4','4','2018-11-29 03:46:22','2018-11-29 03:46:22'),(7,NULL,'email.template','ticketit::emails.templates.ticketit','ticketit::emails.templates.ticketit','2018-11-29 03:46:22','2018-11-29 03:46:22'),(8,NULL,'email.header','Ticket Update','Ticket Update','2018-11-29 03:46:22','2018-11-29 03:46:22'),(9,NULL,'email.signoff','Thank you for your patience!','Thank you for your patience!','2018-11-29 03:46:22','2018-11-29 03:46:22'),(10,NULL,'email.signature','Your friends','Your friends','2018-11-29 03:46:22','2018-11-29 03:46:22'),(11,NULL,'email.dashboard','My Dashboard','My Dashboard','2018-11-29 03:46:22','2018-11-29 03:46:22'),(12,NULL,'email.google_plus_link','#','#','2018-11-29 03:46:22','2018-11-29 03:46:22'),(13,NULL,'email.facebook_link','#','#','2018-11-29 03:46:22','2018-11-29 03:46:22'),(14,NULL,'email.twitter_link','#','#','2018-11-29 03:46:22','2018-11-29 03:46:22'),(15,NULL,'email.footer','Powered by Ticketit','Powered by Ticketit','2018-11-29 03:46:22','2018-11-29 03:46:22'),(16,NULL,'email.footer_link','https://github.com/thekordy/ticketit','https://github.com/thekordy/ticketit','2018-11-29 03:46:22','2018-11-29 03:46:22'),(17,NULL,'email.color_body_bg','#FFFFFF','#FFFFFF','2018-11-29 03:46:22','2018-11-29 03:46:22'),(18,NULL,'email.color_header_bg','#44B7B7','#44B7B7','2018-11-29 03:46:22','2018-11-29 03:46:22'),(19,NULL,'email.color_content_bg','#F46B45','#F46B45','2018-11-29 03:46:22','2018-11-29 03:46:22'),(20,NULL,'email.color_footer_bg','#414141','#414141','2018-11-29 03:46:23','2018-11-29 03:46:23'),(21,NULL,'email.color_button_bg','#AC4D2F','#AC4D2F','2018-11-29 03:46:23','2018-11-29 03:46:23'),(22,NULL,'default_status_id','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(23,NULL,'default_close_status_id','2','0','2018-11-29 03:46:23','2018-11-29 03:46:24'),(24,NULL,'default_reopen_status_id','3','0','2018-11-29 03:46:23','2018-11-29 03:46:24'),(25,NULL,'paginate_items','10','10','2018-11-29 03:46:23','2018-11-29 03:46:23'),(26,NULL,'length_menu','a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}','a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}','2018-11-29 03:46:23','2018-11-29 03:46:23'),(27,NULL,'status_notification','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(28,NULL,'comment_notification','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(29,NULL,'queue_emails','0','0','2018-11-29 03:46:23','2018-11-29 03:46:23'),(30,NULL,'assigned_notification','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(31,NULL,'agent_restrict','0','0','2018-11-29 03:46:23','2018-11-29 03:46:23'),(32,NULL,'close_ticket_perm','a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}','a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}','2018-11-29 03:46:23','2018-11-29 03:46:23'),(33,NULL,'reopen_ticket_perm','a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}','a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}','2018-11-29 03:46:23','2018-11-29 03:46:23'),(34,NULL,'delete_modal_type','builtin','builtin','2018-11-29 03:46:23','2018-11-29 03:46:23'),(35,NULL,'editor_enabled','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(36,NULL,'include_font_awesome','1','1','2018-11-29 03:46:23','2018-11-29 03:46:23'),(37,NULL,'summernote_locale','en','en','2018-11-29 03:46:24','2018-11-29 03:46:24'),(38,NULL,'editor_html_highlighter','1','1','2018-11-29 03:46:24','2018-11-29 03:46:24'),(39,NULL,'codemirror_theme','monokai','monokai','2018-11-29 03:46:24','2018-11-29 03:46:24'),(40,NULL,'summernote_options_json_file','vendor/kordy/ticketit/src/JSON/summernote_init.json','vendor/kordy/ticketit/src/JSON/summernote_init.json','2018-11-29 03:46:24','2018-11-29 03:46:24'),(41,NULL,'purifier_config','a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}','a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}','2018-11-29 03:46:24','2018-11-29 03:46:24'),(42,NULL,'routes','/home/renato/Downloads/temporario/helpdesks/ticketit-app-master/vendor/kordy/ticketit/src/routes.php','/home/renato/Downloads/temporario/helpdesks/ticketit-app-master/vendor/kordy/ticketit/src/routes.php','2018-11-29 03:46:24','2018-11-29 03:46:24');
/*!40000 ALTER TABLE `ticketit_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketit_statuses`
--

DROP TABLE IF EXISTS `ticketit_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketit_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketit_statuses`
--

LOCK TABLES `ticketit_statuses` WRITE;
/*!40000 ALTER TABLE `ticketit_statuses` DISABLE KEYS */;
INSERT INTO `ticketit_statuses` VALUES (1,'New','#e9551e'),(2,'Closed','#186107'),(3,'Re-opened','#71001f');
/*!40000 ALTER TABLE `ticketit_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT '0',
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'teste','teste@gmail.tk',NULL,'$2y$10$4xtdAzONyOWozj9RjCllDuKjn2IpoJV4Ym.uTlbxXTNApgJDr6UJ.','MD5wD9Fc3TJp1O1WRmTrvgR6PsEe7YQMmho3HS32qy0YmNN6QdmpB8t45gEj','2018-11-29 03:39:15','2018-11-29 03:39:15',0,0),(2,'8353083bf8a355','cpdrenato@gmail.com',NULL,'$2y$10$UwBKWYB.PExQB4sGEhrwEedCI92smyZLhV//V3RtZGhgdC2X2rYnK',NULL,'2018-11-29 03:46:11','2018-11-29 03:46:25',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29  2:07:58
