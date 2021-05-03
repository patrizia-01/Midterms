-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 05:08 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deocampo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(36, 'action_scheduler/migration_hook', 'complete', '2021-05-01 06:37:55', '2021-05-01 06:37:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1619851075;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1619851075;}', 1, 1, '2021-05-01 06:38:03', '2021-05-01 06:38:03', 0, NULL),
(37, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-05-01 07:48:47', '2021-05-01 07:48:47', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1619855327;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1619855327;}', 0, 1, '2021-05-01 07:48:56', '2021-05-01 07:48:56', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 36, 'action created', '2021-05-01 06:36:55', '2021-05-01 06:36:55'),
(2, 36, 'action started via Async Request', '2021-05-01 06:38:02', '2021-05-01 06:38:02'),
(3, 36, 'action complete via Async Request', '2021-05-01 06:38:03', '2021-05-01 06:38:03'),
(4, 37, 'action created', '2021-05-01 07:48:47', '2021-05-01 07:48:47'),
(5, 37, 'action started via WP Cron', '2021-05-01 07:48:56', '2021-05-01 07:48:56'),
(6, 37, 'action complete via WP Cron', '2021-05-01 07:48:56', '2021-05-01 07:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ce4wp_abandoned_checkout`
--

CREATE TABLE `wp_ce4wp_abandoned_checkout` (
  `checkout_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_updated_ts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checkout_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_created_ts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checkout_recovered` datetime DEFAULT '0000-00-00 00:00:00',
  `checkout_recovered_ts` int(11) UNSIGNED DEFAULT 0,
  `checkout_consent` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `checkout_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-24 05:17:22', '2021-04-24 05:17:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/deocampo', 'yes'),
(2, 'home', 'http://localhost/deocampo', 'yes'),
(3, 'blogname', '$cents', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'patriziadeocampo@yahoo.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:161:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"fb_product_set/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?fb_product_set=$matches[1]&feed=$matches[2]\";s:50:\"fb_product_set/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?fb_product_set=$matches[1]&feed=$matches[2]\";s:31:\"fb_product_set/([^/]+)/embed/?$\";s:47:\"index.php?fb_product_set=$matches[1]&embed=true\";s:43:\"fb_product_set/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?fb_product_set=$matches[1]&paged=$matches[2]\";s:25:\"fb_product_set/([^/]+)/?$\";s:36:\"index.php?fb_product_set=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:2;s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";i:3;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blank', 'yes'),
(41, 'stylesheet', 'blank', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1634793442', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:17:{i:1620051292;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1620051443;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620052615;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620052621;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620054066;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1620062243;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620086400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620088614;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620105443;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620105455;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620105456;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620110215;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620110224;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620121014;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620537443;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1621147074;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619241999;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1620031226;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620031227;s:7:\"checked\";a:4:{s:5:\"blank\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'current_theme', 'blank', 'yes'),
(150, 'theme_mods_blank', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'category_children', 'a:0:{}', 'yes'),
(167, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":1}', 'yes'),
(172, '_site_transient_timeout_browser_3651f072395347537c74089989c88a66', '1620449329', 'no'),
(173, '_site_transient_browser_3651f072395347537c74089989c88a66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(186, 'recently_activated', 'a:0:{}', 'yes'),
(195, 'action_scheduler_hybrid_store_demarkation', '35', 'yes'),
(196, 'schema-ActionScheduler_StoreSchema', '3.0.1619851012', 'yes'),
(197, 'schema-ActionScheduler_LoggerSchema', '2.0.1619851012', 'yes'),
(200, 'woocommerce_schema_version', '430', 'yes'),
(201, 'woocommerce_store_address', 'Buhay na Tubig', 'yes'),
(202, 'woocommerce_store_address_2', '', 'yes'),
(203, 'woocommerce_store_city', 'Imus', 'yes'),
(204, 'woocommerce_default_country', 'PH:CAV', 'yes'),
(205, 'woocommerce_store_postcode', '4103', 'yes'),
(206, 'woocommerce_allowed_countries', 'all', 'yes'),
(207, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(208, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(209, 'woocommerce_ship_to_countries', '', 'yes'),
(210, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(211, 'woocommerce_default_customer_address', 'base', 'yes'),
(212, 'woocommerce_calc_taxes', 'no', 'yes'),
(213, 'woocommerce_enable_coupons', 'yes', 'yes'),
(214, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(215, 'woocommerce_currency', 'PHP', 'yes'),
(216, 'woocommerce_currency_pos', 'left', 'yes'),
(217, 'woocommerce_price_thousand_sep', ',', 'yes'),
(218, 'woocommerce_price_decimal_sep', '.', 'yes'),
(219, 'woocommerce_price_num_decimals', '2', 'yes'),
(220, 'woocommerce_shop_page_id', '36', 'yes'),
(221, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(222, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(223, 'woocommerce_placeholder_image', '26', 'yes'),
(224, 'woocommerce_weight_unit', 'kg', 'yes'),
(225, 'woocommerce_dimension_unit', 'cm', 'yes'),
(226, 'woocommerce_enable_reviews', 'yes', 'yes'),
(227, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(228, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(229, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(230, 'woocommerce_review_rating_required', 'yes', 'no'),
(231, 'woocommerce_manage_stock', 'yes', 'yes'),
(232, 'woocommerce_hold_stock_minutes', '60', 'no'),
(233, 'woocommerce_notify_low_stock', 'yes', 'no'),
(234, 'woocommerce_notify_no_stock', 'yes', 'no'),
(235, 'woocommerce_stock_email_recipient', 'patriziadeocampo@yahoo.com', 'no'),
(236, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(237, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(238, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(239, 'woocommerce_stock_format', '', 'yes'),
(240, 'woocommerce_file_download_method', 'force', 'no'),
(241, 'woocommerce_downloads_require_login', 'no', 'no'),
(242, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(243, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(244, 'woocommerce_prices_include_tax', 'no', 'yes'),
(245, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(246, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(247, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(248, 'woocommerce_tax_classes', '', 'yes'),
(249, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(250, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(251, 'woocommerce_price_display_suffix', '', 'yes'),
(252, 'woocommerce_tax_total_display', 'itemized', 'no'),
(253, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(254, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(255, 'woocommerce_ship_to_destination', 'billing', 'no'),
(256, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(257, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(258, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(259, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(260, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(261, 'woocommerce_registration_generate_username', 'yes', 'no'),
(262, 'woocommerce_registration_generate_password', 'yes', 'no'),
(263, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(264, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(265, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(266, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(267, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(268, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(269, 'woocommerce_trash_pending_orders', '', 'no'),
(270, 'woocommerce_trash_failed_orders', '', 'no'),
(271, 'woocommerce_trash_cancelled_orders', '', 'no'),
(272, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(273, 'woocommerce_email_from_name', '$cents', 'no'),
(274, 'woocommerce_email_from_address', 'patriziadeocampo@yahoo.com', 'no'),
(275, 'woocommerce_email_header_image', '', 'no'),
(276, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(277, 'woocommerce_email_base_color', '#96588a', 'no'),
(278, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(279, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(280, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(281, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(282, 'woocommerce_cart_page_id', '37', 'no'),
(283, 'woocommerce_checkout_page_id', '38', 'no'),
(284, 'woocommerce_myaccount_page_id', '39', 'no'),
(285, 'woocommerce_terms_page_id', '', 'no'),
(286, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(287, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(288, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(289, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(290, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(291, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(292, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(293, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(294, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(295, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(296, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(297, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(298, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(299, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(300, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(301, 'woocommerce_api_enabled', 'no', 'yes'),
(302, 'woocommerce_allow_tracking', 'no', 'no'),
(303, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(304, 'woocommerce_single_image_width', '600', 'yes'),
(305, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(306, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(307, 'woocommerce_demo_store', 'no', 'no'),
(308, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(309, 'current_theme_supports_woocommerce', 'no', 'yes'),
(310, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(311, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(312, 'product_cat_children', 'a:0:{}', 'yes'),
(313, 'default_product_cat', '15', 'yes'),
(316, 'woocommerce_version', '5.2.2', 'yes'),
(317, 'woocommerce_db_version', '5.2.2', 'yes'),
(321, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(322, 'action_scheduler_lock_async-request-runner', '1620031293', 'yes'),
(323, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(324, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"SMAeDXGtNzRLrQsgHsgePfaBCyGyNPOe\";}', 'yes'),
(325, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(326, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(332, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(334, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(335, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(336, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(337, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(340, 'woocommerce_admin_version', '2.1.5', 'yes'),
(341, 'woocommerce_admin_install_timestamp', '1619851015', 'yes'),
(345, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(346, 'wc_blocks_db_schema_version', '260', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(347, 'wc_remote_inbox_notifications_specs', 'a:16:{s:20:\"paypal_ppcp_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"paypal_ppcp_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Offer more options with the new PayPal\";s:7:\"content\";s:113:\"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"open_wc_paypal_payments_product_page\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:61:\"https://woocommerce.com/products/woocommerce-paypal-payments/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-04-05 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-04-21 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-gateway-paypal-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:37:\"woocommerce-gateway-paypal-pro-hosted\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-advanced\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:40:\"woocommerce-gateway-paypal-digital-goods\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"woocommerce-paypal-here-gateway\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-paypal-adaptive-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:27:\"woocommerce-paypal-payments\";s:7:\"version\";s:5:\"1.2.1\";s:8:\"operator\";s:1:\"<\";}}}}}s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:168:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-02-15 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-02-29 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.1.4\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wcpay-apple-pay-is-now-available\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wcpay-apple-pay-is-now-available\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Apple Pay is now available with WooCommerce Payments!\";s:7:\"content\";s:397:\"Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:13:\"add-apple-pay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Add Apple Pay\";}}s:3:\"url\";s:69:\"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:121:\"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.3.0\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";b:0;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}s:27:\"wcpay-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:205:\"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:96:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"wcpay-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"wcpay-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Grow your business with WooCommerce Payments and Apple Pay\";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:103:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}}', 'yes'),
(348, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":3:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;s:17:\"new_product_count\";i:0;}', 'yes'),
(349, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(352, '_transient_woocommerce_reports-transient-version', '1619851196', 'yes'),
(353, '_transient_timeout_orders-all-statuses', '1620456272', 'no'),
(354, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1619851196\";s:5:\"value\";a:0:{}}', 'no'),
(362, 'action_scheduler_migration_status', 'complete', 'yes'),
(364, 'woocommerce_onboarding_profile', 'a:8:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:7:\"Perfume\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:4:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";i:2;s:33:\"creative-mail-by-constant-contact\";i:3;s:27:\"kliken-marketing-for-google\";}s:5:\"theme\";s:5:\"blank\";s:9:\"completed\";b:1;}', 'yes'),
(377, 'mailchimp-woocommerce', 'a:2:{s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"PHP\";}', 'yes'),
(379, 'mailchimp-woocommerce-store_id', '608cf8766da78', 'yes'),
(380, 'mailchimp-woocommerce-store-id-last-verified', '1619851382', 'yes'),
(381, 'ce4wp_activated', '1', 'yes'),
(382, 'ce4wp_install_date', '2021-05-01 6:43:02', 'yes'),
(384, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(385, '_site_transient_timeout_kk_wc_welcome_message', '1622443382', 'no'),
(386, '_site_transient_kk_wc_welcome_message', '1', 'no'),
(387, 'ce4wp_handshake_token', '45DCF3E6-A555-4B56-B1AD-AD0425B94855', 'yes'),
(388, 'ce4wp_handshake_expiration', '1619882517', 'yes'),
(389, 'ce4wp_instance_uuid', '608cf876e8ddf', 'yes'),
(390, 'facebook_config', 'a:4:{s:8:\"pixel_id\";s:1:\"0\";s:7:\"use_pii\";b:1;s:7:\"use_s2s\";b:0;s:12:\"access_token\";s:0:\"\";}', 'yes'),
(391, 'ce4wp_abandoned_checkout_db_version', '1.0', 'yes'),
(392, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(393, 'ce4wp_referred_by', 'a:4:{s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"5.2.2\";s:4:\"time\";i:1619851382;s:6:\"source\";s:10:\"onboarding\";}', 'yes'),
(395, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1619851470,\"version\":\"2.4.1\"}]', 'no'),
(396, 'wc_facebook_for_woocommerce_version', '2.4.1', 'yes'),
(397, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620031227;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";s:5:\"1.3.5\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:5:\"2.4.1\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:5:\"1.0.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.5.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.2.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/creative-mail-by-constant-contact\";s:4:\"slug\";s:33:\"creative-mail-by-constant-contact\";s:6:\"plugin\";s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/creative-mail-by-constant-contact/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/creative-mail-by-constant-contact.1.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon-256x256.gif?rev=2388108\";s:2:\"1x\";s:78:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon.svg?rev=2341439\";s:3:\"svg\";s:78:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon.svg?rev=2341439\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/creative-mail-by-constant-contact/assets/banner-1544x500.png?rev=2523227\";s:2:\"1x\";s:88:\"https://ps.w.org/creative-mail-by-constant-contact/assets/banner-772x250.png?rev=2523227\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:5:\"2.4.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.2.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2384650\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2384650\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(398, '_transient_timeout_sv_wc_plugin_wc_versions', '1620456271', 'no'),
(399, '_transient_sv_wc_plugin_wc_versions', 'a:87:{i:0;s:5:\"5.2.2\";i:1;s:5:\"5.2.1\";i:2;s:5:\"5.2.0\";i:3;s:5:\"5.1.0\";i:4;s:5:\"5.0.0\";i:5;s:5:\"4.9.2\";i:6;s:5:\"4.9.1\";i:7;s:5:\"4.9.0\";i:8;s:5:\"4.8.0\";i:9;s:5:\"4.7.1\";i:10;s:5:\"4.7.0\";i:11;s:5:\"4.6.2\";i:12;s:5:\"4.6.1\";i:13;s:5:\"4.6.0\";i:14;s:5:\"4.5.2\";i:15;s:5:\"4.5.1\";i:16;s:5:\"4.5.0\";i:17;s:5:\"4.4.1\";i:18;s:5:\"4.4.0\";i:19;s:5:\"4.3.3\";i:20;s:5:\"4.3.2\";i:21;s:5:\"4.3.1\";i:22;s:5:\"4.3.0\";i:23;s:5:\"4.2.2\";i:24;s:5:\"4.2.1\";i:25;s:5:\"4.2.0\";i:26;s:5:\"4.1.1\";i:27;s:5:\"4.1.0\";i:28;s:5:\"4.0.1\";i:29;s:5:\"4.0.0\";i:30;s:5:\"3.9.3\";i:31;s:5:\"3.9.2\";i:32;s:5:\"3.9.1\";i:33;s:5:\"3.9.0\";i:34;s:5:\"3.8.1\";i:35;s:5:\"3.8.0\";i:36;s:5:\"3.7.1\";i:37;s:5:\"3.7.0\";i:38;s:5:\"3.6.5\";i:39;s:5:\"3.6.4\";i:40;s:5:\"3.6.3\";i:41;s:5:\"3.6.2\";i:42;s:5:\"3.6.1\";i:43;s:5:\"3.6.0\";i:44;s:5:\"3.5.8\";i:45;s:5:\"3.5.7\";i:46;s:5:\"3.5.6\";i:47;s:5:\"3.5.5\";i:48;s:5:\"3.5.4\";i:49;s:5:\"3.5.3\";i:50;s:5:\"3.5.2\";i:51;s:5:\"3.5.1\";i:52;s:5:\"3.5.0\";i:53;s:5:\"3.4.7\";i:54;s:5:\"3.4.6\";i:55;s:5:\"3.4.5\";i:56;s:5:\"3.4.4\";i:57;s:5:\"3.4.3\";i:58;s:5:\"3.4.2\";i:59;s:5:\"3.4.1\";i:60;s:5:\"3.4.0\";i:61;s:5:\"3.3.5\";i:62;s:5:\"3.3.4\";i:63;s:5:\"3.3.3\";i:64;s:5:\"3.3.2\";i:65;s:5:\"3.3.1\";i:66;s:5:\"3.3.0\";i:67;s:5:\"3.2.6\";i:68;s:5:\"3.2.5\";i:69;s:5:\"3.2.4\";i:70;s:5:\"3.2.3\";i:71;s:5:\"3.2.2\";i:72;s:5:\"3.2.1\";i:73;s:5:\"3.2.0\";i:74;s:5:\"3.1.2\";i:75;s:5:\"3.1.1\";i:76;s:5:\"3.1.0\";i:77;s:5:\"3.0.9\";i:78;s:5:\"3.0.8\";i:79;s:5:\"3.0.7\";i:80;s:5:\"3.0.6\";i:81;s:5:\"3.0.5\";i:82;s:5:\"3.0.4\";i:83;s:5:\"3.0.3\";i:84;s:5:\"3.0.2\";i:85;s:5:\"3.0.1\";i:86;s:5:\"3.0.0\";}', 'no'),
(400, '_transient_timeout_wc_report_orders_stats_d53f8bdd15853c72e222ab4d01627656', '1620456276', 'no'),
(401, '_transient_wc_report_orders_stats_d53f8bdd15853c72e222ab4d01627656', 'a:2:{s:7:\"version\";s:10:\"1619851196\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2021-05-01 14:44:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-01 14:44:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(402, '_transient_timeout_wc_report_orders_stats_fc39845afd689c736a39fac33ba767f8', '1620456276', 'no'),
(403, '_transient_wc_report_orders_stats_fc39845afd689c736a39fac33ba767f8', 'a:2:{s:7:\"version\";s:10:\"1619851196\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2021-05-01 14:44:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-01 14:44:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(404, '_transient_timeout_wc_report_orders_stats_8263d046b2dc102b5e6cf27bb9e486cd', '1620456276', 'no'),
(405, '_transient_wc_report_orders_stats_8263d046b2dc102b5e6cf27bb9e486cd', 'a:2:{s:7:\"version\";s:10:\"1619851196\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(406, '_transient_timeout_wc_report_orders_stats_5bbcdddf99a98bbb3b791dd7e310af7d', '1620456277', 'no'),
(407, '_transient_wc_report_orders_stats_5bbcdddf99a98bbb3b791dd7e310af7d', 'a:2:{s:7:\"version\";s:10:\"1619851196\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(408, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(409, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:\"store_details\";}', 'yes'),
(411, 'kk_wc_welcome_message_dismissed', '1', 'yes'),
(415, 'woocommerce_paypal_settings', 'a:22:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:26:\"patriziadeocampo@yahoo.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:26:\"patriziadeocampo@yahoo.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(417, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(419, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1620456700', 'no'),
(420, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(421, '_transient_product_query-transient-version', '1619881263', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(434, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1619855336;}', 'no'),
(455, '_transient_product-transient-version', '1619881263', 'yes'),
(456, 'wc_facebook_background_product_sync_job_8128715fba3f42c2edce953de7471cd3', '{\"requests\":{\"p-54\":\"UPDATE\"},\"id\":\"8128715fba3f42c2edce953de7471cd3\",\"created_at\":\"2021-05-01 08:53:50\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 08:53:51\",\"updated_at\":\"2021-05-01 08:53:51\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 08:53:51\"}', 'no'),
(461, 'wc_facebook_background_product_sync_job_341e9b0159aff46fdbc4a24e49ac2861', '{\"requests\":{\"p-55\":\"UPDATE\"},\"id\":\"341e9b0159aff46fdbc4a24e49ac2861\",\"created_at\":\"2021-05-01 08:55:13\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 08:55:14\",\"updated_at\":\"2021-05-01 08:55:14\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 08:55:14\"}', 'no'),
(481, '_transient_shipping-transient-version', '1619862671', 'yes'),
(482, '_transient_timeout_wc_shipping_method_count_legacy', '1622454671', 'no'),
(483, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1619862671\";s:5:\"value\";i:0;}', 'no'),
(519, 'wc_facebook_background_product_sync_job_6ff9dd43ca02dc3a9b56d068a5120f9f', '{\"requests\":{\"p-62\":\"UPDATE\"},\"id\":\"6ff9dd43ca02dc3a9b56d068a5120f9f\",\"created_at\":\"2021-05-01 14:28:43\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:28:43\",\"updated_at\":\"2021-05-01 14:28:43\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:28:43\"}', 'no'),
(531, 'wc_facebook_background_product_sync_job_7e8d0f8a065d09efb50e7cd6f9825e91', '{\"requests\":{\"p-63\":\"UPDATE\"},\"id\":\"7e8d0f8a065d09efb50e7cd6f9825e91\",\"created_at\":\"2021-05-01 14:32:54\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:32:55\",\"updated_at\":\"2021-05-01 14:32:55\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:32:55\"}', 'no'),
(544, 'wc_facebook_background_product_sync_job_e618131140cfabf770b2bdbd9eac4e5e', '{\"requests\":{\"p-70\":\"UPDATE\"},\"id\":\"e618131140cfabf770b2bdbd9eac4e5e\",\"created_at\":\"2021-05-01 14:39:22\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:39:23\",\"updated_at\":\"2021-05-01 14:39:23\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:39:23\"}', 'no'),
(551, 'wc_facebook_background_product_sync_job_6f833c624e1b9f1e25025be1f79fae4a', '{\"requests\":{\"p-80\":\"UPDATE\"},\"id\":\"6f833c624e1b9f1e25025be1f79fae4a\",\"created_at\":\"2021-05-01 14:43:58\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:43:59\",\"updated_at\":\"2021-05-01 14:43:59\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:43:59\"}', 'no'),
(559, 'wc_facebook_background_product_sync_job_012f04902bf3f35ebfc2736652ce9640', '{\"requests\":{\"p-87\":\"UPDATE\"},\"id\":\"012f04902bf3f35ebfc2736652ce9640\",\"created_at\":\"2021-05-01 14:49:04\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:49:05\",\"updated_at\":\"2021-05-01 14:49:05\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:49:05\"}', 'no'),
(566, 'wc_facebook_background_product_sync_job_904b0f80b27a7c7a69e94f2b2ce8ee27', '{\"requests\":{\"p-101\":\"UPDATE\"},\"id\":\"904b0f80b27a7c7a69e94f2b2ce8ee27\",\"created_at\":\"2021-05-01 14:53:28\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:53:29\",\"updated_at\":\"2021-05-01 14:53:29\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:53:29\"}', 'no'),
(575, 'wc_facebook_background_product_sync_job_34f181d67562fd184d9ed368fa159243', '{\"requests\":{\"p-102\":\"UPDATE\"},\"id\":\"34f181d67562fd184d9ed368fa159243\",\"created_at\":\"2021-05-01 14:59:17\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 14:59:17\",\"updated_at\":\"2021-05-01 14:59:17\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 14:59:17\"}', 'no'),
(580, 'wc_facebook_background_product_sync_job_7f6639c8f0b7e46f96456ff457bb889c', '{\"requests\":{\"p-115\":\"UPDATE\"},\"id\":\"7f6639c8f0b7e46f96456ff457bb889c\",\"created_at\":\"2021-05-01 15:01:03\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-01 15:01:04\",\"updated_at\":\"2021-05-01 15:01:04\",\"total\":1,\"progress\":1,\"completed_at\":\"2021-05-01 15:01:04\"}', 'no'),
(585, '_transient_timeout__woocommerce_helper_subscriptions', '1620032126', 'no'),
(586, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(587, '_site_transient_timeout_theme_roots', '1620033026', 'no'),
(588, '_site_transient_theme_roots', 'a:4:{s:5:\"blank\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(589, '_transient_timeout__woocommerce_helper_updates', '1620074426', 'no'),
(590, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1620031226;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(591, '_transient_timeout_wc_onboarding_product_data', '1620117628', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(592, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 03 May 2021 08:40:27 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11512\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"x-wccom-cache\";s:3:\"HIT\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"nrt1 87 184 3114\";s:3:\"age\";s:2:\"27\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48068:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48068:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:3:\"raw\";s:48706:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Mon, 03 May 2021 08:40:27 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11512\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: nrt1 87 184 3114\r\nAge: 27\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Mon, 03 May 2021 08:40:27 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11512\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"x-wccom-cache\";a:1:{i:0;s:3:\"HIT\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"nrt1 87 184 3114\";}s:3:\"age\";a:1:{i:0;s:2:\"27\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(600, '_transient_timeout_wc_related_63', '1620130204', 'no'),
(601, '_transient_wc_related_63', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=63\";a:9:{i:0;s:2:\"54\";i:1;s:2:\"55\";i:2;s:2:\"62\";i:3;s:2:\"70\";i:4;s:2:\"80\";i:5;s:2:\"87\";i:6;s:3:\"101\";i:7;s:3:\"102\";i:8;s:3:\"115\";}}', 'no'),
(602, '_transient_timeout_wc_term_counts', '1622635804', 'no'),
(603, '_transient_wc_term_counts', 'a:1:{i:15;s:2:\"10\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1619242417'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1619242417'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_lock', '1619242387:1'),
(10, 9, '_edit_lock', '1619242295:1'),
(11, 11, '_edit_lock', '1619242306:1'),
(12, 9, '_wp_trash_meta_status', 'publish'),
(13, 9, '_wp_trash_meta_time', '1619242578'),
(14, 9, '_wp_desired_post_slug', 'about'),
(15, 11, '_wp_trash_meta_status', 'publish'),
(16, 11, '_wp_trash_meta_time', '1619242578'),
(17, 11, '_wp_desired_post_slug', 'contact-us'),
(18, 7, '_wp_trash_meta_status', 'publish'),
(19, 7, '_wp_trash_meta_time', '1619242578'),
(20, 7, '_wp_desired_post_slug', 'home'),
(21, 13, '_edit_lock', '1619255676:1'),
(22, 15, '_edit_lock', '1619244144:1'),
(23, 17, '_edit_lock', '1619252654:1'),
(24, 13, '_wp_page_template', 'home-template.php'),
(25, 15, '_wp_page_template', 'about-template.php'),
(26, 17, '_wp_page_template', 'contactus-template.php'),
(27, 22, '_wp_attached_file', '2021/04/border.jpg'),
(28, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:499;s:4:\"file\";s:18:\"2021/04/border.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 23, '_wp_attached_file', '2021/04/borderr.jpg'),
(30, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:650;s:4:\"file\";s:19:\"2021/04/borderr.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 24, '_wp_attached_file', '2021/04/dahon.gif'),
(32, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:860;s:6:\"height\";i:762;s:4:\"file\";s:17:\"2021/04/dahon.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 25, '_wp_attached_file', '2021/04/email.jpg'),
(34, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2021/04/email.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 26, '_wp_attached_file', '2021/04/logo.jpg'),
(36, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:16:\"2021/04/logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 27, '_wp_attached_file', '2021/04/per1.png'),
(38, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:16:\"2021/04/per1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 28, '_wp_attached_file', '2021/04/per2.png'),
(40, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:16:\"2021/04/per2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 29, '_wp_attached_file', '2021/04/per3.png'),
(42, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:16:\"2021/04/per3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 30, '_wp_attached_file', '2021/04/phone.png'),
(44, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2021/04/phone.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 32, '_wp_attached_file', '2021/04/original_clinique_happy_perfumefor_men_1480855629_4c2f08e4-1.jpg'),
(48, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:72:\"2021/04/original_clinique_happy_perfumefor_men_1480855629_4c2f08e4-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(49, 33, '_wp_attached_file', '2021/04/BestJoMaloneLondonFragrancesbyCarlThompson.jpg'),
(50, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1670;s:4:\"file\";s:54:\"2021/04/BestJoMaloneLondonFragrancesbyCarlThompson.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1540829328\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 34, '_wp_attached_file', '2021/04/images.jpg'),
(52, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:238;s:6:\"height\";i:212;s:4:\"file\";s:18:\"2021/04/images.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 35, '_wp_attached_file', 'woocommerce-placeholder.png'),
(54, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 41, '_edit_last', '1'),
(56, 41, '_edit_lock', '1619855336:1'),
(57, 42, '_wp_attached_file', '2021/05/904b0cfec1f0949dae160140583cf464.jpg'),
(58, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:636;s:4:\"file\";s:44:\"2021/05/904b0cfec1f0949dae160140583cf464.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 43, '_wp_attached_file', '2021/05/0030033-2.jpg'),
(60, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:340;s:4:\"file\";s:21:\"2021/05/0030033-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 44, '_wp_attached_file', '2021/05/Chloe-My-Little-Chloe1.jpg'),
(62, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2725;s:6:\"height\";i:2171;s:4:\"file\";s:34:\"2021/05/Chloe-My-Little-Chloe1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 400D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1428864626\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"37\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(63, 45, '_wp_attached_file', '2021/05/download-1.jpg'),
(64, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2021/05/download-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 46, '_wp_attached_file', '2021/05/download-2.jpg'),
(66, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2021/05/download-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 47, '_wp_attached_file', '2021/05/download-3.jpg'),
(68, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2021/05/download-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 48, '_wp_attached_file', '2021/05/download.jpg'),
(70, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2021/05/download.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 49, '_wp_attached_file', '2021/05/images-1.jpg'),
(72, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2021/05/images-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 50, '_wp_attached_file', '2021/05/images.jpg'),
(74, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2021/05/images.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 51, '_wp_attached_file', '2021/05/JO-MALONE-BEST-SELLER-nm.jpg'),
(76, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:970;s:6:\"height\";i:546;s:4:\"file\";s:36:\"2021/05/JO-MALONE-BEST-SELLER-nm.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 52, '_wp_attached_file', '2021/05/Jo-Malone-English-Pear-and-Freesia-Actual-400x400-1.jpg'),
(78, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:63:\"2021/05/Jo-Malone-English-Pear-and-Freesia-Actual-400x400-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 54, '_edit_last', '1'),
(80, 54, '_edit_lock', '1619859101:1'),
(81, 54, '_thumbnail_id', '33'),
(82, 54, '_regular_price', '1500'),
(83, 54, '_sale_price', '1250'),
(84, 54, 'total_sales', '0'),
(85, 54, '_tax_status', 'taxable'),
(86, 54, '_tax_class', ''),
(87, 54, '_manage_stock', 'no'),
(88, 54, '_backorders', 'no'),
(89, 54, '_sold_individually', 'no'),
(90, 54, '_virtual', 'no'),
(91, 54, '_downloadable', 'no'),
(92, 54, '_download_limit', '-1'),
(93, 54, '_download_expiry', '-1'),
(94, 54, '_stock', NULL),
(95, 54, '_stock_status', 'instock'),
(96, 54, '_wc_average_rating', '0'),
(97, 54, '_wc_review_count', '0'),
(98, 54, '_product_version', '5.2.2'),
(99, 54, '_price', '1250'),
(100, 54, '_product_image_gallery', '52,51,50,49,48'),
(101, 55, '_edit_last', '1'),
(102, 55, 'total_sales', '0'),
(103, 55, '_tax_status', 'taxable'),
(104, 55, '_tax_class', ''),
(105, 55, '_manage_stock', 'no'),
(106, 55, '_backorders', 'no'),
(107, 55, '_sold_individually', 'no'),
(108, 55, '_virtual', 'no'),
(109, 55, '_downloadable', 'no'),
(110, 55, '_download_limit', '-1'),
(111, 55, '_download_expiry', '-1'),
(112, 55, '_stock', NULL),
(113, 55, '_stock_status', 'instock'),
(114, 55, '_wc_average_rating', '0'),
(115, 55, '_wc_review_count', '0'),
(116, 55, '_product_version', '5.2.2'),
(117, 55, '_edit_lock', '1619863418:1'),
(118, 55, '_thumbnail_id', '34'),
(119, 55, '_regular_price', '2000'),
(121, 55, '_price', '2000'),
(122, 55, '_product_image_gallery', '42,50,44,43,47'),
(123, 36, '_edit_lock', '1619862973:1'),
(124, 37, '_edit_lock', '1619863223:1'),
(125, 56, '_wp_attached_file', '2021/05/md.jpg'),
(126, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:720;s:4:\"file\";s:14:\"2021/05/md.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 57, '_wp_attached_file', '2021/05/md1.jpg'),
(128, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:441;s:4:\"file\";s:15:\"2021/05/md1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 58, '_wp_attached_file', '2021/05/md2.jpg'),
(130, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:15:\"2021/05/md2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 59, '_wp_attached_file', '2021/05/md3.jpg'),
(132, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/md3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 60, '_wp_attached_file', '2021/05/md4.jpg'),
(134, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:15:\"2021/05/md4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 61, '_wp_attached_file', '2021/05/md5.jpg'),
(136, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:804;s:6:\"height\";i:633;s:4:\"file\";s:15:\"2021/05/md5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 62, '_edit_last', '1'),
(138, 62, '_edit_lock', '1619879239:1'),
(139, 62, '_thumbnail_id', '57'),
(140, 62, '_regular_price', '5800'),
(141, 62, 'total_sales', '0'),
(142, 62, '_tax_status', 'taxable'),
(143, 62, '_tax_class', ''),
(144, 62, '_manage_stock', 'no'),
(145, 62, '_backorders', 'no'),
(146, 62, '_sold_individually', 'no'),
(147, 62, '_virtual', 'no'),
(148, 62, '_downloadable', 'no'),
(149, 62, '_download_limit', '-1'),
(150, 62, '_download_expiry', '-1'),
(151, 62, '_stock', NULL),
(152, 62, '_stock_status', 'instock'),
(153, 62, '_wc_average_rating', '0'),
(154, 62, '_wc_review_count', '0'),
(155, 62, '_product_version', '5.2.2'),
(156, 62, '_price', '5800'),
(157, 62, '_product_image_gallery', '60,61,59,58,56'),
(158, 63, '_edit_last', '1'),
(159, 63, '_edit_lock', '1619880007:1'),
(160, 63, '_regular_price', '5400'),
(161, 63, 'total_sales', '0'),
(162, 63, '_tax_status', 'taxable'),
(163, 63, '_tax_class', ''),
(164, 63, '_manage_stock', 'no'),
(165, 63, '_backorders', 'no'),
(166, 63, '_sold_individually', 'no'),
(167, 63, '_virtual', 'no'),
(168, 63, '_downloadable', 'no'),
(169, 63, '_download_limit', '-1'),
(170, 63, '_download_expiry', '-1'),
(171, 63, '_stock', NULL),
(172, 63, '_stock_status', 'instock'),
(173, 63, '_wc_average_rating', '0'),
(174, 63, '_wc_review_count', '0'),
(175, 63, '_product_version', '5.2.2'),
(176, 63, '_price', '5400'),
(177, 64, '_wp_attached_file', '2021/05/c.jpg'),
(178, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:355;s:4:\"file\";s:13:\"2021/05/c.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 65, '_wp_attached_file', '2021/05/c1.jpg'),
(180, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:14:\"2021/05/c1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 66, '_wp_attached_file', '2021/05/c2.jpg'),
(182, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:14:\"2021/05/c2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 67, '_wp_attached_file', '2021/05/c3.jpg'),
(184, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:940;s:6:\"height\";i:622;s:4:\"file\";s:14:\"2021/05/c3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1200D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1548117329\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 68, '_wp_attached_file', '2021/05/c4.jpg'),
(186, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:14:\"2021/05/c4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 69, '_wp_attached_file', '2021/05/c5.jpg'),
(188, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:14:\"2021/05/c5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 63, '_thumbnail_id', '65'),
(190, 63, '_product_image_gallery', '69,68,67,66,64'),
(191, 71, '_wp_attached_file', '2021/05/tg.jpg'),
(192, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:466;s:4:\"file\";s:14:\"2021/05/tg.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 72, '_wp_attached_file', '2021/05/tg1.jpg'),
(194, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2021/05/tg1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 73, '_wp_attached_file', '2021/05/tg2.jpg'),
(196, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:15:\"2021/05/tg2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 74, '_wp_attached_file', '2021/05/tg3.jpg'),
(198, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:680;s:4:\"file\";s:15:\"2021/05/tg3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"scent\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1598658282\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 75, '_wp_attached_file', '2021/05/tg4.jpg'),
(200, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/tg4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 76, '_wp_attached_file', '2021/05/tg5.jpg'),
(202, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:185;s:4:\"file\";s:15:\"2021/05/tg5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 70, '_edit_last', '1'),
(204, 70, '_edit_lock', '1619879840:1'),
(205, 70, '_thumbnail_id', '72'),
(206, 70, '_regular_price', '1098.5'),
(207, 70, 'total_sales', '0'),
(208, 70, '_tax_status', 'taxable'),
(209, 70, '_tax_class', ''),
(210, 70, '_manage_stock', 'no'),
(211, 70, '_backorders', 'no'),
(212, 70, '_sold_individually', 'no'),
(213, 70, '_virtual', 'no'),
(214, 70, '_downloadable', 'no'),
(215, 70, '_download_limit', '-1'),
(216, 70, '_download_expiry', '-1'),
(217, 70, '_stock', NULL),
(218, 70, '_stock_status', 'instock'),
(219, 70, '_wc_average_rating', '0'),
(220, 70, '_wc_review_count', '0'),
(221, 70, '_product_version', '5.2.2'),
(222, 70, '_price', '1098.5'),
(223, 70, '_product_image_gallery', '76,74,75,73,71'),
(224, 79, '_edit_last', '1'),
(225, 79, '_edit_lock', '1619880139:1'),
(226, 80, '_edit_last', '1'),
(227, 80, '_edit_lock', '1619880137:1'),
(228, 80, '_regular_price', '500'),
(229, 80, 'total_sales', '0'),
(230, 80, '_tax_status', 'taxable'),
(231, 80, '_tax_class', ''),
(232, 80, '_manage_stock', 'no'),
(233, 80, '_backorders', 'no'),
(234, 80, '_sold_individually', 'no'),
(235, 80, '_virtual', 'no'),
(236, 80, '_downloadable', 'no'),
(237, 80, '_download_limit', '-1'),
(238, 80, '_download_expiry', '-1'),
(239, 80, '_stock', NULL),
(240, 80, '_stock_status', 'instock'),
(241, 80, '_wc_average_rating', '0'),
(242, 80, '_wc_review_count', '0'),
(243, 80, '_product_version', '5.2.2'),
(244, 80, '_price', '500'),
(245, 81, '_wp_attached_file', '2021/05/ea.jpg'),
(246, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2021/05/ea.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 82, '_wp_attached_file', '2021/05/ea1.jpg'),
(248, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/ea1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 83, '_wp_attached_file', '2021/05/ea2.jpg'),
(250, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2021/05/ea2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 84, '_wp_attached_file', '2021/05/ea3.jpg'),
(252, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:15:\"2021/05/ea3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(253, 85, '_wp_attached_file', '2021/05/ea4.jpg'),
(254, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/ea4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 86, '_wp_attached_file', '2021/05/ea5.jpg'),
(256, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1085;s:6:\"height\";i:1085;s:4:\"file\";s:15:\"2021/05/ea5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(257, 80, '_thumbnail_id', '86'),
(258, 80, '_product_image_gallery', '85,84,83,82,81'),
(259, 88, '_wp_attached_file', '2021/05/cm.jpg'),
(260, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2021/05/cm.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 89, '_wp_attached_file', '2021/05/cm1.jpg'),
(262, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/cm1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 90, '_wp_attached_file', '2021/05/cm2.jpg'),
(264, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/05/cm2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 91, '_wp_attached_file', '2021/05/cm3.jpg'),
(266, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/cm3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 92, '_wp_attached_file', '2021/05/cm4.jpg'),
(268, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:1050;s:4:\"file\";s:15:\"2021/05/cm4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 93, '_wp_attached_file', '2021/05/cm5.jpg'),
(270, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/cm5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 87, '_edit_last', '1'),
(272, 87, '_edit_lock', '1619880620:1'),
(273, 87, '_thumbnail_id', '89'),
(274, 87, '_regular_price', '3195'),
(275, 87, 'total_sales', '0'),
(276, 87, '_tax_status', 'taxable'),
(277, 87, '_tax_class', ''),
(278, 87, '_manage_stock', 'no'),
(279, 87, '_backorders', 'no'),
(280, 87, '_sold_individually', 'no'),
(281, 87, '_virtual', 'no'),
(282, 87, '_downloadable', 'no'),
(283, 87, '_download_limit', '-1'),
(284, 87, '_download_expiry', '-1'),
(285, 87, '_stock', NULL),
(286, 87, '_stock_status', 'instock'),
(287, 87, '_wc_average_rating', '0'),
(288, 87, '_wc_review_count', '0'),
(289, 87, '_product_version', '5.2.2'),
(290, 87, '_price', '3195'),
(291, 87, '_product_image_gallery', '93,92,91,90,88'),
(292, 94, '_edit_last', '1'),
(293, 94, '_edit_lock', '1619880705:1'),
(294, 95, '_wp_attached_file', '2021/05/b.jpg'),
(295, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:13:\"2021/05/b.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 96, '_wp_attached_file', '2021/05/b1.jpg'),
(297, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2021/05/b1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 97, '_wp_attached_file', '2021/05/b2.jpg'),
(299, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:14:\"2021/05/b2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 98, '_wp_attached_file', '2021/05/b3.jpg'),
(301, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2000;s:4:\"file\";s:14:\"2021/05/b3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 99, '_wp_attached_file', '2021/05/b4.jpg'),
(303, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:14:\"2021/05/b4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 100, '_wp_attached_file', '2021/05/b5.jpg'),
(305, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:435;s:6:\"height\";i:300;s:4:\"file\";s:14:\"2021/05/b5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 101, '_edit_last', '1'),
(307, 101, '_edit_lock', '1619880726:1'),
(308, 101, '_thumbnail_id', '96'),
(309, 101, '_regular_price', '2800'),
(310, 101, 'total_sales', '0'),
(311, 101, '_tax_status', 'taxable'),
(312, 101, '_tax_class', ''),
(313, 101, '_manage_stock', 'no'),
(314, 101, '_backorders', 'no'),
(315, 101, '_sold_individually', 'no'),
(316, 101, '_virtual', 'no'),
(317, 101, '_downloadable', 'no'),
(318, 101, '_download_limit', '-1'),
(319, 101, '_download_expiry', '-1'),
(320, 101, '_stock', NULL),
(321, 101, '_stock_status', 'instock'),
(322, 101, '_wc_average_rating', '0'),
(323, 101, '_wc_review_count', '0'),
(324, 101, '_product_version', '5.2.2'),
(325, 101, '_price', '2800'),
(326, 101, '_product_image_gallery', '95,97,98,99,100'),
(327, 103, '_wp_attached_file', '2021/05/v.jpg'),
(328, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:683;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2021/05/v.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 104, '_wp_attached_file', '2021/05/v1.jpg'),
(330, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:658;s:6:\"height\";i:887;s:4:\"file\";s:14:\"2021/05/v1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 105, '_wp_attached_file', '2021/05/v2.jpg'),
(332, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:14:\"2021/05/v2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 106, '_wp_attached_file', '2021/05/v3.jpg'),
(334, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:277;s:6:\"height\";i:182;s:4:\"file\";s:14:\"2021/05/v3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 107, '_wp_attached_file', '2021/05/v4.jpg'),
(336, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:180;s:4:\"file\";s:14:\"2021/05/v4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 108, '_wp_attached_file', '2021/05/v5.jpg'),
(338, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:14:\"2021/05/v5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 109, '_wp_attached_file', '2021/05/dg.jpg'),
(340, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2403;s:6:\"height\";i:2367;s:4:\"file\";s:14:\"2021/05/dg.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 110, '_wp_attached_file', '2021/05/dg1.jpg'),
(342, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/dg1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 111, '_wp_attached_file', '2021/05/dg2.jpg'),
(344, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:753;s:6:\"height\";i:502;s:4:\"file\";s:15:\"2021/05/dg2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 112, '_wp_attached_file', '2021/05/dg3.jpg'),
(346, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2021/05/dg3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 113, '_wp_attached_file', '2021/05/dg4.jpg'),
(348, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:15:\"2021/05/dg4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 114, '_wp_attached_file', '2021/05/dg5.jpg'),
(350, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:15:\"2021/05/dg5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 102, '_edit_last', '1'),
(352, 102, '_edit_lock', '1619881023:1'),
(353, 102, '_thumbnail_id', '108'),
(354, 102, '_regular_price', '2500'),
(355, 102, 'total_sales', '0'),
(356, 102, '_tax_status', 'taxable'),
(357, 102, '_tax_class', ''),
(358, 102, '_manage_stock', 'no'),
(359, 102, '_backorders', 'no'),
(360, 102, '_sold_individually', 'no'),
(361, 102, '_virtual', 'no'),
(362, 102, '_downloadable', 'no'),
(363, 102, '_download_limit', '-1'),
(364, 102, '_download_expiry', '-1'),
(365, 102, '_stock', NULL),
(366, 102, '_stock_status', 'instock'),
(367, 102, '_wc_average_rating', '0'),
(368, 102, '_wc_review_count', '0'),
(369, 102, '_product_version', '5.2.2'),
(370, 102, '_price', '2500'),
(371, 102, '_product_image_gallery', '107,106,105,103,104'),
(372, 115, '_edit_last', '1'),
(373, 115, '_edit_lock', '1619881123:1'),
(374, 115, '_thumbnail_id', '110'),
(375, 115, '_regular_price', '4450'),
(376, 115, 'total_sales', '0'),
(377, 115, '_tax_status', 'taxable'),
(378, 115, '_tax_class', ''),
(379, 115, '_manage_stock', 'no'),
(380, 115, '_backorders', 'no'),
(381, 115, '_sold_individually', 'no'),
(382, 115, '_virtual', 'no'),
(383, 115, '_downloadable', 'no'),
(384, 115, '_download_limit', '-1'),
(385, 115, '_download_expiry', '-1'),
(386, 115, '_stock', NULL),
(387, 115, '_stock_status', 'instock'),
(388, 115, '_wc_average_rating', '0'),
(389, 115, '_wc_review_count', '0'),
(390, 115, '_product_version', '5.2.2'),
(391, 115, '_price', '4450'),
(392, 115, '_product_image_gallery', '114,113,112,111,109');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-24 05:17:22', '2021-04-24 05:17:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-24 05:17:22', '2021-04-24 05:17:22', '', 0, 'http://localhost/deocampo/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-24 05:17:22', '2021-04-24 05:17:22', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/deocampo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-04-24 05:33:37', '2021-04-24 05:33:37', '', 0, 'http://localhost/deocampo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-24 05:17:22', '2021-04-24 05:17:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/deocampo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-04-24 05:33:37', '2021-04-24 05:33:37', '', 0, 'http://localhost/deocampo/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-04-24 05:33:37', '2021-04-24 05:33:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/deocampo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-04-24 05:33:37', '2021-04-24 05:33:37', '', 3, 'http://localhost/deocampo/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-04-24 05:33:37', '2021-04-24 05:33:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/deocampo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-24 05:33:37', '2021-04-24 05:33:37', '', 2, 'http://localhost/deocampo/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-04-24 05:33:45', '2021-04-24 05:33:45', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2021-04-24 05:36:18', '2021-04-24 05:36:18', '', 0, 'http://localhost/deocampo/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-04-24 05:33:45', '2021-04-24 05:33:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-04-24 05:33:45', '2021-04-24 05:33:45', '', 7, 'http://localhost/deocampo/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-04-24 05:33:58', '2021-04-24 05:33:58', '', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2021-04-24 05:36:18', '2021-04-24 05:36:18', '', 0, 'http://localhost/deocampo/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-04-24 05:33:58', '2021-04-24 05:33:58', '', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-04-24 05:33:58', '2021-04-24 05:33:58', '', 9, 'http://localhost/deocampo/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-04-24 05:34:09', '2021-04-24 05:34:09', '', 'Contact Us', '', 'trash', 'closed', 'closed', '', 'contact-us__trashed', '', '', '2021-04-24 05:36:18', '2021-04-24 05:36:18', '', 0, 'http://localhost/deocampo/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-04-24 05:34:09', '2021-04-24 05:34:09', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-04-24 05:34:09', '2021-04-24 05:34:09', '', 11, 'http://localhost/deocampo/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-04-24 05:36:30', '2021-04-24 05:36:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-04-24 05:57:20', '2021-04-24 05:57:20', '', 0, 'http://localhost/deocampo/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-04-24 05:36:30', '2021-04-24 05:36:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-04-24 05:36:30', '2021-04-24 05:36:30', '', 13, 'http://localhost/deocampo/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-24 05:37:11', '2021-04-24 05:37:11', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-04-24 06:04:36', '2021-04-24 06:04:36', '', 0, 'http://localhost/deocampo/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-04-24 05:37:11', '2021-04-24 05:37:11', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-04-24 05:37:11', '2021-04-24 05:37:11', '', 15, 'http://localhost/deocampo/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-04-24 05:37:30', '2021-04-24 05:37:30', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-04-24 06:05:56', '2021-04-24 06:05:56', '', 0, 'http://localhost/deocampo/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-04-24 05:37:30', '2021-04-24 05:37:30', '', 'Contact US', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-04-24 05:37:30', '2021-04-24 05:37:30', '', 17, 'http://localhost/deocampo/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-04-24 05:43:23', '2021-04-24 05:43:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-04-24 05:43:23', '2021-04-24 05:43:23', '', 17, 'http://localhost/deocampo/?p=19', 0, 'revision', '', 0),
(22, 1, '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 'border', '', 'inherit', 'open', 'closed', '', 'border', '', '', '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/border.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 'borderr', '', 'inherit', 'open', 'closed', '', 'borderr', '', '', '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/borderr.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 'dahon', '', 'inherit', 'open', 'closed', '', 'dahon', '', '', '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/dahon.gif', 0, 'attachment', 'image/gif', 0),
(25, 1, '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 'email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2021-04-24 08:24:44', '2021-04-24 08:24:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/email.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 'per1', '', 'inherit', 'open', 'closed', '', 'per1', '', '', '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/per1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 'per2', '', 'inherit', 'open', 'closed', '', 'per2', '', '', '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/per2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 'per3', '', 'inherit', 'open', 'closed', '', 'per3', '', '', '2021-04-24 08:24:45', '2021-04-24 08:24:45', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/per3.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-04-24 08:24:46', '2021-04-24 08:24:46', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2021-04-24 08:24:46', '2021-04-24 08:24:46', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/phone.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-04-24 08:41:43', '2021-04-24 08:41:43', '', 'original_clinique_happy_perfumefor_men_1480855629_4c2f08e4', '', 'inherit', 'open', 'closed', '', 'original_clinique_happy_perfumefor_men_1480855629_4c2f08e4-2', '', '', '2021-04-24 08:41:43', '2021-04-24 08:41:43', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/original_clinique_happy_perfumefor_men_1480855629_4c2f08e4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2021-04-24 08:43:02', '2021-04-24 08:43:02', '', 'Best+Jo+Malone+London+Fragrances+by+Carl+Thompson', '', 'inherit', 'open', 'closed', '', 'bestjomalonelondonfragrancesbycarlthompson', '', '', '2021-04-24 08:43:02', '2021-04-24 08:43:02', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/BestJoMaloneLondonFragrancesbyCarlThompson.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2021-04-24 08:48:12', '2021-04-24 08:48:12', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2021-04-24 08:48:12', '2021-04-24 08:48:12', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/04/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 0, 'http://localhost/deocampo/shop/', 0, 'page', '', 0),
(37, 1, '2021-05-01 06:36:54', '2021-05-01 06:36:54', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 0, 'http://localhost/deocampo/cart/', 0, 'page', '', 0),
(38, 1, '2021-05-01 06:36:54', '2021-05-01 06:36:54', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 0, 'http://localhost/deocampo/checkout/', 0, 'page', '', 0),
(39, 1, '2021-05-01 06:36:54', '2021-05-01 06:36:54', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-05-01 06:36:54', '2021-05-01 06:36:54', '', 0, 'http://localhost/deocampo/my-account/', 0, 'page', '', 0),
(40, 1, '2021-05-01 06:51:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-01 06:51:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/deocampo/?p=40', 0, 'post', '', 0),
(41, 1, '2021-05-01 07:48:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-01 07:48:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/deocampo/?post_type=product&p=41', 0, 'product', '', 0),
(42, 1, '2021-05-01 07:59:22', '2021-05-01 07:59:22', '', '904b0cfec1f0949dae160140583cf464', '', 'inherit', 'open', 'closed', '', '904b0cfec1f0949dae160140583cf464', '', '', '2021-05-01 07:59:22', '2021-05-01 07:59:22', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/904b0cfec1f0949dae160140583cf464.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-05-01 07:59:23', '2021-05-01 07:59:23', '', '0030033-2', '', 'inherit', 'open', 'closed', '', '0030033-2', '', '', '2021-05-01 07:59:23', '2021-05-01 07:59:23', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/0030033-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-05-01 07:59:23', '2021-05-01 07:59:23', '', 'Chloe-My-Little-Chloe1', '', 'inherit', 'open', 'closed', '', 'chloe-my-little-chloe1', '', '', '2021-05-01 07:59:23', '2021-05-01 07:59:23', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/Chloe-My-Little-Chloe1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-05-01 07:59:24', '2021-05-01 07:59:24', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2021-05-01 07:59:24', '2021-05-01 07:59:24', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-05-01 07:59:25', '2021-05-01 07:59:25', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2021-05-01 07:59:25', '2021-05-01 07:59:25', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-05-01 07:59:25', '2021-05-01 07:59:25', '', 'download (3)', '', 'inherit', 'open', 'closed', '', 'download-3', '', '', '2021-05-01 07:59:25', '2021-05-01 07:59:25', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/download-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-05-01 07:59:26', '2021-05-01 07:59:26', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2021-05-01 07:59:26', '2021-05-01 07:59:26', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-05-01 07:59:27', '2021-05-01 07:59:27', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2021-05-01 07:59:27', '2021-05-01 07:59:27', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-05-01 07:59:28', '2021-05-01 07:59:28', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2021-05-01 07:59:28', '2021-05-01 07:59:28', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-05-01 07:59:29', '2021-05-01 07:59:29', '', 'JO-MALONE-BEST-SELLER-nm', '', 'inherit', 'open', 'closed', '', 'jo-malone-best-seller-nm', '', '', '2021-05-01 07:59:29', '2021-05-01 07:59:29', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/JO-MALONE-BEST-SELLER-nm.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-05-01 07:59:32', '2021-05-01 07:59:32', '', 'Jo-Malone-English-Pear-and-Freesia-Actual-400x400', '', 'inherit', 'open', 'closed', '', 'jo-malone-english-pear-and-freesia-actual-400x400', '', '', '2021-05-01 07:59:32', '2021-05-01 07:59:32', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/Jo-Malone-English-Pear-and-Freesia-Actual-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-05-01 08:49:02', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-01 08:49:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/deocampo/?post_type=product&p=53', 0, 'product', '', 0),
(54, 1, '2021-05-01 08:53:50', '2021-05-01 08:53:50', 'Scents', 'Jo Malone', 'Defined by a rather unconventional sense of sophistication. <b>Jo Malone</b> London is a British fragrance and lifestyle brand, with a contemporary point of view. Timeless and elegant but always infused with a charming dash of wit and whimsy.', 'publish', 'open', 'closed', '', 'jo-malone', '', '', '2021-05-01 08:53:50', '2021-05-01 08:53:50', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2021-05-01 09:49:47', '2021-05-01 09:49:47', 'Scents', 'Love Chloe', '<b>Love Story</b> by <b>Chloé</b> is a Floral fragrance for women. ... Perfumer Anne Flipo composed the new <b>Chloe</b> floral composition, which explores the note of orange blossom. The scent is clean and fresh, made from neroli, orange blossom and stephanotis (jasmine from Madagascar).', 'publish', 'open', 'closed', '', 'love-chloe', '', '', '2021-05-01 10:05:24', '2021-05-01 10:05:24', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2021-05-01 14:26:43', '2021-05-01 14:26:43', '', 'md', '', 'inherit', 'open', 'closed', '', 'md', '', '', '2021-05-01 14:26:43', '2021-05-01 14:26:43', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-05-01 14:26:44', '2021-05-01 14:26:44', '', 'md1', '', 'inherit', 'open', 'closed', '', 'md1', '', '', '2021-05-01 14:26:44', '2021-05-01 14:26:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-05-01 14:26:44', '2021-05-01 14:26:44', '', 'md2', '', 'inherit', 'open', 'closed', '', 'md2', '', '', '2021-05-01 14:26:44', '2021-05-01 14:26:44', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-05-01 14:26:45', '2021-05-01 14:26:45', '', 'md3', '', 'inherit', 'open', 'closed', '', 'md3', '', '', '2021-05-01 14:26:45', '2021-05-01 14:26:45', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md3.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-05-01 14:26:47', '2021-05-01 14:26:47', '', 'md4', '', 'inherit', 'open', 'closed', '', 'md4', '', '', '2021-05-01 14:26:47', '2021-05-01 14:26:47', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md4.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-05-01 14:26:47', '2021-05-01 14:26:47', '', 'md5', '', 'inherit', 'open', 'closed', '', 'md5', '', '', '2021-05-01 14:26:47', '2021-05-01 14:26:47', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/md5.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-05-01 14:28:42', '2021-05-01 14:28:42', 'Perfume', 'Miss Dior', '<b>Miss Dior</b> Eau de <b>Parfum</b> celebrates the beauty of a sensual Grasse Rose wrapped in fresh <b>notes</b> and woven with a lively Rosewood. Like a ribbon, fresh <b>notes</b> of Calabrian Bergamot wrap around the top <b>notes</b>. Its heart combines the beauty of Grasse Rose with the boldness of Damascus Rose.', 'publish', 'open', 'closed', '', 'miss-dior', '', '', '2021-05-01 14:28:42', '2021-05-01 14:28:42', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2021-05-01 14:33:57', '2021-05-01 14:33:57', 'Perfume', 'Chanel Chance', 'In Parfum form, the fragrance is voluptuous and full of contrast, with notes of Pink Pepper, Jasmine and Amber of Patchouli. A composition in turn floral, spicy, sensual and gourmand, with heightened floral and vanilla notes.', 'publish', 'open', 'closed', '', 'chanel-chance', '', '', '2021-05-01 14:33:57', '2021-05-01 14:33:57', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2021-05-01 14:32:58', '2021-05-01 14:32:58', '', 'c', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2021-05-01 14:32:58', '2021-05-01 14:32:58', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2021-05-01 14:32:59', '2021-05-01 14:32:59', '', 'c1', '', 'inherit', 'open', 'closed', '', 'c1', '', '', '2021-05-01 14:32:59', '2021-05-01 14:32:59', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2021-05-01 14:32:59', '2021-05-01 14:32:59', '', 'c2', '', 'inherit', 'open', 'closed', '', 'c2', '', '', '2021-05-01 14:32:59', '2021-05-01 14:32:59', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-05-01 14:33:00', '2021-05-01 14:33:00', '', 'c3', '', 'inherit', 'open', 'closed', '', 'c3', '', '', '2021-05-01 14:33:00', '2021-05-01 14:33:00', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c3.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-05-01 14:33:01', '2021-05-01 14:33:01', '', 'c4', '', 'inherit', 'open', 'closed', '', 'c4', '', '', '2021-05-01 14:33:01', '2021-05-01 14:33:01', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c4.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-05-01 14:33:03', '2021-05-01 14:33:03', '', 'c5', '', 'inherit', 'open', 'closed', '', 'c5', '', '', '2021-05-01 14:33:03', '2021-05-01 14:33:03', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/c5.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-05-01 14:39:22', '2021-05-01 14:39:22', 'Perfume', 'Tommy Girl', 'Tommy Hilfiger women\'s fragrance. A refreshing and energetic scent with top notes of black currant, mandarin orange and <b>apple</b> tree blossom; middle notes include honeysuckle, lily, violet, mint, grapefruit, <b>lemon</b> and rose; base notes are magnolia, leather, sandalwood, jasmine and cedar.', 'publish', 'open', 'closed', '', 'tommy-girl', '', '', '2021-05-01 14:39:22', '2021-05-01 14:39:22', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=70', 0, 'product', '', 0),
(71, 1, '2021-05-01 14:37:36', '2021-05-01 14:37:36', '', 'tg', '', 'inherit', 'open', 'closed', '', 'tg', '', '', '2021-05-01 14:37:36', '2021-05-01 14:37:36', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-05-01 14:37:36', '2021-05-01 14:37:36', '', 'tg1', '', 'inherit', 'open', 'closed', '', 'tg1', '', '', '2021-05-01 14:37:36', '2021-05-01 14:37:36', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2021-05-01 14:37:37', '2021-05-01 14:37:37', '', 'tg2', '', 'inherit', 'open', 'closed', '', 'tg2', '', '', '2021-05-01 14:37:37', '2021-05-01 14:37:37', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg2.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2021-05-01 14:37:38', '2021-05-01 14:37:38', '', 'tg3', '', 'inherit', 'open', 'closed', '', 'tg3', '', '', '2021-05-01 14:37:38', '2021-05-01 14:37:38', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg3.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2021-05-01 14:37:38', '2021-05-01 14:37:38', '', 'tg4', '', 'inherit', 'open', 'closed', '', 'tg4', '', '', '2021-05-01 14:37:38', '2021-05-01 14:37:38', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg4.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-05-01 14:37:39', '2021-05-01 14:37:39', '', 'tg5', '', 'inherit', 'open', 'closed', '', 'tg5', '', '', '2021-05-01 14:37:39', '2021-05-01 14:37:39', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/tg5.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2021-05-01 14:39:44', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-01 14:39:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/deocampo/?post_type=product&p=77', 0, 'product', '', 0),
(78, 1, '2021-05-01 14:39:45', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-01 14:39:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/deocampo/?post_type=product&p=78', 0, 'product', '', 0),
(79, 1, '2021-05-01 14:42:18', '0000-00-00 00:00:00', '', 'Elizabeth Arden', '', 'draft', 'open', 'closed', '', '', '', '', '2021-05-01 14:42:18', '2021-05-01 14:42:18', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2021-05-01 14:44:28', '2021-05-01 14:44:28', 'Perfume', 'Elizabeth Arden', '<h2>GREEN TEA</h2>\r\nFrom a lush, green world of freshness comes Elizabeth Arden Green Tea, the fragrance that energizes the body, excites the senses and invigorates the spirit.', 'publish', 'open', 'closed', '', 'elizabeth-arden', '', '', '2021-05-01 14:44:31', '2021-05-01 14:44:31', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2021-05-01 14:44:03', '2021-05-01 14:44:03', '', 'ea', '', 'inherit', 'open', 'closed', '', 'ea', '', '', '2021-05-01 14:44:03', '2021-05-01 14:44:03', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2021-05-01 14:44:04', '2021-05-01 14:44:04', '', 'ea1', '', 'inherit', 'open', 'closed', '', 'ea1', '', '', '2021-05-01 14:44:04', '2021-05-01 14:44:04', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2021-05-01 14:44:05', '2021-05-01 14:44:05', '', 'ea2', '', 'inherit', 'open', 'closed', '', 'ea2', '', '', '2021-05-01 14:44:05', '2021-05-01 14:44:05', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2021-05-01 14:44:05', '2021-05-01 14:44:05', '', 'ea3', '', 'inherit', 'open', 'closed', '', 'ea3', '', '', '2021-05-01 14:44:05', '2021-05-01 14:44:05', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea3.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2021-05-01 14:44:06', '2021-05-01 14:44:06', '', 'ea4', '', 'inherit', 'open', 'closed', '', 'ea4', '', '', '2021-05-01 14:44:06', '2021-05-01 14:44:06', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea4.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2021-05-01 14:44:07', '2021-05-01 14:44:07', '', 'ea5', '', 'inherit', 'open', 'closed', '', 'ea5', '', '', '2021-05-01 14:44:07', '2021-05-01 14:44:07', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/ea5.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2021-05-01 14:49:04', '2021-05-01 14:49:04', 'Perfume', 'Coach EDT', 'A modern <b>fragrance</b> which combines fresh, energetic top notes and a skin-like warm sensuality in the amber, woody base notes. Masculine yet refined, the <b>fragrance</b> starts with cool, fresh green Nashi pear, contrasted with spicy cardamom, and finishes with a textured vetiver base note, creating an aromatic, woody scent.', 'publish', 'open', 'closed', '', 'coach-edt', '', '', '2021-05-01 14:49:04', '2021-05-01 14:49:04', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2021-05-01 14:46:49', '2021-05-01 14:46:49', '', 'cm', '', 'inherit', 'open', 'closed', '', 'cm', '', '', '2021-05-01 14:46:49', '2021-05-01 14:46:49', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2021-05-01 14:46:50', '2021-05-01 14:46:50', '', 'cm1', '', 'inherit', 'open', 'closed', '', 'cm1', '', '', '2021-05-01 14:46:50', '2021-05-01 14:46:50', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2021-05-01 14:46:50', '2021-05-01 14:46:50', '', 'cm2', '', 'inherit', 'open', 'closed', '', 'cm2', '', '', '2021-05-01 14:46:50', '2021-05-01 14:46:50', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2021-05-01 14:46:51', '2021-05-01 14:46:51', '', 'cm3', '', 'inherit', 'open', 'closed', '', 'cm3', '', '', '2021-05-01 14:46:51', '2021-05-01 14:46:51', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm3.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2021-05-01 14:46:53', '2021-05-01 14:46:53', '', 'cm4', '', 'inherit', 'open', 'closed', '', 'cm4', '', '', '2021-05-01 14:46:53', '2021-05-01 14:46:53', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm4.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2021-05-01 14:46:54', '2021-05-01 14:46:54', '', 'cm5', '', 'inherit', 'open', 'closed', '', 'cm5', '', '', '2021-05-01 14:46:54', '2021-05-01 14:46:54', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/cm5.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2021-05-01 14:51:45', '0000-00-00 00:00:00', '', 'Bvlgari', '', 'draft', 'open', 'closed', '', '', '', '', '2021-05-01 14:51:45', '2021-05-01 14:51:45', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2021-05-01 14:52:03', '2021-05-01 14:52:03', '', 'b', '', 'inherit', 'open', 'closed', '', 'b', '', '', '2021-05-01 14:52:03', '2021-05-01 14:52:03', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2021-05-01 14:52:04', '2021-05-01 14:52:04', '', 'b1', '', 'inherit', 'open', 'closed', '', 'b1', '', '', '2021-05-01 14:52:04', '2021-05-01 14:52:04', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2021-05-01 14:52:05', '2021-05-01 14:52:05', '', 'b2', '', 'inherit', 'open', 'closed', '', 'b2', '', '', '2021-05-01 14:52:05', '2021-05-01 14:52:05', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2021-05-01 14:52:06', '2021-05-01 14:52:06', '', 'b3', '', 'inherit', 'open', 'closed', '', 'b3', '', '', '2021-05-01 14:52:06', '2021-05-01 14:52:06', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b3.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-05-01 14:52:07', '2021-05-01 14:52:07', '', 'b4', '', 'inherit', 'open', 'closed', '', 'b4', '', '', '2021-05-01 14:52:07', '2021-05-01 14:52:07', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b4.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-05-01 14:52:08', '2021-05-01 14:52:08', '', 'b5', '', 'inherit', 'open', 'closed', '', 'b5', '', '', '2021-05-01 14:52:08', '2021-05-01 14:52:08', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/b5.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-05-01 14:53:28', '2021-05-01 14:53:28', 'Perfume', 'Bvlgari', 'A fragrance of unadorned elegance, <b>BVLGARI Man</b> balances fresh, vibrant notes of citrusy bergamot with warmer tones of wood. At once <b>classic</b>, modern, and sensual, this everyday fragrance embodies masculine charisma.', 'publish', 'open', 'closed', '', 'bvlgari', '', '', '2021-05-01 14:53:28', '2021-05-01 14:53:28', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2021-05-01 14:59:16', '2021-05-01 14:59:16', 'Perfume', 'Versace', '<span class=\"a-list-item\">Woman by Versace for Women 3.4 oz Eau de Parfum Spray: Buy Versace Perfumes - Versace Woman is a fragrance that harmoniously combines the hints of Frangipani Blossoms and leaves with jasmine, bergamot and eglantine.An intensely sophisticated bouquet featuring the Padparadscha Lotus, the ritual flower of oriental ceremonies, then the fruity tones of plum and raspberry, blue cedar of Lebanon, musk, amber and inoke wood.</span>', 'publish', 'open', 'closed', '', 'versace', '', '', '2021-05-01 14:59:17', '2021-05-01 14:59:17', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2021-05-01 14:56:23', '2021-05-01 14:56:23', '', 'v', '', 'inherit', 'open', 'closed', '', 'v', '', '', '2021-05-01 14:56:23', '2021-05-01 14:56:23', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2021-05-01 14:56:23', '2021-05-01 14:56:23', '', 'v1', '', 'inherit', 'open', 'closed', '', 'v1', '', '', '2021-05-01 14:56:23', '2021-05-01 14:56:23', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2021-05-01 14:56:24', '2021-05-01 14:56:24', '', 'v2', '', 'inherit', 'open', 'closed', '', 'v2', '', '', '2021-05-01 14:56:24', '2021-05-01 14:56:24', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v2.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2021-05-01 14:56:25', '2021-05-01 14:56:25', '', 'v3', '', 'inherit', 'open', 'closed', '', 'v3', '', '', '2021-05-01 14:56:25', '2021-05-01 14:56:25', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v3.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2021-05-01 14:56:26', '2021-05-01 14:56:26', '', 'v4', '', 'inherit', 'open', 'closed', '', 'v4', '', '', '2021-05-01 14:56:26', '2021-05-01 14:56:26', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v4.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2021-05-01 14:56:28', '2021-05-01 14:56:28', '', 'v5', '', 'inherit', 'open', 'closed', '', 'v5', '', '', '2021-05-01 14:56:28', '2021-05-01 14:56:28', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/v5.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2021-05-01 14:58:22', '2021-05-01 14:58:22', '', 'dg', '', 'inherit', 'open', 'closed', '', 'dg', '', '', '2021-05-01 14:58:22', '2021-05-01 14:58:22', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2021-05-01 14:58:22', '2021-05-01 14:58:22', '', 'dg1', '', 'inherit', 'open', 'closed', '', 'dg1', '', '', '2021-05-01 14:58:22', '2021-05-01 14:58:22', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2021-05-01 14:58:23', '2021-05-01 14:58:23', '', 'dg2', '', 'inherit', 'open', 'closed', '', 'dg2', '', '', '2021-05-01 14:58:23', '2021-05-01 14:58:23', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg2.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2021-05-01 14:58:24', '2021-05-01 14:58:24', '', 'dg3', '', 'inherit', 'open', 'closed', '', 'dg3', '', '', '2021-05-01 14:58:24', '2021-05-01 14:58:24', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg3.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2021-05-01 14:58:25', '2021-05-01 14:58:25', '', 'dg4', '', 'inherit', 'open', 'closed', '', 'dg4', '', '', '2021-05-01 14:58:25', '2021-05-01 14:58:25', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg4.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2021-05-01 14:58:26', '2021-05-01 14:58:26', '', 'dg5', '', 'inherit', 'open', 'closed', '', 'dg5', '', '', '2021-05-01 14:58:26', '2021-05-01 14:58:26', '', 0, 'http://localhost/deocampo/wp-content/uploads/2021/05/dg5.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2021-05-01 15:01:03', '2021-05-01 15:01:03', 'Perfume', 'Dolce & Gabbana EDT', '<b>Dolce</b> and <b>Gabbana</b> is a refined, spicy, lavender, amber fragrance. This fragrance has a blend of lemon, orange, lavender, sage, cedar, and tobacco.', 'publish', 'open', 'closed', '', 'dolce-gabbana-edt', '', '', '2021-05-01 15:01:03', '2021-05-01 15:01:03', '', 0, 'http://localhost/deocampo/?post_type=product&#038;p=115', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(54, 2, 0),
(54, 15, 0),
(55, 2, 0),
(55, 15, 0),
(62, 2, 0),
(62, 15, 0),
(63, 2, 0),
(63, 15, 0),
(70, 2, 0),
(70, 15, 0),
(80, 2, 0),
(80, 15, 0),
(87, 2, 0),
(87, 15, 0),
(101, 2, 0),
(101, 15, 0),
(102, 2, 0),
(102, 15, 0),
(115, 2, 0),
(115, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 10),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'scentsph'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"f899f5466873a9359e1d12d79622b2e7f5782b0c55497de027052b6a5a97ddce\";a:4:{s:10:\"expiration\";i:1620017328;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619844528;}s:64:\"ceb304787c6f25044e23e158203213515b4b2524dc49fd020ffcc69513e48cb7\";a:4:{s:10:\"expiration\";i:1620051717;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619878917;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '40'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:m19u35MuegW6wsfYL4hYqxlQ'),
(19, 1, 'last_update', '1619851476'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1619851474439'),
(21, 1, 'dismissed_no_secure_connection_notice', '1'),
(22, 1, '_wc_plugin_framework_facebook_for_woocommerce_dismissed_messages', 'a:2:{s:36:\"facebook_for_woocommerce_get_started\";b:1;s:27:\"settings_moved_to_marketing\";b:1;}'),
(23, 1, 'wc_last_active', '1619827200'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1619859229'),
(26, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"b53b3a3d6ab90ce0268229151c9bde11\";a:6:{s:3:\"key\";s:32:\"b53b3a3d6ab90ce0268229151c9bde11\";s:10:\"product_id\";i:55;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'scentsph', '$P$B5MfIfQkqEce8DJh9SYtT.0EuEwKTT.', 'scentsph', 'patriziadeocampo@yahoo.com', 'http://localhost/deocampo', '2021-04-24 05:17:22', '', 0, 'scentsph');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(2, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(5, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-05-01 08:53:50', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-05-03 08:40:32', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-05-01 06:36:56', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'Learn more about variable products', 'Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 08:53:50', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-03 08:40:32', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-03 08:40:32', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week. We\'re here to help your business succeed! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-05-03 08:40:32', NULL, 0, 'plain', '', 0, 'info'),
(23, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'How to customize your product catalog', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-03 08:40:32', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(54, 19, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, ''),
(242, 20, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(243, 21, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
(244, 22, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(245, 23, 'day-after-first-product', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-customizer/?utm_source=inbox', 'actioned', 0, ''),
(246, 2, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, ''),
(247, 4, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(248, 5, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(249, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(250, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(251, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(252, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(253, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(254, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(255, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(256, 13, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, ''),
(257, 13, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, ''),
(258, 14, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
(259, 15, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
(260, 16, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(261, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, ''),
(262, 18, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(54, '', 0, 0, '1250.0000', '1250.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(55, '', 0, 0, '2000.0000', '2000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(62, '', 0, 0, '5800.0000', '5800.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(63, '', 0, 0, '5400.0000', '5400.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(70, '', 0, 0, '1098.5000', '1098.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, '', 0, 0, '500.0000', '500.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(87, '', 0, 0, '3195.0000', '3195.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '2800.0000', '2800.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(102, '', 0, 0, '2500.0000', '2500.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(115, '', 0, 0, '4450.0000', '4450.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(16, 'd4d5b422ef2f44cfc8c662ff4032123e', 'a:8:{s:4:\"cart\";s:414:\"a:1:{s:32:\"03afdbd66e7929b125f8597834fa83a4\";a:11:{s:3:\"key\";s:32:\"03afdbd66e7929b125f8597834fa83a4\";s:10:\"product_id\";i:63;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5400;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5400;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:411:\"a:15:{s:8:\"subtotal\";s:7:\"5400.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:7:\"5400.00\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"5400.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:693:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:3:\"CAV\";s:7:\"country\";s:2:\"PH\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:3:\"CAV\";s:16:\"shipping_country\";s:2:\"PH\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1620216607);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_ce4wp_abandoned_checkout`
--
ALTER TABLE `wp_ce4wp_abandoned_checkout`
  ADD PRIMARY KEY (`checkout_id`),
  ADD UNIQUE KEY `checkout_uuid` (`checkout_uuid`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_ce4wp_abandoned_checkout`
--
ALTER TABLE `wp_ce4wp_abandoned_checkout`
  MODIFY `checkout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
