-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-07-24 16:36:19','2024-07-24 16:36:19','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:12:{i:1733852181;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1733853978;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733855778;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733891945;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733895378;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733934980;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733935145;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733935148;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733980606;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734021381;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734079089;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://localhost:10013','on');
INSERT INTO `wp_options` VALUES (3,'home','http://localhost:10013','on');
INSERT INTO `wp_options` VALUES (4,'blogname','Fictional University','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','Best University in the World','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','1','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','devstudio.corp@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:181:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','fictional-university-theme','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','fictional-university-theme','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','58975','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','33','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','31','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1737390978','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:96:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:14:\"delete_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:14:\"campus_manager\";a:2:{s:4:\"name\";s:14:\"Campus Manager\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:14:\"delete_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','2','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1721843506;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (161,'current_theme','Fictional University','auto');
INSERT INTO `wp_options` VALUES (162,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (163,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (187,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (188,'new_admin_email','devstudio.corp@gmail.com','auto');
INSERT INTO `wp_options` VALUES (200,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (217,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (484,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (616,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (657,'recovery_mode_email_last_sent','1733733146','auto');
INSERT INTO `wp_options` VALUES (658,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (659,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (751,'acf_first_activated_version','6.3.6','on');
INSERT INTO `wp_options` VALUES (752,'acf_site_health','{\"version\":\"6.3.10.2\",\"plugin_type\":\"Free\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Fictional University\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"manual-image-crop\\/manual-image-crop.php\":{\"name\":\"Manual Image Crop\",\"version\":\"1.12\",\"plugin_uri\":\"https:\\/\\/github.com\\/tomaszsita\\/wp-manual-image-crop\"},\"members\\/members.php\":{\"name\":\"Members\",\"version\":\"3.2.14\",\"plugin_uri\":\"https:\\/\\/members-plugin.com\\/\"},\"regenerate-thumbnails\\/regenerate-thumbnails.php\":{\"name\":\"Regenerate Thumbnails\",\"version\":\"3.1.6\",\"plugin_uri\":\"https:\\/\\/alex.blog\\/wordpress-plugins\\/regenerate-thumbnails\\/\"},\"advanced-custom-fields\\/acf.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.3.10.2\",\"plugin_uri\":\"http:\\/\\/wordpress.org\\/plugins\\/advanced-custom-fields\\/\"}},\"ui_field_groups\":\"5\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"date_picker\":1,\"wysiwyg\":1,\"google_map\":1,\"text\":1,\"image\":1,\"relationship\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"8\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1727426289,\"event_first_created_field_group\":1727426480,\"last_updated\":1733587553}','off');
INSERT INTO `wp_options` VALUES (754,'acf_version','6.3.10.2','auto');
INSERT INTO `wp_options` VALUES (972,'mic_make2x','true','auto');
INSERT INTO `wp_options` VALUES (1415,'db_upgraded','','on');
INSERT INTO `wp_options` VALUES (1418,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (1425,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (1491,'_transient_timeout_members_30days_flag','1735889493','off');
INSERT INTO `wp_options` VALUES (1492,'_transient_members_30days_flag','1','off');
INSERT INTO `wp_options` VALUES (1493,'members_activated','1733297493','auto');
INSERT INTO `wp_options` VALUES (1494,'members_addons_migrated','1','auto');
INSERT INTO `wp_options` VALUES (1495,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (1496,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (1498,'members_notifications','a:4:{s:6:\"update\";i:1733848371;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (1537,'_site_transient_timeout_browser_0845b309c7b9b957afd9ecf775a4c21f','1733988331','off');
INSERT INTO `wp_options` VALUES (1538,'_site_transient_browser_0845b309c7b9b957afd9ecf775a4c21f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"131.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (1540,'_site_transient_timeout_php_check_a34f4a08303dd29cee70e79d780daa9d','1733988332','off');
INSERT INTO `wp_options` VALUES (1541,'_site_transient_php_check_a34f4a08303dd29cee70e79d780daa9d','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (1632,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1733892515','off');
INSERT INTO `wp_options` VALUES (1633,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1679,'_site_transient_timeout_theme_roots','1733850098','off');
INSERT INTO `wp_options` VALUES (1680,'_site_transient_theme_roots','a:2:{s:26:\"fictional-university-theme\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (1682,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1733857996;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1683,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733848369;s:7:\"checked\";a:2:{s:26:\"fictional-university-theme\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1684,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733848369;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:19:\"members/members.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:6:\"3.2.14\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/members.3.2.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=3148950\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=3148950\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:8:\"6.3.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3167679\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3167679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:4:{s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:19:\"members/members.php\";s:6:\"3.2.14\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";s:30:\"advanced-custom-fields/acf.php\";s:8:\"6.3.10.2\";}}','off');
INSERT INTO `wp_options` VALUES (1691,'_transient_doing_cron','1733857995.9448380470275878906250','on');
INSERT INTO `wp_options` VALUES (1694,'_site_transient_timeout_wp_theme_files_patterns-6240320ecd71bcca6572463a987745f5','1733859796','off');
INSERT INTO `wp_options` VALUES (1695,'_site_transient_wp_theme_files_patterns-6240320ecd71bcca6572463a987745f5','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1727076503:1');
INSERT INTO `wp_postmeta` VALUES (6,10,'_edit_lock','1731005550:1');
INSERT INTO `wp_postmeta` VALUES (7,3,'_edit_lock','1723276875:1');
INSERT INTO `wp_postmeta` VALUES (8,13,'_edit_lock','1724131751:1');
INSERT INTO `wp_postmeta` VALUES (9,15,'_edit_lock','1724131690:1');
INSERT INTO `wp_postmeta` VALUES (10,18,'_edit_lock','1724134383:1');
INSERT INTO `wp_postmeta` VALUES (11,20,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (12,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (13,20,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (14,20,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (15,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (16,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (17,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (18,20,'_menu_item_url','http://localhost:10013/');
INSERT INTO `wp_postmeta` VALUES (19,20,'_menu_item_orphaned','1724494746');
INSERT INTO `wp_postmeta` VALUES (20,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (21,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (22,21,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (23,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (24,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (25,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (27,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (29,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (30,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (31,22,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (32,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (33,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (34,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (36,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,22,'_menu_item_orphaned','1724494746');
INSERT INTO `wp_postmeta` VALUES (38,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (39,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (40,23,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (41,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (42,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (43,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (44,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (45,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (47,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (48,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (49,24,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (50,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (51,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (52,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (53,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (54,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,24,'_menu_item_orphaned','1724494746');
INSERT INTO `wp_postmeta` VALUES (56,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (57,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (58,25,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (59,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (60,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (61,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (62,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (63,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (64,25,'_menu_item_orphaned','1724494746');
INSERT INTO `wp_postmeta` VALUES (65,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (66,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (67,26,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (68,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (69,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (70,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (71,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (72,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,26,'_menu_item_orphaned','1724494746');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (78,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (79,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (80,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (81,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (86,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (87,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (88,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (89,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (90,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (93,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (94,29,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (95,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (96,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (97,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (98,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (99,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (101,30,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (102,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (103,30,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (104,30,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (105,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (106,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (107,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (108,30,'_menu_item_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (110,31,'_edit_lock','1724651205:1');
INSERT INTO `wp_postmeta` VALUES (111,33,'_edit_lock','1724651218:1');
INSERT INTO `wp_postmeta` VALUES (114,1,'_edit_lock','1727076509:1');
INSERT INTO `wp_postmeta` VALUES (117,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (120,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (124,39,'_edit_lock','1727338847:1');
INSERT INTO `wp_postmeta` VALUES (127,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (134,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (135,41,'_edit_lock','1727509419:1');
INSERT INTO `wp_postmeta` VALUES (136,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (137,42,'_edit_lock','1733203873:1');
INSERT INTO `wp_postmeta` VALUES (138,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (139,43,'_edit_lock','1733208837:1');
INSERT INTO `wp_postmeta` VALUES (140,46,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (143,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,48,'_edit_lock','1727426683:1');
INSERT INTO `wp_postmeta` VALUES (145,43,'event_date','20241018');
INSERT INTO `wp_postmeta` VALUES (146,43,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (147,42,'event_date','20280818');
INSERT INTO `wp_postmeta` VALUES (148,42,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (149,41,'event_date','20241003');
INSERT INTO `wp_postmeta` VALUES (150,41,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (152,51,'_edit_lock','1727599361:1');
INSERT INTO `wp_postmeta` VALUES (153,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (154,51,'event_date','20250101');
INSERT INTO `wp_postmeta` VALUES (155,51,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (156,53,'_edit_lock','1727671227:1');
INSERT INTO `wp_postmeta` VALUES (157,55,'_edit_lock','1730452215:1');
INSERT INTO `wp_postmeta` VALUES (158,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (159,55,'event_date','20151230');
INSERT INTO `wp_postmeta` VALUES (160,55,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (161,57,'_edit_lock','1733124609:1');
INSERT INTO `wp_postmeta` VALUES (162,58,'_edit_lock','1733204182:1');
INSERT INTO `wp_postmeta` VALUES (163,59,'_edit_lock','1733124521:1');
INSERT INTO `wp_postmeta` VALUES (164,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,61,'_edit_lock','1730707796:1');
INSERT INTO `wp_postmeta` VALUES (167,42,'related_program','a:1:{i:0;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (168,42,'_related_program','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (169,42,'related_programs','a:2:{i:0;s:2:\"58\";i:1;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (170,42,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (171,64,'_edit_lock','1733124222:1');
INSERT INTO `wp_postmeta` VALUES (172,65,'_edit_lock','1733121603:1');
INSERT INTO `wp_postmeta` VALUES (173,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (174,65,'related_programs','a:1:{i:0;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (175,65,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (176,66,'_wp_attached_file','2024/11/joshua-rawson-harris-YNaSz-E7Qss-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (177,66,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:60:\"2024/11/joshua-rawson-harris-YNaSz-E7Qss-unsplash-scaled.jpg\";s:8:\"filesize\";i:413356;s:5:\"sizes\";a:8:{s:9:\"2048x2048\";a:5:{s:4:\"file\";s:55:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:290088;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:53:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27803;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:53:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42496;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9814;}s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19452;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:53:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69297;}s:5:\"large\";a:5:{s:4:\"file\";s:54:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104760;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:187358;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:45:\"joshua-rawson-harris-YNaSz-E7Qss-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (178,65,'_thumbnail_id','66');
INSERT INTO `wp_postmeta` VALUES (179,67,'_wp_attached_file','2024/11/darshan-gajara-xv09UYi6jSo-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (180,67,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:54:\"2024/11/darshan-gajara-xv09UYi6jSo-unsplash-scaled.jpg\";s:8:\"filesize\";i:268727;s:5:\"sizes\";a:8:{s:9:\"2048x2048\";a:5:{s:4:\"file\";s:49:\"darshan-gajara-xv09UYi6jSo-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189117;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:47:\"darshan-gajara-xv09UYi6jSo-unsplash-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16466;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:47:\"darshan-gajara-xv09UYi6jSo-unsplash-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36931;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"darshan-gajara-xv09UYi6jSo-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6948;}s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"darshan-gajara-xv09UYi6jSo-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11435;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"darshan-gajara-xv09UYi6jSo-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43072;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"darshan-gajara-xv09UYi6jSo-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66420;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"darshan-gajara-xv09UYi6jSo-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:121109;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"darshan-gajara-xv09UYi6jSo-unsplash.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:3:\"124\";s:1:\"y\";s:2:\"68\";s:1:\"w\";s:3:\"331\";s:1:\"h\";s:18:\"215.15000000000538\";s:5:\"scale\";s:4:\"5.12\";}s:18:\"professorPortraite\";a:5:{s:1:\"x\";s:2:\"98\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:17:\"245.9076923076928\";s:1:\"h\";s:3:\"333\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (181,64,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (182,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (183,64,'related_programs','a:1:{i:0;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (184,64,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (185,68,'_edit_lock','1733121617:1');
INSERT INTO `wp_postmeta` VALUES (186,69,'_wp_attached_file','2024/11/man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (187,69,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1661;s:4:\"file\";s:91:\"2024/11/man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-scaled.jpg\";s:8:\"filesize\";i:337755;s:5:\"sizes\";a:8:{s:9:\"1536x1536\";a:5:{s:4:\"file\";s:85:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-1536x996.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:996;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122877;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:84:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4751;}s:6:\"medium\";a:5:{s:4:\"file\";s:84:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9526;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:84:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40337;}s:5:\"large\";a:5:{s:4:\"file\";s:85:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-1024x664.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:664;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62821;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:86:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-2048x1329.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1329;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:213508;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:84:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14892;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:84:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34703;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:76:\"man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (188,68,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (189,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,68,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (191,68,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (192,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,70,'_edit_lock','1731007488:1');
INSERT INTO `wp_postmeta` VALUES (195,74,'_wp_attached_file','2024/11/forest_fog_road_126787_3840x2160-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (196,74,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:51:\"2024/11/forest_fog_road_126787_3840x2160-scaled.jpg\";s:8:\"filesize\";i:684924;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"forest_fog_road_126787_3840x2160-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10720;}s:5:\"large\";a:5:{s:4:\"file\";s:45:\"forest_fog_road_126787_3840x2160-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113690;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"forest_fog_road_126787_3840x2160-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5383;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"forest_fog_road_126787_3840x2160-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64471;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:45:\"forest_fog_road_126787_3840x2160-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:252164;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:46:\"forest_fog_road_126787_3840x2160-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:446785;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:44:\"forest_fog_road_126787_3840x2160-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21016;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:44:\"forest_fog_road_126787_3840x2160-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67334;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:45:\"forest_fog_road_126787_3840x2160-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72108;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"forest_fog_road_126787_3840x2160.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"25\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (197,65,'page_banner_sub','Curabitur efficitur posuere ligula, in faucibus nunc vehicula non');
INSERT INTO `wp_postmeta` VALUES (198,65,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (199,65,'page_banner_background_image','74');
INSERT INTO `wp_postmeta` VALUES (200,65,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (201,75,'_wp_attached_file','2024/11/tree_minimalism_bw_126828_3840x2160-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (202,75,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:54:\"2024/11/tree_minimalism_bw_126828_3840x2160-scaled.jpg\";s:8:\"filesize\";i:243226;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"tree_minimalism_bw_126828_3840x2160-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4527;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"tree_minimalism_bw_126828_3840x2160-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41202;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"tree_minimalism_bw_126828_3840x2160-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2673;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"tree_minimalism_bw_126828_3840x2160-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23911;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:48:\"tree_minimalism_bw_126828_3840x2160-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90468;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:49:\"tree_minimalism_bw_126828_3840x2160-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159897;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:47:\"tree_minimalism_bw_126828_3840x2160-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9130;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:47:\"tree_minimalism_bw_126828_3840x2160-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24648;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:48:\"tree_minimalism_bw_126828_3840x2160-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57418;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"tree_minimalism_bw_126828_3840x2160.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (204,10,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (206,76,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (208,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,10,'page_banner_sub','Faucibus leo sit amet, commodo erat');
INSERT INTO `wp_postmeta` VALUES (210,10,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (211,10,'page_banner_background_image','75');
INSERT INTO `wp_postmeta` VALUES (212,10,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (213,76,'page_banner_sub','Faucibus leo sit amet, commodo erat');
INSERT INTO `wp_postmeta` VALUES (214,76,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (215,76,'page_banner_background_image','75');
INSERT INTO `wp_postmeta` VALUES (216,76,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (217,77,'_wp_attached_file','2024/11/autumn-decor-3840x2160-painting-nature-painting-26721-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (218,77,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:72:\"2024/11/autumn-decor-3840x2160-painting-nature-painting-26721-scaled.jpg\";s:8:\"filesize\";i:604176;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:65:\"autumn-decor-3840x2160-painting-nature-painting-26721-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10313;}s:5:\"large\";a:5:{s:4:\"file\";s:66:\"autumn-decor-3840x2160-painting-nature-painting-26721-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108096;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:65:\"autumn-decor-3840x2160-painting-nature-painting-26721-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4816;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:65:\"autumn-decor-3840x2160-painting-nature-painting-26721-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61207;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:66:\"autumn-decor-3840x2160-painting-nature-painting-26721-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:238752;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:67:\"autumn-decor-3840x2160-painting-nature-painting-26721-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:413206;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:65:\"autumn-decor-3840x2160-painting-nature-painting-26721-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19853;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:65:\"autumn-decor-3840x2160-painting-nature-painting-26721-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54283;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:66:\"autumn-decor-3840x2160-painting-nature-painting-26721-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106160;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:57:\"autumn-decor-3840x2160-painting-nature-painting-26721.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (219,64,'page_banner_sub','Morbi commodo tincidunt viverra');
INSERT INTO `wp_postmeta` VALUES (220,64,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (221,64,'page_banner_background_image','77');
INSERT INTO `wp_postmeta` VALUES (222,64,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (223,78,'_wp_attached_file','2024/11/trees_forest_frost_1324926_3840x2160-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (224,78,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:55:\"2024/11/trees_forest_frost_1324926_3840x2160-scaled.jpg\";s:8:\"filesize\";i:777655;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"trees_forest_frost_1324926_3840x2160-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13503;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"trees_forest_frost_1324926_3840x2160-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135712;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"trees_forest_frost_1324926_3840x2160-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5590;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"trees_forest_frost_1324926_3840x2160-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78130;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"trees_forest_frost_1324926_3840x2160-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:292853;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:50:\"trees_forest_frost_1324926_3840x2160-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:512394;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:48:\"trees_forest_frost_1324926_3840x2160-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25221;}s:18:\"professorPortraite\";a:5:{s:4:\"file\";s:48:\"trees_forest_frost_1324926_3840x2160-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66118;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:49:\"trees_forest_frost_1324926_3840x2160-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:142334;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"trees_forest_frost_1324926_3840x2160.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (225,68,'page_banner_sub','Curabitur at sagittis mauris.');
INSERT INTO `wp_postmeta` VALUES (226,68,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (227,68,'page_banner_background_image','78');
INSERT INTO `wp_postmeta` VALUES (228,68,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (229,80,'_edit_lock','1731338812:1');
INSERT INTO `wp_postmeta` VALUES (230,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,80,'page_banner_sub',' Morbi commodo tincidunt viverra');
INSERT INTO `wp_postmeta` VALUES (232,80,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (233,80,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (234,80,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (235,81,'_edit_lock','1731341126:1');
INSERT INTO `wp_postmeta` VALUES (236,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,81,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (238,81,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (239,81,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (240,81,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (241,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (242,82,'_edit_lock','1731339472:1');
INSERT INTO `wp_postmeta` VALUES (243,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,86,'_edit_lock','1733203666:1');
INSERT INTO `wp_postmeta` VALUES (246,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (247,58,'main_body_content','<!-- wp:paragraph -->\r\n\r\nDolor sit amet, consectetur adipiscing elit. Maecenas non nibh eget felis cursus pretium. Curabitur ullamcorper congue velit vitae tempus. Aliquam eget placerat nisl. Vivamus imperdiet, diam in ullamcorper semper, dolor elit maximus risus, vitae euismod justo sem et sapien. Sed fermentum vehicula tincidunt. Donec lobortis neque nulla, nec consectetur nunc gravida vel. Vivamus a urna non enim varius vehicula. Sed ornare tristique mi in vulputate.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nDuis in nisi id dui facilisis blandit eu vitae odio. Curabitur efficitur posuere ligula, in faucibus nunc vehicula non. Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (248,58,'_main_body_content','field_674d60d446357');
INSERT INTO `wp_postmeta` VALUES (249,58,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (250,58,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (251,58,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (252,58,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (253,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (254,59,'main_body_content','<!-- wp:paragraph -->\r\n\r\nCongue velit vitae tempus. Aliquam eget placerat nisl. Vivamus imperdiet, diam in ullamcorper semper, dolor elit maximus risus, vitae euismod justo sem et sapien. Sed fermentum vehicula tincidunt. Donec lobortis neque nulla, nec consectetur nunc gravida vel. Vivamus a urna non enim varius vehicula. Sed ornare tristique mi in vulputate.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nDuis in nisi id dui facilisis blandit eu vitae odio. Curabitur efficitur posuere ligula, in faucibus nunc vehicula non. Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (255,59,'_main_body_content','field_674d60d446357');
INSERT INTO `wp_postmeta` VALUES (256,59,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (257,59,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (258,59,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (259,59,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (260,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (261,57,'main_body_content','<!-- wp:paragraph -->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non nibh eget felis cursus pretium. Curabitur ullamcorper congue velit vitae tempus. Aliquam eget placerat nisl. Vivamus imperdiet, diam in ullamcorper semper, dolor elit maximus risus, vitae euismod justo sem et sapien. Sed fermentum vehicula tincidunt. Donec lobortis neque nulla, nec consectetur nunc gravida vel. Vivamus a urna non enim varius vehicula. Sed ornare tristique mi in vulputate.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nDuis in nisi id dui facilisis blandit eu vitae odio. Curabitur efficitur posuere ligula, in faucibus nunc vehicula non. Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (262,57,'_main_body_content','field_674d60d446357');
INSERT INTO `wp_postmeta` VALUES (263,57,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (264,57,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (265,57,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (266,57,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (267,43,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (268,43,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (269,43,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (270,43,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (271,43,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (272,43,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (273,89,'_edit_lock','1733209468:1');
INSERT INTO `wp_postmeta` VALUES (274,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,89,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (276,89,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (277,89,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (278,89,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (279,90,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (280,90,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (281,90,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (282,90,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (283,93,'_edit_lock','1733298609:2');
INSERT INTO `wp_postmeta` VALUES (284,93,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (285,93,'event_date','20241228');
INSERT INTO `wp_postmeta` VALUES (286,93,'_event_date','field_66f66f048401f');
INSERT INTO `wp_postmeta` VALUES (287,93,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (288,93,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (289,93,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (290,93,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (291,93,'related_programs','a:1:{i:0;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (292,93,'_related_programs','field_67249b17bb8fa');
INSERT INTO `wp_postmeta` VALUES (293,94,'_edit_lock','1733383552:1');
INSERT INTO `wp_postmeta` VALUES (294,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (295,94,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (296,94,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (297,94,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (298,94,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (299,95,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (300,95,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (301,95,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (302,95,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (303,96,'_edit_lock','1733589409:1');
INSERT INTO `wp_postmeta` VALUES (304,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,96,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (306,96,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (307,96,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (308,96,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (309,97,'_edit_lock','1733589291:1');
INSERT INTO `wp_postmeta` VALUES (310,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (311,97,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (312,97,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (313,97,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (314,97,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (333,98,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (334,98,'_wp_trash_meta_time','1733639777');
INSERT INTO `wp_postmeta` VALUES (335,98,'_wp_desired_post_slug','rgrgrtg');
INSERT INTO `wp_postmeta` VALUES (336,100,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (337,100,'_wp_trash_meta_time','1733639803');
INSERT INTO `wp_postmeta` VALUES (338,100,'_wp_desired_post_slug','edd');
INSERT INTO `wp_postmeta` VALUES (339,99,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (340,99,'_wp_trash_meta_time','1733639804');
INSERT INTO `wp_postmeta` VALUES (341,99,'_wp_desired_post_slug','rerfefref');
INSERT INTO `wp_postmeta` VALUES (342,101,'_edit_lock','1733721104:2');
INSERT INTO `wp_postmeta` VALUES (343,102,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (344,102,'_wp_trash_meta_time','1733721281');
INSERT INTO `wp_postmeta` VALUES (345,102,'_wp_desired_post_slug','vrfrf');
INSERT INTO `wp_postmeta` VALUES (346,103,'_edit_lock','1733721657:1');
INSERT INTO `wp_postmeta` VALUES (347,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (348,103,'page_banner_sub','');
INSERT INTO `wp_postmeta` VALUES (349,103,'_page_banner_sub','field_672a1a88a861c');
INSERT INTO `wp_postmeta` VALUES (350,103,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (351,103,'_page_banner_background_image','field_672a1e5ba861d');
INSERT INTO `wp_postmeta` VALUES (352,107,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (353,107,'_wp_trash_meta_time','1733722314');
INSERT INTO `wp_postmeta` VALUES (354,107,'_wp_desired_post_slug','wfewe');
INSERT INTO `wp_postmeta` VALUES (355,108,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (356,108,'_wp_trash_meta_time','1733722339');
INSERT INTO `wp_postmeta` VALUES (357,108,'_wp_desired_post_slug','dwewd');
INSERT INTO `wp_postmeta` VALUES (358,106,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (359,106,'_wp_trash_meta_time','1733722354');
INSERT INTO `wp_postmeta` VALUES (360,106,'_wp_desired_post_slug','my-cat-note-3');
INSERT INTO `wp_postmeta` VALUES (361,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (362,112,'_wp_trash_meta_time','1733733208');
INSERT INTO `wp_postmeta` VALUES (363,112,'_wp_desired_post_slug','tyyh');
INSERT INTO `wp_postmeta` VALUES (364,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (365,112,'_wp_trash_meta_time','1733733210');
INSERT INTO `wp_postmeta` VALUES (366,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (367,112,'_wp_trash_meta_time','1733733211');
INSERT INTO `wp_postmeta` VALUES (368,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (369,112,'_wp_trash_meta_time','1733733211');
INSERT INTO `wp_postmeta` VALUES (370,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (371,112,'_wp_trash_meta_time','1733733211');
INSERT INTO `wp_postmeta` VALUES (372,111,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (373,111,'_wp_trash_meta_time','1733733212');
INSERT INTO `wp_postmeta` VALUES (374,111,'_wp_desired_post_slug','tgtggty');
INSERT INTO `wp_postmeta` VALUES (375,110,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (376,110,'_wp_trash_meta_time','1733733214');
INSERT INTO `wp_postmeta` VALUES (377,110,'_wp_desired_post_slug','ggygyy');
INSERT INTO `wp_postmeta` VALUES (378,112,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (379,112,'_wp_trash_meta_time','1733735557');
INSERT INTO `wp_postmeta` VALUES (380,111,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (381,111,'_wp_trash_meta_time','1733735559');
INSERT INTO `wp_postmeta` VALUES (382,110,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (383,110,'_wp_trash_meta_time','1733735560');
INSERT INTO `wp_postmeta` VALUES (384,115,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (385,115,'_wp_trash_meta_time','1733735632');
INSERT INTO `wp_postmeta` VALUES (386,115,'_wp_desired_post_slug','mym-cat-note-6');
INSERT INTO `wp_postmeta` VALUES (387,114,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (388,114,'_wp_trash_meta_time','1733735633');
INSERT INTO `wp_postmeta` VALUES (389,114,'_wp_desired_post_slug','mym-cat-note-5');
INSERT INTO `wp_postmeta` VALUES (390,113,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (391,113,'_wp_trash_meta_time','1733735634');
INSERT INTO `wp_postmeta` VALUES (392,113,'_wp_desired_post_slug','mym-cat-note-4');
INSERT INTO `wp_postmeta` VALUES (393,118,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (394,118,'_wp_trash_meta_time','1733736823');
INSERT INTO `wp_postmeta` VALUES (395,118,'_wp_desired_post_slug','vdf');
INSERT INTO `wp_postmeta` VALUES (396,119,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (397,119,'_wp_trash_meta_time','1733736856');
INSERT INTO `wp_postmeta` VALUES (398,119,'_wp_desired_post_slug','dvfv');
INSERT INTO `wp_postmeta` VALUES (399,117,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (400,117,'_wp_trash_meta_time','1733736858');
INSERT INTO `wp_postmeta` VALUES (401,117,'_wp_desired_post_slug','dfvf');
INSERT INTO `wp_postmeta` VALUES (402,121,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (403,121,'_wp_trash_meta_time','1733736958');
INSERT INTO `wp_postmeta` VALUES (404,121,'_wp_desired_post_slug','121');
INSERT INTO `wp_postmeta` VALUES (405,120,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (406,120,'_wp_trash_meta_time','1733736959');
INSERT INTO `wp_postmeta` VALUES (407,120,'_wp_desired_post_slug','120');
INSERT INTO `wp_postmeta` VALUES (408,123,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (409,123,'_wp_trash_meta_time','1733737033');
INSERT INTO `wp_postmeta` VALUES (410,123,'_wp_desired_post_slug','123');
INSERT INTO `wp_postmeta` VALUES (411,122,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (412,122,'_wp_trash_meta_time','1733737041');
INSERT INTO `wp_postmeta` VALUES (413,122,'_wp_desired_post_slug','122');
INSERT INTO `wp_postmeta` VALUES (414,125,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (415,125,'_wp_trash_meta_time','1733737073');
INSERT INTO `wp_postmeta` VALUES (416,125,'_wp_desired_post_slug','t787k');
INSERT INTO `wp_postmeta` VALUES (417,124,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (418,124,'_wp_trash_meta_time','1733737100');
INSERT INTO `wp_postmeta` VALUES (419,124,'_wp_desired_post_slug','124');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-07-24 16:36:19','2024-07-24 16:36:19','<!-- wp:paragraph -->\n<p>Proin suscipit dui eget egestas scelerisque. Vestibulum nec mauris condimentum, feugiat tellus quis, ullamcorper nunc. Phasellus ut tellus vel arcu suscipit varius. Mauris vulputate ipsum ultricies massa rutrum, blandit commodo felis facilisis. Pellentesque at varius sem. Etiam tempus pellentesque mauris vel congue. Sed congue accumsan accumsan. Morbi pulvinar vel sapien quis faucibus. In eu ipsum non turpis lobortis porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur urna leo, pulvinar quis arcu a, cursus gravida purus. Curabitur dictum commodo feugiat. Nam nunc nisl, sollicitudin eget felis a, efficitur porta elit. Integer eget metus eu lacus egestas accumsan. Nulla iaculis velit nec egestas ullamcorper. Praesent non dolor in eros euismod pellentesque. Vestibulum ac erat pretium ante aliquam laoreet. Integer et mattis leo, quis suscipit mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras accumsan a massa a maximus. Quisque massa metus, luctus non ante mollis, varius tincidunt urna. Cras sed lacinia urna, ac feugiat sem. Mauris et massa vitae ipsum porttitor congue. Aenean non ipsum ac lacus rutrum pharetra sed sed velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla ullamcorper turpis sit amet fringilla suscipit. Duis suscipit ut tortor non scelerisque. Nunc felis sapien, rutrum at lacinia sed, cursus non ipsum. Duis mollis ut neque et eleifend. Vivamus lobortis lorem augue, id interdum urna scelerisque id. Vestibulum finibus sem quis nisi mattis dictum. Nam gravida ipsum et mi vestibulum, eu bibendum mi lacinia. Duis vitae ipsum orci. Fusce lectus metus, varius nec pharetra ac, elementum sed justo. Ut ligula nisi, pretium ac est quis, sodales sagittis ligula.</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-09-23 07:28:29','2024-09-23 07:28:29','',0,'http://localhost:10013/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-07-24 16:36:19','2024-07-24 16:36:19','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10013/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-07-24 16:36:19','2024-07-24 16:36:19','',0,'http://localhost:10013/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-07-24 16:36:19','2024-07-24 16:36:19','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10013.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-08-10 08:03:34','2024-08-10 08:03:34','',0,'http://localhost:10013/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-07-24 16:36:31','2024-07-24 16:36:31','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-07-24 16:36:31','2024-07-24 16:36:31','',0,'http://localhost:10013/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-07-26 06:25:55','2024-07-26 06:25:55','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet ullamcorper erat, sit amet vehicula turpis. Aliquam lobortis dictum lorem, sed egestas orci viverra vitae. Etiam in lacus at ante ultrices rutrum. Proin quis ante est. Integer malesuada sollicitudin nunc, eget ornare nibh vestibulum a. Suspendisse in augue nec tortor imperdiet malesuada in eget tortor. Nulla suscipit eleifend arcu, at lacinia magna. Aliquam id laoreet nisi, id auctor turpis. Nulla nisl nisi, commodo at malesuada vel, tincidunt eu turpis. Etiam aliquet eros eu augue vestibulum cursus. Nullam consectetur nulla augue, at cursus dui laoreet vel. Donec molestie eget sem vel fringilla. Etiam vestibulum dapibus sollicitudin. Proin ligula magna, commodo a ex eu, condimentum molestie tortor. Phasellus quis euismod quam, vel tempor mauris. Maecenas tincidunt lacinia libero lacinia convallis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin suscipit dui eget egestas scelerisque. Vestibulum nec mauris condimentum, feugiat tellus quis, ullamcorper nunc. Phasellus ut tellus vel arcu suscipit varius. Mauris vulputate ipsum ultricies massa rutrum, blandit commodo felis facilisis. Pellentesque at varius sem. Etiam tempus pellentesque mauris vel congue. Sed congue accumsan accumsan. Morbi pulvinar vel sapien quis faucibus. In eu ipsum non turpis lobortis porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur urna leo, pulvinar quis arcu a, cursus gravida purus. Curabitur dictum commodo feugiat. Nam nunc nisl, sollicitudin eget felis a, efficitur porta elit. Integer eget metus eu lacus egestas accumsan. Nulla iaculis velit nec egestas ullamcorper. Praesent non dolor in eros euismod pellentesque. Vestibulum ac erat pretium ante aliquam laoreet. Integer et mattis leo, quis suscipit mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras accumsan a massa a maximus. Quisque massa metus, luctus non ante mollis, varius tincidunt urna. Cras sed lacinia urna, ac feugiat sem. Mauris et massa vitae ipsum porttitor congue. Aenean non ipsum ac lacus rutrum pharetra sed sed velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla ullamcorper turpis sit amet fringilla suscipit. Duis suscipit ut tortor non scelerisque. Nunc felis sapien, rutrum at lacinia sed, cursus non ipsum. Duis mollis ut neque et eleifend. Vivamus lobortis lorem augue, id interdum urna scelerisque id. Vestibulum finibus sem quis nisi mattis dictum. Nam gravida ipsum et mi vestibulum, eu bibendum mi lacinia. Duis vitae ipsum orci. Fusce lectus metus, varius nec pharetra ac, elementum sed justo. Ut ligula nisi, pretium ac est quis, sodales sagittis ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent non cursus eros, eget facilisis urna. Nam eu dui sapien. Sed pellentesque iaculis risus, vitae aliquam nibh suscipit nec. Nullam convallis ipsum sit amet mi malesuada, eget fringilla lorem ullamcorper. Maecenas enim mi, malesuada eu varius eu, auctor sit amet tortor. Quisque accumsan ipsum eros, sed facilisis nulla fermentum a. Nunc ac urna vehicula, vulputate turpis id, vestibulum eros. Sed sollicitudin varius nisi sit amet sollicitudin. Maecenas nec ornare augue. Proin sapien mi, fermentum eu ornare in, placerat a nisl. Phasellus vehicula egestas maximus.</p>\n<!-- /wp:paragraph -->','New Post','','publish','open','open','','new-post','','','2024-09-23 07:28:23','2024-09-23 07:28:23','',0,'http://localhost:10013/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-07-26 06:25:55','2024-07-26 06:25:55','<!-- wp:paragraph -->\n<p>Lorem Ipsum Body Text!</p>\n<!-- /wp:paragraph -->','New Post','','inherit','closed','closed','','6-revision-v1','','','2024-07-26 06:25:55','2024-07-26 06:25:55','',6,'http://localhost:10013/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-08-10 08:02:46','2024-08-10 08:02:46','<!-- wp:paragraph -->\n<p>This is the \"About Us\" page content. Nulla tincidunt ac magna pellentesque venenatis. Sed finibus eleifend lorem non luctus. Ut nec dolor ac justo malesuada ultricies. Mauris eu elit dictum, semper est a, imperdiet lorem. Duis vitae lectus consequat, faucibus leo sit amet, commodo erat. Cras a orci et sem ultricies blandit. Suspendisse aliquet congue fermentum. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2024-11-06 02:45:59','2024-11-06 02:45:59','',0,'http://localhost:10013/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-08-10 08:02:46','2024-08-10 08:02:46','<!-- wp:paragraph -->\n<p>This is the \"About Us\" page content. Nulla tincidunt ac magna pellentesque venenatis. Sed finibus eleifend lorem non luctus. Ut nec dolor ac justo malesuada ultricies. Mauris eu elit dictum, semper est a, imperdiet lorem. Duis vitae lectus consequat, faucibus leo sit amet, commodo erat. Cras a orci et sem ultricies blandit. Suspendisse aliquet congue fermentum. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','10-revision-v1','','','2024-08-10 08:02:46','2024-08-10 08:02:46','',10,'http://localhost:10013/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-08-10 08:03:34','2024-08-10 08:03:34','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10013.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-08-10 08:03:34','2024-08-10 08:03:34','',3,'http://localhost:10013/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-08-20 05:29:45','2024-08-20 05:29:45','<!-- wp:paragraph -->\n<p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam enim sapien, elementum ac commodo sed, semper molestie erat. Nulla sed porta neque. Sed leo massa, bibendum sit amet viverra sit amet, egestas sit amet arcu. Nunc ultricies, libero vitae cursus faucibus, elit nisi aliquet risus, id bibendum magna ante nec dui. Nam scelerisque, leo interdum luctus hendrerit, ipsum magna tristique ex, ut mollis lacus est commodo massa. Proin congue tristique nisl, eu cursus erat venenatis vitae. Nulla leo orci, porta vitae imperdiet vel, vestibulum et justo. Suspendisse hendrerit nibh sit amet lorem aliquam consequat. Ut aliquet est est, eu pharetra sapien dignissim et. Proin sem nisl, dictum eu tellus et, finibus feugiat massa. Donec fermentum ipsum sit amet erat facilisis laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-08-20 05:29:45','2024-08-20 05:29:45','',10,'http://localhost:10013/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-08-20 05:29:45','2024-08-20 05:29:45','<!-- wp:paragraph -->\n<p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam enim sapien, elementum ac commodo sed, semper molestie erat. Nulla sed porta neque. Sed leo massa, bibendum sit amet viverra sit amet, egestas sit amet arcu. Nunc ultricies, libero vitae cursus faucibus, elit nisi aliquet risus, id bibendum magna ante nec dui. Nam scelerisque, leo interdum luctus hendrerit, ipsum magna tristique ex, ut mollis lacus est commodo massa. Proin congue tristique nisl, eu cursus erat venenatis vitae. Nulla leo orci, porta vitae imperdiet vel, vestibulum et justo. Suspendisse hendrerit nibh sit amet lorem aliquam consequat. Ut aliquet est est, eu pharetra sapien dignissim et. Proin sem nisl, dictum eu tellus et, finibus feugiat massa. Donec fermentum ipsum sit amet erat facilisis laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','13-revision-v1','','','2024-08-20 05:29:45','2024-08-20 05:29:45','',13,'http://localhost:10013/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-08-20 05:30:24','2024-08-20 05:30:24','<!-- wp:paragraph -->\n<p><br>Our Goals ipsum dolor sit amet, consectetur adipiscing elit. Aliquam enim sapien, elementum ac commodo sed, semper molestie erat. Nulla sed porta neque. Sed leo massa, bibendum sit amet viverra sit amet, egestas sit amet arcu. Nunc ultricies, libero vitae cursus faucibus, elit nisi aliquet risus, id bibendum magna ante nec dui. Nam scelerisque, leo interdum luctus hendrerit, ipsum magna tristique ex, ut mollis lacus est commodo massa. Proin congue tristique nisl, eu cursus erat venenatis vitae. Nulla leo orci, porta vitae imperdiet vel, vestibulum et justo. Suspendisse hendrerit nibh sit amet lorem aliquam consequat. Ut aliquet est est, eu pharetra sapien dignissim et. Proin sem nisl, dictum eu tellus et, finibus feugiat massa. Donec fermentum ipsum sit amet erat facilisis laoreet.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-08-20 05:30:24','2024-08-20 05:30:24','',10,'http://localhost:10013/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-08-20 05:30:24','2024-08-20 05:30:24','<!-- wp:paragraph -->\n<p><br>Our Goals ipsum dolor sit amet, consectetur adipiscing elit. Aliquam enim sapien, elementum ac commodo sed, semper molestie erat. Nulla sed porta neque. Sed leo massa, bibendum sit amet viverra sit amet, egestas sit amet arcu. Nunc ultricies, libero vitae cursus faucibus, elit nisi aliquet risus, id bibendum magna ante nec dui. Nam scelerisque, leo interdum luctus hendrerit, ipsum magna tristique ex, ut mollis lacus est commodo massa. Proin congue tristique nisl, eu cursus erat venenatis vitae. Nulla leo orci, porta vitae imperdiet vel, vestibulum et justo. Suspendisse hendrerit nibh sit amet lorem aliquam consequat. Ut aliquet est est, eu pharetra sapien dignissim et. Proin sem nisl, dictum eu tellus et, finibus feugiat massa. Donec fermentum ipsum sit amet erat facilisis laoreet.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','15-revision-v1','','','2024-08-20 05:30:24','2024-08-20 05:30:24','',15,'http://localhost:10013/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-08-20 06:15:26','2024-08-20 06:15:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod egestas cursus. Duis sed est erat. In quis tempor augue. Vivamus convallis risus massa, eu convallis lorem fringilla sit amet. Nulla facilisi. Fusce sed quam nisi. Integer pretium elit nec erat luctus, at iaculis urna interdum. Fusce maximus laoreet est nec efficitur. Curabitur auctor non sem non eleifend. Fusce eget iaculis felis, non molestie tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis cursus, metus vitae bibendum rhoncus, lacus dolor pellentesque est, eu venenatis sem est in lectus. Duis luctus magna quis est cursus lacinia. Phasellus et mi sit amet est vestibulum porttitor. In ac gravida nunc. Fusce hendrerit quis mi ac dignissim. Mauris eget massa dignissim, tempor turpis vel, eleifend sapien. Aliquam hendrerit sit amet ante id facilisis. Sed hendrerit, nunc id iaculis facilisis, tortor eros commodo neque, a rutrum lacus enim eu felis. Vivamus at rutrum purus, quis tempus diam. Cras mollis lacus vel convallis imperdiet.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-08-20 06:15:26','2024-08-20 06:15:26','',3,'http://localhost:10013/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-08-20 06:15:26','2024-08-20 06:15:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod egestas cursus. Duis sed est erat. In quis tempor augue. Vivamus convallis risus massa, eu convallis lorem fringilla sit amet. Nulla facilisi. Fusce sed quam nisi. Integer pretium elit nec erat luctus, at iaculis urna interdum. Fusce maximus laoreet est nec efficitur. Curabitur auctor non sem non eleifend. Fusce eget iaculis felis, non molestie tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis cursus, metus vitae bibendum rhoncus, lacus dolor pellentesque est, eu venenatis sem est in lectus. Duis luctus magna quis est cursus lacinia. Phasellus et mi sit amet est vestibulum porttitor. In ac gravida nunc. Fusce hendrerit quis mi ac dignissim. Mauris eget massa dignissim, tempor turpis vel, eleifend sapien. Aliquam hendrerit sit amet ante id facilisis. Sed hendrerit, nunc id iaculis facilisis, tortor eros commodo neque, a rutrum lacus enim eu felis. Vivamus at rutrum purus, quis tempus diam. Cras mollis lacus vel convallis imperdiet.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','18-revision-v1','','','2024-08-20 06:15:26','2024-08-20 06:15:26','',18,'http://localhost:10013/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-08-24 10:19:06','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-08-24 10:19:06','0000-00-00 00:00:00','',0,'http://localhost:10013/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-08-24 10:53:26','2024-08-24 10:20:35',' ','','','publish','closed','closed','','21','','','2024-08-24 10:53:26','2024-08-24 10:53:26','',0,'http://localhost:10013/?p=21',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-08-24 10:19:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-08-24 10:19:06','0000-00-00 00:00:00','',3,'http://localhost:10013/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-08-24 10:53:26','2024-08-24 10:20:35',' ','','','publish','closed','closed','','23','','','2024-08-24 10:53:26','2024-08-24 10:53:26','',0,'http://localhost:10013/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-08-24 10:19:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-08-24 10:19:06','0000-00-00 00:00:00','',10,'http://localhost:10013/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-08-24 10:19:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-08-24 10:19:06','0000-00-00 00:00:00','',10,'http://localhost:10013/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-08-24 10:19:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-08-24 10:19:06','0000-00-00 00:00:00','',0,'http://localhost:10013/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-08-24 10:38:36','2024-08-24 10:38:36',' ','','','publish','closed','closed','','27','','','2024-08-24 10:38:36','2024-08-24 10:38:36','',0,'http://localhost:10013/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-08-24 10:38:36','2024-08-24 10:38:36',' ','','','publish','closed','closed','','28','','','2024-08-24 10:38:36','2024-08-24 10:38:36','',3,'http://localhost:10013/?p=28',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-08-24 10:40:48','2024-08-24 10:39:56',' ','','','publish','closed','closed','','29','','','2024-08-24 10:40:48','2024-08-24 10:40:48','',0,'http://localhost:10013/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-08-24 10:40:48','2024-08-24 10:40:48','','Google','','publish','closed','closed','','google','','','2024-08-24 10:40:48','2024-08-24 10:40:48','',0,'http://localhost:10013/?p=30',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-08-26 05:49:05','2024-08-26 05:49:05','','Home','','publish','closed','closed','','home','','','2024-08-26 05:49:05','2024-08-26 05:49:05','',0,'http://localhost:10013/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-08-26 05:49:05','2024-08-26 05:49:05','','Home','','inherit','closed','closed','','31-revision-v1','','','2024-08-26 05:49:05','2024-08-26 05:49:05','',31,'http://localhost:10013/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-08-26 05:49:18','2024-08-26 05:49:18','','Blog','','publish','closed','closed','','blog','','','2024-08-26 05:49:18','2024-08-26 05:49:18','',0,'http://localhost:10013/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-08-26 05:49:18','2024-08-26 05:49:18','','Blog','','inherit','closed','closed','','33-revision-v1','','','2024-08-26 05:49:18','2024-08-26 05:49:18','',33,'http://localhost:10013/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-08-26 06:07:24','2024-08-26 06:07:24','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet ullamcorper erat, sit amet vehicula turpis. Aliquam lobortis dictum lorem, sed egestas orci viverra vitae. Etiam in lacus at ante ultrices rutrum. Proin quis ante est. Integer malesuada sollicitudin nunc, eget ornare nibh vestibulum a. Suspendisse in augue nec tortor imperdiet malesuada in eget tortor. Nulla suscipit eleifend arcu, at lacinia magna. Aliquam id laoreet nisi, id auctor turpis. Nulla nisl nisi, commodo at malesuada vel, tincidunt eu turpis. Etiam aliquet eros eu augue vestibulum cursus. Nullam consectetur nulla augue, at cursus dui laoreet vel. Donec molestie eget sem vel fringilla. Etiam vestibulum dapibus sollicitudin. Proin ligula magna, commodo a ex eu, condimentum molestie tortor. Phasellus quis euismod quam, vel tempor mauris. Maecenas tincidunt lacinia libero lacinia convallis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin suscipit dui eget egestas scelerisque. Vestibulum nec mauris condimentum, feugiat tellus quis, ullamcorper nunc. Phasellus ut tellus vel arcu suscipit varius. Mauris vulputate ipsum ultricies massa rutrum, blandit commodo felis facilisis. Pellentesque at varius sem. Etiam tempus pellentesque mauris vel congue. Sed congue accumsan accumsan. Morbi pulvinar vel sapien quis faucibus. In eu ipsum non turpis lobortis porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur urna leo, pulvinar quis arcu a, cursus gravida purus. Curabitur dictum commodo feugiat. Nam nunc nisl, sollicitudin eget felis a, efficitur porta elit. Integer eget metus eu lacus egestas accumsan. Nulla iaculis velit nec egestas ullamcorper. Praesent non dolor in eros euismod pellentesque. Vestibulum ac erat pretium ante aliquam laoreet. Integer et mattis leo, quis suscipit mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras accumsan a massa a maximus. Quisque massa metus, luctus non ante mollis, varius tincidunt urna. Cras sed lacinia urna, ac feugiat sem. Mauris et massa vitae ipsum porttitor congue. Aenean non ipsum ac lacus rutrum pharetra sed sed velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla ullamcorper turpis sit amet fringilla suscipit. Duis suscipit ut tortor non scelerisque. Nunc felis sapien, rutrum at lacinia sed, cursus non ipsum. Duis mollis ut neque et eleifend. Vivamus lobortis lorem augue, id interdum urna scelerisque id. Vestibulum finibus sem quis nisi mattis dictum. Nam gravida ipsum et mi vestibulum, eu bibendum mi lacinia. Duis vitae ipsum orci. Fusce lectus metus, varius nec pharetra ac, elementum sed justo. Ut ligula nisi, pretium ac est quis, sodales sagittis ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent non cursus eros, eget facilisis urna. Nam eu dui sapien. Sed pellentesque iaculis risus, vitae aliquam nibh suscipit nec. Nullam convallis ipsum sit amet mi malesuada, eget fringilla lorem ullamcorper. Maecenas enim mi, malesuada eu varius eu, auctor sit amet tortor. Quisque accumsan ipsum eros, sed facilisis nulla fermentum a. Nunc ac urna vehicula, vulputate turpis id, vestibulum eros. Sed sollicitudin varius nisi sit amet sollicitudin. Maecenas nec ornare augue. Proin sapien mi, fermentum eu ornare in, placerat a nisl. Phasellus vehicula egestas maximus.</p>\n<!-- /wp:paragraph -->','New Post','','inherit','closed','closed','','6-revision-v1','','','2024-08-26 06:07:24','2024-08-26 06:07:24','',6,'http://localhost:10013/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-08-26 06:07:43','2024-08-26 06:07:43','<!-- wp:paragraph -->\n<p>Proin suscipit dui eget egestas scelerisque. Vestibulum nec mauris condimentum, feugiat tellus quis, ullamcorper nunc. Phasellus ut tellus vel arcu suscipit varius. Mauris vulputate ipsum ultricies massa rutrum, blandit commodo felis facilisis. Pellentesque at varius sem. Etiam tempus pellentesque mauris vel congue. Sed congue accumsan accumsan. Morbi pulvinar vel sapien quis faucibus. In eu ipsum non turpis lobortis porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur urna leo, pulvinar quis arcu a, cursus gravida purus. Curabitur dictum commodo feugiat. Nam nunc nisl, sollicitudin eget felis a, efficitur porta elit. Integer eget metus eu lacus egestas accumsan. Nulla iaculis velit nec egestas ullamcorper. Praesent non dolor in eros euismod pellentesque. Vestibulum ac erat pretium ante aliquam laoreet. Integer et mattis leo, quis suscipit mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras accumsan a massa a maximus. Quisque massa metus, luctus non ante mollis, varius tincidunt urna. Cras sed lacinia urna, ac feugiat sem. Mauris et massa vitae ipsum porttitor congue. Aenean non ipsum ac lacus rutrum pharetra sed sed velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla ullamcorper turpis sit amet fringilla suscipit. Duis suscipit ut tortor non scelerisque. Nunc felis sapien, rutrum at lacinia sed, cursus non ipsum. Duis mollis ut neque et eleifend. Vivamus lobortis lorem augue, id interdum urna scelerisque id. Vestibulum finibus sem quis nisi mattis dictum. Nam gravida ipsum et mi vestibulum, eu bibendum mi lacinia. Duis vitae ipsum orci. Fusce lectus metus, varius nec pharetra ac, elementum sed justo. Ut ligula nisi, pretium ac est quis, sodales sagittis ligula.</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2024-08-26 06:07:43','2024-08-26 06:07:43','',1,'http://localhost:10013/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-09-23 07:06:51','2024-09-23 07:06:51','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Post 3','Our school has won another award this year.','publish','open','open','','post-3','','','2024-09-26 08:10:32','2024-09-26 08:10:32','',0,'http://localhost:10013/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-09-23 07:06:51','2024-09-23 07:06:51','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','Post 3','','inherit','closed','closed','','39-revision-v1','','','2024-09-23 07:06:51','2024-09-23 07:06:51','',39,'http://localhost:10013/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-09-25 08:10:24','2024-09-25 08:10:24','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Math Meetup','','publish','closed','closed','','math-meetup','','','2024-09-28 07:27:16','2024-09-28 07:27:16','',0,'http://localhost:10013/?post_type=events&#038;p=41',0,'events','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-09-25 08:10:51','2024-09-25 08:10:51','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Science Meetup','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when','publish','closed','closed','','the-science-meetup','','','2024-11-01 10:39:58','2024-11-01 10:39:58','',0,'http://localhost:10013/?post_type=events&#038;p=42',0,'events','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-09-25 08:11:17','2024-09-25 08:11:17','<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Poetry Day','The standard chunk of Lorem Ipsum used since the 1500s is reproduced below','publish','closed','closed','','poetry-day','','','2024-12-03 05:32:03','2024-12-03 05:32:03','',0,'http://localhost:10013/?post_type=events&#038;p=43',0,'events','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-09-26 06:20:39','2024-09-26 06:20:39','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Post 3','Our school has won another award this year.','inherit','closed','closed','','39-autosave-v1','','','2024-09-26 06:20:39','2024-09-26 06:20:39','',39,'http://localhost:10013/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-09-26 08:10:32','2024-09-26 08:10:32','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Post 3','Our school has won another award this year.','inherit','closed','closed','','39-revision-v1','','','2024-09-26 08:10:32','2024-09-26 08:10:32','',39,'http://localhost:10013/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-09-27 08:41:20','2024-09-27 08:41:20','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_66f66f044cb27','','','2024-09-27 08:41:20','2024-09-27 08:41:20','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=48',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-09-27 08:41:20','2024-09-27 08:41:20','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}','Event Date','event_date','publish','closed','closed','','field_66f66f048401f','','','2024-09-27 08:41:20','2024-09-27 08:41:20','',48,'http://localhost:10013/?post_type=acf-field&p=49',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-09-29 08:40:20','2024-09-29 08:40:20','<!-- wp:paragraph -->\n<p>Right before WordPress sends its query to the database, \'pre_get_posts\' hook will give our function the last word to execute/run. It will give us a chance to adjust the query, hence the name of the event.</p>\n<!-- /wp:paragraph -->','New Year Event','','publish','closed','closed','','new-year-event','','','2024-09-29 08:40:20','2024-09-29 08:40:20','',0,'http://localhost:10013/?post_type=events&#038;p=51',0,'events','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-09-30 04:42:42','2024-09-30 04:42:42','','Past Events','','publish','closed','closed','','past-events','','','2024-09-30 04:42:42','2024-09-30 04:42:42','',0,'http://localhost:10013/?page_id=53',0,'page','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-09-30 04:42:42','2024-09-30 04:42:42','','Past Events','','inherit','closed','closed','','53-revision-v1','','','2024-09-30 04:42:42','2024-09-30 04:42:42','',53,'http://localhost:10013/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-09-30 04:56:58','2024-09-30 04:56:58','<!-- wp:paragraph -->\n<p>Plugins and WordPress core use this function to insert crucial elements into your document (e.g., scripts, styles, and meta tags). Always put wp_head() just before the closing tag of your theme</p>\n<!-- /wp:paragraph -->','New Year 2016','','publish','closed','closed','','new-year-2016','','','2024-09-30 04:56:58','2024-09-30 04:56:58','',0,'http://localhost:10013/?post_type=events&#038;p=55',0,'events','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-11-01 08:41:43','2024-11-01 08:41:43','','Math','','publish','closed','closed','','math','','','2024-12-02 07:28:54','2024-12-02 07:28:54','',0,'http://localhost:10013/?post_type=program&#038;p=57',0,'program','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-11-01 08:42:10','2024-11-01 08:42:10','','Biology','','publish','closed','closed','','biology','','','2024-12-02 07:28:31','2024-12-02 07:28:31','',0,'http://localhost:10013/?post_type=program&#038;p=58',0,'program','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-11-01 08:42:29','2024-11-01 08:42:29','','English','','publish','closed','closed','','english','','','2024-12-02 07:28:41','2024-12-02 07:28:41','',0,'http://localhost:10013/?post_type=program&#038;p=59',0,'program','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-11-01 09:10:15','2024-11-01 09:10:15','<!-- wp:paragraph -->\n<p>Plugins and WordPress core use this function to insert crucial elements into your document (e.g., scripts, styles, and meta tags). Always put wp_head() just before the closing tag of your theme</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New Year 2016','','inherit','closed','closed','','55-autosave-v1','','','2024-11-01 09:10:15','2024-11-01 09:10:15','',55,'http://localhost:10013/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-11-01 09:13:11','2024-11-01 09:13:11','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_67249b16d5f05','','','2024-11-04 05:48:04','2024-11-04 05:48:04','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-11-01 09:13:11','2024-11-01 09:13:11','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Programs','related_programs','publish','closed','closed','','field_67249b17bb8fa','','','2024-11-01 09:59:13','2024-11-01 09:59:13','',61,'http://localhost:10013/?post_type=acf-field&#038;p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-11-04 05:38:43','2024-11-04 05:38:43','<!-- wp:paragraph -->\n<p>Adipiscing elit. Maecenas non nibh eget felis cursus pretium. Curabitur ullamcorper congue velit vitae tempus. Aliquam eget placerat nisl. Vivamus imperdiet, diam in ullamcorper semper, dolor elit maximus risus, vitae euismod justo sem et sapien. Sed fermentum vehicula tincidunt. Donec lobortis neque nulla, nec consectetur nunc gravida vel. Vivamus a urna non enim varius vehicula. Sed ornare tristique mi in vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis in nisi id dui facilisis blandit eu vitae odio. Curabitur efficitur posuere ligula, in faucibus nunc vehicula non. Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.</p>\n<!-- /wp:paragraph -->','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2024-12-02 06:40:38','2024-12-02 06:40:38','',0,'http://localhost:10013/?post_type=professor&#038;p=64',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-11-04 05:39:16','2024-11-04 05:39:16','<!-- wp:paragraph -->\n<p>Dui facilisis blandit eu vitae odio. Curabitur efficitur posuere ligula, in faucibus nunc vehicula non. Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Barksalot Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dolor sit amet, consectetur adipiscing elit. Maecenas non nibh eget felis cursus pretium. Curabitur ullamcorper congue velit vitae tempus. Biology Aliquam eget placerat nisl. Vivamus imperdiet, diam in ullamcorper semper, dolor elit maximus risus, vitae euismod justo sem et sapien. Sed fermentum vehicula tincidunt. Donec lobortis neque nulla, nec consectetur nunc gravida vel. Vivamus a urna non enim varius vehicula. Sed ornare tristique mi in vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2024-12-02 05:35:49','2024-12-02 05:35:49','',0,'http://localhost:10013/?post_type=professor&#038;p=65',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-11-05 05:58:13','2024-11-05 05:58:13','','joshua-rawson-harris-YNaSz-E7Qss-unsplash','','inherit','open','closed','','joshua-rawson-harris-ynasz-e7qss-unsplash','','','2024-11-05 05:58:13','2024-11-05 05:58:13','',65,'http://localhost:10013/wp-content/uploads/2024/11/joshua-rawson-harris-YNaSz-E7Qss-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-11-05 05:59:16','2024-11-05 05:59:16','','darshan-gajara-xv09UYi6jSo-unsplash','','inherit','open','closed','','darshan-gajara-xv09uyi6jso-unsplash','','','2024-11-05 05:59:16','2024-11-05 05:59:16','',64,'http://localhost:10013/wp-content/uploads/2024/11/darshan-gajara-xv09UYi6jSo-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-11-05 07:12:30','2024-11-05 07:12:30','<!-- wp:paragraph -->\n<p>Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.<br></p>\n<!-- /wp:paragraph -->','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2024-12-02 06:40:17','2024-12-02 06:40:17','',0,'http://localhost:10013/?post_type=professor&#038;p=68',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-11-05 07:12:03','2024-11-05 07:12:03','','man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170','','inherit','open','closed','','man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170','','','2024-11-05 07:12:03','2024-11-05 07:12:03','',68,'http://localhost:10013/wp-content/uploads/2024/11/man-in-mask-black-jacket-smoke-can-dark-background-orange-3803x5704-4170.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-11-05 13:33:57','2024-11-05 13:33:57','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_672a1a8818eb0','','','2024-11-05 13:33:57','2024-11-05 13:33:57','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=70',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-11-05 13:33:57','2024-11-05 13:33:57','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_sub','publish','closed','closed','','field_672a1a88a861c','','','2024-11-05 13:33:57','2024-11-05 13:33:57','',70,'http://localhost:10013/?post_type=acf-field&p=71',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-11-05 13:33:57','2024-11-05 13:33:57','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_672a1e5ba861d','','','2024-11-05 13:33:57','2024-11-05 13:33:57','',70,'http://localhost:10013/?post_type=acf-field&p=72',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-11-05 13:36:43','2024-11-05 13:36:43','','forest_fog_road_126787_3840x2160','','inherit','open','closed','','forest_fog_road_126787_3840x2160','','','2024-11-05 13:36:43','2024-11-05 13:36:43','',65,'http://localhost:10013/wp-content/uploads/2024/11/forest_fog_road_126787_3840x2160.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-11-06 02:45:39','2024-11-06 02:45:39','','tree_minimalism_bw_126828_3840x2160','','inherit','open','closed','','tree_minimalism_bw_126828_3840x2160','','','2024-11-06 02:45:39','2024-11-06 02:45:39','',10,'http://localhost:10013/wp-content/uploads/2024/11/tree_minimalism_bw_126828_3840x2160.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-11-06 02:45:59','2024-11-06 02:45:59','<!-- wp:paragraph -->\n<p>This is the \"About Us\" page content. Nulla tincidunt ac magna pellentesque venenatis. Sed finibus eleifend lorem non luctus. Ut nec dolor ac justo malesuada ultricies. Mauris eu elit dictum, semper est a, imperdiet lorem. Duis vitae lectus consequat, faucibus leo sit amet, commodo erat. Cras a orci et sem ultricies blandit. Suspendisse aliquet congue fermentum. Suspendisse potenti.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','10-revision-v1','','','2024-11-06 02:45:59','2024-11-06 02:45:59','',10,'http://localhost:10013/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-11-07 16:01:02','2024-11-07 16:01:02','','autumn-decor-3840x2160-painting-nature-painting-26721','','inherit','open','closed','','autumn-decor-3840x2160-painting-nature-painting-26721','','','2024-11-07 16:01:02','2024-11-07 16:01:02','',64,'http://localhost:10013/wp-content/uploads/2024/11/autumn-decor-3840x2160-painting-nature-painting-26721.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-11-07 16:01:54','2024-11-07 16:01:54','','trees_forest_frost_1324926_3840x2160','','inherit','open','closed','','trees_forest_frost_1324926_3840x2160','','','2024-11-07 16:01:54','2024-11-07 16:01:54','',68,'http://localhost:10013/wp-content/uploads/2024/11/trees_forest_frost_1324926_3840x2160.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-11-11 15:26:44','2024-11-11 15:26:44','<!-- wp:paragraph -->\n<p>Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.</p>\n<!-- /wp:paragraph -->','Downtown West','','publish','closed','closed','','downtown-west','','','2024-11-11 15:26:52','2024-11-11 15:26:52','',0,'http://localhost:10013/?post_type=campus&#038;p=80',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-11-11 15:27:18','2024-11-11 15:27:18','<!-- wp:paragraph -->\n<p>Integer gravida, orci a efficitur gravida, dui turpis tincidunt nisl, in porttitor nulla tellus condimentum neque. Morbi commodo tincidunt viverra. Sed libero erat, convallis at diam non, commodo blandit nunc. Nullam blandit nisl sed elementum molestie. Curabitur at sagittis mauris. Phasellus a sapien ex.</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2024-11-11 15:27:18','2024-11-11 15:27:18','',0,'http://localhost:10013/?post_type=campus&#038;p=81',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-11-11 15:29:58','2024-11-11 15:29:58','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_673222ac9e500','','','2024-11-11 15:40:11','2024-11-11 15:40:11','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-11-11 15:29:58','2024-11-11 15:29:58','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}','Map Location','map_location','publish','closed','closed','','field_673222aca227a','','','2024-11-11 15:29:58','2024-11-11 15:29:58','',82,'http://localhost:10013/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-12-02 07:26:39','2024-12-02 07:26:39','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Body Content','main-body-content','publish','closed','closed','','group_674d60d4851ef','','','2024-12-02 07:26:39','2024-12-02 07:26:39','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2024-12-02 07:26:39','2024-12-02 07:26:39','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_674d60d446357','','','2024-12-02 07:26:39','2024-12-02 07:26:39','',86,'http://localhost:10013/?post_type=acf-field&p=87',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-12-03 06:54:08','2024-12-03 06:54:08','','Search','','publish','closed','closed','','search','','','2024-12-03 06:54:08','2024-12-03 06:54:08','',0,'http://localhost:10013/?page_id=89',0,'page','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-12-03 06:54:08','2024-12-03 06:54:08','','Search','','inherit','closed','closed','','89-revision-v1','','','2024-12-03 06:54:08','2024-12-03 06:54:08','',89,'http://localhost:10013/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-12-04 07:13:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-12-04 07:13:54','0000-00-00 00:00:00','',0,'http://localhost:10013/?p=91',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,2,'2024-12-04 07:25:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-12-04 07:25:56','0000-00-00 00:00:00','',0,'http://localhost:10013/?p=92',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,2,'2024-12-04 07:50:01','2024-12-04 07:50:01','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Math Party','','publish','closed','closed','','math-party','','','2024-12-04 07:50:01','2024-12-04 07:50:01','',0,'http://localhost:10013/?post_type=events&#038;p=93',0,'events','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-12-05 07:25:52','2024-12-05 07:25:52','','My Notes','','publish','closed','closed','','my-notes','','','2024-12-05 07:25:52','2024-12-05 07:25:52','',0,'http://localhost:10013/?page_id=94',0,'page','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2024-12-05 07:25:52','2024-12-05 07:25:52','','My Notes','','inherit','closed','closed','','94-revision-v1','','','2024-12-05 07:25:52','2024-12-05 07:25:52','',94,'http://localhost:10013/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-12-05 08:29:17','2024-12-05 08:29:17','I learned a lot of things in depth','Biology Lecture #5','','private','closed','closed','','biology-lecture-4','','','2024-12-09 05:21:16','2024-12-09 05:21:16','',0,'http://localhost:10013/?post_type=note&#038;p=96',0,'note','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-12-05 08:29:49','2024-12-05 08:29:49','I learned WordPress','Math Lecture #4','','private','closed','closed','','math-lecture-1','','','2024-12-09 05:21:16','2024-12-09 05:21:16','',0,'http://localhost:10013/?post_type=note&#038;p=97',0,'note','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2024-12-08 06:15:38','2024-12-08 06:15:38','rgtrtggrtgtrgrtgrtg','rgrgrtg','','trash','closed','closed','','rgrgrtg__trashed','','','2024-12-08 06:36:17','2024-12-08 06:36:17','',0,'http://localhost:10013/note/rgrgrtg/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2024-12-08 06:36:24','2024-12-08 06:36:24','ferferferfref','rerfefref','','trash','closed','closed','','rerfefref__trashed','','','2024-12-08 06:36:44','2024-12-08 06:36:44','',0,'http://localhost:10013/note/rerfefref/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2024-12-08 06:36:38','2024-12-08 06:36:38','edede','edd','','trash','closed','closed','','edd__trashed','','','2024-12-08 06:36:43','2024-12-08 06:36:43','',0,'http://localhost:10013/note/edd/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (101,2,'2024-12-09 05:14:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-12-09 05:14:07','0000-00-00 00:00:00','',0,'http://localhost:10013/?post_type=note&p=101',0,'note','',0);
INSERT INTO `wp_posts` VALUES (102,2,'2024-12-09 05:14:17','2024-12-09 05:14:17','rferferfsdcdsc','vrfrfsdcsd','','trash','closed','closed','','vrfrf__trashed','','','2024-12-09 05:14:41','2024-12-09 05:14:41','',0,'http://localhost:10013/note/vrfrf/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-12-09 05:16:09','2024-12-09 05:16:09','Lorem ipsum #657689','New Cat Note','','private','closed','closed','','new-cat-note','','','2024-12-09 05:21:16','2024-12-09 05:21:16','',0,'http://localhost:10013/note/new-cat-note/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (105,2,'2024-12-09 05:23:16','2024-12-09 05:23:16','Lorem Ipsum Dolor #878799','My Cat Note #2','','private','closed','closed','','my-cat-note-2','','','2024-12-09 05:23:16','2024-12-09 05:23:16','',0,'http://localhost:10013/note/my-cat-note-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (106,2,'2024-12-09 05:31:17','2024-12-09 05:31:17','Lorem Ipsum Dolor #8787999090909','My Cat Note #3','','trash','closed','closed','','my-cat-note-3__trashed','','','2024-12-09 05:32:34','2024-12-09 05:32:34','',0,'http://localhost:10013/note/my-cat-note-3/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (107,2,'2024-12-09 05:31:52','2024-12-09 05:31:52','ed','wfewe','','trash','closed','closed','','wfewe__trashed','','','2024-12-09 05:31:54','2024-12-09 05:31:54','',0,'http://localhost:10013/note/wfewe/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (108,2,'2024-12-09 05:32:05','2024-12-09 05:32:05','wedwdwd','dwewd','','trash','closed','closed','','dwewd__trashed','','','2024-12-09 05:32:19','2024-12-09 05:32:19','',0,'http://localhost:10013/note/dwewd/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (109,2,'2024-12-09 05:32:36','2024-12-09 05:32:36','Lorem Ipsum Dolor #8787999090909','Mym Cat Note #3','','private','closed','closed','','my-cat-note-3','','','2024-12-09 07:06:44','2024-12-09 07:06:44','',0,'http://localhost:10013/note/my-cat-note-3/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (110,2,'2024-12-09 08:31:48','2024-12-09 08:31:48','','ggygyy','','trash','closed','closed','','ggygyy__trashed','','','2024-12-09 09:12:40','2024-12-09 09:12:40','',0,'http://localhost:10013/note/ggygyy/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (111,2,'2024-12-09 08:31:51','2024-12-09 08:31:51','','tgtggty','','trash','closed','closed','','tgtggty__trashed','','','2024-12-09 09:12:39','2024-12-09 09:12:39','',0,'http://localhost:10013/note/tgtggty/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (112,2,'2024-12-09 08:31:55','2024-12-09 08:31:55','gytgt','tyyh','','trash','closed','closed','','tyyh__trashed','','','2024-12-09 09:12:37','2024-12-09 09:12:37','',0,'http://localhost:10013/note/tyyh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (113,2,'2024-12-09 09:13:23','2024-12-09 09:13:23','','Mym Cat Note #4','','trash','closed','closed','','mym-cat-note-4__trashed','','','2024-12-09 09:13:54','2024-12-09 09:13:54','',0,'http://localhost:10013/note/mym-cat-note-4/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (114,2,'2024-12-09 09:13:29','2024-12-09 09:13:29','','Mym Cat Note #5','','trash','closed','closed','','mym-cat-note-5__trashed','','','2024-12-09 09:13:53','2024-12-09 09:13:53','',0,'http://localhost:10013/note/mym-cat-note-5/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (115,2,'2024-12-09 09:13:37','2024-12-09 09:13:37','','Mym Cat Note #6','','trash','closed','closed','','mym-cat-note-6__trashed','','','2024-12-09 09:13:52','2024-12-09 09:13:52','',0,'http://localhost:10013/note/mym-cat-note-6/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (116,2,'2024-12-09 09:21:08','2024-12-09 09:21:08','vdfvfdv','cdvd','','private','closed','closed','','cdvd','','','2024-12-09 09:21:08','2024-12-09 09:21:08','',0,'http://localhost:10013/note/cdvd/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (117,2,'2024-12-09 09:21:09','2024-12-09 09:21:09','','dfvf','','trash','closed','closed','','dfvf__trashed','','','2024-12-09 09:34:18','2024-12-09 09:34:18','',0,'http://localhost:10013/note/dfvf/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (118,2,'2024-12-09 09:21:11','2024-12-09 09:21:11','','vdfrvtrtv','','trash','closed','closed','','vdf__trashed','','','2024-12-09 09:33:43','2024-12-09 09:33:43','',0,'http://localhost:10013/note/vdf/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (119,2,'2024-12-09 09:34:11','2024-12-09 09:34:11','vdfvdfvfv','dvfv','','trash','closed','closed','','dvfv__trashed','','','2024-12-09 09:34:16','2024-12-09 09:34:16','',0,'http://localhost:10013/note/dvfv/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (120,2,'2024-12-09 09:35:50','2024-12-09 09:35:50','','','','trash','closed','closed','','120__trashed','','','2024-12-09 09:35:59','2024-12-09 09:35:59','',0,'http://localhost:10013/note/120/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (121,2,'2024-12-09 09:35:52','2024-12-09 09:35:52','','','','trash','closed','closed','','121__trashed','','','2024-12-09 09:35:58','2024-12-09 09:35:58','',0,'http://localhost:10013/note/121/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (122,2,'2024-12-09 09:37:08','2024-12-09 09:37:08','','','','trash','closed','closed','','122__trashed','','','2024-12-09 09:37:21','2024-12-09 09:37:21','',0,'http://localhost:10013/note/122/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (123,2,'2024-12-09 09:37:11','2024-12-09 09:37:11','','','','trash','closed','closed','','123__trashed','','','2024-12-09 09:37:13','2024-12-09 09:37:13','',0,'http://localhost:10013/note/123/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (124,2,'2024-12-09 09:37:29','2024-12-09 09:37:29','','','','trash','closed','closed','','124__trashed','','','2024-12-09 09:38:20','2024-12-09 09:38:20','',0,'http://localhost:10013/note/124/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (125,2,'2024-12-09 09:37:42','2024-12-09 09:37:42','','t787k','','trash','closed','closed','','t787k__trashed','','','2024-12-09 09:37:53','2024-12-09 09:37:53','',0,'http://localhost:10013/note/t787k/',0,'note','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,6,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (29,4,0);
INSERT INTO `wp_term_relationships` VALUES (30,4,0);
INSERT INTO `wp_term_relationships` VALUES (39,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Food Description',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','Cars Description ',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Megical Footer Menu','my-megical-footer-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Super Amazing Footer Menu','super-amazing-footer-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Food','food',0);
INSERT INTO `wp_terms` VALUES (6,'Cars','cars',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Giorgi');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','I am PHP Developer');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"f13bbac7f804b640064494ad7c497798d3c80ab3d66c51cf361d707dc53dee36\";a:4:{s:10:\"expiration\";i:1733893467;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1733720667;}s:64:\"c95a0efef00cf5d300cb75cb8075c9c16b4058beffd834b6be0bab0ddb769dd3\";a:4:{s:10:\"expiration\";i:1734021097;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1733848297;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','91');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}s:10:\"editorMode\";s:6:\"visual\";}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:301;}s:9:\"_modified\";s:24:\"2024-12-09T05:19:21.769Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_events','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_events','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','libraryContent=browse&unfold=0&mfold=o');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1733298956');
INSERT INTO `wp_usermeta` VALUES (28,2,'nickname','kittydoe');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (31,2,'description','');
INSERT INTO `wp_usermeta` VALUES (32,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_capabilities','a:3:{s:13:\"event_planner\";b:1;s:14:\"campus_manager\";b:1;s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (42,2,'session_tokens','a:1:{s:64:\"bca234083779561acc88e66bb9f9e58d625ff95a844bc9f8b61cf45c70fe980d\";a:4:{s:10:\"expiration\";i:1733893560;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1733720760;}}');
INSERT INTO `wp_usermeta` VALUES (43,2,'wp_dashboard_quick_press_last_post_id','92');
INSERT INTO `wp_usermeta` VALUES (44,2,'wp_persisted_preferences','a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-12-04T07:49:06.553Z\";}');
INSERT INTO `wp_usermeta` VALUES (45,1,'closedpostboxes_note','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (46,1,'metaboxhidden_note','a:0:{}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'giorgi','$P$BDK0lnDv5bukJq8Jcy2OrLDHDb4mzQ1','giorgi','devstudio.corp@gmail.com','http://localhost:10013','2024-07-24 16:36:18','',0,'Giorgi');
INSERT INTO `wp_users` VALUES (2,'kittydoe','$P$BFUjhayDKw/Xs.iqPPBU/dzcuLpibI0','kittydoe','epita123@gmail.com','','2024-12-04 07:25:00','',0,'kittydoe');
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

-- Dump completed on 2024-12-10 23:13:16
