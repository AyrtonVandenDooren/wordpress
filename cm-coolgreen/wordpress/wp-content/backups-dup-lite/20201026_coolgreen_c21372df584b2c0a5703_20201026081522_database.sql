/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2020-10-26 08:15:38 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "post-trashed", "", "comment", "0", "0");
INSERT INTO `wp_comments` VALUES("2", "6", "Een WordPress commentator", "wapuu@wordpress.example", "https://wordpress.org/", "", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "Hoi, dit is een reactie.\nOm te beginnen met het beheren, bewerken en verwijderen van reacties ga je naar het reacties scherm op het dashboard.\nAvatars van auteurs komen van <a href=\"https://gravatar.com\" rel=\"nofollow ugc\">Gravatar</a>.", "0", "post-trashed", "", "comment", "0", "0");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20201026_coolgreen", "c21372df584b2c0a5703_20201026081522", "22", "2020-10-26 08:15:38", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-26 08:15:22\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.1.37\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:18:\"20201026_coolgreen\";s:4:\"Hash\";s:35:\"c21372df584b2c0a5703_20201026081522\";s:8:\"NameHash\";s:54:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"21.5\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:66:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:48:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-26 08:15:22\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.1.37\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20201026_coolgreen\";s:4:\"Hash\";s:35:\"c21372df584b2c0a5703_20201026081522\";s:8:\"NameHash\";s:54:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:68:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:1;s:14:\"OptsSecurePass\";s:16:\"SG9uZGEqMTEwMzI=\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:67:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:1:{s:14:\"wp_commentmeta\";s:1:\"0\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:148:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/backups-dup-lite/tmp/20201026_coolgreen_c21372df584b2c0a5703_20201026081522_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:57:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-admin\";i:1;s:67:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/uploads\";i:2;s:69:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/languages\";i:3;s:66:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/themes\";i:4;s:60:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:48:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress\";i:1;s:59:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:126;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://localhost/wordpress/cm-coolgreen/wordpress", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://localhost/wordpress/cm-coolgreen/wordpress", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "Coolgreen", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Just another WordPress site", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "ayrton.van.den.dooren@student.howest.be", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:2:{i:0;s:25:\"duplicator/duplicator.php\";i:1;s:41:\"wordpress-importer/wordpress-importer.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "coolgreen", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "coolgreen", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("43", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("44", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("46", "db_version", "48748", "yes");
INSERT INTO `wp_options` VALUES("47", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("48", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("49", "blog_public", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("51", "show_on_front", "posts", "yes");
INSERT INTO `wp_options` VALUES("52", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("53", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("54", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("55", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("56", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("57", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("59", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("60", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("61", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("62", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("63", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("64", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("65", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("67", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("68", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("69", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("70", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("71", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("72", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("73", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("74", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("75", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("76", "widget_categories", "a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("77", "widget_text", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_rss", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("80", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("81", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("82", "page_on_front", "0", "yes");
INSERT INTO `wp_options` VALUES("83", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("85", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("86", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("88", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "wp_page_for_privacy_policy", "3", "yes");
INSERT INTO `wp_options` VALUES("90", "show_comments_cookies_opt_in", "1", "yes");
INSERT INTO `wp_options` VALUES("91", "admin_email_lifespan", "1618044352", "yes");
INSERT INTO `wp_options` VALUES("92", "disallowed_keys", "", "no");
INSERT INTO `wp_options` VALUES("93", "comment_previously_approved", "1", "yes");
INSERT INTO `wp_options` VALUES("94", "auto_plugin_theme_update_emails", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("95", "initial_db_version", "48748", "yes");
INSERT INTO `wp_options` VALUES("96", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("97", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_search", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "widget_recent-posts", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("100", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "sidebars_widgets", "a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("104", "cron", "a:6:{i:1603701952;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603701953;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603701962;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603701963;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603788352;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("111", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("112", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("113", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("115", "recovery_keys", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("116", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603699410;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("119", "theme_mods_twentytwenty", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602493149;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}", "yes");
INSERT INTO `wp_options` VALUES("122", "_site_transient_update_themes", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603699425;s:7:\"checked\";a:4:{s:9:\"coolgreen\";s:3:\"0.1\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("130", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("143", "finished_updating_comment_type", "1", "yes");
INSERT INTO `wp_options` VALUES("148", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("156", "current_theme", "Coolgreen", "yes");
INSERT INTO `wp_options` VALUES("157", "theme_mods_coolgreen", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"footer-menu\";i:21;s:11:\"header-menu\";i:35;}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `wp_options` VALUES("158", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("159", "recovery_mode_email_last_sent", "1602933130", "yes");
INSERT INTO `wp_options` VALUES("177", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("188", "_transient_health-check-site-status-result", "{\"good\":10,\"recommended\":9,\"critical\":1}", "yes");
INSERT INTO `wp_options` VALUES("217", "category_children", "a:8:{i:8;a:2:{i:0;i:14;i:1;i:22;}i:14;a:4:{i:0;i:15;i:1;i:17;i:2;i:18;i:3;i:20;}i:17;a:1:{i:0;i:19;}i:22;a:4:{i:0;i:23;i:1;i:24;i:2;i:25;i:3;i:26;}i:3;a:2:{i:0;i:27;i:1;i:28;}i:27;a:3:{i:0;i:29;i:1;i:30;i:2;i:31;}i:28;a:2:{i:0;i:32;i:1;i:33;}i:5;a:1:{i:0;i:34;}}", "yes");
INSERT INTO `wp_options` VALUES("294", "_site_transient_timeout_theme_roots", "1603700435", "no");
INSERT INTO `wp_options` VALUES("295", "_site_transient_theme_roots", "a:4:{s:9:\"coolgreen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("297", "_site_transient_timeout_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4", "1604303438", "no");
INSERT INTO `wp_options` VALUES("298", "_site_transient_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4", "a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}", "no");
INSERT INTO `wp_options` VALUES("299", "_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a", "1603709476", "no");
INSERT INTO `wp_options` VALUES("300", "_site_transient_poptags_40cd750bba9870f18aada2478b24840a", "O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4724;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4438;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2686;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2563;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1976;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1828;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1808;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1492;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1491;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1489;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1462;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1459;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1448;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1226;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1208;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1168;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1135;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1109;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1019;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:907;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:903;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:882;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:881;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:824;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:803;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:795;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:782;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:781;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:755;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:752;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:725;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:719;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:707;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:701;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:689;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:665;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:657;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:652;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:636;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:616;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:616;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:593;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:585;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:583;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:579;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:573;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:562;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:559;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:556;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:553;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:552;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:541;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:540;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:533;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:523;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:522;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:522;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:507;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:492;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:486;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:482;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:479;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:466;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:457;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:441;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:441;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:439;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:433;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:432;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:427;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:427;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:422;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:420;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:413;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:405;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:398;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:397;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:394;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:389;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:386;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:385;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:379;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:364;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:361;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:359;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:349;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:346;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:344;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:339;}}", "no");
INSERT INTO `wp_options` VALUES("302", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603699430;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:25:\"duplicator/duplicator.php\";s:6:\"1.3.38\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.3.38\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.3.38.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("303", "duplicator_settings", "a:19:{s:7:\"version\";s:6:\"1.3.38\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";s:1:\"0\";s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";s:1:\"0\";s:19:\"installer_name_mode\";s:8:\"withhash\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";s:1:\"2\";s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;s:12:\"last_updated\";s:19:\"2020-10-26-08-13-07\";s:18:\"package_ui_created\";s:1:\"1\";}", "yes");
INSERT INTO `wp_options` VALUES("304", "duplicator_lite_inst_hash_notice", "1", "yes");
INSERT INTO `wp_options` VALUES("305", "duplicator_version_plugin", "1.3.38", "yes");
INSERT INTO `wp_options` VALUES("306", "duplicator_ui_view_state", "a:3:{s:22:\"dup-pack-archive-panel\";s:1:\"1\";s:22:\"dup-pack-storage-panel\";s:1:\"1\";s:24:\"dup-pack-installer-panel\";s:1:\"1\";}", "yes");
INSERT INTO `wp_options` VALUES("307", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-26 08:15:22\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.1.37\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20201026_coolgreen\";s:4:\"Hash\";s:35:\"c21372df584b2c0a5703_20201026081522\";s:8:\"NameHash\";s:54:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:48:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-26 08:15:22\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.1.37\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20201026_coolgreen\";s:4:\"Hash\";s:35:\"c21372df584b2c0a5703_20201026081522\";s:8:\"NameHash\";s:54:\"20201026_coolgreen_c21372df584b2c0a5703_20201026081522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:1;s:14:\"OptsSecurePass\";s:16:\"SG9uZGEqMTEwMzI=\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:57:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-admin\";i:1;s:67:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/uploads\";i:2;s:69:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/languages\";i:3;s:66:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content/themes\";i:4;s:60:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:48:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress\";i:1;s:59:\"C:/xampp/htdocs/wordpress/cm-coolgreen/wordpress/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:124;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("2", "3", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("5", "6", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("6", "6", "_wp_trash_meta_time", "1601649069");
INSERT INTO `wp_postmeta` VALUES("7", "6", "_wp_desired_post_slug", "hallo-wereld");
INSERT INTO `wp_postmeta` VALUES("8", "6", "_wp_trash_meta_comments_status", "a:1:{i:1;s:1:\"1\";}");
INSERT INTO `wp_postmeta` VALUES("9", "7", "_thumbnail_id", "102");
INSERT INTO `wp_postmeta` VALUES("10", "9", "_thumbnail_id", "103");
INSERT INTO `wp_postmeta` VALUES("11", "12", "_thumbnail_id", "105");
INSERT INTO `wp_postmeta` VALUES("12", "88", "_thumbnail_id", "107");
INSERT INTO `wp_postmeta` VALUES("13", "91", "_thumbnail_id", "104");
INSERT INTO `wp_postmeta` VALUES("14", "96", "_thumbnail_id", "106");
INSERT INTO `wp_postmeta` VALUES("17", "98", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("18", "98", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("19", "98", "_wp_trash_meta_time", "1601651103");
INSERT INTO `wp_postmeta` VALUES("20", "98", "_wp_desired_post_slug", "voorbeeld pagina");
INSERT INTO `wp_postmeta` VALUES("21", "99", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("22", "99", "_wp_trash_meta_status", "draft");
INSERT INTO `wp_postmeta` VALUES("23", "99", "_wp_trash_meta_time", "1601651097");
INSERT INTO `wp_postmeta` VALUES("24", "99", "_wp_desired_post_slug", "privacy-policy");
INSERT INTO `wp_postmeta` VALUES("25", "18", "_thumbnail_id", "108");
INSERT INTO `wp_postmeta` VALUES("28", "6", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("29", "6", "_wp_trash_meta_time", "1601649069");
INSERT INTO `wp_postmeta` VALUES("30", "6", "_wp_desired_post_slug", "hallo-wereld");
INSERT INTO `wp_postmeta` VALUES("31", "6", "_wp_trash_meta_comments_status", "a:1:{i:1;s:1:\"1\";}");
INSERT INTO `wp_postmeta` VALUES("32", "7", "_thumbnail_id", "102");
INSERT INTO `wp_postmeta` VALUES("33", "9", "_thumbnail_id", "103");
INSERT INTO `wp_postmeta` VALUES("34", "12", "_thumbnail_id", "105");
INSERT INTO `wp_postmeta` VALUES("35", "88", "_thumbnail_id", "107");
INSERT INTO `wp_postmeta` VALUES("36", "91", "_thumbnail_id", "104");
INSERT INTO `wp_postmeta` VALUES("37", "96", "_thumbnail_id", "106");
INSERT INTO `wp_postmeta` VALUES("38", "96", "_edit_lock", "1603090554:1");
INSERT INTO `wp_postmeta` VALUES("41", "102", "_wp_attached_file", "2020/10/1385783-1.png");
INSERT INTO `wp_postmeta` VALUES("42", "102", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:424;s:6:\"height\";i:271;s:4:\"file\";s:21:\"2020/10/1385783-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"1385783-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"1385783-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("43", "103", "_wp_attached_file", "2020/10/1390273.png");
INSERT INTO `wp_postmeta` VALUES("44", "103", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:293;s:6:\"height\";i:340;s:4:\"file\";s:19:\"2020/10/1390273.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1390273-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1390273-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("45", "104", "_wp_attached_file", "2020/10/1391813.png");
INSERT INTO `wp_postmeta` VALUES("46", "104", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:188;s:6:\"height\";i:170;s:4:\"file\";s:19:\"2020/10/1391813.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1391813-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("47", "105", "_wp_attached_file", "2020/10/1406624.png");
INSERT INTO `wp_postmeta` VALUES("48", "105", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:424;s:6:\"height\";i:269;s:4:\"file\";s:19:\"2020/10/1406624.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1406624-300x190.png\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1406624-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("49", "106", "_wp_attached_file", "2020/10/1414734.jpeg");
INSERT INTO `wp_postmeta` VALUES("50", "106", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:500;s:6:\"height\";i:324;s:4:\"file\";s:20:\"2020/10/1414734.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1414734-300x194.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1414734-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("51", "107", "_wp_attached_file", "2020/10/1424680.jpeg");
INSERT INTO `wp_postmeta` VALUES("52", "107", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:179;s:6:\"height\";i:170;s:4:\"file\";s:20:\"2020/10/1424680.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1424680-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("53", "108", "_wp_attached_file", "2020/10/3999798-scaled.jpg");
INSERT INTO `wp_postmeta` VALUES("54", "108", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:26:\"2020/10/3999798-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"3999798-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"3999798-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"3999798-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"3999798-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"3999798-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"3999798-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:38:\"Freepik Company S.L. - www.freepik.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"3999798.jpg\";}");
INSERT INTO `wp_postmeta` VALUES("66", "112", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("67", "112", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("68", "112", "_menu_item_object_id", "3");
INSERT INTO `wp_postmeta` VALUES("69", "112", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("70", "112", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("71", "112", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("72", "112", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("73", "112", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("74", "112", "_menu_item_orphaned", "1602495572");
INSERT INTO `wp_postmeta` VALUES("129", "119", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("130", "119", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("131", "119", "_menu_item_object_id", "19");
INSERT INTO `wp_postmeta` VALUES("132", "119", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("133", "119", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("134", "119", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("135", "119", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("136", "119", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("137", "119", "_menu_item_orphaned", "1602495572");
INSERT INTO `wp_postmeta` VALUES("138", "120", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("139", "120", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("140", "120", "_menu_item_object_id", "2");
INSERT INTO `wp_postmeta` VALUES("141", "120", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("142", "120", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("143", "120", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("144", "120", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("145", "120", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("146", "120", "_menu_item_orphaned", "1602495572");
INSERT INTO `wp_postmeta` VALUES("147", "121", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("148", "121", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("149", "121", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("150", "121", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("151", "121", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("152", "121", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("153", "121", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("154", "121", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("155", "121", "_menu_item_orphaned", "1602495572");
INSERT INTO `wp_postmeta` VALUES("192", "126", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("193", "126", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("194", "126", "_menu_item_object_id", "1");
INSERT INTO `wp_postmeta` VALUES("195", "126", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("196", "126", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("197", "126", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("198", "126", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("199", "126", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("200", "126", "_menu_item_orphaned", "1602495572");
INSERT INTO `wp_postmeta` VALUES("228", "130", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("229", "130", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("230", "130", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("231", "130", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("232", "130", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("233", "130", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("234", "130", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("235", "130", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("236", "130", "_menu_item_orphaned", "1602495781");
INSERT INTO `wp_postmeta` VALUES("237", "131", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("238", "131", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("239", "131", "_menu_item_object_id", "85");
INSERT INTO `wp_postmeta` VALUES("240", "131", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("241", "131", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("242", "131", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("243", "131", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("244", "131", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("246", "132", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("247", "132", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("248", "132", "_menu_item_object_id", "81");
INSERT INTO `wp_postmeta` VALUES("249", "132", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("250", "132", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("251", "132", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("252", "132", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("253", "132", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("255", "133", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("256", "133", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("257", "133", "_menu_item_object_id", "78");
INSERT INTO `wp_postmeta` VALUES("258", "133", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("259", "133", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("260", "133", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("261", "133", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("262", "133", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("264", "134", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("265", "134", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("266", "134", "_menu_item_object_id", "18");
INSERT INTO `wp_postmeta` VALUES("267", "134", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("268", "134", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("269", "134", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("270", "134", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("271", "134", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("273", "135", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("274", "135", "_menu_item_menu_item_parent", "132");
INSERT INTO `wp_postmeta` VALUES("275", "135", "_menu_item_object_id", "37");
INSERT INTO `wp_postmeta` VALUES("276", "135", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("277", "135", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("278", "135", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("279", "135", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("280", "135", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("282", "136", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("283", "136", "_menu_item_menu_item_parent", "132");
INSERT INTO `wp_postmeta` VALUES("284", "136", "_menu_item_object_id", "35");
INSERT INTO `wp_postmeta` VALUES("285", "136", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("286", "136", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("287", "136", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("288", "136", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("289", "136", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("291", "137", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("292", "137", "_menu_item_menu_item_parent", "133");
INSERT INTO `wp_postmeta` VALUES("293", "137", "_menu_item_object_id", "39");
INSERT INTO `wp_postmeta` VALUES("294", "137", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("295", "137", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("296", "137", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("297", "137", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("298", "137", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("300", "138", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("301", "138", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("302", "138", "_menu_item_object_id", "37");
INSERT INTO `wp_postmeta` VALUES("303", "138", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("304", "138", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("305", "138", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("306", "138", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("307", "138", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("308", "138", "_menu_item_orphaned", "1602589575");
INSERT INTO `wp_postmeta` VALUES("309", "139", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("310", "139", "_menu_item_menu_item_parent", "134");
INSERT INTO `wp_postmeta` VALUES("311", "139", "_menu_item_object_id", "35");
INSERT INTO `wp_postmeta` VALUES("312", "139", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("313", "139", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("314", "139", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("315", "139", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("316", "139", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("318", "140", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("319", "140", "_menu_item_menu_item_parent", "131");
INSERT INTO `wp_postmeta` VALUES("320", "140", "_menu_item_object_id", "28");
INSERT INTO `wp_postmeta` VALUES("321", "140", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("322", "140", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("323", "140", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("324", "140", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("325", "140", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("327", "141", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("328", "141", "_menu_item_menu_item_parent", "133");
INSERT INTO `wp_postmeta` VALUES("329", "141", "_menu_item_object_id", "26");
INSERT INTO `wp_postmeta` VALUES("330", "141", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("331", "141", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("332", "141", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("333", "141", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("334", "141", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("336", "142", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("337", "142", "_menu_item_menu_item_parent", "131");
INSERT INTO `wp_postmeta` VALUES("338", "142", "_menu_item_object_id", "24");
INSERT INTO `wp_postmeta` VALUES("339", "142", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("340", "142", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("341", "142", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("342", "142", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("343", "142", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("345", "143", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("346", "143", "_menu_item_menu_item_parent", "134");
INSERT INTO `wp_postmeta` VALUES("347", "143", "_menu_item_object_id", "22");
INSERT INTO `wp_postmeta` VALUES("348", "143", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("349", "143", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("350", "143", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("351", "143", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("352", "143", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("354", "144", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("355", "144", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("356", "144", "_menu_item_object_id", "3");
INSERT INTO `wp_postmeta` VALUES("357", "144", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("358", "144", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("359", "144", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("360", "144", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("361", "144", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("363", "145", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("364", "145", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("365", "145", "_menu_item_object_id", "8");
INSERT INTO `wp_postmeta` VALUES("366", "145", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("367", "145", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("368", "145", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("369", "145", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("370", "145", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("372", "146", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("373", "146", "_menu_item_menu_item_parent", "145");
INSERT INTO `wp_postmeta` VALUES("374", "146", "_menu_item_object_id", "14");
INSERT INTO `wp_postmeta` VALUES("375", "146", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("376", "146", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("377", "146", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("378", "146", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("379", "146", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("381", "147", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("382", "147", "_menu_item_menu_item_parent", "151");
INSERT INTO `wp_postmeta` VALUES("383", "147", "_menu_item_object_id", "18");
INSERT INTO `wp_postmeta` VALUES("384", "147", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("385", "147", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("386", "147", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("387", "147", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("388", "147", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("390", "148", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("391", "148", "_menu_item_menu_item_parent", "151");
INSERT INTO `wp_postmeta` VALUES("392", "148", "_menu_item_object_id", "20");
INSERT INTO `wp_postmeta` VALUES("393", "148", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("394", "148", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("395", "148", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("396", "148", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("397", "148", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("399", "149", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("400", "149", "_menu_item_menu_item_parent", "146");
INSERT INTO `wp_postmeta` VALUES("401", "149", "_menu_item_object_id", "15");
INSERT INTO `wp_postmeta` VALUES("402", "149", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("403", "149", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("404", "149", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("405", "149", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("406", "149", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("408", "150", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("409", "150", "_menu_item_menu_item_parent", "146");
INSERT INTO `wp_postmeta` VALUES("410", "150", "_menu_item_object_id", "17");
INSERT INTO `wp_postmeta` VALUES("411", "150", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("412", "150", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("413", "150", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("414", "150", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("415", "150", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("417", "151", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("418", "151", "_menu_item_menu_item_parent", "145");
INSERT INTO `wp_postmeta` VALUES("419", "151", "_menu_item_object_id", "19");
INSERT INTO `wp_postmeta` VALUES("420", "151", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("421", "151", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("422", "151", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("423", "151", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("424", "151", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("426", "152", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("427", "152", "_menu_item_menu_item_parent", "145");
INSERT INTO `wp_postmeta` VALUES("428", "152", "_menu_item_object_id", "22");
INSERT INTO `wp_postmeta` VALUES("429", "152", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("430", "152", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("431", "152", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("432", "152", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("433", "152", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("435", "153", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("436", "153", "_menu_item_menu_item_parent", "144");
INSERT INTO `wp_postmeta` VALUES("437", "153", "_menu_item_object_id", "24");
INSERT INTO `wp_postmeta` VALUES("438", "153", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("439", "153", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("440", "153", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("441", "153", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("442", "153", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("444", "154", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("445", "154", "_menu_item_menu_item_parent", "144");
INSERT INTO `wp_postmeta` VALUES("446", "154", "_menu_item_object_id", "26");
INSERT INTO `wp_postmeta` VALUES("447", "154", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("448", "154", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("449", "154", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("450", "154", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("451", "154", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("453", "155", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("454", "155", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("455", "155", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("456", "155", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("457", "155", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("458", "155", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("459", "155", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("460", "155", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("462", "91", "_edit_lock", "1603089997:1");
INSERT INTO `wp_postmeta` VALUES("463", "88", "_edit_lock", "1603090014:1");
INSERT INTO `wp_postmeta` VALUES("468", "12", "_edit_lock", "1603090042:1");
INSERT INTO `wp_postmeta` VALUES("471", "9", "_edit_lock", "1602942580:1");
INSERT INTO `wp_postmeta` VALUES("474", "7", "_edit_lock", "1603090930:1");
INSERT INTO `wp_postmeta` VALUES("477", "22", "_edit_lock", "1602946141:1");
INSERT INTO `wp_postmeta` VALUES("478", "1", "_edit_lock", "1602946600:1");
INSERT INTO `wp_postmeta` VALUES("479", "162", "_wp_attached_file", "2020/10/1414734-1.jpeg");
INSERT INTO `wp_postmeta` VALUES("480", "162", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:500;s:6:\"height\";i:324;s:4:\"file\";s:22:\"2020/10/1414734-1.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1414734-1-300x194.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1414734-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("483", "1", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("484", "1", "_wp_trash_meta_time", "1603024494");
INSERT INTO `wp_postmeta` VALUES("485", "1", "_wp_desired_post_slug", "hello-world");
INSERT INTO `wp_postmeta` VALUES("486", "1", "_wp_trash_meta_comments_status", "a:1:{i:1;s:1:\"1\";}");
INSERT INTO `wp_postmeta` VALUES("489", "18", "_edit_lock", "1603030246:1");
INSERT INTO `wp_postmeta` VALUES("504", "78", "_edit_lock", "1603099637:1");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "trash", "open", "open", "", "hello-world__trashed", "", "", "2020-10-18 12:34:54", "2020-10-18 12:34:54", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("2", "1", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/cm-coolgreen/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->", "Sample Page", "", "publish", "closed", "open", "", "sample-page", "", "", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("3", "1", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress/cm-coolgreen/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->", "Privacy Policy", "", "draft", "closed", "open", "", "privacy-policy", "", "", "2020-10-12 08:45:52", "2020-10-12 08:45:52", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?page_id=3", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("6", "1", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het en start dan met schrijven!</p>\n<!-- /wp:paragraph -->", "Hallo wereld!", "", "trash", "open", "open", "", "hallo-wereld__trashed", "", "", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "", "0", "http://localhost:8888/cm-coolgreen/?p=1", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("7", "1", "2020-10-02 14:47:16", "2020-10-02 14:47:16", "<!-- wp:paragraph -->\n<p>Met de Sony KD-49XG7004 kijk je snel en eenvoudig naar online video\'s. Deze 4K tv geeft je via internet toegang tot handige smart functies. Op deze manier schakel je gemakkelijk tussen websites, apps en videodiensten. De meegeleverde afstandsbediening beschikt over een speciale YouTube en Netflix knop. Hiermee open je de videodienst met 1 druk op de knop. Of je nu een online video of een Blu-ray bekijkt, door de 4K resolutie komen de kleinste details scherp in beeld. Kijk je naar een video van een lagere resolutie? Dan maakt de ingebouwde upscaler deze beelden automatisch extra scherp.<a href=\"https://www.coolblue.be/nl/product/831278/sony-kd-49xg7004.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->", "Sony KD-49XG7004", "", "publish", "open", "open", "", "sony-kd-49xg7004", "", "", "2020-10-19 07:01:09", "2020-10-19 07:01:09", "", "0", "http://localhost:8888/cm-coolgreen/?p=6", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2020-10-02 14:48:33", "2020-10-02 14:48:33", "<!-- wp:paragraph -->\n<p>De AEG FSB52617Z beschikt over de digitale QuickSelect schuiver, waarmee je eenvoudig de duur en het energieverbruik van de wascyclus instelt. Handig; zo bespaar je naar keuze energie of tijd. Met SatelliteClean profiteer je van vlekkeloze reiniging van je vaat. De dubbele roterende arm wijzigt voortdurend de sproeihoek, waardoor deze alle hoeken bereikt. Wanneer de vaat klaar is opent de deur 10 centimeter, zodat de vaat op een natuurlijke manier droogt. Je wast je glazen met een gerust hart in deze vaatwasser. Het onderste rek heeft SoftGrips die de glazen op zijn plek houden. Met de uitneembare bestekmand sorteer je je bestek en leg je dit eenvoudig terug in de besteklade. De vaatwasser geeft aan de hand van groene led verlichting aan als de vaat klaar is.<a href=\"https://www.coolblue.be/nl/product/839514/aeg-fsb52617z-inbouw-volledig-geintegreerd-nishoogte-82-88-cm.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->", "AEG FSB52617Z / Inbouw / Volledig geintegreerd / Nishoogte 82 - 88 cm", "", "publish", "open", "open", "", "aeg-fsb52617z-inbouw-volledig-geintegreerd-nishoogte-82-88-cm", "", "", "2020-10-17 13:52:04", "2020-10-17 13:52:04", "", "0", "http://localhost:8888/cm-coolgreen/?p=9", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("12", "1", "2020-10-02 14:49:08", "2020-10-02 14:49:08", "<!-- wp:paragraph -->\n<p>Vlieg door je dagelijkse werkzaamheden heen met de snelle en compacte Apple MacBook Air (2020) 8/256GB 1,1GHz Space Gray. Aan boord vind je een snelle Intel Core i5 processor van de 10e generatie en 8 GB werkgeheugen. Hierdoor is hij krachtig genoeg voor al je taken, of je nu je vakantiefoto\'s bewerkt of verslagen typt voor school. Je werkt nu nog comfortabeler dankzij het vernieuwde Magic Keyboard met schaarmechanisme. Schrijf dat lange verslag dus gerust in één keer. Dit doe je waar je ook bent. Het True Tone Retina beeldscherm past zich namelijk automatisch aan op de hoeveelheid licht in de ruimte. Bovendien gaat Apple MacBook Air wel 12 uur mee op één acculading.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.coolblue.be/nl/product/861549/apple-macbook-air-2020-8-256gb-1-1ghz-space-gray-azerty.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->", "Apple MacBook Air (2020) 8/256GB 1,1GHz Space Gray AZERTY", "", "publish", "open", "open", "", "apple-macbook-air-2020-8-256gb-11ghz-space-gray-azerty", "", "", "2020-10-19 06:49:27", "2020-10-19 06:49:27", "", "0", "http://localhost:8888/cm-coolgreen/?p=12", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2020-10-02 15:06:02", "2020-10-02 15:06:02", "<!-- wp:paragraph -->\n<p>Heb je een zaak, dan bieden we je met plezier een aantal extra services aan. Naast het bestellen via de website is het voor zakelijke klanten mogelijk om offertes op te vragen, te bestellen via inkooporders en offline én online op rekening te kopen. We adviseren je over producten en diensten, speciaal voor zakelijk gebruik.</p>\n<!-- /wp:paragraph -->", "Zakelijk", "", "publish", "closed", "closed", "", "zakelijk", "", "", "2020-10-18 14:07:50", "2020-10-18 14:07:50", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=18", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("22", "1", "2020-10-02 16:09:28", "2020-10-02 16:09:28", "<!-- wp:paragraph -->\n<p>Sed vel enim quis sem faucibus condimentum. Fusce tincidunt risus lectus, in elementum quam consectetur at. Duis ornare ligula sed metus euismod, vel porta nibh hendrerit. Duis viverra neque turpis, aliquam pellentesque ante convallis quis. Nam augue massa, lacinia sit amet rhoncus quis, mollis ut lorem. Nunc egestas, dui id aliquam tristique, ipsum lorem accumsan neque, elementum semper turpis ligula in magna. Duis ultricies dictum ligula eu aliquet. Integer at orci non tortor tempus posuere. Etiam enim nibh, porttitor eu turpis at, bibendum efficitur felis. Pellentesque ac tellus nec quam rutrum posuere eget ut neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam ultrices risus ac mi vulputate iaculis sed at ante. Donec eget consectetur erat, ut tincidunt ex. Nullam in libero at ipsum faucibus volutpat ac a sapien. Proin lacus neque, aliquet aliquet faucibus non, accumsan sed leo. Curabitur ullamcorper tincidunt laoreet. Nullam sollicitudin odio at lorem fermentum, sed pulvinar magna commodo. Pellentesque sit amet vestibulum ante. Nullam non lacus gravida, vehicula odio non, feugiat neque. Curabitur non eros quis tortor ullamcorper sagittis at vel nibh. Sed fermentum lectus velit, dignissim sodales sem ornare non.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In cursus vehicula pharetra. Nunc a tincidunt tortor, a rutrum enim. Ut nec lectus id sapien aliquet efficitur sit amet vel leo. Nulla tempus odio eget dui dapibus tempus. Ut pharetra dui magna, quis cursus libero pellentesque eu. In sit amet nulla rhoncus, vulputate est euismod, dapibus ante. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->", "Bestellingen", "", "publish", "closed", "closed", "", "bestellingen", "", "", "2020-10-02 16:09:28", "2020-10-02 16:09:28", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=22", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2020-10-02 16:09:40", "2020-10-02 16:09:40", "<!-- wp:paragraph -->\n<p>Morbi dictum, dui sodales congue dignissim, risus lacus molestie sapien, finibus finibus ligula leo at nibh. Donec nec mauris malesuada elit dictum pulvinar. Nullam quis sapien id risus varius finibus a in justo. Nam turpis nisl, posuere eget dui eget, egestas laoreet ipsum. Etiam euismod sollicitudin mauris a commodo. Nam dui odio, sagittis eget pharetra et, dignissim vitae eros. Praesent convallis, lectus vitae pellentesque finibus, orci nulla sagittis enim, tempor efficitur tellus diam a velit. Morbi in arcu vel ligula pretium sollicitudin. Vestibulum gravida tincidunt quam, eu ultricies arcu rutrum non. Maecenas tincidunt ipsum a aliquam faucibus. Duis pharetra magna porta imperdiet consequat. Vestibulum quam erat, tincidunt gravida maximus ut, ultrices eget turpis. Duis efficitur sodales dignissim.</p>\n<!-- /wp:paragraph -->", "Brussel", "", "publish", "closed", "closed", "", "b", "", "", "2020-10-02 16:09:40", "2020-10-02 16:09:40", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=24", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2020-10-02 16:09:55", "2020-10-02 16:09:55", "<!-- wp:paragraph -->\n<p>Sed vel enim quis sem faucibus condimentum. Fusce tincidunt risus lectus, in elementum quam consectetur at. Duis ornare ligula sed metus euismod, vel porta nibh hendrerit. Duis viverra neque turpis, aliquam pellentesque ante convallis quis. Nam augue massa, lacinia sit amet rhoncus quis, mollis ut lorem. Nunc egestas, dui id aliquam tristique, ipsum lorem accumsan neque, elementum semper turpis ligula in magna. Duis ultricies dictum ligula eu aliquet. Integer at orci non tortor tempus posuere. Etiam enim nibh, porttitor eu turpis at, bibendum efficitur felis. Pellentesque ac tellus nec quam rutrum posuere eget ut neque.Nam ultrices risus ac mi vulputate iaculis sed at ante. Donec eget consectetur erat, ut tincidunt ex. Nullam in libero at ipsum faucibus volutpat ac a sapien. Proin lacus neque, aliquet aliquet faucibus non, accumsan sed leo. Curabitur ullamcorper tincidunt laoreet. Nullam sollicitudin odio at lorem fermentum, sed pulvinar magna commodo. Pellentesque sit amet vestibulum ante. Nullam non lacus gravida, vehicula odio non, feugiat neque. Curabitur non eros quis tortor ullamcorper sagittis at vel nibh. Sed fermentum lectus velit, dignissim sodales sem ornare non.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In cursus vehicula pharetra. Nunc a tincidunt tortor, a rutrum enim. Ut nec lectus id sapien aliquet efficitur sit amet vel leo. Nulla tempus odio eget dui dapibus tempus. Ut pharetra dui magna, quis cursus libero pellentesque eu. In sit amet nulla rhoncus, vulputate est euismod, dapibus ante. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->", "Betalingen", "", "publish", "closed", "closed", "", "betalingen", "", "", "2020-10-02 16:09:55", "2020-10-02 16:09:55", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=26", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2020-10-02 16:10:10", "2020-10-02 16:10:10", "<!-- wp:paragraph -->\n<p>Aliquam non lobortis libero. Aliquam commodo luctus arcu, vitae posuere velit vehicula vitae. Vivamus condimentum diam elit, sit amet placerat urna laoreet eu. In lorem quam, volutpat ut risus nec, viverra feugiat nunc. Aenean pellentesque elementum placerat. Quisque maximus in quam cursus fermentum. Ut tristique velit sit amet nulla maximus, at mattis nisi viverra. Cras fringilla lacinia laoreet. Nunc eget dui eget lorem ullamcorper iaculis quis non erat. Duis vel ipsum neque. Etiam id elementum turpis. Cras vel feugiat velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis odio purus, pellentesque vitae porta ac, tempor in elit.</p>\n<!-- /wp:paragraph -->", "Antwerpen", "", "publish", "closed", "closed", "", "antwerpen", "", "", "2020-10-02 16:10:10", "2020-10-02 16:10:10", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=28", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2020-10-02 16:12:13", "2020-10-02 16:12:13", "<!-- wp:paragraph -->\n<p>Morbi dictum, dui sodales congue dignissim, risus lacus molestie sapien, finibus finibus ligula leo at nibh. Donec nec mauris malesuada elit dictum pulvinar. Nullam quis sapien id risus varius finibus a in justo. Nam turpis nisl, posuere eget dui eget, egestas laoreet ipsum. Etiam euismod sollicitudin mauris a commodo. Nam dui odio, sagittis eget pharetra et, dignissim vitae eros. Praesent convallis, lectus vitae pellentesque finibus, orci nulla sagittis enim, tempor efficitur tellus diam a velit. Morbi in arcu vel ligula pretium sollicitudin. Vestibulum gravida tincidunt quam, eu ultricies arcu rutrum non. Maecenas tincidunt ipsum a aliquam faucibus. Duis pharetra magna porta imperdiet consequat. Vestibulum quam erat, tincidunt gravida maximus ut, ultrices eget turpis. Duis efficitur sodales dignissim.</p>\n<!-- /wp:paragraph -->", "Cadeaubonnen", "", "publish", "closed", "closed", "", "cadeaubonnen", "", "", "2020-10-02 16:12:13", "2020-10-02 16:12:13", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=35", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2020-10-02 16:12:24", "2020-10-02 16:12:24", "<!-- wp:paragraph -->\n<p>Morbi dictum, dui sodales congue dignissim, risus lacus molestie sapien, finibus finibus ligula leo at nibh. Donec nec mauris malesuada elit dictum pulvinar. Nullam quis sapien id risus varius finibus a in justo. Nam turpis nisl, posuere eget dui eget, egestas laoreet ipsum. Etiam euismod sollicitudin mauris a commodo. Nam dui odio, sagittis eget pharetra et, dignissim vitae eros. Praesent convallis, lectus vitae pellentesque finibus, orci nulla sagittis enim, tempor efficitur tellus diam a velit. Morbi in arcu vel ligula pretium sollicitudin. Vestibulum gravida tincidunt quam, eu ultricies arcu rutrum non. Maecenas tincidunt ipsum a aliquam faucibus. Duis pharetra magna porta imperdiet consequat. Vestibulum quam erat, tincidunt gravida maximus ut, ultrices eget turpis. Duis efficitur sodales dignissim.</p>\n<!-- /wp:paragraph -->", "Werken bij Coolgreen", "", "publish", "closed", "closed", "", "werken", "", "", "2020-10-02 16:12:24", "2020-10-02 16:12:24", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=37", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2020-10-02 16:12:36", "2020-10-02 16:12:36", "<!-- wp:paragraph -->\n<p>Morbi dictum, dui sodales congue dignissim, risus lacus molestie sapien, finibus finibus ligula leo at nibh. Donec nec mauris malesuada elit dictum pulvinar. Nullam quis sapien id risus varius finibus a in justo. Nam turpis nisl, posuere eget dui eget, egestas laoreet ipsum. Etiam euismod sollicitudin mauris a commodo. Nam dui odio, sagittis eget pharetra et, dignissim vitae eros. Praesent convallis, lectus vitae pellentesque finibus, orci nulla sagittis enim, tempor efficitur tellus diam a velit. Morbi in arcu vel ligula pretium sollicitudin. Vestibulum gravida tincidunt quam, eu ultricies arcu rutrum non. Maecenas tincidunt ipsum a aliquam faucibus. Duis pharetra magna porta imperdiet consequat. Vestibulum quam erat, tincidunt gravida maximus ut, ultrices eget turpis. Duis efficitur sodales dignissim.</p>\n<!-- /wp:paragraph -->", "De app", "", "publish", "closed", "closed", "", "app", "", "", "2020-10-02 16:12:36", "2020-10-02 16:12:36", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=39", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("78", "1", "2020-10-03 12:16:22", "2020-10-03 12:16:22", "", "Klantenservice", "", "publish", "closed", "closed", "", "klantenservice", "", "", "2020-10-03 12:16:22", "2020-10-03 12:16:22", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=78", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("81", "1", "2020-10-03 12:18:56", "2020-10-03 12:18:56", "<!-- wp:paragraph -->\n<p>Morbi dictum, dui sodales congue dignissim, risus lacus molestie sapien, finibus finibus ligula leo at nibh. Donec nec mauris malesuada elit dictum pulvinar. Nullam quis sapien id risus varius finibus a in justo. Nam turpis nisl, posuere eget dui eget, egestas laoreet ipsum. Etiam euismod sollicitudin mauris </p>\n<!-- /wp:paragraph -->", "Over ons", "", "publish", "closed", "closed", "", "over-ons", "", "", "2020-10-03 12:18:56", "2020-10-03 12:18:56", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=81", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("85", "1", "2020-10-03 12:20:21", "2020-10-03 12:20:21", "<!-- wp:paragraph -->\n<p>Vestibulum gravida tincidunt quam, eu ultricies arcu rutrum non. Maecenas tincidunt ipsum a aliquam faucibus. Duis pharetra magna porta imperdiet consequat. Vestibulum quam erat, tincidunt gravida maximus ut, ultrices eget turpis. Duis efficitur sodales dignissim.</p>\n<!-- /wp:paragraph -->", "Winkels", "", "publish", "closed", "closed", "", "winkels", "", "", "2020-10-03 12:20:21", "2020-10-03 12:20:21", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=85", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("88", "1", "2020-10-03 12:23:34", "2020-10-03 12:23:34", "<!-- wp:paragraph -->\n<p>Je krijgt je werk sneller af met Apple MacBook Pro 13\" (2020) 32GB/1TB - 2,3GHz Space Gray AZERTY. Zware multitasking is voor dit model geen probleem, dankzij 32 GB werkgeheugen. Je werkt bijvoorbeeld in verschillende virtuele machines tegelijkertijd. Op de SSD van 1 TB heb je genoeg ruimte om al je projecten op te slaan. Het vernieuwde Magic Keyboard in MacBook Pro heeft een schaarmechanisme en voelt daardoor stabieler aan en is minder gevoelig voor defecten. Hierdoor typ je comfortabeler en stiller.</p>\n<!-- /wp:paragraph -->", "Apple MacBook Pro 13\" (2020) 32GB/1TB - 2,3GHz Space Gray AZERTY", "", "publish", "open", "open", "", "apple-macbook-pro-13-2020-32gb-1tb-23ghz-space-gray-azerty", "", "", "2020-10-19 06:49:17", "2020-10-19 06:49:17", "", "0", "http://localhost:8888/cm-coolgreen/?p=88", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("91", "1", "2020-10-03 12:25:17", "2020-10-03 12:25:17", "<!-- wp:paragraph -->\n<p>Werk in detail aan je grafische projecten op het grote scherm van Apple MacBook Pro 16\". Dankzij de smallere schermranden en hogere resolutie heb je meer ruimte om te werken. Ondanks het grotere scherm neem je MacBook Pro 16\" gemakkelijk mee naar je volgende opdracht. Dit komt omdat het geheel niet groter is geworden. Met de snelle 6 core intel Core i7 processor draai je de zwaarste programma\'s als Final Cut Pro zonder problemen. Omdat deze krachtpatser over 16 GB RAM beschikt, is multitasken kinderspel. Met de AMD Radeon Pro 5300M videokaart zijn al je videoprojecten binnen een handomdraai gerenderd. Het vernieuwde Magic Keyboard is minder gevoelig voor defecten en stabieler. Hierdoor typ je comfortabeler en stiller. Bovendien biedt de iets kleinere Touch Bar nu ook ruimte voor een fysieke escape-toets en losse Touch-ID sensor.</p>\n<!-- /wp:paragraph -->", "Apple MacBook Pro 16\" Touch Bar (2019) MVVL2FN/A Zilver", "", "publish", "open", "open", "", "apple-macbook-pro-16-touch-bar-2019-mvvl2fn-a-zilver", "", "", "2020-10-19 06:48:59", "2020-10-19 06:48:59", "", "0", "http://localhost:8888/cm-coolgreen/?p=91", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("96", "1", "2020-10-03 12:29:39", "2020-10-03 12:29:39", "<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>et de LG UN71006LB bekijk je al je online entertainment in een scherpe 4K resolutie. Via het WebOS besturingssysteem stream je films, series en video\'s met onder andere Netflix en YouTube. Voor toegang tot deze smart tv functies verbind je de tv draadloos met internet via wifi. Dankzij het IPS paneel heeft deze tv een brede kijkhoek, zodat je ook schuin voor de tv geniet van de beeldkwaliteit. Hierdoor kan iedereen het beeld goed zien, als je met een grotere groep mensen tv kijkt. Je sluit 3 verschillende apparaten aan op de 3 HDMI ingangen van de tv. Zo hoef je nooit achter de tv te kruipen om kabels te verwisselen.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->", "LG 43UN71006LB (2020)", "", "publish", "open", "open", "", "lg-43un71006lb-2020", "", "", "2020-10-19 06:50:30", "2020-10-19 06:50:30", "", "0", "http://localhost:8888/cm-coolgreen/?p=96", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("98", "1", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële website bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hallo daar! Ik ben een fietskoerier in het dagelijks leven en een beginnend acteur in de avonduren. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve   doohickeys aan het publiek geleverd. Gevestigd in Gotham City, XYZ heeft meer dan 2000 mensen in dienst en doen allemaal fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://localhost:8888/cm-coolgreen/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je website. Veel plezier!</p>\n<!-- /wp:paragraph -->", "Voorbeeld pagina", "", "trash", "closed", "open", "", "voorbeeld-pagina__trashed", "", "", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("99", "1", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "<!-- wp:heading --><h2>Wie zijn wij</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Het adres van onze website is: http://localhost:8888/cm-coolgreen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke persoonlijke data we verzamelen en waarom we dat doen</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Reacties</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Als bezoekers reacties achterlaten op de site, verzamelen we de data die getoond wordt in het reactieformulier, het IP-adres van de bezoeker en de browser user agent om spam te bestrijden.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Als je afbeeldingen naar de website upload, moet je voorkomen dat je afbeeldingen uploadt met daarin GPS locatiegegevens (EXIF data). Bezoekers van de website kunnen de afbeeldingen van je website downloaden en deze locatiegegevens inzien.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contactformulieren</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wanneer je een reactie achterlaat op onze site, kun je aangeven of we je naam, je e-mailadres en website in een cookie opgeslagen mogen worden. Dit doen we voor jouw gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Indien je een account hebt en je logt in op deze website, slaan we een tijdelijk cookie op om te bepalen of jouw browser cookies accepteert. Deze cookie bevat geen persoonsgegevens en wordt verwijderd zodra je je browser sluit.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zodra je inlogt, zullen we enkele cookies bewaren in verband met jouw login informatie en schermweergave opties. Login cookies zijn 2 dagen geldig en cookies voor schermweergave opties 1 jaar. Als je &quot;Herinner mij&quot; selecteert, wordt je login 2 weken bewaard. Zodra je uitlogt van jouw account, worden de login cookies verwijderd.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonlijke data en bevat enkel het post ID van het artikel wat je hebt bewerkt. Deze cookie is na een dag verlopen.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ingesloten inhoud van andere websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Berichten op deze website kunnen ingesloten (embedded) inhoud bevatten. Bijvoorbeeld video\'s, afbeeldingen, berichten, etc. Ingesloten inhoud van andere websites gedraagt zich exact hetzelfde alsof de bezoeker deze andere website heeft bezocht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Deze websites kunnen gegevens over jou verzamelen, cookies gebruiken, tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Met wie we uw data delen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Hoelang we uw data bewaren</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolgreacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Voor gebruikers die zich registreren op onze website (indien van toepassing), bewaren we ook persoonlijke informatie in hun gebruikersprofiel. Alle gebruikers kunnen hun persoonlijke informatie bekijken, wijzigen of verwijderen op ieder moment (enkel de gebruikersnaam kan niet gewijzigd worden). Beheerders van de website kunnen deze informatie ook bekijken en wijzigen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke rechten heb je van je eigen gegevens</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Als je een account hebt op deze website of je hebt reacties geplaatst, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons hebt gegeven. Je kan ook verzoeken dat we deze persoonlijke gegevens die we van je hebben verwijderen. Dit bevat geen data die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligingsdoeleinden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Waar we uw data naar toe sturen</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Bezoekerscommentaren kunnen worden gecontroleerd via een geautomatiseerde spamdetectieservice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Uw contactgegevens</h2><!-- /wp:heading --><!-- wp:heading --><h2>Bijkomende informatie</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Hoe we uw gegevens beschermen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De procedures die we hebben in geval van een gegevensinbreuk</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Derden waar we gegevens van ontvangen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welke geautomatiseerde besluitvorming en/of profilering doen we met gebruikersgegevens</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Openbaarmakingsverplichtingen van de industrie</h3><!-- /wp:heading -->", "Privacybeleid", "", "trash", "closed", "open", "", "privacy-policy__trashed", "", "", "2020-10-02 12:38:45", "2020-10-02 12:38:45", "", "0", "http://localhost:8888/cm-coolgreen/?page_id=3", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("102", "1", "2020-10-12 09:32:12", "2020-10-12 09:32:12", "", "1385783", "", "inherit", "open", "closed", "", "1385783-2", "", "", "2020-10-12 09:32:12", "2020-10-12 09:32:12", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1385783-1.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("103", "1", "2020-10-12 09:32:12", "2020-10-12 09:32:12", "", "1390273", "", "inherit", "open", "closed", "", "1390273", "", "", "2020-10-12 09:32:12", "2020-10-12 09:32:12", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1390273.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("104", "1", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "1391813", "", "inherit", "open", "closed", "", "1391813", "", "", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1391813.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("105", "1", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "1406624", "", "inherit", "open", "closed", "", "1406624", "", "", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1406624.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("106", "1", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "1414734", "", "inherit", "open", "closed", "", "1414734", "", "", "2020-10-12 09:32:13", "2020-10-12 09:32:13", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1414734.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("107", "1", "2020-10-12 09:32:14", "2020-10-12 09:32:14", "", "1424680", "", "inherit", "open", "closed", "", "1424680", "", "", "2020-10-12 09:32:14", "2020-10-12 09:32:14", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1424680.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("108", "1", "2020-10-12 09:32:14", "2020-10-12 09:32:14", "", "3999798", "", "inherit", "open", "closed", "", "3999798", "", "", "2020-10-12 09:32:14", "2020-10-12 09:32:14", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/3999798.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("110", "1", "2020-10-12 09:32:47", "2020-10-12 09:32:47", "<!-- wp:paragraph -->\n<p>et de LG UN71006LB bekijk je al je online entertainment in een scherpe 4K resolutie. Via het WebOS besturingssysteem stream je films, series en video\'s met onder andere Netflix en YouTube. Voor toegang tot deze smart tv functies verbind je de tv draadloos met internet via wifi. Dankzij het IPS paneel heeft deze tv een brede kijkhoek, zodat je ook schuin voor de tv geniet van de beeldkwaliteit. Hierdoor kan iedereen het beeld goed zien, als je met een grotere groep mensen tv kijkt. Je sluit 3 verschillende apparaten aan op de 3 HDMI ingangen van de tv. Zo hoef je nooit achter de tv te kruipen om kabels te verwisselen.<a href=\"https://www.coolblue.be/nl/product/858968/lg-43un71006lb-2020.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->", "LG 43UN71006LB (2020)", "", "inherit", "closed", "closed", "", "96-revision-v1", "", "", "2020-10-12 09:32:47", "2020-10-12 09:32:47", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/12/96-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("112", "1", "2020-10-12 09:39:32", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:39:32", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=112", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("119", "1", "2020-10-12 09:39:32", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:39:32", "0000-00-00 00:00:00", "", "17", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=119", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("120", "1", "2020-10-12 09:39:32", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:39:32", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=120", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("121", "1", "2020-10-12 09:39:32", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:39:32", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=121", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("126", "1", "2020-10-12 09:39:32", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:39:32", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=126", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("130", "1", "2020-10-12 09:43:01", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-12 09:43:01", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=130", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("131", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "131", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=131", "7", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("132", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "132", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=132", "10", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("133", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "133", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=133", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("134", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "134", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=134", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("135", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "135", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=135", "11", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("136", "1", "2020-10-12 09:48:13", "2020-10-12 09:48:13", " ", "", "", "publish", "closed", "closed", "", "136", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=136", "12", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("137", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "137", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=137", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("138", "1", "2020-10-13 11:46:15", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2020-10-13 11:46:15", "0000-00-00 00:00:00", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=138", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("139", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "139", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=139", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("140", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "140", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=140", "8", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("141", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "141", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=141", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("142", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "142", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=142", "9", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("143", "1", "2020-10-13 11:47:35", "2020-10-13 11:47:35", " ", "", "", "publish", "closed", "closed", "", "143", "", "", "2020-10-13 11:47:35", "2020-10-13 11:47:35", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=143", "6", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("144", "1", "2020-10-13 11:50:56", "2020-10-13 11:50:56", " ", "", "", "publish", "closed", "closed", "", "144", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=144", "10", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("145", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "145", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=145", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("146", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "146", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "8", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=146", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("147", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "147", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "14", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=147", "6", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("148", "1", "2020-10-13 11:50:56", "2020-10-13 11:50:56", " ", "", "", "publish", "closed", "closed", "", "148", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "14", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=148", "7", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("149", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "149", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "14", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=149", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("150", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "150", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "14", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=150", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("151", "1", "2020-10-13 11:50:55", "2020-10-13 11:50:55", " ", "", "", "publish", "closed", "closed", "", "151", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "17", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=151", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("152", "1", "2020-10-13 11:50:56", "2020-10-13 11:50:56", " ", "", "", "publish", "closed", "closed", "", "152", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "8", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=152", "8", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("153", "1", "2020-10-13 11:50:56", "2020-10-13 11:50:56", " ", "", "", "publish", "closed", "closed", "", "153", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "22", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=153", "11", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("154", "1", "2020-10-13 11:50:56", "2020-10-13 11:50:56", " ", "", "", "publish", "closed", "closed", "", "154", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "22", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=154", "12", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("155", "1", "2020-10-15 12:05:31", "2020-10-15 12:05:31", " ", "", "", "publish", "closed", "closed", "", "155", "", "", "2020-10-15 12:05:31", "2020-10-15 12:05:31", "", "0", "http://localhost/wordpress/cm-coolgreen/wordpress/?p=155", "9", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("156", "1", "2020-10-17 13:51:05", "2020-10-17 13:51:05", "<!-- wp:paragraph -->\n<p>Werk in detail aan je grafische projecten op het grote scherm van Apple MacBook Pro 16\". Dankzij de smallere schermranden en hogere resolutie heb je meer ruimte om te werken. Ondanks het grotere scherm neem je MacBook Pro 16\" gemakkelijk mee naar je volgende opdracht. Dit komt omdat het geheel niet groter is geworden. Met de snelle 6 core intel Core i7 processor draai je de zwaarste programma\'s als Final Cut Pro zonder problemen. Omdat deze krachtpatser over 16 GB RAM beschikt, is multitasken kinderspel. Met de AMD Radeon Pro 5300M videokaart zijn al je videoprojecten binnen een handomdraai gerenderd. Het vernieuwde Magic Keyboard is minder gevoelig voor defecten en stabieler. Hierdoor typ je comfortabeler en stiller. Bovendien biedt de iets kleinere Touch Bar nu ook ruimte voor een fysieke escape-toets en losse Touch-ID sensor.</p>\n<!-- /wp:paragraph -->", "Apple MacBook Pro 16\" Touch Bar (2019) MVVL2FN/A Zilver", "", "inherit", "closed", "closed", "", "91-revision-v1", "", "", "2020-10-17 13:51:05", "2020-10-17 13:51:05", "", "91", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/91-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("157", "1", "2020-10-17 13:51:32", "2020-10-17 13:51:32", "<!-- wp:paragraph -->\n<p>Je krijgt je werk sneller af met Apple MacBook Pro 13\" (2020) 32GB/1TB - 2,3GHz Space Gray AZERTY. Zware multitasking is voor dit model geen probleem, dankzij 32 GB werkgeheugen. Je werkt bijvoorbeeld in verschillende virtuele machines tegelijkertijd. Op de SSD van 1 TB heb je genoeg ruimte om al je projecten op te slaan. Het vernieuwde Magic Keyboard in MacBook Pro heeft een schaarmechanisme en voelt daardoor stabieler aan en is minder gevoelig voor defecten. Hierdoor typ je comfortabeler en stiller.</p>\n<!-- /wp:paragraph -->", "Apple MacBook Pro 13\" (2020) 32GB/1TB - 2,3GHz Space Gray AZERTY", "", "inherit", "closed", "closed", "", "88-revision-v1", "", "", "2020-10-17 13:51:32", "2020-10-17 13:51:32", "", "88", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/88-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("158", "1", "2020-10-17 13:51:50", "2020-10-17 13:51:50", "<!-- wp:paragraph -->\n<p>Vlieg door je dagelijkse werkzaamheden heen met de snelle en compacte Apple MacBook Air (2020) 8/256GB 1,1GHz Space Gray. Aan boord vind je een snelle Intel Core i5 processor van de 10e generatie en 8 GB werkgeheugen. Hierdoor is hij krachtig genoeg voor al je taken, of je nu je vakantiefoto\'s bewerkt of verslagen typt voor school. Je werkt nu nog comfortabeler dankzij het vernieuwde Magic Keyboard met schaarmechanisme. Schrijf dat lange verslag dus gerust in één keer. Dit doe je waar je ook bent. Het True Tone Retina beeldscherm past zich namelijk automatisch aan op de hoeveelheid licht in de ruimte. Bovendien gaat Apple MacBook Air wel 12 uur mee op één acculading.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.coolblue.be/nl/product/861549/apple-macbook-air-2020-8-256gb-1-1ghz-space-gray-azerty.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->", "Apple MacBook Air (2020) 8/256GB 1,1GHz Space Gray AZERTY", "", "inherit", "closed", "closed", "", "12-revision-v1", "", "", "2020-10-17 13:51:50", "2020-10-17 13:51:50", "", "12", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/12-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("159", "1", "2020-10-17 13:52:04", "2020-10-17 13:52:04", "<!-- wp:paragraph -->\n<p>De AEG FSB52617Z beschikt over de digitale QuickSelect schuiver, waarmee je eenvoudig de duur en het energieverbruik van de wascyclus instelt. Handig; zo bespaar je naar keuze energie of tijd. Met SatelliteClean profiteer je van vlekkeloze reiniging van je vaat. De dubbele roterende arm wijzigt voortdurend de sproeihoek, waardoor deze alle hoeken bereikt. Wanneer de vaat klaar is opent de deur 10 centimeter, zodat de vaat op een natuurlijke manier droogt. Je wast je glazen met een gerust hart in deze vaatwasser. Het onderste rek heeft SoftGrips die de glazen op zijn plek houden. Met de uitneembare bestekmand sorteer je je bestek en leg je dit eenvoudig terug in de besteklade. De vaatwasser geeft aan de hand van groene led verlichting aan als de vaat klaar is.<a href=\"https://www.coolblue.be/nl/product/839514/aeg-fsb52617z-inbouw-volledig-geintegreerd-nishoogte-82-88-cm.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->", "AEG FSB52617Z / Inbouw / Volledig geintegreerd / Nishoogte 82 - 88 cm", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-10-17 13:52:04", "2020-10-17 13:52:04", "", "9", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("160", "1", "2020-10-17 13:52:18", "2020-10-17 13:52:18", "<!-- wp:paragraph -->\n<p>Met de Sony KD-49XG7004 kijk je snel en eenvoudig naar online video\'s. Deze 4K tv geeft je via internet toegang tot handige smart functies. Op deze manier schakel je gemakkelijk tussen websites, apps en videodiensten. De meegeleverde afstandsbediening beschikt over een speciale YouTube en Netflix knop. Hiermee open je de videodienst met 1 druk op de knop. Of je nu een online video of een Blu-ray bekijkt, door de 4K resolutie komen de kleinste details scherp in beeld. Kijk je naar een video van een lagere resolutie? Dan maakt de ingebouwde upscaler deze beelden automatisch extra scherp.<a href=\"https://www.coolblue.be/nl/product/831278/sony-kd-49xg7004.html#product-reviews\"></a></p>\n<!-- /wp:paragraph -->", "Sony KD-49XG7004", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-10-17 13:52:18", "2020-10-17 13:52:18", "", "7", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("162", "1", "2020-10-17 15:00:40", "2020-10-17 15:00:40", "", "1414734-1", "", "inherit", "open", "closed", "", "1414734-1", "", "", "2020-10-17 15:00:40", "2020-10-17 15:00:40", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1414734-1.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("163", "1", "2020-10-17 15:16:27", "2020-10-17 15:16:27", "<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":162,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/cm-coolgreen/wordpress/wp-content/uploads/2020/10/1414734-1.jpeg\" alt=\"\" class=\"wp-image-162\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>et de LG UN71006LB bekijk je al je online entertainment in een scherpe 4K resolutie. Via het WebOS besturingssysteem stream je films, series en video\'s met onder andere Netflix en YouTube. Voor toegang tot deze smart tv functies verbind je de tv draadloos met internet via wifi. Dankzij het IPS paneel heeft deze tv een brede kijkhoek, zodat je ook schuin voor de tv geniet van de beeldkwaliteit. Hierdoor kan iedereen het beeld goed zien, als je met een grotere groep mensen tv kijkt. Je sluit 3 verschillende apparaten aan op de 3 HDMI ingangen van de tv. Zo hoef je nooit achter de tv te kruipen om kabels te verwisselen.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->", "LG 43UN71006LB (2020)", "", "inherit", "closed", "closed", "", "96-revision-v1", "", "", "2020-10-17 15:16:27", "2020-10-17 15:16:27", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/17/96-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("164", "1", "2020-10-18 12:34:54", "2020-10-18 12:34:54", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "inherit", "closed", "closed", "", "1-revision-v1", "", "", "2020-10-18 12:34:54", "2020-10-18 12:34:54", "", "1", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/18/1-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("165", "1", "2020-10-18 13:41:22", "2020-10-18 13:41:22", "<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>et de LG UN71006LB bekijk je al je online entertainment in een scherpe 4K resolutie. Via het WebOS besturingssysteem stream je films, series en video\'s met onder andere Netflix en YouTube. Voor toegang tot deze smart tv functies verbind je de tv draadloos met internet via wifi. Dankzij het IPS paneel heeft deze tv een brede kijkhoek, zodat je ook schuin voor de tv geniet van de beeldkwaliteit. Hierdoor kan iedereen het beeld goed zien, als je met een grotere groep mensen tv kijkt. Je sluit 3 verschillende apparaten aan op de 3 HDMI ingangen van de tv. Zo hoef je nooit achter de tv te kruipen om kabels te verwisselen.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->", "LG 43UN71006LB (2020)", "", "inherit", "closed", "closed", "", "96-revision-v1", "", "", "2020-10-18 13:41:22", "2020-10-18 13:41:22", "", "96", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/18/96-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("166", "1", "2020-10-18 14:07:50", "2020-10-18 14:07:50", "<!-- wp:paragraph -->\n<p>Heb je een zaak, dan bieden we je met plezier een aantal extra services aan. Naast het bestellen via de website is het voor zakelijke klanten mogelijk om offertes op te vragen, te bestellen via inkooporders en offline én online op rekening te kopen. We adviseren je over producten en diensten, speciaal voor zakelijk gebruik.</p>\n<!-- /wp:paragraph -->", "Zakelijk", "", "inherit", "closed", "closed", "", "18-revision-v1", "", "", "2020-10-18 14:07:50", "2020-10-18 14:07:50", "", "18", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/18/18-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("167", "1", "2020-10-19 09:16:08", "2020-10-19 09:16:08", "", "Klantenservice", "", "inherit", "closed", "closed", "", "78-autosave-v1", "", "", "2020-10-19 09:16:08", "2020-10-19 09:16:08", "", "78", "http://localhost/wordpress/cm-coolgreen/wordpress/2020/10/19/78-autosave-v1/", "0", "revision", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("6", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "22", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "23", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "24", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "25", "0");
INSERT INTO `wp_term_relationships` VALUES("7", "26", "0");
INSERT INTO `wp_term_relationships` VALUES("9", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("12", "8", "0");
INSERT INTO `wp_term_relationships` VALUES("12", "14", "0");
INSERT INTO `wp_term_relationships` VALUES("12", "15", "0");
INSERT INTO `wp_term_relationships` VALUES("88", "8", "0");
INSERT INTO `wp_term_relationships` VALUES("88", "14", "0");
INSERT INTO `wp_term_relationships` VALUES("88", "17", "0");
INSERT INTO `wp_term_relationships` VALUES("91", "14", "0");
INSERT INTO `wp_term_relationships` VALUES("96", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("131", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("132", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("133", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("134", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("135", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("136", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("137", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("139", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("140", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("141", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("142", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("143", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("144", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("145", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("146", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("147", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("148", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("149", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("150", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("151", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("152", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("153", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("154", "35", "0");
INSERT INTO `wp_term_relationships` VALUES("155", "35", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "category", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("5", "5", "category", "", "0", "2");
INSERT INTO `wp_term_taxonomy` VALUES("8", "8", "category", "", "0", "2");
INSERT INTO `wp_term_taxonomy` VALUES("14", "14", "category", "", "8", "3");
INSERT INTO `wp_term_taxonomy` VALUES("15", "15", "category", "", "14", "1");
INSERT INTO `wp_term_taxonomy` VALUES("17", "17", "category", "", "14", "1");
INSERT INTO `wp_term_taxonomy` VALUES("18", "18", "category", "", "14", "0");
INSERT INTO `wp_term_taxonomy` VALUES("19", "19", "category", "", "17", "0");
INSERT INTO `wp_term_taxonomy` VALUES("20", "20", "category", "", "14", "0");
INSERT INTO `wp_term_taxonomy` VALUES("21", "21", "nav_menu", "", "0", "12");
INSERT INTO `wp_term_taxonomy` VALUES("22", "22", "category", "", "8", "1");
INSERT INTO `wp_term_taxonomy` VALUES("23", "23", "category", "", "22", "1");
INSERT INTO `wp_term_taxonomy` VALUES("24", "24", "category", "", "22", "1");
INSERT INTO `wp_term_taxonomy` VALUES("25", "25", "category", "", "22", "1");
INSERT INTO `wp_term_taxonomy` VALUES("26", "26", "category", "", "22", "1");
INSERT INTO `wp_term_taxonomy` VALUES("27", "27", "category", "", "3", "0");
INSERT INTO `wp_term_taxonomy` VALUES("28", "28", "category", "", "3", "0");
INSERT INTO `wp_term_taxonomy` VALUES("29", "29", "category", "", "27", "0");
INSERT INTO `wp_term_taxonomy` VALUES("30", "30", "category", "", "27", "0");
INSERT INTO `wp_term_taxonomy` VALUES("31", "31", "category", "", "27", "0");
INSERT INTO `wp_term_taxonomy` VALUES("32", "32", "category", "", "28", "0");
INSERT INTO `wp_term_taxonomy` VALUES("33", "33", "category", "", "28", "0");
INSERT INTO `wp_term_taxonomy` VALUES("34", "34", "category", "", "5", "0");
INSERT INTO `wp_term_taxonomy` VALUES("35", "35", "nav_menu", "", "0", "12");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("2", "Geen categorie", "geen-categorie", "0");
INSERT INTO `wp_terms` VALUES("3", "Beeld en geluid", "beeld-en-geluid", "0");
INSERT INTO `wp_terms` VALUES("5", "Huishouden", "huishouden", "0");
INSERT INTO `wp_terms` VALUES("8", "Computers", "computers", "0");
INSERT INTO `wp_terms` VALUES("14", "Apple", "apple-computers", "0");
INSERT INTO `wp_terms` VALUES("15", "Macbook Air", "macbook-air-apple-computers", "0");
INSERT INTO `wp_terms` VALUES("17", "Macbook Pro", "macbook-pro", "0");
INSERT INTO `wp_terms` VALUES("18", "Dell", "dell", "0");
INSERT INTO `wp_terms` VALUES("19", "Gaming", "gaming-macbook-pro", "0");
INSERT INTO `wp_terms` VALUES("20", "HP", "hp", "0");
INSERT INTO `wp_terms` VALUES("21", "menu voor de footer", "menu-voor-de-footer", "0");
INSERT INTO `wp_terms` VALUES("22", "Schermen", "schermen", "0");
INSERT INTO `wp_terms` VALUES("23", "&gt;24inch", "24inch", "0");
INSERT INTO `wp_terms` VALUES("24", "&lt;15inch", "15inch", "0");
INSERT INTO `wp_terms` VALUES("25", "21inch", "21inch", "0");
INSERT INTO `wp_terms` VALUES("26", "24inch", "24inch-schermen", "0");
INSERT INTO `wp_terms` VALUES("27", "Radio", "radio", "0");
INSERT INTO `wp_terms` VALUES("28", "TV", "tv-beeld-en-geluid", "0");
INSERT INTO `wp_terms` VALUES("29", "Auto", "auto", "0");
INSERT INTO `wp_terms` VALUES("30", "DAB", "dab", "0");
INSERT INTO `wp_terms` VALUES("31", "Wifi", "wifi", "0");
INSERT INTO `wp_terms` VALUES("32", "LG", "lg-tv-beeld-en-geluid", "0");
INSERT INTO `wp_terms` VALUES("33", "Sony", "sony", "0");
INSERT INTO `wp_terms` VALUES("34", "Wasmachines", "wasmachines-huishouden", "0");
INSERT INTO `wp_terms` VALUES("35", "menu voor de header", "menu-voor-de-header", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "root");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"861bc1d2ae7cb51af739bceef4fccc471abab952c41b221c561c864cb5918e62\";a:4:{s:10:\"expiration\";i:1603701961;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1602492361;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "4");
INSERT INTO `wp_usermeta` VALUES("18", "1", "wp_user-settings", "libraryContent=browse");
INSERT INTO `wp_usermeta` VALUES("19", "1", "wp_user-settings-time", "1602495165");
INSERT INTO `wp_usermeta` VALUES("20", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("21", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `wp_usermeta` VALUES("22", "1", "nav_menu_recently_edited", "35");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "root", "$P$Bwe4/Usy62LDtI/IDAmefYVdrjcapT0", "root", "ayrton.van.den.dooren@student.howest.be", "http://localhost/wordpress/cm-coolgreen/wordpress", "2020-10-12 08:45:52", "", "0", "root");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2020-10-26 08:15:38*/
/* DUPLICATOR_MYSQLDUMP_EOF */
