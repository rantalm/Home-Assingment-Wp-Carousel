-- Adminer 4.7.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1,	1,	'A WordPress Commenter',	'wapuu@wordpress.example',	'https://wordpress.org/',	'',	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',	0,	'1',	'',	'comment',	0,	0);

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1,	'siteurl',	'http://colmobil-test.local',	'yes'),
(2,	'home',	'http://colmobil-test.local',	'yes'),
(3,	'blogname',	'colmobil-test',	'yes'),
(4,	'blogdescription',	'home assignment for colmobil',	'yes'),
(5,	'users_can_register',	'0',	'yes'),
(6,	'admin_email',	'rantalwork@gmail.com',	'yes'),
(7,	'start_of_week',	'1',	'yes'),
(8,	'use_balanceTags',	'0',	'yes'),
(9,	'use_smilies',	'1',	'yes'),
(10,	'require_name_email',	'1',	'yes'),
(11,	'comments_notify',	'1',	'yes'),
(12,	'posts_per_rss',	'10',	'yes'),
(13,	'rss_use_excerpt',	'0',	'yes'),
(14,	'mailserver_url',	'mail.example.com',	'yes'),
(15,	'mailserver_login',	'login@example.com',	'yes'),
(16,	'mailserver_pass',	'password',	'yes'),
(17,	'mailserver_port',	'110',	'yes'),
(18,	'default_category',	'1',	'yes'),
(19,	'default_comment_status',	'open',	'yes'),
(20,	'default_ping_status',	'open',	'yes'),
(21,	'default_pingback_flag',	'1',	'yes'),
(22,	'posts_per_page',	'10',	'yes'),
(23,	'date_format',	'F j, Y',	'yes'),
(24,	'time_format',	'g:i a',	'yes'),
(25,	'links_updated_date_format',	'F j, Y g:i a',	'yes'),
(26,	'comment_moderation',	'0',	'yes'),
(27,	'moderation_notify',	'1',	'yes'),
(28,	'permalink_structure',	'/%postname%/',	'yes'),
(29,	'rewrite_rules',	'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"models/?$\";s:26:\"index.php?post_type=models\";s:39:\"models/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=models&feed=$matches[1]\";s:34:\"models/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=models&feed=$matches[1]\";s:26:\"models/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=models&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"models/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"models/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"models/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"models/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"models/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"models/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"models/([^/]+)/embed/?$\";s:39:\"index.php?models=$matches[1]&embed=true\";s:27:\"models/([^/]+)/trackback/?$\";s:33:\"index.php?models=$matches[1]&tb=1\";s:47:\"models/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?models=$matches[1]&feed=$matches[2]\";s:42:\"models/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?models=$matches[1]&feed=$matches[2]\";s:35:\"models/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?models=$matches[1]&paged=$matches[2]\";s:42:\"models/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?models=$matches[1]&cpage=$matches[2]\";s:31:\"models/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?models=$matches[1]&page=$matches[2]\";s:23:\"models/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"models/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"models/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"models/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"models/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"models/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}',	'yes'),
(30,	'hack_file',	'0',	'yes'),
(31,	'blog_charset',	'UTF-8',	'yes'),
(32,	'moderation_keys',	'',	'no'),
(33,	'active_plugins',	'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}',	'yes'),
(34,	'category_base',	'',	'yes'),
(35,	'ping_sites',	'http://rpc.pingomatic.com/',	'yes'),
(36,	'comment_max_links',	'2',	'yes'),
(37,	'gmt_offset',	'3',	'yes'),
(38,	'default_email_category',	'1',	'yes'),
(39,	'recently_edited',	'',	'no'),
(40,	'template',	'colmobil',	'yes'),
(41,	'stylesheet',	'colmobil',	'yes'),
(42,	'comment_registration',	'0',	'yes'),
(43,	'html_type',	'text/html',	'yes'),
(44,	'use_trackback',	'0',	'yes'),
(45,	'default_role',	'subscriber',	'yes'),
(46,	'db_version',	'48748',	'yes'),
(47,	'uploads_use_yearmonth_folders',	'1',	'yes'),
(48,	'upload_path',	'',	'yes'),
(49,	'blog_public',	'1',	'yes'),
(50,	'default_link_category',	'2',	'yes'),
(51,	'show_on_front',	'posts',	'yes'),
(52,	'tag_base',	'',	'yes'),
(53,	'show_avatars',	'1',	'yes'),
(54,	'avatar_rating',	'G',	'yes'),
(55,	'upload_url_path',	'',	'yes'),
(56,	'thumbnail_size_w',	'150',	'yes'),
(57,	'thumbnail_size_h',	'150',	'yes'),
(58,	'thumbnail_crop',	'1',	'yes'),
(59,	'medium_size_w',	'300',	'yes'),
(60,	'medium_size_h',	'300',	'yes'),
(61,	'avatar_default',	'mystery',	'yes'),
(62,	'large_size_w',	'1024',	'yes'),
(63,	'large_size_h',	'1024',	'yes'),
(64,	'image_default_link_type',	'none',	'yes'),
(65,	'image_default_size',	'',	'yes'),
(66,	'image_default_align',	'',	'yes'),
(67,	'close_comments_for_old_posts',	'0',	'yes'),
(68,	'close_comments_days_old',	'14',	'yes'),
(69,	'thread_comments',	'1',	'yes'),
(70,	'thread_comments_depth',	'5',	'yes'),
(71,	'page_comments',	'0',	'yes'),
(72,	'comments_per_page',	'50',	'yes'),
(73,	'default_comments_page',	'newest',	'yes'),
(74,	'comment_order',	'asc',	'yes'),
(75,	'sticky_posts',	'a:0:{}',	'yes'),
(76,	'widget_categories',	'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(77,	'widget_text',	'a:3:{i:2;a:4:{s:5:\"title\";s:19:\"אודות האתר\";s:4:\"text\";s:68:\"זה מקום מצויין להציג את עצמך ואת האתר.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:21:\"תמצאו אותנו\";s:4:\"text\";s:180:\"<strong>כתובת</strong>\nרחוב ראשי 123\nניו-יורק, ניו-יורק 10001\n\n<strong>שעות</strong>\nשני-שישי: 9:00AM-5:00PM\nשבת-ראשון: 11:00AM-3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(78,	'widget_rss',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(79,	'uninstall_plugins',	'a:0:{}',	'no'),
(80,	'timezone_string',	'',	'yes'),
(81,	'page_for_posts',	'0',	'yes'),
(82,	'page_on_front',	'0',	'yes'),
(83,	'default_post_format',	'0',	'yes'),
(84,	'link_manager_enabled',	'0',	'yes'),
(85,	'finished_splitting_shared_terms',	'1',	'yes'),
(86,	'site_icon',	'0',	'yes'),
(87,	'medium_large_size_w',	'768',	'yes'),
(88,	'medium_large_size_h',	'0',	'yes'),
(89,	'wp_page_for_privacy_policy',	'3',	'yes'),
(90,	'show_comments_cookies_opt_in',	'1',	'yes'),
(91,	'admin_email_lifespan',	'1615965993',	'yes'),
(92,	'disallowed_keys',	'',	'no'),
(93,	'comment_previously_approved',	'1',	'yes'),
(94,	'auto_plugin_theme_update_emails',	'a:0:{}',	'no'),
(95,	'initial_db_version',	'48748',	'yes'),
(96,	'wp_user_roles',	'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',	'yes'),
(97,	'fresh_site',	'1',	'yes'),
(98,	'widget_search',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(99,	'widget_recent-posts',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(100,	'widget_recent-comments',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(101,	'widget_archives',	'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(102,	'widget_meta',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(103,	'sidebars_widgets',	'a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',	'yes'),
(104,	'cron',	'a:7:{i:1601461596;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601493996;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601537195;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601537235;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601537237;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601709995;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',	'yes'),
(105,	'widget_pages',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(106,	'widget_calendar',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(107,	'widget_media_audio',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(108,	'widget_media_image',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(109,	'widget_media_gallery',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(110,	'widget_media_video',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(111,	'nonce_key',	'{#*)6jhEZSWO!T #lLZKt?OsAIO?koA)q*/zNe1{Q$=;n61)G)O>NylZmFtP<&Js',	'no'),
(112,	'nonce_salt',	'[YxD/O]On@Ti/Std=%`eVp(D4?-)m7?9Fx}7*L`pbfUq&H6bA28U{T[p6[#e^,K*',	'no'),
(113,	'widget_tag_cloud',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(114,	'widget_nav_menu',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(115,	'widget_custom_html',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(117,	'recovery_keys',	'a:0:{}',	'yes'),
(124,	'theme_mods_twentytwenty',	'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600414533;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}',	'yes'),
(142,	'can_compress_scripts',	'1',	'no'),
(147,	'finished_updating_comment_type',	'1',	'yes'),
(148,	'WPLANG',	'he_IL',	'yes'),
(149,	'new_admin_email',	'rantalwork@gmail.com',	'yes'),
(157,	'current_theme',	'Colmobil',	'yes'),
(158,	'theme_mods_twentytwenty-child',	'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601022980;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}',	'yes'),
(159,	'theme_switched',	'',	'yes'),
(170,	'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89',	'1601626292',	'no'),
(171,	'_site_transient_php_check_472f71d2a071d463a95f84346288dc89',	'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',	'no'),
(172,	'_transient_health-check-site-status-result',	'{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}',	'yes'),
(173,	'_site_transient_timeout_browser_4243c5bad934d66f978f6ee6e569fdad',	'1601626321',	'no'),
(174,	'_site_transient_browser_4243c5bad934d66f978f6ee6e569fdad',	'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',	'no'),
(193,	'theme_mods_colmobil',	'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}',	'yes'),
(237,	'recently_activated',	'a:0:{}',	'yes'),
(243,	'_site_transient_update_core',	'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/he_IL/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"he_IL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/he_IL/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601454313;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}',	'no'),
(245,	'_site_transient_update_themes',	'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601454315;s:7:\"checked\";a:5:{s:8:\"colmobil\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:18:\"twentytwenty-child\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}',	'no'),
(247,	'_site_transient_update_plugins',	'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1601454312;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}',	'no'),
(248,	'acf_version',	'5.9.1',	'yes'),
(262,	'_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283',	'1601978217',	'no'),
(263,	'_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283',	'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',	'no'),
(310,	'_site_transient_timeout_theme_roots',	'1601456114',	'no'),
(311,	'_site_transient_theme_roots',	'a:5:{s:8:\"colmobil\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:18:\"twentytwenty-child\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}',	'no');

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1,	2,	'_wp_page_template',	'default'),
(2,	3,	'_wp_page_template',	'default'),
(30,	18,	'_edit_lock',	'1601196911:1'),
(31,	20,	'_edit_last',	'1'),
(32,	20,	'_edit_lock',	'1601415989:1'),
(33,	23,	'_wp_attached_file',	'2020/09/dhiva-krishna-GRV4ypBKgxE-unsplash-scaled.jpg'),
(34,	23,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:53:\"2020/09/dhiva-krishna-GRV4ypBKgxE-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"dhiva-krishna-GRV4ypBKgxE-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"dhiva-krishna-GRV4ypBKgxE-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"dhiva-krishna-GRV4ypBKgxE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"dhiva-krishna-GRV4ypBKgxE-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"dhiva-krishna-GRV4ypBKgxE-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"dhiva-krishna-GRV4ypBKgxE-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"dhiva-krishna-GRV4ypBKgxE-unsplash.jpg\";}'),
(35,	24,	'_wp_attached_file',	'2020/09/erik-mclean-ZRns2R5azu0-unsplash-scaled.jpg'),
(36,	24,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:51:\"2020/09/erik-mclean-ZRns2R5azu0-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"erik-mclean-ZRns2R5azu0-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"erik-mclean-ZRns2R5azu0-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"erik-mclean-ZRns2R5azu0-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"erik-mclean-ZRns2R5azu0-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"erik-mclean-ZRns2R5azu0-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"erik-mclean-ZRns2R5azu0-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"erik-mclean-ZRns2R5azu0-unsplash.jpg\";}'),
(37,	25,	'_wp_attached_file',	'2020/09/olav-tvedt-6lSBynPRaAQ-unsplash-scaled.jpg'),
(38,	25,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:50:\"2020/09/olav-tvedt-6lSBynPRaAQ-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"olav-tvedt-6lSBynPRaAQ-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"olav-tvedt-6lSBynPRaAQ-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"olav-tvedt-6lSBynPRaAQ-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"olav-tvedt-6lSBynPRaAQ-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"olav-tvedt-6lSBynPRaAQ-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"olav-tvedt-6lSBynPRaAQ-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"olav-tvedt-6lSBynPRaAQ-unsplash.jpg\";}'),
(39,	26,	'_wp_attached_file',	'2020/09/dan-gold-N7RiDzfF2iw-unsplash-scaled.jpg'),
(40,	26,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:48:\"2020/09/dan-gold-N7RiDzfF2iw-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"dan-gold-N7RiDzfF2iw-unsplash-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"dan-gold-N7RiDzfF2iw-unsplash-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"dan-gold-N7RiDzfF2iw-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"dan-gold-N7RiDzfF2iw-unsplash-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"dan-gold-N7RiDzfF2iw-unsplash-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:43:\"dan-gold-N7RiDzfF2iw-unsplash-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:33:\"dan-gold-N7RiDzfF2iw-unsplash.jpg\";}'),
(41,	27,	'_wp_attached_file',	'2020/09/koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-scaled.jpg'),
(42,	27,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1968;s:4:\"file\";s:67:\"2020/09/koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-300x231.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-1024x787.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:787;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-768x590.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:590;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:62:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-1536x1181.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:62:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash-2048x1575.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1575;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:52:\"koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash.jpg\";}'),
(43,	28,	'_wp_attached_file',	'2020/09/jasper-geys-NyRe1Mj1pm4-unsplash-scaled.jpg'),
(44,	28,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:51:\"2020/09/jasper-geys-NyRe1Mj1pm4-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"jasper-geys-NyRe1Mj1pm4-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"jasper-geys-NyRe1Mj1pm4-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"jasper-geys-NyRe1Mj1pm4-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"jasper-geys-NyRe1Mj1pm4-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"jasper-geys-NyRe1Mj1pm4-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"jasper-geys-NyRe1Mj1pm4-unsplash-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"jasper-geys-NyRe1Mj1pm4-unsplash.jpg\";}'),
(45,	29,	'_edit_last',	'1'),
(46,	29,	'_edit_lock',	'1601454563:1'),
(47,	29,	'model_slider_left',	'0'),
(48,	29,	'_model_slider_left',	'field_5f705503b276f'),
(49,	29,	'_thumbnail_id',	'43'),
(50,	38,	'_edit_last',	'1'),
(51,	38,	'_edit_lock',	'1601416015:1'),
(52,	38,	'_thumbnail_id',	'44'),
(53,	38,	'model_slider_left',	'0'),
(54,	38,	'_model_slider_left',	'field_5f705503b276f'),
(55,	39,	'_edit_last',	'1'),
(56,	39,	'_edit_lock',	'1601416009:1'),
(57,	39,	'_thumbnail_id',	'28'),
(58,	39,	'model_slider_left',	'1'),
(59,	39,	'_model_slider_left',	'field_5f705503b276f'),
(60,	40,	'_edit_last',	'1'),
(61,	40,	'model_slider_left',	'0'),
(62,	40,	'_model_slider_left',	'field_5f705503b276f'),
(63,	40,	'_edit_lock',	'1601416000:1'),
(64,	40,	'_thumbnail_id',	'45'),
(65,	41,	'_wp_attached_file',	'2020/09/joshua-yu-2IKm0aYkHPk-unsplash-scaled.jpg'),
(66,	41,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:49:\"2020/09/joshua-yu-2IKm0aYkHPk-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"joshua-yu-2IKm0aYkHPk-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"joshua-yu-2IKm0aYkHPk-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"joshua-yu-2IKm0aYkHPk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"joshua-yu-2IKm0aYkHPk-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"joshua-yu-2IKm0aYkHPk-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:44:\"joshua-yu-2IKm0aYkHPk-unsplash-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:34:\"joshua-yu-2IKm0aYkHPk-unsplash.jpg\";}'),
(67,	42,	'_wp_attached_file',	'2020/09/alessio-lin-AxlHH0jX6Gs-unsplash-scaled.jpg'),
(68,	42,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:51:\"2020/09/alessio-lin-AxlHH0jX6Gs-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"alessio-lin-AxlHH0jX6Gs-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"alessio-lin-AxlHH0jX6Gs-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"alessio-lin-AxlHH0jX6Gs-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"alessio-lin-AxlHH0jX6Gs-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"alessio-lin-AxlHH0jX6Gs-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"alessio-lin-AxlHH0jX6Gs-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"alessio-lin-AxlHH0jX6Gs-unsplash.jpg\";}'),
(69,	43,	'_wp_attached_file',	'2020/09/jonas-denil-AEMXX_7JNMw-unsplash-scaled.jpg'),
(70,	43,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:51:\"2020/09/jonas-denil-AEMXX_7JNMw-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"jonas-denil-AEMXX_7JNMw-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"jonas-denil-AEMXX_7JNMw-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"jonas-denil-AEMXX_7JNMw-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"jonas-denil-AEMXX_7JNMw-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"jonas-denil-AEMXX_7JNMw-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"jonas-denil-AEMXX_7JNMw-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"jonas-denil-AEMXX_7JNMw-unsplash.jpg\";}'),
(71,	44,	'_wp_attached_file',	'2020/09/umut-yilman-1MgWUoN53mM-unsplash-scaled.jpg'),
(72,	44,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:51:\"2020/09/umut-yilman-1MgWUoN53mM-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"umut-yilman-1MgWUoN53mM-unsplash-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"umut-yilman-1MgWUoN53mM-unsplash-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"umut-yilman-1MgWUoN53mM-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"umut-yilman-1MgWUoN53mM-unsplash-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"umut-yilman-1MgWUoN53mM-unsplash-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"umut-yilman-1MgWUoN53mM-unsplash-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"umut-yilman-1MgWUoN53mM-unsplash.jpg\";}'),
(73,	45,	'_wp_attached_file',	'2020/09/michael-heuser-kNv2wy40YSs-unsplash-scaled.jpg'),
(74,	45,	'_wp_attachment_metadata',	'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1696;s:4:\"file\";s:54:\"2020/09/michael-heuser-kNv2wy40YSs-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"michael-heuser-kNv2wy40YSs-unsplash-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"michael-heuser-kNv2wy40YSs-unsplash-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"michael-heuser-kNv2wy40YSs-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"michael-heuser-kNv2wy40YSs-unsplash-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"michael-heuser-kNv2wy40YSs-unsplash-1536x1017.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1017;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"michael-heuser-kNv2wy40YSs-unsplash-2048x1356.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1356;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"michael-heuser-kNv2wy40YSs-unsplash.jpg\";}');

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1,	1,	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',	'Hello world!',	'',	'publish',	'open',	'open',	'',	'hello-world',	'',	'',	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'',	0,	'http://colmobil-test.local/?p=1',	0,	'post',	'',	1),
(2,	1,	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://colmobil-test.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',	'Sample Page',	'',	'publish',	'closed',	'open',	'',	'sample-page',	'',	'',	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'',	0,	'http://colmobil-test.local/?page_id=2',	0,	'page',	'',	0),
(3,	1,	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://colmobil-test.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->',	'Privacy Policy',	'',	'draft',	'closed',	'open',	'',	'privacy-policy',	'',	'',	'2020-09-18 07:26:34',	'2020-09-18 07:26:34',	'',	0,	'http://colmobil-test.local/?page_id=3',	0,	'page',	'',	0),
(17,	1,	'2020-09-25 11:12:02',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-25 11:12:02',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=17',	0,	'post',	'',	0),
(18,	1,	'2020-09-27 11:57:17',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 11:57:17',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=18',	0,	'models',	'',	0),
(19,	1,	'2020-09-27 11:58:42',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 11:58:42',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=19',	0,	'models',	'',	0),
(20,	1,	'2020-09-27 12:05:20',	'2020-09-27 09:05:20',	'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"models\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}',	'הצגת הסליידר',	'%d7%94%d7%a6%d7%92%d7%aa-%d7%94%d7%a1%d7%9c%d7%99%d7%99%d7%93%d7%a8',	'publish',	'closed',	'closed',	'',	'group_5f7054aceef2d',	'',	'',	'2020-09-27 12:05:21',	'2020-09-27 09:05:21',	'',	0,	'http://colmobil-test.local/?post_type=acf-field-group&#038;p=20',	0,	'acf-field-group',	'',	0),
(21,	1,	'2020-09-27 12:05:20',	'2020-09-27 09:05:20',	'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:60:\"אם יסומן תוכן הסליידר יוצג משמאל.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}',	'הצג את התוכן בצד שמאל',	'model_slider_left',	'publish',	'closed',	'closed',	'',	'field_5f705503b276f',	'',	'',	'2020-09-27 12:05:20',	'2020-09-27 09:05:20',	'',	20,	'http://colmobil-test.local/?post_type=acf-field&p=21',	0,	'acf-field',	'',	0),
(22,	1,	'2020-09-27 12:05:32',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 12:05:32',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=22',	0,	'models',	'',	0),
(23,	1,	'2020-09-27 13:24:04',	'2020-09-27 10:24:04',	'',	'dhiva-krishna-GRV4ypBKgxE-unsplash',	'',	'inherit',	'open',	'closed',	'',	'dhiva-krishna-grv4ypbkgxe-unsplash',	'',	'',	'2020-09-27 13:24:04',	'2020-09-27 10:24:04',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/dhiva-krishna-GRV4ypBKgxE-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(24,	1,	'2020-09-27 13:24:13',	'2020-09-27 10:24:13',	'',	'erik-mclean-ZRns2R5azu0-unsplash',	'',	'inherit',	'open',	'closed',	'',	'erik-mclean-zrns2r5azu0-unsplash',	'',	'',	'2020-09-27 13:24:13',	'2020-09-27 10:24:13',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/erik-mclean-ZRns2R5azu0-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(25,	1,	'2020-09-27 13:24:23',	'2020-09-27 10:24:23',	'',	'olav-tvedt-6lSBynPRaAQ-unsplash',	'',	'inherit',	'open',	'closed',	'',	'olav-tvedt-6lsbynpraaq-unsplash',	'',	'',	'2020-09-27 13:24:23',	'2020-09-27 10:24:23',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/olav-tvedt-6lSBynPRaAQ-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(26,	1,	'2020-09-27 13:24:33',	'2020-09-27 10:24:33',	'',	'dan-gold-N7RiDzfF2iw-unsplash',	'',	'inherit',	'open',	'closed',	'',	'dan-gold-n7ridzff2iw-unsplash',	'',	'',	'2020-09-27 13:24:33',	'2020-09-27 10:24:33',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/dan-gold-N7RiDzfF2iw-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(27,	1,	'2020-09-27 13:24:42',	'2020-09-27 10:24:42',	'',	'koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash',	'',	'inherit',	'open',	'closed',	'',	'koke-mayayo-thevisualkiller-ug8rgappgwk-unsplash',	'',	'',	'2020-09-27 13:24:42',	'2020-09-27 10:24:42',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/koke-mayayo-thevisualkiller-uG8RGApPGWk-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(28,	1,	'2020-09-27 13:24:47',	'2020-09-27 10:24:47',	'',	'jasper-geys-NyRe1Mj1pm4-unsplash',	'',	'inherit',	'open',	'closed',	'',	'jasper-geys-nyre1mj1pm4-unsplash',	'',	'',	'2020-09-27 13:24:47',	'2020-09-27 10:24:47',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/jasper-geys-NyRe1Mj1pm4-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(29,	1,	'2020-09-27 13:33:57',	'2020-09-27 10:33:57',	'',	'דגם S Plus',	'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן לורם איפסום דולור סיט',	'publish',	'closed',	'closed',	'',	'%d7%93%d7%92%d7%9d-s-plus',	'',	'',	'2020-09-30 00:49:25',	'2020-09-29 21:49:25',	'',	0,	'http://colmobil-test.local/?post_type=models&#038;p=29',	0,	'models',	'',	0),
(30,	1,	'2020-09-27 13:40:03',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-27 13:40:03',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=30',	0,	'post',	'',	0),
(31,	1,	'2020-09-27 13:41:15',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-27 13:41:15',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=31',	0,	'post',	'',	0),
(32,	1,	'2020-09-27 13:41:18',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-27 13:41:18',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=32',	0,	'post',	'',	0),
(33,	1,	'2020-09-27 13:42:01',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-27 13:42:01',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=33',	0,	'post',	'',	0),
(34,	1,	'2020-09-27 13:42:05',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2020-09-27 13:42:05',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?p=34',	0,	'post',	'',	0),
(35,	1,	'2020-09-27 13:44:08',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 13:44:08',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=35',	0,	'models',	'',	0),
(36,	1,	'2020-09-27 13:45:39',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 13:45:39',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=36',	0,	'models',	'',	0),
(37,	1,	'2020-09-27 13:47:24',	'0000-00-00 00:00:00',	'',	'טיוטה אוטומטית',	'',	'auto-draft',	'closed',	'closed',	'',	'',	'',	'',	'2020-09-27 13:47:24',	'0000-00-00 00:00:00',	'',	0,	'http://colmobil-test.local/?post_type=models&p=37',	0,	'models',	'',	0),
(38,	1,	'2020-09-27 13:49:26',	'2020-09-27 10:49:26',	'',	'D-400 פנאי שטח',	'הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n',	'publish',	'closed',	'closed',	'',	'd-400-%d7%a4%d7%a0%d7%90%d7%99-%d7%a9%d7%98%d7%97',	'',	'',	'2020-09-29 09:13:12',	'2020-09-29 06:13:12',	'',	0,	'http://colmobil-test.local/?post_type=models&#038;p=38',	0,	'models',	'',	0),
(39,	1,	'2020-09-27 13:51:16',	'2020-09-27 10:51:16',	'',	'X-TREME',	'הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\nהועניב היושבב שערש.',	'publish',	'closed',	'closed',	'',	'x-treme',	'',	'',	'2020-09-30 00:49:12',	'2020-09-29 21:49:12',	'',	0,	'http://colmobil-test.local/?post_type=models&#038;p=39',	0,	'models',	'',	0),
(40,	1,	'2020-09-27 13:55:48',	'2020-09-27 10:55:48',	'',	'ביצועים ויוקרה',	'הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.',	'publish',	'closed',	'closed',	'',	'%d7%91%d7%99%d7%a6%d7%95%d7%a2%d7%99%d7%9d-%d7%95%d7%99%d7%95%d7%a7%d7%a8%d7%94',	'',	'',	'2020-09-30 00:49:01',	'2020-09-29 21:49:01',	'',	0,	'http://colmobil-test.local/?post_type=models&#038;p=40',	0,	'models',	'',	0),
(41,	1,	'2020-09-29 09:11:38',	'2020-09-29 06:11:38',	'',	'joshua-yu-2IKm0aYkHPk-unsplash',	'',	'inherit',	'open',	'closed',	'',	'joshua-yu-2ikm0aykhpk-unsplash',	'',	'',	'2020-09-29 09:11:38',	'2020-09-29 06:11:38',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/joshua-yu-2IKm0aYkHPk-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(42,	1,	'2020-09-29 09:11:54',	'2020-09-29 06:11:54',	'',	'alessio-lin-AxlHH0jX6Gs-unsplash',	'',	'inherit',	'open',	'closed',	'',	'alessio-lin-axlhh0jx6gs-unsplash',	'',	'',	'2020-09-29 09:11:54',	'2020-09-29 06:11:54',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/alessio-lin-AxlHH0jX6Gs-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(43,	1,	'2020-09-29 09:12:17',	'2020-09-29 06:12:17',	'',	'jonas-denil-AEMXX_7JNMw-unsplash',	'',	'inherit',	'open',	'closed',	'',	'jonas-denil-aemxx_7jnmw-unsplash',	'',	'',	'2020-09-29 09:12:17',	'2020-09-29 06:12:17',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/jonas-denil-AEMXX_7JNMw-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(44,	1,	'2020-09-29 09:12:41',	'2020-09-29 06:12:41',	'',	'umut-yilman-1MgWUoN53mM-unsplash',	'',	'inherit',	'open',	'closed',	'',	'umut-yilman-1mgwuon53mm-unsplash',	'',	'',	'2020-09-29 09:12:41',	'2020-09-29 06:12:41',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/umut-yilman-1MgWUoN53mM-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0),
(45,	1,	'2020-09-29 09:12:53',	'2020-09-29 06:12:53',	'',	'michael-heuser-kNv2wy40YSs-unsplash',	'',	'inherit',	'open',	'closed',	'',	'michael-heuser-knv2wy40yss-unsplash',	'',	'',	'2020-09-29 09:12:53',	'2020-09-29 06:12:53',	'',	0,	'http://colmobil-test.local/wp-content/uploads/2020/09/michael-heuser-kNv2wy40YSs-unsplash.jpg',	0,	'attachment',	'image/jpeg',	0);

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1,	1,	0);

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1,	1,	'category',	'',	0,	1);

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1,	'Uncategorized',	'uncategorized',	0);

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1,	1,	'nickname',	'ran'),
(2,	1,	'first_name',	''),
(3,	1,	'last_name',	''),
(4,	1,	'description',	''),
(5,	1,	'rich_editing',	'true'),
(6,	1,	'syntax_highlighting',	'true'),
(7,	1,	'comment_shortcuts',	'false'),
(8,	1,	'admin_color',	'fresh'),
(9,	1,	'use_ssl',	'0'),
(10,	1,	'show_admin_bar_front',	'true'),
(11,	1,	'locale',	''),
(12,	1,	'wp_capabilities',	'a:1:{s:13:\"administrator\";b:1;}'),
(13,	1,	'wp_user_level',	'10'),
(14,	1,	'dismissed_wp_pointers',	''),
(15,	1,	'show_welcome_panel',	'1'),
(16,	1,	'session_tokens',	'a:2:{s:64:\"717011b829b95854ab32f94b172e5f97f7dcaf0ad6d5c3707071f6b6740581a5\";a:4:{s:10:\"expiration\";i:1601546216;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601373416;}s:64:\"e1062030a1b446541874422ca78b5bb0ff8e4a8f253a7770a7d00461f36499b5\";a:4:{s:10:\"expiration\";i:1601556360;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601383560;}}'),
(17,	1,	'wp_dashboard_quick_press_last_post_id',	'17'),
(18,	1,	'meta-box-order_models',	'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:53:\"acf-group_5f7054aceef2d,postexcerpt,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(19,	1,	'screen_layout_models',	'2'),
(20,	1,	'wp_user-settings',	'libraryContent=browse'),
(21,	1,	'wp_user-settings-time',	'1601203703');

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1,	'ran',	'$P$BGm8UJNx0e6fkLObHhVD.8wCNtl1Cs0',	'ran',	'rantalwork@gmail.com',	'http://colmobil-test.local',	'2020-09-18 07:26:34',	'',	0,	'ran');

-- 2020-09-30 09:49:48