-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 08, 2021 at 08:04 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wlc`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-07 10:47:06', '2021-04-07 08:47:06', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wlc', 'yes'),
(2, 'home', 'http://localhost:8888/wlc', 'yes'),
(3, 'blogname', 'UK Association of letting agents', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'milena135@yahoo.co.uk', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:\"member-widget/member-widget.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:55:\"/Users/milena/Sites/wlc/wp-content/themes/wlc/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'wlc', 'yes'),
(41, 'stylesheet', 'wlc', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:80:\"<p> Additional Tax investigation insurance documents and useful information </p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:48:\"<h3> UKALA Tax Protection Summary of Cover </h3>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:48:\"<h3> UKALA Tax protection Insurance Policy </h3>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Warsaw', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '16', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1633337225', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pl_PL', 'yes'),
(102, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-4\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:13:\"media_image-3\";i:5;s:6:\"text-4\";i:6;s:13:\"custom_html-3\";}s:14:\"member-section\";a:1:{i:0;s:15:\"member_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:6:{i:1617914826;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1617958026;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617958042;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617958043;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618476426;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:3:{i:2;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:57;s:6:\"height\";i:84;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:18;s:3:\"url\";s:71:\"http://localhost:8888/wlc/wp-content/uploads/2021/04/Clipboard-icon.png\";s:5:\"title\";s:0:\"\";}i:3;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:42;s:6:\"height\";i:44;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:1:\"#\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:49;s:3:\"url\";s:72:\"http://localhost:8888/wlc/wp-content/uploads/2021/04/Download-button.png\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', 's,~9=H#<`f<eKoyV[9[m5k%MmPQ@x8PjJ1ksVc4*I3B5IwDG{zD1BO6vYaJ[)8mW', 'no'),
(116, 'nonce_salt', '%5m y`s5`9+t+t&YYv54FV^$pshmQPsWzHDZ.,$*EAou .?k?SBLEwlc<YY^jSUK', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:3:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:4:\"<hr>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:4:\"<hr>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:35:\"Zapytanie HTTPS nie powiodło się.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1617871940;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617785816;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617872438;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"member-widget/member-widget.php\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617871942;s:7:\"checked\";a:2:{s:15:\"twentytwentyone\";s:3:\"1.2\";s:3:\"wlc\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'auth_key', '8hN9i?~U[,?putK4[}%u3|.C`yAs#AYwD1Y7$:P^-`M}pBy^WRWZ5IH^otfhK(M{', 'no'),
(131, 'auth_salt', '9xiuol-Fp?m0Z#OX@N7cepurxF%I+bv9pg(+(Hs}p!CO$Xx+xNW%F.Sk>hq{^yOJ', 'no'),
(132, 'logged_in_key', ']AMFwn<4-Y)V>t Yqg0:~Wr-4Hx4:U9ryOV;WL<ECV_^1EA%o4tvYzM+w!9(7x.4', 'no'),
(133, 'logged_in_salt', 'QkV$I2Xj2ZPU@xC;]!C}fp*|(LiE=dIz`?-7|Z~!q./u1~s 7@3!-U^y&$9,w^K.', 'no'),
(134, '_site_transient_timeout_browser_1b435a2b21bebab8cc66096ea7e7f8ff', '1618390043', 'no'),
(135, '_site_transient_browser_1b435a2b21bebab8cc66096ea7e7f8ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1618390043', 'no'),
(137, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(145, 'can_compress_scripts', '1', 'no'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(155, 'current_theme', '', 'yes'),
(156, 'theme_mods_wlc', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:8:\"wlc-menu\";i:2;s:11:\"legacy-menu\";i:5;s:9:\"main-menu\";i:2;s:12:\"primary-menu\";i:2;s:6:\"menu-1\";i:5;s:11:\"footer-menu\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:21;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(162, 'new_admin_email', 'milena135@yahoo.co.uk', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(179, 'category_children', 'a:0:{}', 'yes'),
(196, '_site_transient_timeout_theme_roots', '1617873736', 'no'),
(197, '_site_transient_theme_roots', 'a:2:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:3:\"wlc\";s:7:\"/themes\";}', 'no'),
(198, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":1}', 'yes'),
(200, 'recently_activated', 'a:0:{}', 'yes'),
(201, 'widget_member_widget', 'a:2:{i:2;a:14:{s:5:\"title\";s:16:\"Members Section \";s:4:\"text\";s:8:\"Join now\";s:4:\"link\";s:1:\"#\";s:12:\"articleTitle\";s:36:\"Members tax investigation insurance \";s:15:\"articleEmphasis\";s:301:\"  Free tax investigation cover, should you need it HM Revenue & Customs (HMRC) routinely check a proportion of tax returns to make sure they are correct. They may also decide to conduct an extensive examination of all areas of your tax affairs including an in depth review of your tax return records  \";s:14:\"articleContent\";s:269:\"  These enquiries take time and money to resolve. Tax Investigation Insurance is designed to remove the burden should you be subject to an investigation. The policy indemnifies you for professional costs whilst you are being represented. Terms and conditions apply.\r\n  \";s:8:\"linktext\";s:4:\"Join\";s:10:\"buttontext\";s:8:\"Join now\";s:10:\"buttonlink\";s:1:\"#\";s:10:\"ctaHeading\";s:37:\"Become a UKALA member for full access\";s:13:\"ctaSubHeading\";s:96:\"Join UKALA today and gain full access to all our membership benefits, support and accreditations\";s:9:\"paragraph\";s:17:\"Already a member?\";s:13:\"loginLinkText\";s:6:\"Log in\";s:9:\"loginLink\";s:1:\"#\";}s:12:\"_multiwidget\";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1617834177:1'),
(4, 7, '_wp_attached_file', '2021/04/Clip.png'),
(5, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:376;s:4:\"file\";s:16:\"2021/04/Clip.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"Clip-300x59.png\";s:5:\"width\";i:300;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"Clip-1024x201.png\";s:5:\"width\";i:1024;s:6:\"height\";i:201;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Clip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Clip-768x150.png\";s:5:\"width\";i:768;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"Clip-1536x301.png\";s:5:\"width\";i:1536;s:6:\"height\";i:301;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 5, '_thumbnail_id', '19'),
(7, 8, '_menu_item_type', 'custom'),
(8, 8, '_menu_item_menu_item_parent', '0'),
(9, 8, '_menu_item_object_id', '8'),
(10, 8, '_menu_item_object', 'custom'),
(11, 8, '_menu_item_target', ''),
(12, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 8, '_menu_item_xfn', ''),
(14, 8, '_menu_item_url', '#'),
(16, 9, '_menu_item_type', 'custom'),
(17, 9, '_menu_item_menu_item_parent', '0'),
(18, 9, '_menu_item_object_id', '9'),
(19, 9, '_menu_item_object', 'custom'),
(20, 9, '_menu_item_target', ''),
(21, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 9, '_menu_item_xfn', ''),
(23, 9, '_menu_item_url', '#'),
(25, 10, '_menu_item_type', 'custom'),
(26, 10, '_menu_item_menu_item_parent', '0'),
(27, 10, '_menu_item_object_id', '10'),
(28, 10, '_menu_item_object', 'custom'),
(29, 10, '_menu_item_target', ''),
(30, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 10, '_menu_item_xfn', ''),
(32, 10, '_menu_item_url', '#'),
(34, 11, '_menu_item_type', 'custom'),
(35, 11, '_menu_item_menu_item_parent', '0'),
(36, 11, '_menu_item_object_id', '11'),
(37, 11, '_menu_item_object', 'custom'),
(38, 11, '_menu_item_target', ''),
(39, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 11, '_menu_item_xfn', ''),
(41, 11, '_menu_item_url', '#'),
(43, 12, '_menu_item_type', 'custom'),
(44, 12, '_menu_item_menu_item_parent', '0'),
(45, 12, '_menu_item_object_id', '12'),
(46, 12, '_menu_item_object', 'custom'),
(47, 12, '_menu_item_target', ''),
(48, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 12, '_menu_item_xfn', ''),
(50, 12, '_menu_item_url', '#'),
(52, 13, '_menu_item_type', 'custom'),
(53, 13, '_menu_item_menu_item_parent', '0'),
(54, 13, '_menu_item_object_id', '13'),
(55, 13, '_menu_item_object', 'custom'),
(56, 13, '_menu_item_target', ''),
(57, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 13, '_menu_item_xfn', ''),
(59, 13, '_menu_item_url', '#'),
(60, 13, '_menu_item_orphaned', '1617787279'),
(61, 14, '_menu_item_type', 'custom'),
(62, 14, '_menu_item_menu_item_parent', '0'),
(63, 14, '_menu_item_object_id', '14'),
(64, 14, '_menu_item_object', 'custom'),
(65, 14, '_menu_item_target', ''),
(66, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 14, '_menu_item_xfn', ''),
(68, 14, '_menu_item_url', '#'),
(70, 15, '_wp_attached_file', '2021/04/UKALA-logo.png'),
(71, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:90;s:4:\"file\";s:22:\"2021/04/UKALA-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 16, '_wp_attached_file', '2021/04/cropped-UKALA-logo.png'),
(73, 16, '_wp_attachment_context', 'site-icon'),
(74, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2021/04/cropped-UKALA-logo.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-UKALA-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-UKALA-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-UKALA-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-UKALA-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-UKALA-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-UKALA-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 17, '_edit_lock', '1617788746:1'),
(76, 17, '_wp_trash_meta_status', 'publish'),
(77, 17, '_wp_trash_meta_time', '1617788751'),
(78, 18, '_wp_attached_file', '2021/04/Clipboard-icon.png'),
(79, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:84;s:4:\"file\";s:26:\"2021/04/Clipboard-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 19, '_wp_attached_file', '2021/04/istockphoto-949114642-2048x2048-1.png'),
(81, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1270;s:4:\"file\";s:45:\"2021/04/istockphoto-949114642-2048x2048-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"istockphoto-949114642-2048x2048-1-300x186.png\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"istockphoto-949114642-2048x2048-1-1024x635.png\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"istockphoto-949114642-2048x2048-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"istockphoto-949114642-2048x2048-1-768x476.png\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"istockphoto-949114642-2048x2048-1-1536x953.png\";s:5:\"width\";i:1536;s:6:\"height\";i:953;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 20, '_wp_trash_meta_status', 'publish'),
(83, 20, '_wp_trash_meta_time', '1617794510'),
(84, 21, '_wp_attached_file', '2021/04/LOGO.png'),
(85, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:91;s:4:\"file\";s:16:\"2021/04/LOGO.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"LOGO-150x91.png\";s:5:\"width\";i:150;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1617796004'),
(88, 23, '_edit_lock', '1617805068:1'),
(197, 37, '_menu_item_type', 'custom'),
(198, 37, '_menu_item_menu_item_parent', '0'),
(199, 37, '_menu_item_object_id', '37'),
(200, 37, '_menu_item_object', 'custom'),
(201, 37, '_menu_item_target', ''),
(202, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 37, '_menu_item_xfn', ''),
(204, 37, '_menu_item_url', '#'),
(206, 38, '_menu_item_type', 'custom'),
(207, 38, '_menu_item_menu_item_parent', '0'),
(208, 38, '_menu_item_object_id', '38'),
(209, 38, '_menu_item_object', 'custom'),
(210, 38, '_menu_item_target', ''),
(211, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 38, '_menu_item_xfn', ''),
(213, 38, '_menu_item_url', '#'),
(215, 39, '_menu_item_type', 'custom'),
(216, 39, '_menu_item_menu_item_parent', '0'),
(217, 39, '_menu_item_object_id', '39'),
(218, 39, '_menu_item_object', 'custom'),
(219, 39, '_menu_item_target', ''),
(220, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(221, 39, '_menu_item_xfn', ''),
(222, 39, '_menu_item_url', '#'),
(224, 40, '_menu_item_type', 'custom'),
(225, 40, '_menu_item_menu_item_parent', '0'),
(226, 40, '_menu_item_object_id', '40'),
(227, 40, '_menu_item_object', 'custom'),
(228, 40, '_menu_item_target', ''),
(229, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(230, 40, '_menu_item_xfn', ''),
(231, 40, '_menu_item_url', '#'),
(233, 41, '_menu_item_type', 'custom'),
(234, 41, '_menu_item_menu_item_parent', '0'),
(235, 41, '_menu_item_object_id', '41'),
(236, 41, '_menu_item_object', 'custom'),
(237, 41, '_menu_item_target', ''),
(238, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(239, 41, '_menu_item_xfn', ''),
(240, 41, '_menu_item_url', '#'),
(242, 42, '_menu_item_type', 'custom'),
(243, 42, '_menu_item_menu_item_parent', '0'),
(244, 42, '_menu_item_object_id', '42'),
(245, 42, '_menu_item_object', 'custom'),
(246, 42, '_menu_item_target', ''),
(247, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 42, '_menu_item_xfn', ''),
(249, 42, '_menu_item_url', '#'),
(251, 43, '_menu_item_type', 'custom'),
(252, 43, '_menu_item_menu_item_parent', '0'),
(253, 43, '_menu_item_object_id', '43'),
(254, 43, '_menu_item_object', 'custom'),
(255, 43, '_menu_item_target', ''),
(256, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(257, 43, '_menu_item_xfn', ''),
(258, 43, '_menu_item_url', '#'),
(260, 44, '_menu_item_type', 'custom'),
(261, 44, '_menu_item_menu_item_parent', '0'),
(262, 44, '_menu_item_object_id', '44'),
(263, 44, '_menu_item_object', 'custom'),
(264, 44, '_menu_item_target', ''),
(265, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(266, 44, '_menu_item_xfn', ''),
(267, 44, '_menu_item_url', '#'),
(269, 45, '_menu_item_type', 'custom'),
(270, 45, '_menu_item_menu_item_parent', '0'),
(271, 45, '_menu_item_object_id', '45'),
(272, 45, '_menu_item_object', 'custom'),
(273, 45, '_menu_item_target', ''),
(274, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 45, '_menu_item_xfn', ''),
(276, 45, '_menu_item_url', '#'),
(278, 46, '_menu_item_type', 'custom'),
(279, 46, '_menu_item_menu_item_parent', '0'),
(280, 46, '_menu_item_object_id', '46'),
(281, 46, '_menu_item_object', 'custom'),
(282, 46, '_menu_item_target', ''),
(283, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 46, '_menu_item_xfn', ''),
(285, 46, '_menu_item_url', '#'),
(287, 47, '_menu_item_type', 'custom'),
(288, 47, '_menu_item_menu_item_parent', '0'),
(289, 47, '_menu_item_object_id', '47'),
(290, 47, '_menu_item_object', 'custom'),
(291, 47, '_menu_item_target', ''),
(292, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 47, '_menu_item_xfn', ''),
(294, 47, '_menu_item_url', '#'),
(296, 48, '_menu_item_type', 'custom'),
(297, 48, '_menu_item_menu_item_parent', '0'),
(298, 48, '_menu_item_object_id', '48'),
(299, 48, '_menu_item_object', 'custom'),
(300, 48, '_menu_item_target', ''),
(301, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(302, 48, '_menu_item_xfn', ''),
(303, 48, '_menu_item_url', '#'),
(305, 49, '_wp_attached_file', '2021/04/Download-button.png'),
(306, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:42;s:6:\"height\";i:44;s:4:\"file\";s:27:\"2021/04/Download-button.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-07 10:47:06', '2021-04-07 08:47:06', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2021-04-07 10:47:06', '2021-04-07 08:47:06', '', 0, 'http://localhost:8888/wlc/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-07 10:47:06', '2021-04-07 08:47:06', '<!-- wp:paragraph -->\n<p>To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taki tekst:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost:8888/wlc/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2021-04-07 10:47:06', '2021-04-07 08:47:06', '', 0, 'http://localhost:8888/wlc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-07 10:47:06', '2021-04-07 08:47:06', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost:8888/wlc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentarze</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu e-mail (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ciasteczka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz na naszej witrynie komentarz, będzie można wybrać opcję zapisu twojej nazwy, adresu e-mail i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Osadzone treści z innych witryn</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie przesyłamy dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph -->', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2021-04-07 10:47:06', '2021-04-07 08:47:06', '', 0, 'http://localhost:8888/wlc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-07 10:47:23', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-07 10:47:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wlc/?p=4', 0, 'post', '', 0),
(5, 1, '2021-04-07 11:10:51', '2021-04-07 09:10:51', '<!-- wp:paragraph -->\n<p><strong>Free tax investigation cover, should you need it HM Revenue &amp; Customs (HMRC) routinely check a proportion of tax returns to make sure they are correct. They may also decide to conduct an extensive examination of all areas of your tax affairs including an in-depth review of your tax return records.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These enquiries take time and money to resolve. Tax Investigation Insurance is designed to remove the burden should you be subject to an investigation. The policy indemnifies you for professional costs whilst you are being represented. <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>How much does it cost?<br></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Insurance cover can cost over £100, but for UKALA members it is included as part of your membership of the UK Association of Letting Agents (UKALA). <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->', 'Tax investigation insurance', '', 'publish', 'closed', 'closed', '', 'tax-investigation-insurance', '', '', '2021-04-07 16:17:59', '2021-04-07 14:17:59', '', 0, 'http://localhost:8888/wlc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-04-07 11:10:51', '2021-04-07 09:10:51', '<!-- wp:paragraph -->\n<p><strong>Free tax investigation cover, should you need it HM Revenue &amp; Customs (HMRC) routinely check a proportion of tax returns to make sure they are correct. They may also decide to conduct an extensive examination of all areas of your tax affairs including an in-depth review of your tax return records.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These enquiries take time and money to resolve. Tax Investigation Insurance is designed to remove the burden should you be subject to an investigation. The policy indemnifies you for professional costs whilst you are being represented. <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How much does it cost?<br></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Insurance cover can cost over £100, but for UKALA members it is included as part of your membership of the UK Association of Letting Agents (UKALA). <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->', 'Tax investigation insurance', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-04-07 11:10:51', '2021-04-07 09:10:51', '', 5, 'http://localhost:8888/wlc/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-04-07 11:11:17', '2021-04-07 09:11:17', '', 'Clip', '', 'inherit', 'open', 'closed', '', 'clip', '', '', '2021-04-07 11:11:17', '2021-04-07 09:11:17', '', 5, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/Clip.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2021-04-07 20:17:58', '2021-04-07 09:21:04', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-04-07 20:17:58', '2021-04-07 09:21:04', '', 'UKALA bvenefits', '', 'publish', 'closed', 'closed', '', 'ukala-bvenefits', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2021-04-07 20:17:58', '2021-04-07 09:21:04', '', 'Peace of mind', '', 'publish', 'closed', 'closed', '', 'peace-of-mind', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2021-04-07 20:17:58', '2021-04-07 09:21:04', '', 'UKALA suppliers', '', 'publish', 'closed', 'closed', '', 'ukala-suppliers', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=11', 4, 'nav_menu_item', '', 0),
(12, 1, '2021-04-07 20:17:58', '2021-04-07 09:21:04', '', 'News & Events', '', 'publish', 'closed', 'closed', '', 'news-events', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=12', 5, 'nav_menu_item', '', 0),
(13, 1, '2021-04-07 11:21:19', '0000-00-00 00:00:00', '', 'Contact us', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-07 11:21:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wlc/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2021-04-07 20:17:58', '2021-04-07 09:26:33', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-04-07 20:17:58', '2021-04-07 18:17:58', '', 0, 'http://localhost:8888/wlc/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2021-04-07 11:27:11', '2021-04-07 09:27:11', '', 'UKALA logo', '', 'inherit', 'open', 'closed', '', 'ukala-logo', '', '', '2021-04-07 11:27:11', '2021-04-07 09:27:11', '', 0, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/UKALA-logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2021-04-07 11:27:30', '2021-04-07 09:27:30', 'http://localhost:8888/wlc/wp-content/uploads/2021/04/cropped-UKALA-logo.png', 'cropped-UKALA-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-ukala-logo-png', '', '', '2021-04-07 11:27:30', '2021-04-07 09:27:30', '', 0, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/cropped-UKALA-logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-04-07 11:45:51', '2021-04-07 09:45:51', '{\n    \"site_icon\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-07 09:28:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '213e326e-2ec6-438a-a015-09173ea93d02', '', '', '2021-04-07 11:45:51', '2021-04-07 09:45:51', '', 0, 'http://localhost:8888/wlc/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2021-04-07 11:48:32', '2021-04-07 09:48:32', '', 'Clipboard icon', '', 'inherit', 'open', 'closed', '', 'clipboard-icon', '', '', '2021-04-07 11:48:32', '2021-04-07 09:48:32', '', 0, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/Clipboard-icon.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-04-07 12:05:42', '2021-04-07 10:05:42', '', 'istockphoto-949114642-2048x2048', '', 'inherit', 'open', 'closed', '', 'istockphoto-949114642-2048x2048', '', '', '2021-04-07 12:05:42', '2021-04-07 10:05:42', '', 5, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/istockphoto-949114642-2048x2048-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-04-07 13:21:50', '2021-04-07 11:21:50', '{\n    \"wlc::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-07 11:21:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '242f7acd-f5ec-4ed4-b6c6-aee9c9e9313f', '', '', '2021-04-07 13:21:50', '2021-04-07 11:21:50', '', 0, 'http://localhost:8888/wlc/2021/04/07/242f7acd-f5ec-4ed4-b6c6-aee9c9e9313f/', 0, 'customize_changeset', '', 0),
(21, 1, '2021-04-07 13:46:38', '2021-04-07 11:46:38', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-04-07 13:46:38', '2021-04-07 11:46:38', '', 0, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/LOGO.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-04-07 13:46:44', '2021-04-07 11:46:44', '{\n    \"wlc::custom_logo\": {\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-07 11:46:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '660682a6-cb4e-4af8-a1d9-c8b4ec2ab719', '', '', '2021-04-07 13:46:44', '2021-04-07 11:46:44', '', 0, 'http://localhost:8888/wlc/2021/04/07/660682a6-cb4e-4af8-a1d9-c8b4ec2ab719/', 0, 'customize_changeset', '', 0),
(23, 1, '2021-04-07 16:17:48', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-07 16:17:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wlc/?p=23', 0, 'post', '', 0),
(24, 1, '2021-04-07 16:17:59', '2021-04-07 14:17:59', '<!-- wp:paragraph -->\n<p><strong>Free tax investigation cover, should you need it HM Revenue &amp; Customs (HMRC) routinely check a proportion of tax returns to make sure they are correct. They may also decide to conduct an extensive examination of all areas of your tax affairs including an in-depth review of your tax return records.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These enquiries take time and money to resolve. Tax Investigation Insurance is designed to remove the burden should you be subject to an investigation. The policy indemnifies you for professional costs whilst you are being represented. <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>How much does it cost?<br></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Insurance cover can cost over £100, but for UKALA members it is included as part of your membership of the UK Association of Letting Agents (UKALA). <a href=\"#\">Terms and conditions apply.</a></p>\n<!-- /wp:paragraph -->', 'Tax investigation insurance', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-04-07 16:17:59', '2021-04-07 14:17:59', '', 5, 'http://localhost:8888/wlc/?p=24', 0, 'revision', '', 0),
(37, 1, '2021-04-07 20:48:31', '2021-04-07 18:25:45', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 0, 'http://localhost:8888/wlc/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2021-04-07 20:47:36', '2021-04-07 18:44:42', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-04-07 20:47:36', '2021-04-07 18:44:42', '', 'UKALA benefits', '', 'publish', 'closed', 'closed', '', 'ukala-benefits', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'Peace of mind', '', 'publish', 'closed', 'closed', '', 'peace-of-mind-2', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'UKALA suppliers', '', 'publish', 'closed', 'closed', '', 'ukala-suppliers-2', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'News & Events', '', 'publish', 'closed', 'closed', '', 'news-events-2', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=42', 5, 'nav_menu_item', '', 0),
(43, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'Search for a UKALA agent', '', 'publish', 'closed', 'closed', '', 'search-for-a-ukala-agent', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=43', 6, 'nav_menu_item', '', 0),
(44, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'Join UKALA', '', 'publish', 'closed', 'closed', '', 'join-ukala', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=44', 7, 'nav_menu_item', '', 0),
(45, 1, '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 'Newsletter Sign-up', '', 'publish', 'closed', 'closed', '', 'newsletter-sign-up', '', '', '2021-04-07 20:47:36', '2021-04-07 18:47:36', '', 0, 'http://localhost:8888/wlc/?p=45', 8, 'nav_menu_item', '', 0),
(46, 1, '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 0, 'http://localhost:8888/wlc/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 'Cookies', '', 'publish', 'closed', 'closed', '', 'cookies', '', '', '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 0, 'http://localhost:8888/wlc/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-04-07 20:48:31', '2021-04-07 18:48:31', '', 0, 'http://localhost:8888/wlc/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2021-04-08 00:09:23', '2021-04-07 22:09:23', '', 'Download button', '', 'inherit', 'open', 'closed', '', 'download-button', '', '', '2021-04-08 00:09:23', '2021-04-07 22:09:23', '', 0, 'http://localhost:8888/wlc/wp-content/uploads/2021/04/Download-button.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Brak kategorii', 'bez-kategorii', 0),
(2, 'Menu glowne', 'menu-glowne', 0),
(5, 'legacy', 'legacy', 0),
(6, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(14, 2, 0),
(37, 5, 0),
(38, 6, 0),
(39, 6, 0),
(40, 6, 0),
(41, 6, 0),
(42, 6, 0),
(43, 6, 0),
(44, 6, 0),
(45, 6, 0),
(46, 5, 0),
(47, 5, 0),
(48, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'milena'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b36bf68776fecc51032f2bda691bd8363c40feeb1a845aeffb8716867cdd6b5e\";a:4:{s:10:\"expiration\";i:1618994842;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617785242;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=show&editor=html'),
(19, 1, 'wp_user-settings-time', '1617834276'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'milena', '$P$Bc9q/3AO.kmI0GiqeyGRP1QkMtZE0s1', 'milena', 'milena135@yahoo.co.uk', 'http://localhost:8888/wlc', '2021-04-07 08:47:06', '', 0, 'milena');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
