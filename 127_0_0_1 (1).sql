-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2022 at 07:14 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mat`
--
CREATE DATABASE IF NOT EXISTS `mat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mat`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=942 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'resto', 'yes'),
(4, 'blogdescription', 'Template for restaurant', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'matt@usource.me', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:\"photoswipe-masonry/photoswipe-masonry.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:57:\"C:\\wamp64\\www\\wordpress/wp-content/themes/resto/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'resto', 'yes'),
(41, 'stylesheet', 'resto', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1673660936', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1661237336;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1661262536;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661262549;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661305736;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661305749;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661305751;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661824136;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(926, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1661492636', 'no'),
(927, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(122, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658277950;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(126, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1661236953;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(934, '_site_transient_timeout_theme_roots', '1661238756', 'no'),
(935, '_site_transient_theme_roots', 'a:4:{s:5:\"resto\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(936, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1661236958;s:7:\"checked\";a:4:{s:5:\"resto\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:5:\"resto\";a:6:{s:5:\"theme\";s:5:\"resto\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:35:\"https://wordpress.org/themes/resto/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/resto.1.0.5.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(937, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1661236958;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"photoswipe-masonry/photoswipe-masonry.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/photoswipe-masonry\";s:4:\"slug\";s:18:\"photoswipe-masonry\";s:6:\"plugin\";s:41:\"photoswipe-masonry/photoswipe-masonry.php\";s:11:\"new_version\";s:6:\"1.2.18\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/photoswipe-masonry/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/photoswipe-masonry.1.2.18.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/photoswipe-masonry/assets/icon-128x128.png?rev=1055282\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/photoswipe-masonry/assets/banner-1544x500.jpg?rev=1055272\";s:2:\"1x\";s:73:\"https://ps.w.org/photoswipe-masonry/assets/banner-772x250.jpg?rev=1055271\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"photoswipe-masonry/photoswipe-masonry.php\";s:6:\"1.2.18\";}}', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(437, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(458, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(576, 'photoswipe_options', 'a:8:{s:13:\"show_controls\";b:0;s:13:\"show_captions\";b:1;s:11:\"use_masonry\";b:0;s:15:\"thumbnail_width\";i:150;s:16:\"thumbnail_height\";i:150;s:16:\"max_image_height\";s:4:\"2400\";s:15:\"max_image_width\";s:4:\"1800\";s:11:\"white_theme\";b:0;}', 'yes'),
(168, 'current_theme', 'resto', 'yes'),
(169, 'theme_mods_resto', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:4;}s:13:\"resto_options\";a:84:{s:16:\"resto-custom-css\";N;s:25:\"resto-site-identity-color\";s:4:\"#fff\";s:23:\"resto-banner-text-color\";s:4:\"#fff\";s:16:\"resto-link-color\";s:7:\"#ffa800\";s:17:\"resto-color-reset\";s:0:\"\";s:31:\"resto-font-family-site-identity\";s:30:\"Lato:400,300,400italic,900,700\";s:25:\"resto-font-family-heading\";s:30:\"Lato:400,300,400italic,900,700\";s:27:\"resto-feature-slider-enable\";i:0;s:27:\"resto-feature-slider-number\";i:3;s:21:\"resto-fs-single-words\";i:30;s:20:\"resto-fs-slider-mode\";s:7:\"fadeout\";s:21:\"resto-fs-enable-arrow\";i:0;s:21:\"resto-fs-enable-pager\";i:1;s:24:\"resto-fs-enable-autoplay\";i:1;s:22:\"resto-fs-enable-button\";i:1;s:18:\"resto-about-enable\";i:0;s:16:\"resto-about-page\";i:0;s:29:\"resto-home-about-single-words\";i:40;s:28:\"resto-home-about-button-link\";s:0:\"\";s:17:\"resto-menu-enable\";i:0;s:16:\"resto-menu-title\";s:18:\"OUR DELICIOUS MENU\";s:19:\"resto-menu-category\";i:1;s:17:\"resto-menu-number\";i:8;s:28:\"resto-home-menu-single-words\";i:40;s:24:\"resto-menu-button-enable\";i:1;s:27:\"resto-home-menu-button-link\";s:0:\"\";s:25:\"resto-home-service-enable\";i:0;s:35:\"resto-home-service-thumbnail-enable\";i:0;s:35:\"resto-home-service-background-image\";s:70:\"http://localhost/wordpress/wp-content/themes/resto/assets/img/food.jpg\";s:24:\"resto-home-service-title\";s:12:\"Our Services\";s:25:\"resto-home-service-number\";i:6;s:31:\"resto-home-service-single-words\";i:30;s:32:\"resto-home-service-button-enable\";i:1;s:30:\"resto-home-service-button-link\";s:35:\"http://localhost/wordpress/services\";s:17:\"resto-blog-enable\";i:0;s:16:\"resto-blog-title\";s:11:\"LATEST NEWS\";s:32:\"resto-blog-sticky-excerpt-number\";i:40;s:17:\"resto-blog-number\";i:4;s:25:\"resto-blog-excerpt-number\";i:10;s:24:\"resto-blog-enable-button\";i:1;s:27:\"resto-home-blog-button-link\";s:1:\"#\";s:19:\"resto-blog-category\";i:1;s:26:\"resto-header-button-enable\";i:0;s:29:\"resto-home-header-button-link\";s:1:\"#\";s:30:\"resto-footer-logo-image-enable\";i:0;s:23:\"resto-footer-logo-image\";s:70:\"http://localhost/wordpress/wp-content/themes/resto/assets/img/logo.png\";s:27:\"resto-footer-sidebar-number\";i:2;s:20:\"resto-copyright-text\";s:30:\"Copyright &copy; eVisionThemes\";s:26:\"resto-default-banner-image\";s:72:\"http://localhost/wordpress/wp-content/themes/resto/assets/img/banner.jpg\";s:20:\"resto-default-layout\";s:13:\"right-sidebar\";s:20:\"resto-excerpt-length\";s:2:\"50\";s:23:\"resto-enable-breadcrumb\";i:1;s:24:\"resto-enable-back-to-top\";i:1;s:31:\"resto-customizer-reset-settings\";s:0:\"\";s:32:\"resto-feature-slider-pages-ids_1\";i:0;s:36:\"resto-feature-slider-pages-divider_1\";s:0:\"\";s:32:\"resto-feature-slider-pages-ids_2\";i:0;s:36:\"resto-feature-slider-pages-divider_2\";s:0:\"\";s:32:\"resto-feature-slider-pages-ids_3\";i:0;s:36:\"resto-feature-slider-pages-divider_3\";s:0:\"\";s:30:\"resto-home-service-page-icon_1\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_1\";s:0:\"\";s:30:\"resto-home-service-page-icon_2\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_2\";s:0:\"\";s:30:\"resto-home-service-page-icon_3\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_3\";s:0:\"\";s:30:\"resto-home-service-page-icon_4\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_4\";s:0:\"\";s:30:\"resto-home-service-page-icon_5\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_5\";s:0:\"\";s:30:\"resto-home-service-page-icon_6\";s:10:\"fa-cutlery\";s:38:\"resto-home-service-font-icon-divider_6\";s:0:\"\";s:30:\"resto-home-service-pages-ids_1\";i:0;s:34:\"resto-home-service-pages-divider_1\";s:0:\"\";s:30:\"resto-home-service-pages-ids_2\";i:0;s:34:\"resto-home-service-pages-divider_2\";s:0:\"\";s:30:\"resto-home-service-pages-ids_3\";i:0;s:34:\"resto-home-service-pages-divider_3\";s:0:\"\";s:30:\"resto-home-service-pages-ids_4\";i:0;s:34:\"resto-home-service-pages-divider_4\";s:0:\"\";s:30:\"resto-home-service-pages-ids_5\";i:0;s:34:\"resto-home-service-pages-divider_5\";s:0:\"\";s:30:\"resto-home-service-pages-ids_6\";i:0;s:34:\"resto-home-service-pages-divider_6\";s:0:\"\";}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658277931;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(175, '_transient_resto_categories', '1', 'yes'),
(176, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(940, '_transient_timeout_global_styles_svg_filters_resto', '1661237101', 'no'),
(941, '_transient_global_styles_svg_filters_resto', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(167, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(938, '_transient_timeout_global_styles_resto', '1661237101', 'no'),
(939, '_transient_global_styles_resto', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(457, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 7, '_edit_lock', '1658384216:1'),
(87, 32, '_edit_lock', '1658450775:1'),
(33, 13, '_edit_lock', '1658377234:1'),
(15, 11, '_menu_item_type', 'post_type'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '7'),
(18, 11, '_menu_item_object', 'page'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', ''),
(23, 11, '_menu_item_orphaned', '1658284794'),
(24, 12, '_menu_item_type', 'post_type'),
(25, 12, '_menu_item_menu_item_parent', '0'),
(26, 12, '_menu_item_object_id', '2'),
(27, 12, '_menu_item_object', 'page'),
(28, 12, '_menu_item_target', ''),
(29, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 12, '_menu_item_xfn', ''),
(31, 12, '_menu_item_url', ''),
(32, 12, '_menu_item_orphaned', '1658284794'),
(34, 15, '_edit_lock', '1658384908:1'),
(35, 17, '_edit_lock', '1658285028:1'),
(36, 19, '_edit_lock', '1658284978:1'),
(37, 21, '_edit_lock', '1658284990:1'),
(38, 26, '_menu_item_type', 'post_type'),
(39, 26, '_menu_item_menu_item_parent', '0'),
(40, 26, '_menu_item_object_id', '21'),
(41, 26, '_menu_item_object', 'page'),
(42, 26, '_menu_item_target', ''),
(43, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 26, '_menu_item_xfn', ''),
(45, 26, '_menu_item_url', ''),
(88, 33, '_wp_attached_file', '2022/07/daute.jpg'),
(47, 27, '_menu_item_type', 'post_type'),
(48, 27, '_menu_item_menu_item_parent', '0'),
(49, 27, '_menu_item_object_id', '19'),
(50, 27, '_menu_item_object', 'page'),
(51, 27, '_menu_item_target', ''),
(52, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 27, '_menu_item_xfn', ''),
(54, 27, '_menu_item_url', ''),
(56, 28, '_menu_item_type', 'post_type'),
(57, 28, '_menu_item_menu_item_parent', '0'),
(58, 28, '_menu_item_object_id', '17'),
(59, 28, '_menu_item_object', 'page'),
(60, 28, '_menu_item_target', ''),
(61, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 28, '_menu_item_xfn', ''),
(63, 28, '_menu_item_url', ''),
(89, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:230;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2022/07/daute.jpg\";s:8:\"filesize\";i:19370;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"daute-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8357;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 29, '_menu_item_type', 'post_type'),
(66, 29, '_menu_item_menu_item_parent', '0'),
(67, 29, '_menu_item_object_id', '15'),
(68, 29, '_menu_item_object', 'page'),
(69, 29, '_menu_item_target', ''),
(70, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 29, '_menu_item_xfn', ''),
(72, 29, '_menu_item_url', ''),
(74, 30, '_menu_item_type', 'post_type'),
(75, 30, '_menu_item_menu_item_parent', '0'),
(76, 30, '_menu_item_object_id', '13'),
(77, 30, '_menu_item_object', 'page'),
(78, 30, '_menu_item_target', ''),
(79, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 30, '_menu_item_xfn', ''),
(81, 30, '_menu_item_url', ''),
(90, 34, '_wp_attached_file', '2022/07/fugiat.jpg'),
(91, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:230;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2022/07/fugiat.jpg\";s:8:\"filesize\";i:21614;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"fugiat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8895;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 35, '_wp_attached_file', '2022/07/officia.jpg'),
(93, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:230;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2022/07/officia.jpg\";s:8:\"filesize\";i:17073;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"officia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7477;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 36, '_wp_attached_file', '2022/07/pim.jpg'),
(95, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:230;s:6:\"height\";i:200;s:4:\"file\";s:15:\"2022/07/pim.jpg\";s:8:\"filesize\";i:15389;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"pim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6803;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 33, '_wp_attachment_image_alt', 'daute italian cousin'),
(97, 34, '_wp_attachment_image_alt', 'fugiat italian cousin'),
(98, 35, '_wp_attachment_image_alt', 'officia italian banana desert'),
(99, 36, '_wp_attachment_image_alt', 'pim italian fried rice'),
(103, 38, '_edit_lock', '1658285626:1'),
(102, 32, '_thumbnail_id', '36'),
(104, 38, 'price', '$30'),
(105, 38, '_edit_last', '1'),
(106, 38, 'price', '$30'),
(107, 38, 'rating', '5'),
(108, 32, 'price', '$30'),
(109, 32, 'rating', '5'),
(124, 43, '_edit_lock', '1658286643:1'),
(112, 32, '_edit_last', '1'),
(133, 46, '_edit_lock', '1658286657:1'),
(115, 40, '_edit_lock', '1658286629:1'),
(116, 40, 'price', '$24'),
(117, 40, '_edit_last', '1'),
(118, 40, 'price', '$24'),
(119, 40, 'rating', '3'),
(125, 43, 'price', '$60'),
(126, 43, '_edit_last', '1'),
(127, 43, 'price', '$60'),
(128, 43, 'rating', '4'),
(156, 40, '_thumbnail_id', '33'),
(134, 46, 'price', '$17'),
(135, 46, '_edit_last', '1'),
(136, 46, 'price', '$17'),
(137, 46, 'rating', '4'),
(176, 32, '_encloseme', '1'),
(161, 43, '_thumbnail_id', '35'),
(166, 46, '_thumbnail_id', '36'),
(177, 2, '_edit_lock', '1658384211:1'),
(175, 32, '_pingme', '1'),
(178, 15, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-07-18 01:48:56', '2022-07-18 01:48:56', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-07-18 01:48:56', '2022-07-18 01:48:56', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-07-18 01:48:56', '2022-07-18 01:48:56', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-07-18 01:48:56', '2022-07-18 01:48:56', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2022-07-18 01:49:29', '2022-07-18 01:49:29', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-07-18 01:49:29', '2022-07-18 01:49:29', '', 0, 'http://localhost/wordpress/2022/07/18/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-07-20 00:46:31', '2022-07-20 00:46:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-07-20 00:46:31', '2022-07-20 00:46:31', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-07-20 00:46:22', '2022-07-20 00:46:22', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-resto', '', '', '2022-07-20 00:46:22', '2022-07-20 00:46:22', '', 0, 'http://localhost/wordpress/2022/07/20/wp-global-styles-resto/', 0, 'wp_global_styles', '', 0),
(9, 1, '2022-07-20 00:46:31', '2022-07-20 00:46:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-07-20 00:46:31', '2022-07-20 00:46:31', '', 7, 'http://localhost/wordpress/?p=9', 0, 'revision', '', 0),
(11, 1, '2022-07-20 02:39:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-20 02:39:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2022-07-20 02:39:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-20 02:39:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2022-07-20 02:43:30', '2022-07-20 02:43:30', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium aenean pharetra magna ac placerat. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare. Maecenas accumsan lacus vel facilisis. Scelerisque in dictum non consectetur a erat. Scelerisque fermentum dui faucibus in. Purus faucibus ornare suspendisse sed nisi. Feugiat nibh sed pulvinar proin gravida. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Cursus vitae congue mauris rhoncus aenean. Pretium fusce id velit ut tortor. Scelerisque fermentum dui faucibus in ornare quam. Venenatis tellus in metus vulputate. Quam pellentesque nec nam aliquam sem et tortor consequat. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit.</p>\n<!-- /wp:paragraph -->', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2022-07-20 02:45:58', '2022-07-20 02:45:58', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-07-20 02:43:30', '2022-07-20 02:43:30', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium aenean pharetra magna ac placerat. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare. Maecenas accumsan lacus vel facilisis. Scelerisque in dictum non consectetur a erat. Scelerisque fermentum dui faucibus in. Purus faucibus ornare suspendisse sed nisi. Feugiat nibh sed pulvinar proin gravida. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Cursus vitae congue mauris rhoncus aenean. Pretium fusce id velit ut tortor. Scelerisque fermentum dui faucibus in ornare quam. Venenatis tellus in metus vulputate. Quam pellentesque nec nam aliquam sem et tortor consequat. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit.</p>\n<!-- /wp:paragraph -->', 'OUR STORY', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-20 02:43:30', '2022-07-20 02:43:30', '', 13, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-07-20 02:44:27', '2022-07-20 02:44:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Dui nunc mattis enim ut tellus. Adipiscing vitae proin sagittis nisl rhoncus. Eget duis at tellus at urna condimentum mattis pellentesque id. Tortor vitae purus faucibus ornare suspendisse. In dictum non consectetur a erat nam at. Accumsan tortor posuere ac ut consequat semper viverra nam. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Mi tempus imperdiet nulla malesuada. Massa massa ultricies mi quis hendrerit dolor. Nunc scelerisque viverra mauris in aliquam sem fringilla. Vel risus commodo viverra maecenas accumsan lacus. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Viverra aliquet eget sit amet tellus cras adipiscing enim. Tempus egestas sed sed risus. Donec adipiscing tristique risus nec. Egestas egestas fringilla phasellus faucibus. Pellentesque nec nam aliquam sem et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque ornare aenean euismod elementum nisi quis eleifend. Auctor urna nunc id cursus. Viverra maecenas accumsan lacus vel facilisis. Lobortis scelerisque fermentum dui faucibus in ornare. Sapien et ligula ullamcorper malesuada proin libero. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Netus et malesuada fames ac turpis egestas maecenas. Sit amet nulla facilisi morbi tempus iaculis urna. Ut tristique et egestas quis ipsum suspendisse.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2022-07-21 06:20:36', '2022-07-21 06:20:36', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-07-20 02:44:27', '2022-07-20 02:44:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Dui nunc mattis enim ut tellus. Adipiscing vitae proin sagittis nisl rhoncus. Eget duis at tellus at urna condimentum mattis pellentesque id. Tortor vitae purus faucibus ornare suspendisse. In dictum non consectetur a erat nam at. Accumsan tortor posuere ac ut consequat semper viverra nam. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Mi tempus imperdiet nulla malesuada. Massa massa ultricies mi quis hendrerit dolor. Nunc scelerisque viverra mauris in aliquam sem fringilla. Vel risus commodo viverra maecenas accumsan lacus. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Viverra aliquet eget sit amet tellus cras adipiscing enim. Tempus egestas sed sed risus. Donec adipiscing tristique risus nec. Egestas egestas fringilla phasellus faucibus. Pellentesque nec nam aliquam sem et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque ornare aenean euismod elementum nisi quis eleifend. Auctor urna nunc id cursus. Viverra maecenas accumsan lacus vel facilisis. Lobortis scelerisque fermentum dui faucibus in ornare. Sapien et ligula ullamcorper malesuada proin libero. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Netus et malesuada fames ac turpis egestas maecenas. Sit amet nulla facilisi morbi tempus iaculis urna. Ut tristique et egestas quis ipsum suspendisse.</p>\n<!-- /wp:paragraph -->', 'MENU', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-07-20 02:44:27', '2022-07-20 02:44:27', '', 15, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-07-20 02:44:51', '2022-07-20 02:44:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'Reservation', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2022-07-20 02:46:11', '2022-07-20 02:46:11', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-07-20 02:44:51', '2022-07-20 02:44:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'RESERVATION', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-07-20 02:44:51', '2022-07-20 02:44:51', '', 17, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-07-20 02:45:19', '2022-07-20 02:45:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2022-07-20 02:45:19', '2022-07-20 02:45:19', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2022-07-20 02:45:19', '2022-07-20 02:45:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'News', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2022-07-20 02:45:19', '2022-07-20 02:45:19', '', 19, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-07-20 02:45:32', '2022-07-20 02:45:32', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2022-07-20 02:45:32', '2022-07-20 02:45:32', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2022-07-20 02:45:32', '2022-07-20 02:45:32', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'Reviews', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-07-20 02:45:32', '2022-07-20 02:45:32', '', 21, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-07-20 02:45:44', '2022-07-20 02:45:44', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Dui nunc mattis enim ut tellus. Adipiscing vitae proin sagittis nisl rhoncus. Eget duis at tellus at urna condimentum mattis pellentesque id. Tortor vitae purus faucibus ornare suspendisse. In dictum non consectetur a erat nam at. Accumsan tortor posuere ac ut consequat semper viverra nam. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Mi tempus imperdiet nulla malesuada. Massa massa ultricies mi quis hendrerit dolor. Nunc scelerisque viverra mauris in aliquam sem fringilla. Vel risus commodo viverra maecenas accumsan lacus. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Viverra aliquet eget sit amet tellus cras adipiscing enim. Tempus egestas sed sed risus. Donec adipiscing tristique risus nec. Egestas egestas fringilla phasellus faucibus. Pellentesque nec nam aliquam sem et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque ornare aenean euismod elementum nisi quis eleifend. Auctor urna nunc id cursus. Viverra maecenas accumsan lacus vel facilisis. Lobortis scelerisque fermentum dui faucibus in ornare. Sapien et ligula ullamcorper malesuada proin libero. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Netus et malesuada fames ac turpis egestas maecenas. Sit amet nulla facilisi morbi tempus iaculis urna. Ut tristique et egestas quis ipsum suspendisse.</p>\n<!-- /wp:paragraph -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-07-20 02:45:44', '2022-07-20 02:45:44', '', 15, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-07-20 02:45:58', '2022-07-20 02:45:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium aenean pharetra magna ac placerat. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare. Maecenas accumsan lacus vel facilisis. Scelerisque in dictum non consectetur a erat. Scelerisque fermentum dui faucibus in. Purus faucibus ornare suspendisse sed nisi. Feugiat nibh sed pulvinar proin gravida. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Cursus vitae congue mauris rhoncus aenean. Pretium fusce id velit ut tortor. Scelerisque fermentum dui faucibus in ornare quam. Venenatis tellus in metus vulputate. Quam pellentesque nec nam aliquam sem et tortor consequat. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit.</p>\n<!-- /wp:paragraph -->', 'Our Story', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-20 02:45:58', '2022-07-20 02:45:58', '', 13, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-07-20 02:46:11', '2022-07-20 02:46:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris vitae ultricies leo integer malesuada nunc vel risus. Sed arcu non odio euismod lacinia at quis risus sed. Arcu cursus euismod quis viverra. In nulla posuere sollicitudin aliquam. Dignissim suspendisse in est ante. At ultrices mi tempus imperdiet nulla malesuada. Nisl suscipit adipiscing bibendum est ultricies integer. Nec feugiat nisl pretium fusce id. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Non sodales neque sodales ut etiam sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Euismod nisi porta lorem mollis aliquam ut. Sed sed risus pretium quam. Facilisis volutpat est velit egestas. Consequat nisl vel pretium lectus quam id leo in vitae. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget dolor morbi non arcu risus quis varius quam. Tempor commodo ullamcorper a lacus vestibulum. Eget aliquet nibh praesent tristique magna sit amet purus. Vel pharetra vel turpis nunc. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Senectus et netus et malesuada. Pretium aenean pharetra magna ac placerat. Eget velit aliquet sagittis id consectetur purus ut. Id aliquet lectus proin nibh nisl. Sed risus ultricies tristique nulla.</p>\n<!-- /wp:paragraph -->', 'Reservation', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-07-20 02:46:11', '2022-07-20 02:46:11', '', 17, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2022-07-20 02:47:47', '2022-07-20 02:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-07-20 02:47:47', '2022-07-20 02:47:47', '', 0, 'http://localhost/wordpress/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2022-07-20 02:47:47', '2022-07-20 02:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2022-07-20 02:47:47', '2022-07-20 02:47:47', '', 0, 'http://localhost/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2022-07-20 02:47:47', '2022-07-20 02:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2022-07-20 02:47:47', '2022-07-20 02:47:47', '', 0, 'http://localhost/wordpress/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2022-07-20 02:47:47', '2022-07-20 02:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2022-07-20 02:47:47', '2022-07-20 02:47:47', '', 0, 'http://localhost/wordpress/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2022-07-20 02:47:47', '2022-07-20 02:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2022-07-20 02:47:47', '2022-07-20 02:47:47', '', 0, 'http://localhost/wordpress/?p=30', 1, 'nav_menu_item', '', 0),
(32, 1, '2022-07-20 02:52:22', '2022-07-20 02:52:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Interdum velit laoreet id donec ultrices tincidunt arcu non sodales. Justo nec ultrices dui sapien eget mi proin sed libero. Aenean euismod elementum nisi quis eleifend. Sit amet justo donec enim diam. Nisl suscipit adipiscing bibendum est. Nulla malesuada pellentesque elit eget gravida. Aliquet nibh praesent tristique magna sit. Ullamcorper malesuada proin libero nunc consequat. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis.</p>\n<!-- /wp:paragraph -->', 'Fugiat nulla sint', '', 'publish', 'open', 'open', '', 'fugiat-nulla-sint', '', '', '2022-07-21 06:19:02', '2022-07-21 06:19:02', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2022-07-20 02:50:24', '2022-07-20 02:50:24', '', 'daute- italian cousin', '', 'inherit', 'open', 'closed', '', 'daute', '', '', '2022-07-22 00:46:12', '2022-07-22 00:46:12', '', 32, 'http://localhost/wordpress/wp-content/uploads/2022/07/daute.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2022-07-20 02:50:24', '2022-07-20 02:50:24', '', 'fugiat - italian cousin', '', 'inherit', 'open', 'closed', '', 'fugiat', '', '', '2022-07-22 00:46:07', '2022-07-22 00:46:07', '', 32, 'http://localhost/wordpress/wp-content/uploads/2022/07/fugiat.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2022-07-20 02:50:24', '2022-07-20 02:50:24', '', 'officia- italian cousin', '', 'inherit', 'open', 'closed', '', 'officia', '', '', '2022-07-22 00:45:59', '2022-07-22 00:45:59', '', 32, 'http://localhost/wordpress/wp-content/uploads/2022/07/officia.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2022-07-20 02:50:25', '2022-07-20 02:50:25', '', 'pim- italian cousin', '', 'inherit', 'open', 'closed', '', 'pim', '', '', '2022-07-22 00:46:03', '2022-07-22 00:46:03', '', 32, 'http://localhost/wordpress/wp-content/uploads/2022/07/pim.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2022-07-20 02:52:22', '2022-07-20 02:52:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Interdum velit laoreet id donec ultrices tincidunt arcu non sodales. Justo nec ultrices dui sapien eget mi proin sed libero. Aenean euismod elementum nisi quis eleifend. Sit amet justo donec enim diam. Nisl suscipit adipiscing bibendum est. Nulla malesuada pellentesque elit eget gravida. Aliquet nibh praesent tristique magna sit. Ullamcorper malesuada proin libero nunc consequat. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis.</p>\n<!-- /wp:paragraph -->', 'Fugiat nulla sint', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-07-20 02:52:22', '2022-07-20 02:52:22', '', 32, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-07-20 02:53:46', '0000-00-00 00:00:00', '', 'Draft created on July 20, 2022 at 2:53 am', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-20 02:53:46', '2022-07-20 02:53:46', '', 0, 'http://localhost/wordpress/?p=38', 0, 'post', '', 0),
(39, 1, '2022-07-20 02:53:46', '2022-07-20 02:53:46', '', 'Draft created on July 20, 2022 at 2:53 am', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2022-07-20 02:53:46', '2022-07-20 02:53:46', '', 38, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-07-20 02:58:15', '2022-07-20 02:58:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Daute irure dolor', '', 'publish', 'closed', 'closed', '', 'daute-irure-dolor', '', '', '2022-07-20 03:10:28', '2022-07-20 03:10:28', '', 0, 'http://localhost/wordpress/?p=40', 0, 'post', '', 0),
(41, 1, '2022-07-20 02:57:53', '2022-07-20 02:57:53', '', 'Draft created on July 20, 2022 at 2:57 am', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-07-20 02:57:53', '2022-07-20 02:57:53', '', 40, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-07-20 02:58:15', '2022-07-20 02:58:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Daute irure dolor', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-07-20 02:58:15', '2022-07-20 02:58:15', '', 40, 'http://localhost/wordpress/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-07-20 02:59:02', '2022-07-20 02:59:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Officia deserunt mollit', '', 'publish', 'closed', 'closed', '', 'officia-deserunt-mollit', '', '', '2022-07-20 03:10:43', '2022-07-20 03:10:43', '', 0, 'http://localhost/wordpress/?p=43', 0, 'post', '', 0),
(44, 1, '2022-07-20 02:58:47', '2022-07-20 02:58:47', '', 'Draft created on July 20, 2022 at 2:58 am', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-07-20 02:58:47', '2022-07-20 02:58:47', '', 43, 'http://localhost/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-07-20 02:59:02', '2022-07-20 02:59:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Officia deserunt mollit', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-07-20 02:59:02', '2022-07-20 02:59:02', '', 43, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-07-20 02:59:37', '2022-07-20 02:59:37', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Pim minim veniam', '', 'publish', 'closed', 'closed', '', 'pim-minim-veniam', '', '', '2022-07-20 03:10:56', '2022-07-20 03:10:56', '', 0, 'http://localhost/wordpress/?p=46', 0, 'post', '', 0),
(47, 1, '2022-07-20 02:59:29', '2022-07-20 02:59:29', '', 'Draft created on July 20, 2022 at 2:59 am', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-07-20 02:59:29', '2022-07-20 02:59:29', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-07-20 02:59:37', '2022-07-20 02:59:37', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Pim minim veniam', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-07-20 02:59:37', '2022-07-20 02:59:37', '', 46, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(53, 1, '2022-07-21 06:21:18', '2022-07-21 06:21:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Dui nunc mattis enim ut tellus. Adipiscing vitae proin sagittis nisl rhoncus. Eget duis at tellus at urna condimentum mattis pellentesque id. Tortor vitae purus faucibus ornare suspendisse. In dictum non consectetur a erat nam at. Accumsan tortor posuere ac ut consequat semper viverra nam. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Mi tempus imperdiet nulla malesuada. Massa massa ultricies mi quis hendrerit dolor. Nunc scelerisque viverra mauris in aliquam sem fringilla. Vel risus commodo viverra maecenas accumsan lacus. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Viverra aliquet eget sit amet tellus cras adipiscing enim. Tempus egestas sed sed risus. Donec adipiscing tristique risus nec. Egestas egestas fringilla phasellus faucibus. Pellentesque nec nam aliquam sem et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque ornare aenean euismod elementum nisi quis eleifend. Auctor urna nunc id cursus. Viverra maecenas accumsan lacus vel facilisis. Lobortis scelerisque fermentum dui faucibus in ornare. Sapien et ligula ullamcorper malesuada proin libero. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Netus et malesuada fames ac turpis egestas maecenas. Sit amet nulla facilisi morbi tempus iaculis urna. Ut tristique et egestas quis ipsum suspendisse.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2022-07-21 06:21:18', '2022-07-21 06:21:18', '', 15, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0),
(52, 1, '2022-07-21 06:20:36', '2022-07-21 06:20:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Dui nunc mattis enim ut tellus. Adipiscing vitae proin sagittis nisl rhoncus. Eget duis at tellus at urna condimentum mattis pellentesque id. Tortor vitae purus faucibus ornare suspendisse. In dictum non consectetur a erat nam at. Accumsan tortor posuere ac ut consequat semper viverra nam. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Mi tempus imperdiet nulla malesuada. Massa massa ultricies mi quis hendrerit dolor. Nunc scelerisque viverra mauris in aliquam sem fringilla. Vel risus commodo viverra maecenas accumsan lacus. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Viverra aliquet eget sit amet tellus cras adipiscing enim. Tempus egestas sed sed risus. Donec adipiscing tristique risus nec. Egestas egestas fringilla phasellus faucibus. Pellentesque nec nam aliquam sem et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque ornare aenean euismod elementum nisi quis eleifend. Auctor urna nunc id cursus. Viverra maecenas accumsan lacus vel facilisis. Lobortis scelerisque fermentum dui faucibus in ornare. Sapien et ligula ullamcorper malesuada proin libero. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Netus et malesuada fames ac turpis egestas maecenas. Sit amet nulla facilisi morbi tempus iaculis urna. Ut tristique et egestas quis ipsum suspendisse.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-07-21 06:20:36', '2022-07-21 06:20:36', '', 15, 'http://localhost/wordpress/?p=52', 0, 'revision', '', 0),
(54, 1, '2022-07-22 00:46:15', '2022-07-22 00:46:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Interdum velit laoreet id donec ultrices tincidunt arcu non sodales. Justo nec ultrices dui sapien eget mi proin sed libero. Aenean euismod elementum nisi quis eleifend. Sit amet justo donec enim diam. Nisl suscipit adipiscing bibendum est. Nulla malesuada pellentesque elit eget gravida. Aliquet nibh praesent tristique magna sit. Ullamcorper malesuada proin libero nunc consequat. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis.</p>\n<!-- /wp:paragraph -->', 'Fugiat nulla sint', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2022-07-22 00:46:15', '2022-07-22 00:46:15', '', 32, 'http://localhost/wordpress/?p=54', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'resto', 'resto', 0),
(4, 'Resto', 'resto', 0),
(5, 'Menu items', 'menu-items', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(8, 3, 0),
(38, 1, 0),
(30, 4, 0),
(29, 4, 0),
(28, 4, 0),
(27, 4, 0),
(26, 4, 0),
(32, 5, 0),
(43, 5, 0),
(46, 5, 0),
(40, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mat1017'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"1cb436ea88d5260f728cd33e1ee119860710d9fae848172379d88523f9e57415\";a:4:{s:10:\"expiration\";i:1659318549;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658108949;}s:64:\"969135e33871c0f4929bb98bbe0dfc9155a2cec1ff8913e662ef00b04e02def0\";a:4:{s:10:\"expiration\";i:1658455441;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658282641;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1658285595'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mat1017', '$P$BonXSNEoPmQXgBbMfoc.z3goArRzuY.', 'mat1017', 'matt@usource.me', 'http://localhost/wordpress', '2022-07-18 01:48:56', '', 0, 'mat1017');
--
-- Database: `pizza`
--
CREATE DATABASE IF NOT EXISTS `pizza` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pizza`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2022_08_25_035330_create_pizzas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pizzas`
--

DROP TABLE IF EXISTS `pizzas`;
CREATE TABLE IF NOT EXISTS `pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `created_at`, `updated_at`, `type`, `base`, `name`) VALUES
(1, NULL, NULL, 'hawaian', 'cheesy crust', 'shaun'),
(2, NULL, NULL, 'hawaian', 'garlic crust', 'mario'),
(3, NULL, NULL, 'volcano', 'thin & crispy', 'yoshi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
