-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `wordpress`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wordpress` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wordpress`;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-11-30 09:18:55','2020-11-30 09:18:55','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0),(2,1,'admin','hn@wnstudio.ru','http://localhost/test.local','::1','2020-11-30 09:21:06','2020-11-30 09:21:06','123123',0,'1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost/test.local','yes'),(2,'home','http://localhost/test.local','yes'),(3,'blogname','test','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','1','yes'),(6,'admin_email','hn@wnstudio.ru','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentytwenty','yes'),(41,'stylesheet','twentytwenty','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','48748','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1622279934','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'initial_db_version','48748','yes'),(96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(97,'fresh_site','1','yes'),(98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(104,'cron','a:6:{i:1606727939;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606727945;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606727951;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606728005;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1606814339;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'_transient_doing_cron','1606732381.5656070709228515625000','yes'),(115,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"last_checked\";i:1606727945;}','no'),(116,'_site_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1606728166;}','no'),(117,'_site_transient_timeout_theme_roots','1606729751','no'),(118,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),(119,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1606727951;}','no'),(120,'can_compress_scripts','1','no'),(121,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1606771152','no'),(122,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: </p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: </p></div>','no'),(123,'theme_mods_twentytwenty','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),(124,'WPLANG','','yes'),(125,'new_admin_email','hn@wnstudio.ru','yes'),(128,'recently_activated','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-11-30 09:18:55','2020-11-30 09:18:55','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-11-30 09:18:55','2020-11-30 09:18:55','',0,'http://localhost/test.local/?p=1',0,'post','',2),(2,1,'2020-11-30 09:18:55','2020-11-30 09:18:55','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/test.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-11-30 09:18:55','2020-11-30 09:18:55','',0,'http://localhost/test.local/?page_id=2',0,'page','',0),(3,1,'2020-11-30 09:18:55','2020-11-30 09:18:55','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/test.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-11-30 09:18:55','2020-11-30 09:18:55','',0,'http://localhost/test.local/?page_id=3',0,'page','',0),(4,1,'2020-11-30 09:19:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-30 09:19:11','0000-00-00 00:00:00','',0,'http://localhost/test.local/?p=4',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(19,1,'session_tokens','a:42:{s:64:\"314effd2f5d1ff1dd21a8567e33b732eaed108ea10cd3979ec68cf6f514499c5\";a:4:{s:10:\"expiration\";i:1606902162;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729362;}s:64:\"94b63a6e6dddb34662d55ec37df46251d417ddc37747c78f9d8763feaa1ae4f5\";a:4:{s:10:\"expiration\";i:1606902243;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729443;}s:64:\"5de65a4f7539361fae252d2b6b006d8bddb5447a4ac5082ce79cb9a1294b86f6\";a:4:{s:10:\"expiration\";i:1606902262;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729462;}s:64:\"87c55ef3f8e70a5c3c01f30e9471c083aaafa740149e03746a7b02886d31e5fd\";a:4:{s:10:\"expiration\";i:1606902476;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729676;}s:64:\"798261011ff99a70b013ba41562922f65aeb2cd9081c445fcb574c1f15ea2555\";a:4:{s:10:\"expiration\";i:1606902737;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729937;}s:64:\"378b5e7cc156459f57c3f8af5615488dc4586bb2bbb3e8d91c7b174f67cb203b\";a:4:{s:10:\"expiration\";i:1606902770;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606729970;}s:64:\"3903b06e410b68509fc01535b8aef5bb1003e0cb8e3dd97429598a018f598333\";a:4:{s:10:\"expiration\";i:1606902830;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730030;}s:64:\"d5730229b527c933747c26932c2c63fd470b712b7f80b45bcdd5373b701eaba6\";a:4:{s:10:\"expiration\";i:1606902852;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730052;}s:64:\"15384df04e1e79d0ac9533d258017af6e21a4a4d59eee1b3a6a9303ae1f8ea81\";a:4:{s:10:\"expiration\";i:1606902890;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730090;}s:64:\"db6157849c2c0b9bcc14620d663040dfe089c6f43ac10c73f458bb4bdfa7681d\";a:4:{s:10:\"expiration\";i:1606902928;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0\";s:5:\"login\";i:1606730128;}s:64:\"776dcd03d21625466f72f3fc9867027da22ec918295fbcab04a3f5874601e28b\";a:4:{s:10:\"expiration\";i:1606902964;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730164;}s:64:\"90be8e042da685d78fc2c0fb75df75ce2bdddeaf83eda4381bd766f531bac6e0\";a:4:{s:10:\"expiration\";i:1606903089;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730289;}s:64:\"407f515e2252f401d58b1aa52724a69415373bc250c30db1f3924fc8ed22e300\";a:4:{s:10:\"expiration\";i:1606903115;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730315;}s:64:\"15b2458f1a051be607958db7cf1965df33b5eec5d7ec77a8b5ddd599c33c0633\";a:4:{s:10:\"expiration\";i:1606903337;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730537;}s:64:\"7af4f1f47ba257d16f0c1e2e08f20df649a2d06324d74ad08c0deff578b82548\";a:4:{s:10:\"expiration\";i:1606903350;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730550;}s:64:\"1c6043b30b28144e0e3bc33129871394544c4dbddfa51f5d65469c27145b336c\";a:4:{s:10:\"expiration\";i:1606903413;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730613;}s:64:\"91c17fd8e8c60df90cb0aafb2db3d9051e527cc1a5430953995736ee58cf379f\";a:4:{s:10:\"expiration\";i:1606903486;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730686;}s:64:\"c6d699898de01526390feff66197a02557a403c4d9a111eca1889f8fa0642aa5\";a:4:{s:10:\"expiration\";i:1606903605;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730805;}s:64:\"c77bb804243bea986e7dd8c2d3116cb91eaabbd5bdbdf6493a9783cab146d255\";a:4:{s:10:\"expiration\";i:1606903680;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606730880;}s:64:\"b4a388069f7101380e2991d529fcebff35548fea692c8d5c227df3651d229cbf\";a:4:{s:10:\"expiration\";i:1606903934;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731134;}s:64:\"99d889813177717042ca0e900eb9f80bbe62fcd5f0a246c6c13a7a89e1fd57eb\";a:4:{s:10:\"expiration\";i:1606903960;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731160;}s:64:\"e79e70cbdb11065aeb06f8f886355b6ee163da929ecb9a2066d5505f351ba59c\";a:4:{s:10:\"expiration\";i:1606904011;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731211;}s:64:\"6b394481570d8c0e04aafe0593f496dd1a0c7088da0bdc8b6665b32ac28ffb12\";a:4:{s:10:\"expiration\";i:1606904085;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1606731285;}s:64:\"45a42f002375e4784979ebc33fde6c7d5c546040e7ea4a85da6528d19a599b13\";a:4:{s:10:\"expiration\";i:1606904122;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731322;}s:64:\"b465dc5f6ca137e44e15dea1b5ad5855ba05a5e0c302675ae74885d61d2cabc2\";a:4:{s:10:\"expiration\";i:1606904128;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731328;}s:64:\"e912903875d45b5a37eae3cd6ca43924c316307968c041047853ac71e5c6b85d\";a:4:{s:10:\"expiration\";i:1606904239;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731439;}s:64:\"d585f12c5a1fe72afcdd50e5b4fe98a0fc3693f2e84d77dc12e98e8b35bb9a0c\";a:4:{s:10:\"expiration\";i:1606904287;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731487;}s:64:\"09f40020fd25c62302c3901677f5ce9d15186f595bd3f57626c5fd22a9c5193a\";a:4:{s:10:\"expiration\";i:1606904287;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731487;}s:64:\"7ca4de11f7fed5098a0e4caf480be243fe828f96a0a9052a8089a4fb64ea2f54\";a:4:{s:10:\"expiration\";i:1606904308;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731508;}s:64:\"ce37c36bfba2be2faf3c1bbf707bb8723ae2bdf269e916a4501741e33f4ceb5d\";a:4:{s:10:\"expiration\";i:1606904308;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731508;}s:64:\"6c064738aac5db33c4cff46e47882653c03eb465e54a823efe8c5810d87d5344\";a:4:{s:10:\"expiration\";i:1606904446;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731646;}s:64:\"258ce1c3f7507b86f23e59373bfc57f759ff6ebda2d2b05e781ebfd5cac2fc3b\";a:4:{s:10:\"expiration\";i:1606904446;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731646;}s:64:\"4f7ba2d9f90e988adf42753538081dd701d243cc47fde71121eb9e3dc6b4b4ab\";a:4:{s:10:\"expiration\";i:1606904479;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731679;}s:64:\"a9694c40cd469a6ee7eb38f9e723c8bbfb02f89813cdb57bd30f1250306ff716\";a:4:{s:10:\"expiration\";i:1606904479;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731679;}s:64:\"089aa14cc3faa3029c0594b5378afa19f434c81e53997fdaa553c75e60f446c6\";a:4:{s:10:\"expiration\";i:1606904496;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731696;}s:64:\"50f25476c2555d276711cab5b7fb69037902ed2b78ff6304a27cb8cba2e88117\";a:4:{s:10:\"expiration\";i:1606904497;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731697;}s:64:\"682b0bc213346a3de3783f49eab4f93d64370b43985e7510e4ea77565c9db8b0\";a:4:{s:10:\"expiration\";i:1606904532;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731732;}s:64:\"085484de2be8efa0a3a88b1ab98d88d853a79b032c2917fe9319263c0a4dd592\";a:4:{s:10:\"expiration\";i:1606904532;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731732;}s:64:\"86db6f83e0b460fccfa726f0a44eb50b18b93f6d484a8b636a32a325160a6d67\";a:4:{s:10:\"expiration\";i:1606904676;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731876;}s:64:\"926cb276d5fafe3c7b498afad70358cbdb309ad29b4385bd910dc397b0fc65e0\";a:4:{s:10:\"expiration\";i:1606904676;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731876;}s:64:\"fd203f84af66dc0212ecb127b1cb68595605843fffd78f38384ab0d11f3a918a\";a:4:{s:10:\"expiration\";i:1606904714;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731914;}s:64:\"71b3bed239307da475aebd1018e4d76dad3e86ef3802a47117b8331ce2458dae\";a:4:{s:10:\"expiration\";i:1606904731;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1606731931;}}'),(20,2,'nickname','test'),(21,2,'first_name',''),(22,2,'last_name',''),(23,2,'description',''),(24,2,'rich_editing','true'),(25,2,'syntax_highlighting','true'),(26,2,'comment_shortcuts','false'),(27,2,'admin_color','fresh'),(28,2,'use_ssl','0'),(29,2,'show_admin_bar_front','true'),(30,2,'locale',''),(31,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(32,2,'wp_user_level','0'),(33,2,'dismissed_wp_pointers',''),(34,3,'nickname','teste2'),(35,3,'first_name','Nikolay'),(36,3,'last_name','Khanis'),(37,3,'description',''),(38,3,'rich_editing','true'),(39,3,'syntax_highlighting','true'),(40,3,'comment_shortcuts','false'),(41,3,'admin_color','fresh'),(42,3,'use_ssl','0'),(43,3,'show_admin_bar_front','true'),(44,3,'locale',''),(45,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(46,3,'wp_user_level','0'),(47,3,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BBZztNDVM3Tp0pSlD/f.1gDLakLvgg/','admin','hn@wnstudio.ru','http://localhost/test.local','2020-11-30 09:18:55','',0,'admin'),(2,'test','$P$BrdZNFdLJyLlVGct5eCoGOC9xnuRhr1','test','email@admin.ru','','2020-11-30 10:05:53','1606730753:$P$B/.r/u3wVZ4utjHcym/A2wZAQxlSM80',0,'test'),(3,'teste2','$P$BilLN5nSHylD6G1wwT4aclmE31.SZL/','teste2','jennyone59@gmail.com','','2020-11-30 10:16:00','',0,'Nikolay Khanis');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 14:17:03
