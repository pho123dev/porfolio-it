-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2021 lúc 08:56 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `portolio`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
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
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-25 04:47:40', '2021-03-25 04:47:40', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
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
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/porfolio', 'yes'),
(2, 'home', 'http://localhost/porfolio', 'yes'),
(3, 'blogname', 'porfolio', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'levanpho.com@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:126:{s:11:\"san-pham/?$\";s:28:\"index.php?post_type=san-pham\";s:41:\"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=san-pham&feed=$matches[1]\";s:36:\"san-pham/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=san-pham&feed=$matches[1]\";s:28:\"san-pham/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=san-pham&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:17:\"chua-phan-loai/?$\";s:38:\"index.php?category_name=chua-phan-loai\";s:34:\"chua-phan-loai/page/([0-9]{1,})/?$\";s:56:\"index.php?category_name=chua-phan-loai&paged=$matches[1]\";s:52:\"chua-phan-loai/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?category_name=chua-phan-loai&feed=$matches[1]\";s:10:\"tin-tuc/?$\";s:31:\"index.php?category_name=tin-tuc\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:49:\"index.php?category_name=tin-tuc&paged=$matches[1]\";s:45:\"tin-tuc/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?category_name=tin-tuc&feed=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:41:\"index.php?san-pham=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:35:\"index.php?san-pham=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?san-pham=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?san-pham=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?san-pham=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?san-pham=$matches[1]&cpage=$matches[2]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?san-pham=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"san-pham-cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?san-pham-cat=$matches[1]&feed=$matches[2]\";s:48:\"san-pham-cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?san-pham-cat=$matches[1]&feed=$matches[2]\";s:29:\"san-pham-cat/([^/]+)/embed/?$\";s:45:\"index.php?san-pham-cat=$matches[1]&embed=true\";s:41:\"san-pham-cat/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?san-pham-cat=$matches[1]&paged=$matches[2]\";s:23:\"san-pham-cat/([^/]+)/?$\";s:34:\"index.php?san-pham-cat=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'theme-porfolio', 'yes'),
(41, 'stylesheet', 'theme-porfolio', 'yes'),
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
(56, 'thumbnail_size_w', '0', 'yes'),
(57, 'thumbnail_size_h', '0', 'yes'),
(58, 'thumbnail_crop', '', 'yes'),
(59, 'medium_size_w', '0', 'yes'),
(60, 'medium_size_h', '0', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '0', 'yes'),
(63, 'large_size_h', '0', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
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
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1632199659', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'vi', 'yes'),
(102, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"copyright\";a:0:{}s:6:\"footer\";a:0:{}s:7:\"sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1617608861;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1617628441;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617641261;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617684460;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617684469;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617684472;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617943660;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616657777;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'Porfolio IT', 'yes'),
(155, 'theme_mods_theme-porfolio', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:11:\"menu_footer\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'recovery_mode_email_last_sent', '1616657778', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'acf_version', '5.9.5', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(174, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617598075;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(175, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617598075;s:7:\"checked\";a:1:{s:14:\"theme-porfolio\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(186, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1617598074;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(187, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"levanpho.com@gmail.com\";s:7:\"version\";s:3:\"5.7\";s:9:\"timestamp\";i:1616721196;}', 'no'),
(189, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}}', 'yes'),
(203, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"4\",\"critical\":\"3\"}', 'yes'),
(218, 'new_admin_email', 'levanpho.com@gmail.com', 'yes'),
(266, 'options_social_zalo_icon', '70', 'no'),
(267, '_options_social_zalo_icon', 'field_60642d69b1ada', 'no'),
(268, 'options_social', '', 'no'),
(269, '_options_social', 'field_60642d43b1ad9', 'no'),
(306, 'san-pham-cat_children', 'a:0:{}', 'yes'),
(308, '_site_transient_timeout_browser_72766ab2b1c85af98adbbb9683600fdf', '1617936635', 'no'),
(309, '_site_transient_browser_72766ab2b1c85af98adbbb9683600fdf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(310, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1617936636', 'no'),
(311, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(322, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1617962655', 'no'),
(323, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(347, '_transient_timeout_acf_plugin_updates', '1617598112', 'no'),
(348, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}', 'no'),
(358, 'options_address', 'Số 366 Phan Văn Trị, Phường 5 <br>Gò Vấp, TP. Hồ Chí Minh', 'no'),
(359, '_options_address', 'field_606a94bf76520', 'no'),
(360, 'options_email', 'teamit@gmail.com', 'no'),
(361, '_options_email', 'field_606a94ca76521', 'no'),
(362, 'options_phone', '1900 66 89', 'no'),
(363, '_options_phone', 'field_606a950076522', 'no'),
(364, 'options_map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.8191039351914!2d106.68857221526045!3d10.825151561251415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f0ee3b7e17%3A0x81c1c949ec584eab!2zMzY2IMSQLiBQaGFuIFbEg24gVHLhu4ssIFBoxrDhu51uZyA1LCBHw7IgVuG6pXAsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1616807639235!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'no'),
(365, '_options_map', 'field_606a950c4edf9', 'no'),
(368, '_site_transient_timeout_theme_roots', '1617599875', 'no'),
(369, '_site_transient_theme_roots', 'a:1:{s:14:\"theme-porfolio\";s:7:\"/themes\";}', 'no'),
(370, 'options_ma_so_thue', '5801358357', 'no'),
(371, '_options_ma_so_thue', 'field_606a963fe3fdb', 'no'),
(372, 'options_facebook', '', 'no'),
(373, '_options_facebook', 'field_606a9659265e3', 'no'),
(374, 'options_zalo', '', 'no'),
(375, '_options_zalo', 'field_606a966b265e4', 'no'),
(376, 'options_youtube', '', 'no'),
(377, '_options_youtube', 'field_606a9677265e5', 'no'),
(379, 'options_about_page_product_title', 'Sản phẩm', 'no'),
(380, '_options_about_page_product_title', 'field_606ab1ac5b687', 'no'),
(381, 'options_about_page_product_sub_title', 'TEAM IT', 'no'),
(382, '_options_about_page_product_sub_title', 'field_606ab1b95b688', 'no'),
(383, 'options_about_page_product_content', 'Một số sản phẩm về các dự án gần đây do chúng tôi làm.\r\n\r\nChúng tôi đã thực hiện tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.\r\n\r\nNó chỉ là một trong số toàn bộ danh sách mà thôi.\r\n\r\nNếu muốn biết thêm chi tiết hãy <a href=\"/lien-he\">liên hệ</a> với chúng tôi', 'no'),
(384, '_options_about_page_product_content', 'field_606ab1c15b689', 'no'),
(385, 'options_about_page_product', '', 'no'),
(386, '_options_about_page_product', 'field_606ab1a65b686', 'no'),
(388, 'options_about_page_news_title', 'Tin tức', 'no'),
(389, '_options_about_page_news_title', 'field_606ab2a0c3067', 'no'),
(390, 'options_about_page_news_sub_title', 'TEAM IT', 'no'),
(391, '_options_about_page_news_sub_title', 'field_606ab2a0c3068', 'no'),
(392, 'options_about_page_news_content', 'Một số sản phẩm về các dự án gần đây do chúng tôi làm.\r\n\r\nChúng tôi đã thực hiện tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.\r\n\r\nNó chỉ là một trong số toàn bộ danh sách mà thôi.\r\n\r\nNếu muốn biết thêm chi tiết hãy <a href=\"/lien-he\">liên hệ</a> với chúng tôi', 'no'),
(393, '_options_about_page_news_content', 'field_606ab2a0c3069', 'no'),
(394, 'options_about_page_news', '', 'no'),
(395, '_options_about_page_news', 'field_606ab2a0c3066', 'no'),
(396, 'options_logo', '126', 'no'),
(397, '_options_logo', 'field_606ab3b828d38', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1616658818'),
(5, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1617598567:1'),
(8, 6, '_wp_page_template', 'page-templates/page-trang-chu.php'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1617604555:1'),
(11, 8, '_wp_page_template', 'page-templates/page-gioi-thieu.php'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1616659059:1'),
(14, 10, '_wp_page_template', 'page-templates/page-lien-he.php'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1617605409:1'),
(17, 12, '_wp_page_template', 'page-templates/page-ky-nang.php'),
(18, 14, '_menu_item_type', 'post_type'),
(19, 14, '_menu_item_menu_item_parent', '0'),
(20, 14, '_menu_item_object_id', '8'),
(21, 14, '_menu_item_object', 'page'),
(22, 14, '_menu_item_target', ''),
(23, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 14, '_menu_item_xfn', ''),
(25, 14, '_menu_item_url', ''),
(27, 15, '_menu_item_type', 'post_type'),
(28, 15, '_menu_item_menu_item_parent', '0'),
(29, 15, '_menu_item_object_id', '12'),
(30, 15, '_menu_item_object', 'page'),
(31, 15, '_menu_item_target', ''),
(32, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 15, '_menu_item_xfn', ''),
(34, 15, '_menu_item_url', ''),
(36, 16, '_menu_item_type', 'post_type'),
(37, 16, '_menu_item_menu_item_parent', '0'),
(38, 16, '_menu_item_object_id', '10'),
(39, 16, '_menu_item_object', 'page'),
(40, 16, '_menu_item_target', ''),
(41, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 16, '_menu_item_xfn', ''),
(43, 16, '_menu_item_url', ''),
(45, 17, '_menu_item_type', 'post_type'),
(46, 17, '_menu_item_menu_item_parent', '0'),
(47, 17, '_menu_item_object_id', '6'),
(48, 17, '_menu_item_object', 'page'),
(49, 17, '_menu_item_target', ''),
(50, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 17, '_menu_item_xfn', ''),
(52, 17, '_menu_item_url', ''),
(54, 18, '_menu_item_type', 'taxonomy'),
(55, 18, '_menu_item_menu_item_parent', '0'),
(56, 18, '_menu_item_object_id', '3'),
(57, 18, '_menu_item_object', 'category'),
(58, 18, '_menu_item_target', ''),
(59, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 18, '_menu_item_xfn', ''),
(61, 18, '_menu_item_url', ''),
(72, 21, '_edit_last', '1'),
(73, 21, '_edit_lock', '1616744266:1'),
(74, 22, '_wp_attached_file', '2021/03/Layer-155.png'),
(75, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:21:\"2021/03/Layer-155.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 23, '_wp_attached_file', '2021/03/Layer-156.png'),
(77, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:21:\"2021/03/Layer-156.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 24, '_wp_attached_file', '2021/03/Tao_Logo_Mascot_Kim_Loai_Truc_Tuyen_Mien_Phi5dad37ba68d76_6d464f2b404044f20d4d7ae74dbd3b32.png'),
(79, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:102:\"2021/03/Tao_Logo_Mascot_Kim_Loai_Truc_Tuyen_Mien_Phi5dad37ba68d76_6d464f2b404044f20d4d7ae74dbd3b32.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 25, '_wp_attached_file', '2021/03/vietdesignernet02062013bv.png'),
(81, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:37:\"2021/03/vietdesignernet02062013bv.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 26, '_wp_attached_file', '2021/03/41HBFxq0sVL.png'),
(83, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:23:\"2021/03/41HBFxq0sVL.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 27, '_wp_attached_file', '2021/03/43fa5b24-2a47-4d50-990b-cda7f2d0e0d6.png'),
(85, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:48:\"2021/03/43fa5b24-2a47-4d50-990b-cda7f2d0e0d6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 28, '_wp_attached_file', '2021/03/65ea15bd15a713.png'),
(87, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:26:\"2021/03/65ea15bd15a713.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 29, '_wp_attached_file', '2021/03/Chat-Nuts-01.png'),
(89, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:364;s:6:\"height\";i:365;s:4:\"file\";s:24:\"2021/03/Chat-Nuts-01.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 30, '_wp_attached_file', '2021/03/kinh-nghiem-thiet-ke-logo-spa-2.png'),
(91, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:364;s:6:\"height\";i:365;s:4:\"file\";s:43:\"2021/03/kinh-nghiem-thiet-ke-logo-spa-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 31, '_wp_attached_file', '2021/03/Layer-154.png'),
(93, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:21:\"2021/03/Layer-154.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 21, '_thumbnail_id', '25'),
(95, 32, '_edit_last', '1'),
(96, 32, '_edit_lock', '1616741448:1'),
(97, 32, '_thumbnail_id', '22'),
(98, 33, '_edit_last', '1'),
(99, 33, '_edit_lock', '1616741472:1'),
(100, 33, '_thumbnail_id', '30'),
(101, 34, '_edit_last', '1'),
(102, 34, '_edit_lock', '1616741505:1'),
(103, 34, '_thumbnail_id', '23'),
(104, 35, '_edit_last', '1'),
(105, 35, '_edit_lock', '1616741533:1'),
(106, 35, '_thumbnail_id', '31'),
(107, 36, '_edit_last', '1'),
(108, 36, '_edit_lock', '1616741558:1'),
(109, 36, '_thumbnail_id', '27'),
(110, 37, '_edit_last', '1'),
(111, 37, '_edit_lock', '1617332989:1'),
(112, 37, '_thumbnail_id', '24'),
(113, 38, '_edit_last', '1'),
(114, 38, '_edit_lock', '1616741655:1'),
(115, 38, '_thumbnail_id', '29'),
(116, 39, '_edit_last', '1'),
(117, 39, '_edit_lock', '1617331195:1'),
(118, 39, '_thumbnail_id', '28'),
(119, 40, '_edit_last', '1'),
(120, 40, '_edit_lock', '1617331187:1'),
(121, 40, '_thumbnail_id', '26'),
(122, 1, '_wp_trash_meta_status', 'publish'),
(123, 1, '_wp_trash_meta_time', '1616744416'),
(124, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(125, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(126, 43, '_edit_last', '1'),
(127, 43, '_edit_lock', '1617251149:1'),
(128, 44, '_wp_attached_file', '2021/03/website-marketing.png'),
(129, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:139;s:4:\"file\";s:29:\"2021/03/website-marketing.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 45, '_wp_attached_file', '2021/03/anh3-thiet-ke-layout.png'),
(131, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:139;s:4:\"file\";s:32:\"2021/03/anh3-thiet-ke-layout.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 46, '_wp_attached_file', '2021/03/anh5-thiet-ke-layout.png'),
(133, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:284;s:4:\"file\";s:32:\"2021/03/anh5-thiet-ke-layout.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 47, '_wp_attached_file', '2021/03/b85db4c9816f13371f54af5a6486a1ca.png'),
(135, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:139;s:4:\"file\";s:44:\"2021/03/b85db4c9816f13371f54af5a6486a1ca.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 43, '_thumbnail_id', '46'),
(138, 51, '_edit_last', '1'),
(139, 51, '_edit_lock', '1617268335:1'),
(140, 51, '_thumbnail_id', '45'),
(143, 54, '_edit_last', '1'),
(144, 54, '_edit_lock', '1616744801:1'),
(145, 54, '_thumbnail_id', '47'),
(147, 56, '_edit_last', '1'),
(148, 56, '_edit_lock', '1616744608:1'),
(149, 56, '_thumbnail_id', '44'),
(158, 59, '_edit_last', '1'),
(159, 59, '_wp_page_template', 'default'),
(160, 59, '_edit_lock', '1616818110:1'),
(161, 61, '_edit_last', '1'),
(162, 61, '_wp_page_template', 'default'),
(163, 61, '_edit_lock', '1616818118:1'),
(164, 3, '_edit_lock', '1616818153:1'),
(165, 3, '_edit_last', '1'),
(166, 64, '_menu_item_type', 'post_type'),
(167, 64, '_menu_item_menu_item_parent', '0'),
(168, 64, '_menu_item_object_id', '3'),
(169, 64, '_menu_item_object', 'page'),
(170, 64, '_menu_item_target', ''),
(171, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 64, '_menu_item_xfn', ''),
(173, 64, '_menu_item_url', ''),
(175, 65, '_menu_item_type', 'post_type'),
(176, 65, '_menu_item_menu_item_parent', '0'),
(177, 65, '_menu_item_object_id', '61'),
(178, 65, '_menu_item_object', 'page'),
(179, 65, '_menu_item_target', ''),
(180, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 65, '_menu_item_xfn', ''),
(182, 65, '_menu_item_url', ''),
(184, 66, '_menu_item_type', 'post_type'),
(185, 66, '_menu_item_menu_item_parent', '0'),
(186, 66, '_menu_item_object_id', '59'),
(187, 66, '_menu_item_object', 'page'),
(188, 66, '_menu_item_target', ''),
(189, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 66, '_menu_item_xfn', ''),
(191, 66, '_menu_item_url', ''),
(193, 67, '_edit_last', '1'),
(194, 67, '_edit_lock', '1617605704:1'),
(195, 70, '_wp_attached_file', '2021/03/Layer171.png'),
(196, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:23;s:6:\"height\";i:10;s:4:\"file\";s:20:\"2021/03/Layer171.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 71, '_edit_last', '1'),
(198, 71, '_edit_lock', '1617604353:1'),
(199, 78, '_wp_attached_file', '2021/03/unnameds.png'),
(200, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:331;s:4:\"file\";s:20:\"2021/03/unnameds.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 79, '_wp_attached_file', '2021/03/chan-dung-nu-2-1180x760-1.png'),
(202, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:331;s:4:\"file\";s:37:\"2021/03/chan-dung-nu-2-1180x760-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 80, '_wp_attached_file', '2021/03/unnamed-2.png'),
(204, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:331;s:4:\"file\";s:21:\"2021/03/unnamed-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 8, 'number_list_number_0_image', '78'),
(206, 8, '_number_list_number_0_image', 'field_60643667e0c85'),
(207, 8, 'number_list_number_0_title', 'Nguyễn Việt Hoàng'),
(208, 8, '_number_list_number_0_title', 'field_60643670e0c86'),
(209, 8, 'number_list_number_0_position', 'IT'),
(210, 8, '_number_list_number_0_position', 'field_60643675e0c87'),
(211, 8, 'number_list_number_0_link', ''),
(212, 8, '_number_list_number_0_link', 'field_60643680e0c88'),
(213, 8, 'number_list_number_1_image', '80'),
(214, 8, '_number_list_number_1_image', 'field_60643667e0c85'),
(215, 8, 'number_list_number_1_title', 'Đỗ Văn An'),
(216, 8, '_number_list_number_1_title', 'field_60643670e0c86'),
(217, 8, 'number_list_number_1_position', 'IT'),
(218, 8, '_number_list_number_1_position', 'field_60643675e0c87'),
(219, 8, 'number_list_number_1_link', ''),
(220, 8, '_number_list_number_1_link', 'field_60643680e0c88'),
(221, 8, 'number_list_number_2_image', '79'),
(222, 8, '_number_list_number_2_image', 'field_60643667e0c85'),
(223, 8, 'number_list_number_2_title', 'Trần Ngọc Hân'),
(224, 8, '_number_list_number_2_title', 'field_60643670e0c86'),
(225, 8, 'number_list_number_2_position', 'DESIGNER'),
(226, 8, '_number_list_number_2_position', 'field_60643675e0c87'),
(227, 8, 'number_list_number_2_link', ''),
(228, 8, '_number_list_number_2_link', 'field_60643680e0c88'),
(229, 8, 'number_list_number', '4'),
(230, 8, '_number_list_number', 'field_606435f4e0c84'),
(231, 8, 'number', ''),
(232, 8, '_number', 'field_606435e3e0c83'),
(233, 81, 'number_list_number_0_image', '78'),
(234, 81, '_number_list_number_0_image', 'field_60643667e0c85'),
(235, 81, 'number_list_number_0_title', 'Nguyễn Việt Hoàng'),
(236, 81, '_number_list_number_0_title', 'field_60643670e0c86'),
(237, 81, 'number_list_number_0_position', 'IT'),
(238, 81, '_number_list_number_0_position', 'field_60643675e0c87'),
(239, 81, 'number_list_number_0_link', ''),
(240, 81, '_number_list_number_0_link', 'field_60643680e0c88'),
(241, 81, 'number_list_number_1_image', '80'),
(242, 81, '_number_list_number_1_image', 'field_60643667e0c85'),
(243, 81, 'number_list_number_1_title', 'Đỗ Văn An'),
(244, 81, '_number_list_number_1_title', 'field_60643670e0c86'),
(245, 81, 'number_list_number_1_position', 'IT'),
(246, 81, '_number_list_number_1_position', 'field_60643675e0c87'),
(247, 81, 'number_list_number_1_link', ''),
(248, 81, '_number_list_number_1_link', 'field_60643680e0c88'),
(249, 81, 'number_list_number_2_image', '79'),
(250, 81, '_number_list_number_2_image', 'field_60643667e0c85'),
(251, 81, 'number_list_number_2_title', 'Trần Ngọc Hân'),
(252, 81, '_number_list_number_2_title', 'field_60643670e0c86'),
(253, 81, 'number_list_number_2_position', 'DESIGNER'),
(254, 81, '_number_list_number_2_position', 'field_60643675e0c87'),
(255, 81, 'number_list_number_2_link', ''),
(256, 81, '_number_list_number_2_link', 'field_60643680e0c88'),
(257, 81, 'number_list_number', '3'),
(258, 81, '_number_list_number', 'field_606435f4e0c84'),
(259, 81, 'number', ''),
(260, 81, '_number', 'field_606435e3e0c83'),
(261, 8, 'number_list_number_3_image', '80'),
(262, 8, '_number_list_number_3_image', 'field_60643667e0c85'),
(263, 8, 'number_list_number_3_title', 'Đỗ Văn An'),
(264, 8, '_number_list_number_3_title', 'field_60643670e0c86'),
(265, 8, 'number_list_number_3_position', 'IT'),
(266, 8, '_number_list_number_3_position', 'field_60643675e0c87'),
(267, 8, 'number_list_number_3_link', ''),
(268, 8, '_number_list_number_3_link', 'field_60643680e0c88'),
(269, 82, 'number_list_number_0_image', '78'),
(270, 82, '_number_list_number_0_image', 'field_60643667e0c85'),
(271, 82, 'number_list_number_0_title', 'Nguyễn Việt Hoàng'),
(272, 82, '_number_list_number_0_title', 'field_60643670e0c86'),
(273, 82, 'number_list_number_0_position', 'IT'),
(274, 82, '_number_list_number_0_position', 'field_60643675e0c87'),
(275, 82, 'number_list_number_0_link', ''),
(276, 82, '_number_list_number_0_link', 'field_60643680e0c88'),
(277, 82, 'number_list_number_1_image', '80'),
(278, 82, '_number_list_number_1_image', 'field_60643667e0c85'),
(279, 82, 'number_list_number_1_title', 'Đỗ Văn An'),
(280, 82, '_number_list_number_1_title', 'field_60643670e0c86'),
(281, 82, 'number_list_number_1_position', 'IT'),
(282, 82, '_number_list_number_1_position', 'field_60643675e0c87'),
(283, 82, 'number_list_number_1_link', ''),
(284, 82, '_number_list_number_1_link', 'field_60643680e0c88'),
(285, 82, 'number_list_number_2_image', '79'),
(286, 82, '_number_list_number_2_image', 'field_60643667e0c85'),
(287, 82, 'number_list_number_2_title', 'Trần Ngọc Hân'),
(288, 82, '_number_list_number_2_title', 'field_60643670e0c86'),
(289, 82, 'number_list_number_2_position', 'DESIGNER'),
(290, 82, '_number_list_number_2_position', 'field_60643675e0c87'),
(291, 82, 'number_list_number_2_link', ''),
(292, 82, '_number_list_number_2_link', 'field_60643680e0c88'),
(293, 82, 'number_list_number', '4'),
(294, 82, '_number_list_number', 'field_606435f4e0c84'),
(295, 82, 'number', ''),
(296, 82, '_number', 'field_606435e3e0c83'),
(297, 82, 'number_list_number_3_image', '80'),
(298, 82, '_number_list_number_3_image', 'field_60643667e0c85'),
(299, 82, 'number_list_number_3_title', 'Đỗ Văn An'),
(300, 82, '_number_list_number_3_title', 'field_60643670e0c86'),
(301, 82, 'number_list_number_3_position', 'IT'),
(302, 82, '_number_list_number_3_position', 'field_60643675e0c87'),
(303, 82, 'number_list_number_3_link', ''),
(304, 82, '_number_list_number_3_link', 'field_60643680e0c88'),
(305, 83, '_menu_item_type', 'custom'),
(306, 83, '_menu_item_menu_item_parent', '0'),
(307, 83, '_menu_item_object_id', '83'),
(308, 83, '_menu_item_object', 'custom'),
(309, 83, '_menu_item_target', ''),
(310, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 83, '_menu_item_xfn', ''),
(312, 83, '_menu_item_url', '/porfolio/san-pham/'),
(314, 17, '_wp_old_date', '2021-03-25'),
(315, 14, '_wp_old_date', '2021-03-25'),
(316, 15, '_wp_old_date', '2021-03-25'),
(317, 18, '_wp_old_date', '2021-03-25'),
(318, 16, '_wp_old_date', '2021-03-25'),
(322, 87, '_edit_last', '1'),
(323, 87, '_edit_lock', '1617326930:1'),
(324, 89, '_wp_attached_file', '2021/04/k-tree-copy-2.png'),
(325, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:196;s:4:\"file\";s:25:\"2021/04/k-tree-copy-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 90, '_wp_attached_file', '2021/04/Thiet-ke-website-ho-chi-minh-copy-2.png'),
(327, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:196;s:4:\"file\";s:47:\"2021/04/Thiet-ke-website-ho-chi-minh-copy-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 87, '_thumbnail_id', '90'),
(330, 88, '_edit_last', '1'),
(331, 88, '_thumbnail_id', '89'),
(333, 88, '_edit_lock', '1617270399:1'),
(337, 94, '_edit_last', '1'),
(338, 94, '_edit_lock', '1617326931:1'),
(339, 94, '_thumbnail_id', '90'),
(341, 99, '_edit_last', '1'),
(342, 99, '_edit_lock', '1617598434:1'),
(343, 6, 'about_top_title', 'chúng tôi là đội ngũ it'),
(344, 6, '_about_top_title', 'field_606a844897138'),
(345, 6, 'about_top_sub_title', 'Làm việc tại DIVA MEDIA'),
(346, 6, '_about_top_sub_title', 'field_606a844e97139'),
(347, 6, 'about_top_button_text', 'Xem thêm về chúng tôi'),
(348, 6, '_about_top_button_text', 'field_606a84569713a'),
(349, 6, 'about_top_button_link', '/gioi-thieu'),
(350, 6, '_about_top_button_link', 'field_606a84619713b'),
(351, 6, 'about_top', ''),
(352, 6, '_about_top', 'field_606a843097137'),
(353, 6, 'about_bottom_title', 'Kĩ năng làm việc'),
(354, 6, '_about_bottom_title', 'field_606a84759713d'),
(355, 6, 'about_bottom_sub_title', 'TEAM IT'),
(356, 6, '_about_bottom_sub_title', 'field_606a847b9713e'),
(357, 6, 'about_bottom_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>\r\nBạn sẽ biết thêm về tôi với <a href=\"/ki-năng\">kĩ năng</a> và <a href=\"/san-pham\">sản phẩm</a>'),
(358, 6, '_about_bottom_content', 'field_606a84839713f'),
(359, 6, 'about_bottom', ''),
(360, 6, '_about_bottom', 'field_606a846b9713c'),
(361, 6, 'about', ''),
(362, 6, '_about', 'field_606a8315d0374'),
(363, 115, 'about_top_title', 'chúng tôi là đội ngũ it'),
(364, 115, '_about_top_title', 'field_606a844897138'),
(365, 115, 'about_top_sub_title', 'Làm việc tại DIVA MEDIA'),
(366, 115, '_about_top_sub_title', 'field_606a844e97139'),
(367, 115, 'about_top_button_text', 'Xem thêm về chúng tôi'),
(368, 115, '_about_top_button_text', 'field_606a84569713a'),
(369, 115, 'about_top_button_link', '/gioi-thieu'),
(370, 115, '_about_top_button_link', 'field_606a84619713b'),
(371, 115, 'about_top', ''),
(372, 115, '_about_top', 'field_606a843097137'),
(373, 115, 'about_bottom_title', 'Kĩ năng làm việc'),
(374, 115, '_about_bottom_title', 'field_606a84759713d'),
(375, 115, 'about_bottom_sub_title', 'TEAM IT'),
(376, 115, '_about_bottom_sub_title', 'field_606a847b9713e'),
(377, 115, 'about_bottom_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>\r\nBạn sẽ biết thêm về tôi với <a href=\"/ki-năng\">kĩ năng</a> và <a href=\"/san-pham\">sản phẩm</a>'),
(378, 115, '_about_bottom_content', 'field_606a84839713f'),
(379, 115, 'about_bottom', ''),
(380, 115, '_about_bottom', 'field_606a846b9713c'),
(381, 115, 'about', ''),
(382, 115, '_about', 'field_606a8315d0374'),
(383, 6, 'about_title', 'Trang chủ'),
(384, 6, '_about_title', 'field_606a890236fd9'),
(385, 117, 'about_top_title', 'chúng tôi là đội ngũ it'),
(386, 117, '_about_top_title', 'field_606a844897138'),
(387, 117, 'about_top_sub_title', 'Làm việc tại DIVA MEDIA'),
(388, 117, '_about_top_sub_title', 'field_606a844e97139'),
(389, 117, 'about_top_button_text', 'Xem thêm về chúng tôi'),
(390, 117, '_about_top_button_text', 'field_606a84569713a'),
(391, 117, 'about_top_button_link', '/gioi-thieu'),
(392, 117, '_about_top_button_link', 'field_606a84619713b'),
(393, 117, 'about_top', ''),
(394, 117, '_about_top', 'field_606a843097137'),
(395, 117, 'about_bottom_title', 'Kĩ năng làm việc'),
(396, 117, '_about_bottom_title', 'field_606a84759713d'),
(397, 117, 'about_bottom_sub_title', 'TEAM IT'),
(398, 117, '_about_bottom_sub_title', 'field_606a847b9713e'),
(399, 117, 'about_bottom_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>\r\nBạn sẽ biết thêm về tôi với <a href=\"/ki-năng\">kĩ năng</a> và <a href=\"/san-pham\">sản phẩm</a>'),
(400, 117, '_about_bottom_content', 'field_606a84839713f'),
(401, 117, 'about_bottom', ''),
(402, 117, '_about_bottom', 'field_606a846b9713c'),
(403, 117, 'about', ''),
(404, 117, '_about', 'field_606a8315d0374'),
(405, 117, 'about_title', 'Trang chủ'),
(406, 117, '_about_title', 'field_606a890236fd9'),
(407, 124, '_wp_attached_file', '2021/04/Layer166.png'),
(408, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:805;s:6:\"height\";i:578;s:4:\"file\";s:20:\"2021/04/Layer166.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 125, '_wp_attached_file', '2021/04/Layer171.png'),
(410, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:23;s:6:\"height\";i:10;s:4:\"file\";s:20:\"2021/04/Layer171.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 126, '_wp_attached_file', '2021/04/logoNTA.png'),
(412, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2021/04/logoNTA.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 127, '_wp_attached_file', '2021/04/Untitled-1.jpg'),
(414, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:492;s:4:\"file\";s:22:\"2021/04/Untitled-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 128, '_wp_attached_file', '2021/04/20191110_121849_662425_dung-may-tinh.max-800x800-1.png'),
(416, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:518;s:4:\"file\";s:62:\"2021/04/20191110_121849_662425_dung-may-tinh.max-800x800-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(417, 6, 'contact_title', 'Liện hệ'),
(418, 6, '_contact_title', 'field_606a905eb96d5'),
(419, 6, 'contact_sub_title', 'TEAM IT'),
(420, 6, '_contact_sub_title', 'field_606a9063b96d6'),
(421, 6, 'contact_content', 'Tôi quan tâm các cơ hội làm việc với các dự án lớn. Tuy nhiên, nếu bạn có yêu cầu hoặc câu hỏi , đừng ngần ngại điền các thông tin vào đây.'),
(422, 6, '_contact_content', 'field_606a906db96d7'),
(423, 6, 'contact_image', '128'),
(424, 6, '_contact_image', 'field_606a907bb96d8'),
(425, 6, 'contact', ''),
(426, 6, '_contact', 'field_606a902cb96d4'),
(427, 129, 'about_top_title', 'chúng tôi là đội ngũ it'),
(428, 129, '_about_top_title', 'field_606a844897138'),
(429, 129, 'about_top_sub_title', 'Làm việc tại DIVA MEDIA'),
(430, 129, '_about_top_sub_title', 'field_606a844e97139'),
(431, 129, 'about_top_button_text', 'Xem thêm về chúng tôi'),
(432, 129, '_about_top_button_text', 'field_606a84569713a'),
(433, 129, 'about_top_button_link', '/gioi-thieu'),
(434, 129, '_about_top_button_link', 'field_606a84619713b'),
(435, 129, 'about_top', ''),
(436, 129, '_about_top', 'field_606a843097137'),
(437, 129, 'about_bottom_title', 'Kĩ năng làm việc'),
(438, 129, '_about_bottom_title', 'field_606a84759713d'),
(439, 129, 'about_bottom_sub_title', 'TEAM IT'),
(440, 129, '_about_bottom_sub_title', 'field_606a847b9713e'),
(441, 129, 'about_bottom_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>\r\nBạn sẽ biết thêm về tôi với <a href=\"/ki-năng\">kĩ năng</a> và <a href=\"/san-pham\">sản phẩm</a>'),
(442, 129, '_about_bottom_content', 'field_606a84839713f'),
(443, 129, 'about_bottom', ''),
(444, 129, '_about_bottom', 'field_606a846b9713c'),
(445, 129, 'about', ''),
(446, 129, '_about', 'field_606a8315d0374'),
(447, 129, 'about_title', 'Trang chủ'),
(448, 129, '_about_title', 'field_606a890236fd9'),
(449, 129, 'contact_title', 'Liện hệ'),
(450, 129, '_contact_title', 'field_606a905eb96d5'),
(451, 129, 'contact_sub_title', 'TEAM IT'),
(452, 129, '_contact_sub_title', 'field_606a9063b96d6'),
(453, 129, 'contact_content', 'Tôi quan tâm các cơ hội làm việc với các dự án lớn. Tuy nhiên, nếu bạn có yêu cầu hoặc câu hỏi , đừng ngần ngại điền các thông tin vào đây.'),
(454, 129, '_contact_content', 'field_606a906db96d7'),
(455, 129, 'contact_image', '128'),
(456, 129, '_contact_image', 'field_606a907bb96d8'),
(457, 129, 'contact', ''),
(458, 129, '_contact', 'field_606a902cb96d4'),
(459, 6, 'product_background', '127'),
(460, 6, '_product_background', 'field_606a92c978509'),
(461, 6, 'product_title', 'Sản phẩm'),
(462, 6, '_product_title', 'field_606a92d87850a'),
(463, 6, 'product_sub_title', 'TEAM IT'),
(464, 6, '_product_sub_title', 'field_606a92e07850b'),
(465, 6, 'product_content', 'Một số sản phẩm về các dự án gần đây do chúng tôi làm. Chúng tôi đã thực hiện tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.\r\n\r\nNó chỉ là một trong số toàn bộ danh sách mà thôi.\r\n<div class=\"_btn\"><a href=\"/san-pham\">Xem thêm sản phẩm khác</a></div>'),
(466, 6, '_product_content', 'field_606a92eb7850c'),
(467, 6, 'product', ''),
(468, 6, '_product', 'field_606a92b478508'),
(469, 136, 'about_top_title', 'chúng tôi là đội ngũ it'),
(470, 136, '_about_top_title', 'field_606a844897138'),
(471, 136, 'about_top_sub_title', 'Làm việc tại DIVA MEDIA'),
(472, 136, '_about_top_sub_title', 'field_606a844e97139'),
(473, 136, 'about_top_button_text', 'Xem thêm về chúng tôi'),
(474, 136, '_about_top_button_text', 'field_606a84569713a'),
(475, 136, 'about_top_button_link', '/gioi-thieu'),
(476, 136, '_about_top_button_link', 'field_606a84619713b'),
(477, 136, 'about_top', ''),
(478, 136, '_about_top', 'field_606a843097137'),
(479, 136, 'about_bottom_title', 'Kĩ năng làm việc'),
(480, 136, '_about_bottom_title', 'field_606a84759713d'),
(481, 136, 'about_bottom_sub_title', 'TEAM IT'),
(482, 136, '_about_bottom_sub_title', 'field_606a847b9713e'),
(483, 136, 'about_bottom_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>\r\nBạn sẽ biết thêm về tôi với <a href=\"/ki-năng\">kĩ năng</a> và <a href=\"/san-pham\">sản phẩm</a>'),
(484, 136, '_about_bottom_content', 'field_606a84839713f'),
(485, 136, 'about_bottom', ''),
(486, 136, '_about_bottom', 'field_606a846b9713c'),
(487, 136, 'about', ''),
(488, 136, '_about', 'field_606a8315d0374'),
(489, 136, 'about_title', 'Trang chủ'),
(490, 136, '_about_title', 'field_606a890236fd9'),
(491, 136, 'contact_title', 'Liện hệ'),
(492, 136, '_contact_title', 'field_606a905eb96d5'),
(493, 136, 'contact_sub_title', 'TEAM IT'),
(494, 136, '_contact_sub_title', 'field_606a9063b96d6'),
(495, 136, 'contact_content', 'Tôi quan tâm các cơ hội làm việc với các dự án lớn. Tuy nhiên, nếu bạn có yêu cầu hoặc câu hỏi , đừng ngần ngại điền các thông tin vào đây.'),
(496, 136, '_contact_content', 'field_606a906db96d7'),
(497, 136, 'contact_image', '128'),
(498, 136, '_contact_image', 'field_606a907bb96d8'),
(499, 136, 'contact', ''),
(500, 136, '_contact', 'field_606a902cb96d4'),
(501, 136, 'product_background', '127'),
(502, 136, '_product_background', 'field_606a92c978509'),
(503, 136, 'product_title', 'Sản phẩm'),
(504, 136, '_product_title', 'field_606a92d87850a'),
(505, 136, 'product_sub_title', 'TEAM IT'),
(506, 136, '_product_sub_title', 'field_606a92e07850b'),
(507, 136, 'product_content', 'Một số sản phẩm về các dự án gần đây do chúng tôi làm. Chúng tôi đã thực hiện tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.\r\n\r\nNó chỉ là một trong số toàn bộ danh sách mà thôi.\r\n<div class=\"_btn\"><a href=\"/san-pham\">Xem thêm sản phẩm khác</a></div>'),
(508, 136, '_product_content', 'field_606a92eb7850c'),
(509, 136, 'product', ''),
(510, 136, '_product', 'field_606a92b478508'),
(511, 8, 'about_title', 'GIỚI THIỆU'),
(512, 8, '_about_title', 'field_606a985db5c5e'),
(513, 8, 'about_top_title', 'Hành trình phát triển'),
(514, 8, '_about_top_title', 'field_606a985db5c60'),
(515, 8, 'about_top_sub_title', 'TEAM IT'),
(516, 8, '_about_top_sub_title', 'field_606a985db5c61'),
(517, 8, 'about_top_content', 'Với gần 10 năm kinh nghiệm, đã hoàn thành 500 website trên nhiều lĩnh vực khác nhau, Team It tự tin đáp ứng toàn bộ nhu cầu của khách hàng, có thể tư vấn toàn bộ thông tin, thi công toàn bộ yêu cầu của quý khách.'),
(518, 8, '_about_top_content', 'field_606a98b2f77bd'),
(519, 8, 'about_top', ''),
(520, 8, '_about_top', 'field_606a985db5c5f'),
(521, 8, 'about_bottom_title', 'Các giá  trị'),
(522, 8, '_about_bottom_title', 'field_606a985db5c65'),
(523, 8, 'about_bottom_sub_title', 'CƠ BẢN'),
(524, 8, '_about_bottom_sub_title', 'field_606a985db5c66'),
(525, 8, 'about_bottom_content', 'Ý tưởng thiết kế được dựa trên yêu cầu, nhu cầu thực tế của khách hàng.\r\n\r\nMỗi website là một tác phẩm mang tính đặc trưng riêng, không sao\r\nchép hoặc tái sử dụng lại.\r\n\r\nTrong công việc, tính kỷ luật cao, tác phong chuyên nghiệp\r\nlà giá trị cốt lõi, là truyền thống, là văn hóa của Team It'),
(526, 8, '_about_bottom_content', 'field_606a985db5c67'),
(527, 8, 'about_bottom', ''),
(528, 8, '_about_bottom', 'field_606a985db5c64'),
(529, 8, 'about', ''),
(530, 8, '_about', 'field_606a985db5c5d'),
(531, 158, 'number_list_number_0_image', '78'),
(532, 158, '_number_list_number_0_image', 'field_60643667e0c85'),
(533, 158, 'number_list_number_0_title', 'Nguyễn Việt Hoàng'),
(534, 158, '_number_list_number_0_title', 'field_60643670e0c86'),
(535, 158, 'number_list_number_0_position', 'IT'),
(536, 158, '_number_list_number_0_position', 'field_60643675e0c87'),
(537, 158, 'number_list_number_0_link', ''),
(538, 158, '_number_list_number_0_link', 'field_60643680e0c88'),
(539, 158, 'number_list_number_1_image', '80'),
(540, 158, '_number_list_number_1_image', 'field_60643667e0c85'),
(541, 158, 'number_list_number_1_title', 'Đỗ Văn An'),
(542, 158, '_number_list_number_1_title', 'field_60643670e0c86'),
(543, 158, 'number_list_number_1_position', 'IT'),
(544, 158, '_number_list_number_1_position', 'field_60643675e0c87'),
(545, 158, 'number_list_number_1_link', ''),
(546, 158, '_number_list_number_1_link', 'field_60643680e0c88'),
(547, 158, 'number_list_number_2_image', '79'),
(548, 158, '_number_list_number_2_image', 'field_60643667e0c85'),
(549, 158, 'number_list_number_2_title', 'Trần Ngọc Hân'),
(550, 158, '_number_list_number_2_title', 'field_60643670e0c86'),
(551, 158, 'number_list_number_2_position', 'DESIGNER'),
(552, 158, '_number_list_number_2_position', 'field_60643675e0c87'),
(553, 158, 'number_list_number_2_link', ''),
(554, 158, '_number_list_number_2_link', 'field_60643680e0c88'),
(555, 158, 'number_list_number', '4'),
(556, 158, '_number_list_number', 'field_606435f4e0c84'),
(557, 158, 'number', ''),
(558, 158, '_number', 'field_606435e3e0c83'),
(559, 158, 'number_list_number_3_image', '80'),
(560, 158, '_number_list_number_3_image', 'field_60643667e0c85'),
(561, 158, 'number_list_number_3_title', 'Đỗ Văn An'),
(562, 158, '_number_list_number_3_title', 'field_60643670e0c86'),
(563, 158, 'number_list_number_3_position', 'IT'),
(564, 158, '_number_list_number_3_position', 'field_60643675e0c87'),
(565, 158, 'number_list_number_3_link', ''),
(566, 158, '_number_list_number_3_link', 'field_60643680e0c88'),
(567, 158, 'about_title', 'GIỚI THIỆU'),
(568, 158, '_about_title', 'field_606a985db5c5e'),
(569, 158, 'about_top_title', 'Hành trình phát triển'),
(570, 158, '_about_top_title', 'field_606a985db5c60'),
(571, 158, 'about_top_sub_title', 'TEAM IT'),
(572, 158, '_about_top_sub_title', 'field_606a985db5c61'),
(573, 158, 'about_top_content', 'Với gần 10 năm kinh nghiệm, đã hoàn thành 500 website trên nhiều lĩnh vực khác nhau, Team It tự tin đáp ứng toàn bộ nhu cầu của khách hàng, có thể tư vấn toàn bộ thông tin, thi công toàn bộ yêu cầu của quý khách.'),
(574, 158, '_about_top_content', 'field_606a98b2f77bd'),
(575, 158, 'about_top', ''),
(576, 158, '_about_top', 'field_606a985db5c5f'),
(577, 158, 'about_bottom_title', 'Các giá  trị'),
(578, 158, '_about_bottom_title', 'field_606a985db5c65'),
(579, 158, 'about_bottom_sub_title', 'CƠ BẢN'),
(580, 158, '_about_bottom_sub_title', 'field_606a985db5c66'),
(581, 158, 'about_bottom_content', 'Ý tưởng thiết kế được dựa trên yêu cầu, nhu cầu thực tế của khách hàng.\r\n\r\nMỗi website là một tác phẩm mang tính đặc trưng riêng, không sao\r\nchép hoặc tái sử dụng lại.\r\n\r\nTrong công việc, tính kỷ luật cao, tác phong chuyên nghiệp\r\nlà giá trị cốt lõi, là truyền thống, là văn hóa của Team It'),
(582, 158, '_about_bottom_content', 'field_606a985db5c67'),
(583, 158, 'about_bottom', ''),
(584, 158, '_about_bottom', 'field_606a985db5c64'),
(585, 158, 'about', ''),
(586, 158, '_about', 'field_606a985db5c5d'),
(587, 160, '_edit_last', '1'),
(588, 160, '_edit_lock', '1617604783:1'),
(589, 12, 'about_title', 'Kĩ năng làm việc'),
(590, 12, '_about_title', 'field_606aafd3ebed4'),
(591, 12, 'about_sub_title', 'TEAM IT'),
(592, 12, '_about_sub_title', 'field_606aafdbebed5'),
(593, 12, 'about_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>'),
(594, 12, '_about_content', 'field_606aafe7ebed6'),
(595, 12, 'about_skills', '4'),
(596, 12, '_about_skills', 'field_606ab011ebed7'),
(597, 12, 'about', ''),
(598, 12, '_about', 'field_606aafc5ebed3'),
(599, 169, 'about_title', 'Kĩ năng làm việc'),
(600, 169, '_about_title', 'field_606aafd3ebed4'),
(601, 169, 'about_sub_title', 'TEAM IT'),
(602, 169, '_about_sub_title', 'field_606aafdbebed5'),
(603, 169, 'about_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>'),
(604, 169, '_about_content', 'field_606aafe7ebed6'),
(605, 169, 'about_skills', ''),
(606, 169, '_about_skills', 'field_606ab011ebed7'),
(607, 169, 'about', ''),
(608, 169, '_about', 'field_606aafc5ebed3'),
(609, 12, 'about_skills_0_name', 'Front-end'),
(610, 12, '_about_skills_0_name', 'field_606ab023ebed8'),
(611, 12, 'about_skills_0_number', '95'),
(612, 12, '_about_skills_0_number', 'field_606ab033ebed9'),
(613, 12, 'about_skills_1_name', 'Back-end'),
(614, 12, '_about_skills_1_name', 'field_606ab023ebed8'),
(615, 12, 'about_skills_1_number', '75'),
(616, 12, '_about_skills_1_number', 'field_606ab033ebed9'),
(617, 12, 'about_skills_2_name', 'ReactJS'),
(618, 12, '_about_skills_2_name', 'field_606ab023ebed8'),
(619, 12, 'about_skills_2_number', '60'),
(620, 12, '_about_skills_2_number', 'field_606ab033ebed9'),
(621, 12, 'about_skills_3_name', 'Angular'),
(622, 12, '_about_skills_3_name', 'field_606ab023ebed8'),
(623, 12, 'about_skills_3_number', '50'),
(624, 12, '_about_skills_3_number', 'field_606ab033ebed9'),
(625, 170, 'about_title', 'Kĩ năng làm việc'),
(626, 170, '_about_title', 'field_606aafd3ebed4'),
(627, 170, 'about_sub_title', 'TEAM IT'),
(628, 170, '_about_sub_title', 'field_606aafdbebed5'),
(629, 170, 'about_content', 'Trong gần một thập kỷ, chúng tôi có nhiều cơ hội làm việc trong môi trường\r\ncông nghệ web, cho phép tôi thu thập được một lượng kinh nghiệm đáng kể.\r\nLàm việc cho các công ty và cá nhân trong và ngoài nước, chúng tôi đã gặp\r\nvà học hỏi từ những người tuyệt vời và đầy tham vọng.\r\n<ul>\r\n 	<li>Thiết kế đồng hộ thương hiệu - Trang đích người dùng</li>\r\n 	<li>Thiết kế tối ưu kết hợp giao diện người dùng UX - UI</li>\r\n 	<li>Tối ưu SEO google từ thẻ H1,H2,H3, thẻ ảnh,..</li>\r\n 	<li>Hệ thống quản trị web thông minh</li>\r\n 	<li>Tối ưu tốc độ website</li>\r\n</ul>'),
(630, 170, '_about_content', 'field_606aafe7ebed6'),
(631, 170, 'about_skills', '4'),
(632, 170, '_about_skills', 'field_606ab011ebed7'),
(633, 170, 'about', ''),
(634, 170, '_about', 'field_606aafc5ebed3'),
(635, 170, 'about_skills_0_name', 'Front-end'),
(636, 170, '_about_skills_0_name', 'field_606ab023ebed8'),
(637, 170, 'about_skills_0_number', '95'),
(638, 170, '_about_skills_0_number', 'field_606ab033ebed9'),
(639, 170, 'about_skills_1_name', 'Back-end'),
(640, 170, '_about_skills_1_name', 'field_606ab023ebed8'),
(641, 170, 'about_skills_1_number', '75'),
(642, 170, '_about_skills_1_number', 'field_606ab033ebed9'),
(643, 170, 'about_skills_2_name', 'ReactJS'),
(644, 170, '_about_skills_2_name', 'field_606ab023ebed8'),
(645, 170, 'about_skills_2_number', '60'),
(646, 170, '_about_skills_2_number', 'field_606ab033ebed9'),
(647, 170, 'about_skills_3_name', 'Angular'),
(648, 170, '_about_skills_3_name', 'field_606ab023ebed8'),
(649, 170, 'about_skills_3_number', '50'),
(650, 170, '_about_skills_3_number', 'field_606ab033ebed9'),
(651, 171, '_edit_last', '1'),
(652, 171, '_edit_lock', '1617605150:1'),
(653, 177, '_edit_last', '1'),
(654, 177, '_edit_lock', '1617605238:1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
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
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-25 04:47:40', '2021-03-25 04:47:40', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2021-03-26 07:40:16', '2021-03-26 07:40:16', '', 0, 'http://localhost/porfolio/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-25 04:47:40', '2021-03-25 04:47:40', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/porfolio/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2021-03-25 07:53:38', '2021-03-25 07:53:38', '', 0, 'http://localhost/porfolio/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-25 04:47:40', '2021-03-25 04:47:40', '<!-- wp:heading -->\r\n<h2>Chúng tôi là ai</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Địa chỉ website là: http://localhost/porfolio.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Bình luận</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Thông tin liên hệ</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn \"Nhớ tôi\", thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Nội dung nhúng từ website khác</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Phân tích</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dữ liệu của bạn tồn tại bao lâu</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Các quyền nào của bạn với dữ liệu của mình</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Các dữ liệu của bạn được gửi tới đâu</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin liên hệ của bạn</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin bổ sung</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Các yêu cầu công bố thông tin được quản lý</h3>\r\n<!-- /wp:heading -->', 'Chính sách bảo mật', '', 'publish', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2021-03-27 11:11:34', '2021-03-27 04:11:34', '', 0, 'http://localhost/porfolio/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-25 07:53:38', '2021-03-25 07:53:38', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/porfolio/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-03-25 07:53:38', '2021-03-25 07:53:38', '', 2, 'http://localhost/porfolio/2021/03/25/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2021-03-25 07:54:09', '2021-03-25 07:54:09', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2021-04-05 11:35:15', '2021-04-05 04:35:15', '', 0, 'http://localhost/porfolio/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-03-25 07:54:09', '2021-03-25 07:54:09', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-25 07:54:09', '2021-03-25 07:54:09', '', 6, 'http://localhost/porfolio/2021/03/25/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2021-03-25 07:55:48', '2021-03-25 07:55:48', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2021-04-05 11:59:44', '2021-04-05 04:59:44', '', 0, 'http://localhost/porfolio/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-03-25 07:55:48', '2021-03-25 07:55:48', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-03-25 07:55:48', '2021-03-25 07:55:48', '', 8, 'http://localhost/porfolio/2021/03/25/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2021-03-25 07:56:05', '2021-03-25 07:56:05', '', 'Liện hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2021-03-25 07:56:05', '2021-03-25 07:56:05', '', 0, 'http://localhost/porfolio/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-03-25 07:56:05', '2021-03-25 07:56:05', '', 'Liện hệ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-03-25 07:56:05', '2021-03-25 07:56:05', '', 10, 'http://localhost/porfolio/2021/03/25/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2021-03-25 07:59:40', '2021-03-25 07:59:40', '', 'Kĩ năng', '', 'publish', 'closed', 'closed', '', 'ki-nang', '', '', '2021-04-05 13:50:23', '2021-04-05 06:50:23', '', 0, 'http://localhost/porfolio/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-03-25 07:59:40', '2021-03-25 07:59:40', '', 'Kĩ năng', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-03-25 07:59:40', '2021-03-25 07:59:40', '', 12, 'http://localhost/porfolio/2021/03/25/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2021-04-01 11:28:54', '2021-03-25 08:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2021-04-01 11:28:54', '2021-03-25 08:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2021-04-01 11:28:54', '2021-03-25 08:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=16', 6, 'nav_menu_item', '', 0),
(17, 1, '2021-04-01 11:28:54', '2021-03-25 08:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-04-01 11:28:54', '2021-03-25 08:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=18', 5, 'nav_menu_item', '', 0),
(21, 1, '2021-03-26 06:04:42', '2021-03-26 06:04:42', '', 'Thánh giống', '', 'publish', 'open', 'closed', '', 'thanh-giong', '', '', '2021-03-26 07:15:18', '2021-03-26 07:15:18', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=21', 0, 'san-pham', '', 0),
(22, 1, '2021-03-26 06:52:34', '2021-03-26 06:52:34', '', 'Layer 155', '', 'inherit', 'open', 'closed', '', 'layer-155', '', '', '2021-03-26 06:52:34', '2021-03-26 06:52:34', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/Layer-155.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-03-26 06:52:34', '2021-03-26 06:52:34', '', 'Layer 156', '', 'inherit', 'open', 'closed', '', 'layer-156', '', '', '2021-03-26 06:52:34', '2021-03-26 06:52:34', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/Layer-156.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', 'Tao_Logo_Mascot_Kim_Loai_Truc_Tuyen_Mien_Phi5dad37ba68d76_6d464f2b404044f20d4d7ae74dbd3b32', '', 'inherit', 'open', 'closed', '', 'tao_logo_mascot_kim_loai_truc_tuyen_mien_phi5dad37ba68d76_6d464f2b404044f20d4d7ae74dbd3b32', '', '', '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/Tao_Logo_Mascot_Kim_Loai_Truc_Tuyen_Mien_Phi5dad37ba68d76_6d464f2b404044f20d4d7ae74dbd3b32.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', 'vietdesignernet02062013bv', '', 'inherit', 'open', 'closed', '', 'vietdesignernet02062013bv', '', '', '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/vietdesignernet02062013bv.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', '41HBFxq0sVL', '', 'inherit', 'open', 'closed', '', '41hbfxq0svl', '', '', '2021-03-26 06:52:35', '2021-03-26 06:52:35', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/41HBFxq0sVL.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', '43fa5b24-2a47-4d50-990b-cda7f2d0e0d6', '', 'inherit', 'open', 'closed', '', '43fa5b24-2a47-4d50-990b-cda7f2d0e0d6', '', '', '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/43fa5b24-2a47-4d50-990b-cda7f2d0e0d6.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', '65ea15bd15a713', '', 'inherit', 'open', 'closed', '', '65ea15bd15a713', '', '', '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/65ea15bd15a713.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 'Chat-Nuts-01', '', 'inherit', 'open', 'closed', '', 'chat-nuts-01', '', '', '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/Chat-Nuts-01.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 'kinh-nghiem-thiet-ke-logo-spa-2', '', 'inherit', 'open', 'closed', '', 'kinh-nghiem-thiet-ke-logo-spa-2', '', '', '2021-03-26 06:52:36', '2021-03-26 06:52:36', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/kinh-nghiem-thiet-ke-logo-spa-2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-03-26 06:52:37', '2021-03-26 06:52:37', '', 'Layer 154', '', 'inherit', 'open', 'closed', '', 'layer-154', '', '', '2021-03-26 06:52:37', '2021-03-26 06:52:37', '', 21, 'http://localhost/porfolio/wp-content/uploads/2021/03/Layer-154.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-03-26 06:53:09', '2021-03-26 06:53:09', '', 'Go green', '', 'publish', 'open', 'closed', '', 'go-green', '', '', '2021-03-26 06:53:09', '2021-03-26 06:53:09', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=32', 0, 'san-pham', '', 0),
(33, 1, '2021-03-26 06:53:34', '2021-03-26 06:53:34', '', 'Liên spa', '', 'publish', 'open', 'closed', '', 'lien-spa', '', '', '2021-03-26 06:53:34', '2021-03-26 06:53:34', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=33', 0, 'san-pham', '', 0),
(34, 1, '2021-03-26 06:54:07', '2021-03-26 06:54:07', '', 'lucas heath solution', '', 'publish', 'open', 'closed', '', 'lucas-heath-solution', '', '', '2021-03-26 06:54:07', '2021-03-26 06:54:07', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=34', 0, 'san-pham', '', 0),
(35, 1, '2021-03-26 06:54:35', '2021-03-26 06:54:35', '', 'Elite security', '', 'publish', 'open', 'closed', '', 'elite-security', '', '', '2021-03-26 06:54:35', '2021-03-26 06:54:35', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=35', 0, 'san-pham', '', 0),
(36, 1, '2021-03-26 06:55:01', '2021-03-26 06:55:01', '', 'À ơi', '', 'publish', 'open', 'closed', '', 'a-oi', '', '', '2021-03-26 06:55:01', '2021-03-26 06:55:01', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=36', 0, 'san-pham', '', 0),
(37, 1, '2021-03-26 06:56:03', '2021-03-26 06:56:03', '', 'Ephoto 360 logo online', '', 'publish', 'open', 'closed', '', 'ephoto-360-logo-online', '', '', '2021-03-26 06:56:03', '2021-03-26 06:56:03', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=37', 0, 'san-pham', '', 0),
(38, 1, '2021-03-26 06:56:37', '2021-03-26 06:56:37', '', 'Chat nuts & tea', '', 'publish', 'open', 'closed', '', 'chat-nuts-tea', '', '', '2021-03-26 06:56:37', '2021-03-26 06:56:37', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=38', 0, 'san-pham', '', 0),
(39, 1, '2021-03-26 06:56:57', '2021-03-26 06:56:57', '', 'Ephoto 360', '', 'publish', 'open', 'closed', '', 'ephoto-360', '', '', '2021-04-02 09:42:17', '2021-04-02 02:42:17', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=39', 0, 'san-pham', '', 0),
(40, 1, '2021-03-26 06:57:35', '2021-03-26 06:57:35', '', 'left', '', 'publish', 'open', 'closed', '', 'left', '', '', '2021-04-02 09:42:09', '2021-04-02 02:42:09', '', 0, 'http://localhost/porfolio/?post_type=san-pham&#038;p=40', 0, 'san-pham', '', 0),
(42, 1, '2021-03-26 07:40:16', '2021-03-26 07:40:16', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-26 07:40:16', '2021-03-26 07:40:16', '', 1, 'http://localhost/porfolio/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-03-26 07:50:51', '2021-03-26 00:50:51', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn..', 'Các Nguyên tắc thiết kế layout web', '', 'publish', 'open', 'open', '', 'cac-nguyen-tac-thiet-ke-layout-web', '', '', '2021-03-26 14:48:17', '2021-03-26 07:48:17', '', 0, 'http://localhost/porfolio/?p=43', 0, 'post', '', 0),
(44, 1, '2021-03-26 07:42:06', '2021-03-26 07:42:06', '', 'website-marketing', '', 'inherit', 'open', 'closed', '', 'website-marketing', '', '', '2021-03-26 07:42:06', '2021-03-26 07:42:06', '', 43, 'http://localhost/porfolio/wp-content/uploads/2021/03/website-marketing.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 'anh3-thiet-ke-layout', '', 'inherit', 'open', 'closed', '', 'anh3-thiet-ke-layout', '', '', '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 43, 'http://localhost/porfolio/wp-content/uploads/2021/03/anh3-thiet-ke-layout.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 'anh5-thiet-ke-layout', '', 'inherit', 'open', 'closed', '', 'anh5-thiet-ke-layout', '', '', '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 43, 'http://localhost/porfolio/wp-content/uploads/2021/03/anh5-thiet-ke-layout.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 'b85db4c9816f13371f54af5a6486a1ca', '', 'inherit', 'open', 'closed', '', 'b85db4c9816f13371f54af5a6486a1ca', '', '', '2021-03-26 07:42:07', '2021-03-26 07:42:07', '', 43, 'http://localhost/porfolio/wp-content/uploads/2021/03/b85db4c9816f13371f54af5a6486a1ca.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2021-03-26 07:42:51', '2021-03-26 07:42:51', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn..', 'Các Nguyên tắc thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-03-26 07:42:51', '2021-03-26 07:42:51', '', 43, 'http://localhost/porfolio/?p=48', 0, 'revision', '', 0),
(51, 1, '2021-03-26 07:48:41', '2021-03-26 00:48:41', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn mạnh và tỷ lệ, sự cân bằng, quy tắc 1 phần 3 và quy tắc số lẻ. Dưới đây là chi tiết các quy tắc layout phổ biến hiện nay:\r\n\r\n- Hệ thống lưới:\r\n\r\nLayout với hệ thống lưới có thể xem là quy tắc dễ thực hiện nhất, đối với dân designer thì đây là 1 thứ không thể thiếu trong bản thiết kế web của mình. Nó như một tấm lưới vô hình trong các thiết kế của mình, giúp thiết kế của bạn sạch hơn, hiệu quả hơn và dễ dàng điều chỉnh hơn.\r\n\r\n- Nhấn mạnh và tỷ lệ:\r\n\r\nTất cả mọi thiết kế nào cũng cần một chi tiết hấp dẫn để giữ mắt người xem ở lại lâu hơn. Để người xem biết rằng layout này là tâm điểm, bạn cần sử dụng emphasis nhấn mạnh) để giúp nó nổi bật trong trang web và chắc chắn rằng điểm nhấn mạnh là đối tượng lớn nhất trong trang.\r\n\r\nBạn có thể nhấn mạnh bằng cách làm mờ hậu cảnh để nổi bật lên hoặc tập trung vào một phần của nó. Tìm ra tiêu điểm của thiết kế sẽ cung cấp cho mắt bạn hướng dẫn cần thiết để định hình bố cục, cũng như xây dựng phân cấp một cách có tổ chức.\r\n\r\n- Quy tắc 1 phần 3:\r\n\r\nQuy tắc một phần ba không thể thiếu trong thiết kế, quy tắc này được coi là một tiêu chuẩn cơ bản giúp cho sản phẩm của bạn đạt được hiệu quả cao nhất và gây ấn tượng với khách hàng từ ánh nhìn đầu tiên khi nhìn vào bố cục.\r\n\r\nBạn sẽ cần phải chia thiết kế của mình thành 3 cột và 3 hàng. Tại các điểm giao nhau của các hàng và cột này, bạn nên đặt các chủ thể chính cũng như các yếu tố hỗ trợ khác. Như vậy chắc chắn sẽ đảm bảo được layout trên web.\r\n\r\n- Quy tắc số lẻ.\r\n\r\nPhần trăm con người bị thu hút bởi số lẻ cao hơn số chẵn. Tận dụng được lợi thiết này, những con số lẽ sẽ được tận dụng để đặt trong thiết kế logo, trong đó một dấu trung tâm có thể được đặt ở hai bên bởi tên công ty. Và theo quy tắc số lẻ, nhóm nhỏ với 3 yếu tố thường sẽ có hiệu quả nhất vì nó không khiến chúng ta có cảm giác đó là một khối thống nhất.', 'Các kiểu thiết kế layout web', '', 'publish', 'open', 'open', '', 'cac-kieu-thiet-ke-layout-web', '', '', '2021-04-01 14:34:41', '2021-04-01 07:34:41', '', 0, 'http://localhost/porfolio/?p=51', 0, 'post', '', 0),
(52, 1, '2021-03-26 07:43:41', '2021-03-26 07:43:41', '', 'Các kiểu thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-26 07:43:41', '2021-03-26 07:43:41', '', 51, 'http://localhost/porfolio/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-03-26 07:44:17', '2021-03-26 07:44:17', 'Thông thường các hệ thống layout khi thiết kế website và bố cục...', 'Các kiểu thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-26 07:44:17', '2021-03-26 07:44:17', '', 51, 'http://localhost/porfolio/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-03-26 07:46:09', '2021-03-26 00:46:09', 'Thông thường các hệ thống layout khi thiết kế website và bố cục...', 'Tạo Menu Website Với HTML Và CSS', '', 'publish', 'open', 'open', '', 'tao-menu-website-voi-html-va-css', '', '', '2021-03-26 14:49:04', '2021-03-26 07:49:04', '', 0, 'http://localhost/porfolio/?p=54', 0, 'post', '', 0),
(55, 1, '2021-03-26 07:45:09', '2021-03-26 07:45:09', 'Thông thường các hệ thống layout khi thiết kế website và bố cục...', 'Tạo Menu Website Với HTML Và CSS', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-03-26 07:45:09', '2021-03-26 07:45:09', '', 54, 'http://localhost/porfolio/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-03-26 07:45:50', '2021-03-26 07:45:50', 'Hầu hết các trang web ngày nay đều có phần menu và khi click..', 'Website Marketing là gì?', '', 'publish', 'open', 'open', '', 'website-marketing-la-gi', '', '', '2021-03-26 07:45:50', '2021-03-26 07:45:50', '', 0, 'http://localhost/porfolio/?p=56', 0, 'post', '', 0),
(57, 1, '2021-03-26 07:45:50', '2021-03-26 07:45:50', 'Hầu hết các trang web ngày nay đều có phần menu và khi click..', 'Website Marketing là gì?', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-03-26 07:45:50', '2021-03-26 07:45:50', '', 56, 'http://localhost/porfolio/?p=57', 0, 'revision', '', 0),
(59, 1, '2021-03-27 11:10:47', '2021-03-27 04:10:47', '', 'Tuyển Dụng', '', 'publish', 'closed', 'closed', '', 'tuyen-dung', '', '', '2021-03-27 11:10:47', '2021-03-27 04:10:47', '', 0, 'http://localhost/porfolio/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-03-27 11:10:47', '2021-03-27 04:10:47', '', 'Tuyển Dụng', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-03-27 11:10:47', '2021-03-27 04:10:47', '', 59, 'http://localhost/porfolio/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-03-27 11:10:57', '2021-03-27 04:10:57', '', 'Hỗ trợ khách hàng', '', 'publish', 'closed', 'closed', '', 'ho-tro-khach-hang', '', '', '2021-03-27 11:10:57', '2021-03-27 04:10:57', '', 0, 'http://localhost/porfolio/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-03-27 11:10:57', '2021-03-27 04:10:57', '', 'Hỗ trợ khách hàng', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-03-27 11:10:57', '2021-03-27 04:10:57', '', 61, 'http://localhost/porfolio/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-03-27 11:11:34', '2021-03-27 04:11:34', '<!-- wp:heading -->\r\n<h2>Chúng tôi là ai</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Địa chỉ website là: http://localhost/porfolio.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Bình luận</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Thông tin liên hệ</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn \"Nhớ tôi\", thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Nội dung nhúng từ website khác</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Phân tích</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dữ liệu của bạn tồn tại bao lâu</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Các quyền nào của bạn với dữ liệu của mình</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Các dữ liệu của bạn được gửi tới đâu</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin liên hệ của bạn</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Thông tin bổ sung</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Các yêu cầu công bố thông tin được quản lý</h3>\r\n<!-- /wp:heading -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-03-27 11:11:34', '2021-03-27 04:11:34', '', 3, 'http://localhost/porfolio/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-03-27 11:13:56', '2021-03-27 04:13:56', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2021-03-27 11:13:56', '2021-03-27 04:13:56', '', 0, 'http://localhost/porfolio/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2021-03-27 11:13:56', '2021-03-27 04:13:56', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-03-27 11:13:56', '2021-03-27 04:13:56', '', 0, 'http://localhost/porfolio/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2021-03-27 11:13:55', '2021-03-27 04:13:55', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-03-27 11:13:55', '2021-03-27 04:13:55', '', 0, 'http://localhost/porfolio/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2021-03-31 15:06:20', '2021-03-31 08:06:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme_options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh website', 'tuy-chinh-website', 'publish', 'closed', 'closed', '', 'group_60642cc6aa3f2', '', '', '2021-04-05 13:55:04', '2021-04-05 06:55:04', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2021-03-31 15:06:20', '2021-03-31 08:06:20', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'social', 'social', 'publish', 'closed', 'closed', '', 'field_60642d43b1ad9', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2021-03-31 15:06:20', '2021-03-31 08:06:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Zalo icon', 'zalo_icon', 'publish', 'closed', 'closed', '', 'field_60642d69b1ada', '', '', '2021-03-31 15:06:20', '2021-03-31 08:06:20', '', 68, 'http://localhost/porfolio/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2021-03-31 15:08:35', '2021-03-31 08:08:35', '', 'Layer171', '', 'inherit', 'open', 'closed', '', 'layer171', '', '', '2021-03-31 15:08:35', '2021-03-31 08:08:35', '', 0, 'http://localhost/porfolio/wp-content/uploads/2021/03/Layer171.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:34:\"page-templates/page-gioi-thieu.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang giới thiệu', 'tuy-chinh-trang-gioi-thieu', 'publish', 'closed', 'closed', '', 'group_606435c40df6c', '', '', '2021-04-05 11:57:42', '2021-04-05 04:57:42', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_606435e3e0c83', '', '', '2021-03-31 15:49:21', '2021-03-31 08:49:21', '', 71, 'http://localhost/porfolio/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List number', 'list_number', 'publish', 'closed', 'closed', '', 'field_606435f4e0c84', '', '', '2021-03-31 15:44:57', '2021-03-31 08:44:57', '', 72, 'http://localhost/porfolio/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_60643667e0c85', '', '', '2021-03-31 15:44:57', '2021-03-31 08:44:57', '', 73, 'http://localhost/porfolio/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60643670e0c86', '', '', '2021-03-31 15:44:57', '2021-03-31 08:44:57', '', 73, 'http://localhost/porfolio/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_60643675e0c87', '', '', '2021-03-31 15:44:57', '2021-03-31 08:44:57', '', 73, 'http://localhost/porfolio/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2021-03-31 15:44:57', '2021-03-31 08:44:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_60643680e0c88', '', '', '2021-03-31 15:44:57', '2021-03-31 08:44:57', '', 73, 'http://localhost/porfolio/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 'unnameds', '', 'inherit', 'open', 'closed', '', 'unnameds', '', '', '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 8, 'http://localhost/porfolio/wp-content/uploads/2021/03/unnameds.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 'chan-dung-nu-2-1180x760', '', 'inherit', 'open', 'closed', '', 'chan-dung-nu-2-1180x760', '', '', '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 8, 'http://localhost/porfolio/wp-content/uploads/2021/03/chan-dung-nu-2-1180x760-1.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 'unnamed (2)', '', 'inherit', 'open', 'closed', '', 'unnamed-2', '', '', '2021-03-31 15:45:27', '2021-03-31 08:45:27', '', 8, 'http://localhost/porfolio/wp-content/uploads/2021/03/unnamed-2.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2021-03-31 15:46:52', '2021-03-31 08:46:52', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-03-31 15:46:52', '2021-03-31 08:46:52', '', 8, 'http://localhost/porfolio/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-03-31 15:50:00', '2021-03-31 08:50:00', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-03-31 15:50:00', '2021-03-31 08:50:00', '', 8, 'http://localhost/porfolio/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-04-01 11:28:54', '2021-04-01 04:26:55', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2021-04-01 11:28:54', '2021-04-01 04:28:54', '', 0, 'http://localhost/porfolio/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2021-04-01 14:19:23', '2021-04-01 07:19:23', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn mạnh và tỷ lệ, sự cân bằng, quy tắc 1 phần 3 và quy tắc số lẻ. Dưới đây là chi tiết các quy tắc layout phổ biến hiện nay:\n\n- Hệ thống lưới:\n\nLayout với hệ thống lưới có thể xem là quy tắc dễ thực hiện nhất, đối với dân designer thì đây là 1 thứ không thể thiếu trong bản thiết kế web của mình. Nó như một tấm lưới vô hình trong các thiết kế của mình, giúp thiết kế của bạn sạch hơn, hiệu quả hơn và dễ dàng điều chỉnh hơn.\n\n- Nhấn mạnh và tỷ lệ:\n\nTất cả mọi thiết kế nào cũng cần một chi tiết hấp dẫn để giữ mắt người xem ở lại lâu hơn. Để người xem biết rằng layout này là tâm điểm, bạn cần sử dụng emphasis nhấn mạnh) để giúp nó nổi bật trong trang web và chắc chắn rằng điểm nhấn mạnh là đối tượng lớn nhất trong trang.\n\nBạn có thể nhấn mạnh bằng cách làm mờ hậu cảnh để nổi bật lên hoặc tập trung vào một phần của nó. Tìm ra tiêu điểm của thiết kế sẽ cung cấp cho mắt bạn hướng dẫn cần thiết để định hình bố cục, cũng như xây dựng phân cấp một cách có tổ chức.\n\n&nbsp;\n\n&nbsp;', 'Các kiểu thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2021-04-01 14:19:23', '2021-04-01 07:19:23', '', 51, 'http://localhost/porfolio/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-04-01 14:16:07', '2021-04-01 07:16:07', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn mạnh và tỷ lệ, sự cân bằng, quy tắc 1 phần 3 và quy tắc số lẻ. Dưới đây là chi tiết các quy tắc layout phổ biến hiện nay:\r\n\r\n- Hệ thống lưới:\r\n\r\nLayout với hệ thống lưới có thể xem là quy tắc dễ thực hiện nhất, đối với dân designer thì đây là 1 thứ không thể thiếu trong bản thiết kế web của mình. Nó như một tấm lưới vô hình trong các thiết kế của mình, giúp thiết kế của bạn sạch hơn, hiệu quả hơn và dễ dàng điều chỉnh hơn.', 'Các kiểu thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-04-01 14:16:07', '2021-04-01 07:16:07', '', 51, 'http://localhost/porfolio/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-04-01 14:20:01', '2021-04-01 07:20:01', 'Thông thường các hệ thống layout khi thiết kế website và bố cục sẽ được xây dựng dựa trên hệ thống lưới, sự nhấn mạnh và tỷ lệ, sự cân bằng, quy tắc 1 phần 3 và quy tắc số lẻ. Dưới đây là chi tiết các quy tắc layout phổ biến hiện nay:\r\n\r\n- Hệ thống lưới:\r\n\r\nLayout với hệ thống lưới có thể xem là quy tắc dễ thực hiện nhất, đối với dân designer thì đây là 1 thứ không thể thiếu trong bản thiết kế web của mình. Nó như một tấm lưới vô hình trong các thiết kế của mình, giúp thiết kế của bạn sạch hơn, hiệu quả hơn và dễ dàng điều chỉnh hơn.\r\n\r\n- Nhấn mạnh và tỷ lệ:\r\n\r\nTất cả mọi thiết kế nào cũng cần một chi tiết hấp dẫn để giữ mắt người xem ở lại lâu hơn. Để người xem biết rằng layout này là tâm điểm, bạn cần sử dụng emphasis nhấn mạnh) để giúp nó nổi bật trong trang web và chắc chắn rằng điểm nhấn mạnh là đối tượng lớn nhất trong trang.\r\n\r\nBạn có thể nhấn mạnh bằng cách làm mờ hậu cảnh để nổi bật lên hoặc tập trung vào một phần của nó. Tìm ra tiêu điểm của thiết kế sẽ cung cấp cho mắt bạn hướng dẫn cần thiết để định hình bố cục, cũng như xây dựng phân cấp một cách có tổ chức.\r\n\r\n- Quy tắc 1 phần 3:\r\n\r\nQuy tắc một phần ba không thể thiếu trong thiết kế, quy tắc này được coi là một tiêu chuẩn cơ bản giúp cho sản phẩm của bạn đạt được hiệu quả cao nhất và gây ấn tượng với khách hàng từ ánh nhìn đầu tiên khi nhìn vào bố cục.\r\n\r\nBạn sẽ cần phải chia thiết kế của mình thành 3 cột và 3 hàng. Tại các điểm giao nhau của các hàng và cột này, bạn nên đặt các chủ thể chính cũng như các yếu tố hỗ trợ khác. Như vậy chắc chắn sẽ đảm bảo được layout trên web.\r\n\r\n- Quy tắc số lẻ.\r\n\r\nPhần trăm con người bị thu hút bởi số lẻ cao hơn số chẵn. Tận dụng được lợi thiết này, những con số lẽ sẽ được tận dụng để đặt trong thiết kế logo, trong đó một dấu trung tâm có thể được đặt ở hai bên bởi tên công ty. Và theo quy tắc số lẻ, nhóm nhỏ với 3 yếu tố thường sẽ có hiệu quả nhất vì nó không khiến chúng ta có cảm giác đó là một khối thống nhất.', 'Các kiểu thiết kế layout web', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-04-01 14:20:01', '2021-04-01 07:20:01', '', 51, 'http://localhost/porfolio/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-04-01 16:47:36', '2021-04-01 09:47:36', '', 'Thiết kế đa dạng của các nền văn hóa', '', 'publish', 'open', 'open', '', 'thiet-ke-da-dang-cua-cac-nen-van-hoa', '', '', '2021-04-01 16:47:58', '2021-04-01 09:47:58', '', 0, 'http://localhost/porfolio/?p=87', 0, 'post', '', 0),
(88, 1, '2021-04-01 16:47:42', '2021-04-01 09:47:42', '', 'Triển khai web trên nhiều thiết bị', '', 'publish', 'open', 'open', '', 'trien-khai-web-tren-nhieu-thiet-bi', '', '', '2021-04-01 16:48:55', '2021-04-01 09:48:55', '', 0, 'http://localhost/porfolio/?p=88', 0, 'post', '', 0),
(89, 1, '2021-04-01 16:47:27', '2021-04-01 09:47:27', '', 'k-tree copy 2', '', 'inherit', 'open', 'closed', '', 'k-tree-copy-2', '', '', '2021-04-01 16:47:27', '2021-04-01 09:47:27', '', 87, 'http://localhost/porfolio/wp-content/uploads/2021/04/k-tree-copy-2.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2021-04-01 16:47:28', '2021-04-01 09:47:28', '', 'Thiet-ke-website-ho-chi-minh copy 2', '', 'inherit', 'open', 'closed', '', 'thiet-ke-website-ho-chi-minh-copy-2', '', '', '2021-04-01 16:47:28', '2021-04-01 09:47:28', '', 87, 'http://localhost/porfolio/wp-content/uploads/2021/04/Thiet-ke-website-ho-chi-minh-copy-2.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2021-04-01 16:47:36', '2021-04-01 09:47:36', '', 'Thiết kế đa dạng của các nền văn hóa', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2021-04-01 16:47:36', '2021-04-01 09:47:36', '', 87, 'http://localhost/porfolio/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-04-01 16:47:42', '2021-04-01 09:47:42', '', 'Triển khai web trên nhiều thiết bị', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-04-01 16:47:42', '2021-04-01 09:47:42', '', 88, 'http://localhost/porfolio/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-04-01 16:49:04', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-01 16:49:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/porfolio/?p=93', 0, 'post', '', 0),
(94, 1, '2021-04-01 16:49:42', '2021-04-01 09:49:42', '', 'Thiết kế đa dạng của các nền văn hóas', '', 'publish', 'open', 'open', '', 'thiet-ke-da-dang-cua-cac-nen-van-hoas', '', '', '2021-04-01 16:49:42', '2021-04-01 09:49:42', '', 0, 'http://localhost/porfolio/?p=94', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2021-04-01 16:49:42', '2021-04-01 09:49:42', '', 'Thiết kế đa dạng của các nền văn hóas', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-04-01 16:49:42', '2021-04-01 09:49:42', '', 94, 'http://localhost/porfolio/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-04-02 09:35:13', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-04-02 09:35:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/porfolio/?post_type=san-pham&p=96', 0, 'san-pham', '', 0),
(97, 1, '2021-04-02 09:50:36', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-02 09:50:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/porfolio/?p=97', 0, 'post', '', 0),
(98, 1, '2021-04-03 11:30:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-03 11:30:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2021-04-05 10:29:28', '2021-04-05 03:29:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:33:\"page-templates/page-trang-chu.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang chủ', 'tuy-chinh-trang-chu', 'publish', 'closed', 'closed', '', 'group_606a82b4f044d', '', '', '2021-04-05 11:56:17', '2021-04-05 04:56:17', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2021-04-05 10:29:28', '2021-04-05 03:29:28', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606a82c7d0373', '', '', '2021-04-05 10:29:28', '2021-04-05 03:29:28', '', 99, 'http://localhost/porfolio/?post_type=acf-field&p=100', 0, 'acf-field', '', 0),
(101, 1, '2021-04-05 10:29:28', '2021-04-05 03:29:28', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606a8315d0374', '', '', '2021-04-05 10:29:28', '2021-04-05 03:29:28', '', 99, 'http://localhost/porfolio/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(106, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Top', 'top', 'publish', 'closed', 'closed', '', 'field_606a843097137', '', '', '2021-04-05 10:50:38', '2021-04-05 03:50:38', '', 101, 'http://localhost/porfolio/?post_type=acf-field&#038;p=106', 1, 'acf-field', '', 0),
(107, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a844897138', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 106, 'http://localhost/porfolio/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a844e97139', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 106, 'http://localhost/porfolio/?post_type=acf-field&p=108', 1, 'acf-field', '', 0),
(109, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_606a84569713a', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 106, 'http://localhost/porfolio/?post_type=acf-field&p=109', 2, 'acf-field', '', 0),
(110, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button link', 'button_link', 'publish', 'closed', 'closed', '', 'field_606a84619713b', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 106, 'http://localhost/porfolio/?post_type=acf-field&p=110', 3, 'acf-field', '', 0),
(111, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Bottom', 'bottom', 'publish', 'closed', 'closed', '', 'field_606a846b9713c', '', '', '2021-04-05 10:50:38', '2021-04-05 03:50:38', '', 101, 'http://localhost/porfolio/?post_type=acf-field&#038;p=111', 2, 'acf-field', '', 0),
(112, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a84759713d', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 111, 'http://localhost/porfolio/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a847b9713e', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 111, 'http://localhost/porfolio/?post_type=acf-field&p=113', 1, 'acf-field', '', 0),
(114, 1, '2021-04-05 10:32:49', '2021-04-05 03:32:49', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606a84839713f', '', '', '2021-04-05 10:32:49', '2021-04-05 03:32:49', '', 111, 'http://localhost/porfolio/?post_type=acf-field&p=114', 2, 'acf-field', '', 0),
(115, 1, '2021-04-05 10:43:53', '2021-04-05 03:43:53', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-05 10:43:53', '2021-04-05 03:43:53', '', 6, 'http://localhost/porfolio/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-04-05 10:50:38', '2021-04-05 03:50:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a890236fd9', '', '', '2021-04-05 10:50:38', '2021-04-05 03:50:38', '', 101, 'http://localhost/porfolio/?post_type=acf-field&p=116', 0, 'acf-field', '', 0),
(117, 1, '2021-04-05 11:18:13', '2021-04-05 04:18:13', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-05 11:18:13', '2021-04-05 04:18:13', '', 6, 'http://localhost/porfolio/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_606a901cb96d3', '', '', '2021-04-05 11:56:17', '2021-04-05 04:56:17', '', 99, 'http://localhost/porfolio/?post_type=acf-field&#038;p=118', 2, 'acf-field', '', 0),
(119, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_606a902cb96d4', '', '', '2021-04-05 11:56:17', '2021-04-05 04:56:17', '', 99, 'http://localhost/porfolio/?post_type=acf-field&#038;p=119', 3, 'acf-field', '', 0),
(120, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a905eb96d5', '', '', '2021-04-05 11:22:42', '2021-04-05 04:22:42', '', 119, 'http://localhost/porfolio/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(121, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a9063b96d6', '', '', '2021-04-05 11:22:42', '2021-04-05 04:22:42', '', 119, 'http://localhost/porfolio/?post_type=acf-field&p=121', 1, 'acf-field', '', 0),
(122, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606a906db96d7', '', '', '2021-04-05 11:22:42', '2021-04-05 04:22:42', '', 119, 'http://localhost/porfolio/?post_type=acf-field&p=122', 2, 'acf-field', '', 0),
(123, 1, '2021-04-05 11:22:42', '2021-04-05 04:22:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_606a907bb96d8', '', '', '2021-04-05 11:22:42', '2021-04-05 04:22:42', '', 119, 'http://localhost/porfolio/?post_type=acf-field&p=123', 3, 'acf-field', '', 0),
(124, 1, '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 'Layer166', '', 'inherit', 'open', 'closed', '', 'layer166', '', '', '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 6, 'http://localhost/porfolio/wp-content/uploads/2021/04/Layer166.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 'Layer171', '', 'inherit', 'open', 'closed', '', 'layer171-2', '', '', '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 6, 'http://localhost/porfolio/wp-content/uploads/2021/04/Layer171.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 'logoNTA', '', 'inherit', 'open', 'closed', '', 'logonta', '', '', '2021-04-05 11:23:55', '2021-04-05 04:23:55', '', 6, 'http://localhost/porfolio/wp-content/uploads/2021/04/logoNTA.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2021-04-05 11:23:56', '2021-04-05 04:23:56', '', 'Untitled-1', '', 'inherit', 'open', 'closed', '', 'untitled-1', '', '', '2021-04-05 11:23:56', '2021-04-05 04:23:56', '', 6, 'http://localhost/porfolio/wp-content/uploads/2021/04/Untitled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2021-04-05 11:23:56', '2021-04-05 04:23:56', '', '20191110_121849_662425_dung-may-tinh.max-800x800', '', 'inherit', 'open', 'closed', '', '20191110_121849_662425_dung-may-tinh-max-800x800', '', '', '2021-04-05 11:23:56', '2021-04-05 04:23:56', '', 6, 'http://localhost/porfolio/wp-content/uploads/2021/04/20191110_121849_662425_dung-may-tinh.max-800x800-1.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2021-04-05 11:24:02', '2021-04-05 04:24:02', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-05 11:24:02', '2021-04-05 04:24:02', '', 6, 'http://localhost/porfolio/?p=129', 0, 'revision', '', 0),
(130, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Product', 'product', 'publish', 'closed', 'closed', '', 'field_606a929e78507', '', '', '2021-04-05 11:56:17', '2021-04-05 04:56:17', '', 99, 'http://localhost/porfolio/?post_type=acf-field&#038;p=130', 4, 'acf-field', '', 0),
(131, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Product', 'product', 'publish', 'closed', 'closed', '', 'field_606a92b478508', '', '', '2021-04-05 11:56:17', '2021-04-05 04:56:17', '', 99, 'http://localhost/porfolio/?post_type=acf-field&#038;p=131', 5, 'acf-field', '', 0),
(132, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_606a92c978509', '', '', '2021-04-05 11:33:05', '2021-04-05 04:33:05', '', 131, 'http://localhost/porfolio/?post_type=acf-field&p=132', 0, 'acf-field', '', 0),
(133, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a92d87850a', '', '', '2021-04-05 11:33:05', '2021-04-05 04:33:05', '', 131, 'http://localhost/porfolio/?post_type=acf-field&p=133', 1, 'acf-field', '', 0),
(134, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a92e07850b', '', '', '2021-04-05 11:33:05', '2021-04-05 04:33:05', '', 131, 'http://localhost/porfolio/?post_type=acf-field&p=134', 2, 'acf-field', '', 0),
(135, 1, '2021-04-05 11:33:05', '2021-04-05 04:33:05', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606a92eb7850c', '', '', '2021-04-05 11:33:05', '2021-04-05 04:33:05', '', 131, 'http://localhost/porfolio/?post_type=acf-field&p=135', 3, 'acf-field', '', 0),
(136, 1, '2021-04-05 11:35:15', '2021-04-05 04:35:15', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-05 11:35:15', '2021-04-05 04:35:15', '', 6, 'http://localhost/porfolio/?p=136', 0, 'revision', '', 0),
(137, 1, '2021-04-05 11:41:43', '2021-04-05 04:41:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_606a94bf76520', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=137', 2, 'acf-field', '', 0),
(138, 1, '2021-04-05 11:41:43', '2021-04-05 04:41:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_606a94ca76521', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=138', 3, 'acf-field', '', 0),
(139, 1, '2021-04-05 11:41:43', '2021-04-05 04:41:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_606a950076522', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=139', 4, 'acf-field', '', 0),
(140, 1, '2021-04-05 11:41:55', '2021-04-05 04:41:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_606a950c4edf9', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=140', 5, 'acf-field', '', 0),
(141, 1, '2021-04-05 11:47:14', '2021-04-05 04:47:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mã số thuế', 'ma_so_thue', 'publish', 'closed', 'closed', '', 'field_606a963fe3fdb', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=141', 6, 'acf-field', '', 0),
(142, 1, '2021-04-05 11:48:05', '2021-04-05 04:48:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_606a9659265e3', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=142', 7, 'acf-field', '', 0),
(143, 1, '2021-04-05 11:48:05', '2021-04-05 04:48:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Zalo', 'zalo', 'publish', 'closed', 'closed', '', 'field_606a966b265e4', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=143', 8, 'acf-field', '', 0),
(144, 1, '2021-04-05 11:48:05', '2021-04-05 04:48:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_606a9677265e5', '', '', '2021-04-05 13:52:59', '2021-04-05 06:52:59', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=144', 9, 'acf-field', '', 0),
(145, 1, '2021-04-05 11:55:51', '2021-04-05 04:55:51', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606a97edfcfe7', '', '', '2021-04-05 11:55:51', '2021-04-05 04:55:51', '', 71, 'http://localhost/porfolio/?post_type=acf-field&p=145', 1, 'acf-field', '', 0),
(146, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606a985db5c5d', '', '', '2021-04-05 11:56:30', '2021-04-05 04:56:30', '', 71, 'http://localhost/porfolio/?post_type=acf-field&#038;p=146', 2, 'acf-field', '', 0),
(147, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a985db5c5e', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 146, 'http://localhost/porfolio/?post_type=acf-field&p=147', 0, 'acf-field', '', 0),
(148, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Top', 'top', 'publish', 'closed', 'closed', '', 'field_606a985db5c5f', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 146, 'http://localhost/porfolio/?post_type=acf-field&p=148', 1, 'acf-field', '', 0),
(149, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a985db5c60', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 148, 'http://localhost/porfolio/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(150, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a985db5c61', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 148, 'http://localhost/porfolio/?post_type=acf-field&p=150', 1, 'acf-field', '', 0),
(153, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Bottom', 'bottom', 'publish', 'closed', 'closed', '', 'field_606a985db5c64', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 146, 'http://localhost/porfolio/?post_type=acf-field&p=153', 2, 'acf-field', '', 0),
(154, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606a985db5c65', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 153, 'http://localhost/porfolio/?post_type=acf-field&p=154', 0, 'acf-field', '', 0),
(155, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606a985db5c66', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 153, 'http://localhost/porfolio/?post_type=acf-field&p=155', 1, 'acf-field', '', 0),
(156, 1, '2021-04-05 11:56:07', '2021-04-05 04:56:07', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606a985db5c67', '', '', '2021-04-05 11:56:07', '2021-04-05 04:56:07', '', 153, 'http://localhost/porfolio/?post_type=acf-field&p=156', 2, 'acf-field', '', 0),
(157, 1, '2021-04-05 11:57:42', '2021-04-05 04:57:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606a98b2f77bd', '', '', '2021-04-05 11:57:42', '2021-04-05 04:57:42', '', 148, 'http://localhost/porfolio/?post_type=acf-field&p=157', 2, 'acf-field', '', 0),
(158, 1, '2021-04-05 11:59:44', '2021-04-05 04:59:44', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-05 11:59:44', '2021-04-05 04:59:44', '', 8, 'http://localhost/porfolio/?p=158', 0, 'revision', '', 0),
(159, 1, '2021-04-05 13:35:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-05 13:35:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&p=159', 0, 'acf-field-group', '', 0),
(160, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"page-templates/page-ky-nang.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang kỹ năng', 'tuy-chinh-trang-ky-nang', 'publish', 'closed', 'closed', '', 'group_606aaf9cde9ad', '', '', '2021-04-05 13:40:29', '2021-04-05 06:40:29', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=160', 0, 'acf-field-group', '', 0),
(161, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606aafaeebed2', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 160, 'http://localhost/porfolio/?post_type=acf-field&p=161', 0, 'acf-field', '', 0),
(162, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_606aafc5ebed3', '', '', '2021-04-05 13:40:29', '2021-04-05 06:40:29', '', 160, 'http://localhost/porfolio/?post_type=acf-field&#038;p=162', 1, 'acf-field', '', 0),
(163, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606aafd3ebed4', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 162, 'http://localhost/porfolio/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606aafdbebed5', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 162, 'http://localhost/porfolio/?post_type=acf-field&p=164', 1, 'acf-field', '', 0),
(165, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606aafe7ebed6', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 162, 'http://localhost/porfolio/?post_type=acf-field&p=165', 2, 'acf-field', '', 0),
(166, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Skills', 'skills', 'publish', 'closed', 'closed', '', 'field_606ab011ebed7', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 162, 'http://localhost/porfolio/?post_type=acf-field&p=166', 3, 'acf-field', '', 0),
(167, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_606ab023ebed8', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 166, 'http://localhost/porfolio/?post_type=acf-field&p=167', 0, 'acf-field', '', 0),
(168, 1, '2021-04-05 13:37:53', '2021-04-05 06:37:53', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_606ab033ebed9', '', '', '2021-04-05 13:37:53', '2021-04-05 06:37:53', '', 166, 'http://localhost/porfolio/?post_type=acf-field&p=168', 1, 'acf-field', '', 0),
(169, 1, '2021-04-05 13:38:58', '2021-04-05 06:38:58', '', 'Kĩ năng', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-05 13:38:58', '2021-04-05 06:38:58', '', 12, 'http://localhost/porfolio/?p=169', 0, 'revision', '', 0),
(170, 1, '2021-04-05 13:41:10', '2021-04-05 06:41:10', '', 'Kĩ năng', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-05 13:41:10', '2021-04-05 06:41:10', '', 12, 'http://localhost/porfolio/?p=170', 0, 'revision', '', 0),
(171, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme_options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang sản phẩm', 'tuy-chinh-trang-san-pham', 'publish', 'closed', 'closed', '', 'group_606ab13fbd012', '', '', '2021-04-05 13:48:12', '2021-04-05 06:48:12', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=171', 0, 'acf-field-group', '', 0),
(172, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'About page product', 'about_page_product', 'publish', 'closed', 'closed', '', 'field_606ab1675b685', '', '', '2021-04-05 13:44:26', '2021-04-05 06:44:26', '', 171, 'http://localhost/porfolio/?post_type=acf-field&p=172', 0, 'acf-field', '', 0),
(173, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About page product', 'about_page_product', 'publish', 'closed', 'closed', '', 'field_606ab1a65b686', '', '', '2021-04-05 13:44:26', '2021-04-05 06:44:26', '', 171, 'http://localhost/porfolio/?post_type=acf-field&p=173', 1, 'acf-field', '', 0),
(174, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606ab1ac5b687', '', '', '2021-04-05 13:44:26', '2021-04-05 06:44:26', '', 173, 'http://localhost/porfolio/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606ab1b95b688', '', '', '2021-04-05 13:44:26', '2021-04-05 06:44:26', '', 173, 'http://localhost/porfolio/?post_type=acf-field&p=175', 1, 'acf-field', '', 0),
(176, 1, '2021-04-05 13:44:26', '2021-04-05 06:44:26', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606ab1c15b689', '', '', '2021-04-05 13:44:53', '2021-04-05 06:44:53', '', 173, 'http://localhost/porfolio/?post_type=acf-field&#038;p=176', 2, 'acf-field', '', 0),
(177, 1, '2021-04-05 13:47:50', '2021-04-05 06:47:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme_options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang tin tức', 'tuy-chinh-trang-tin-tuc', 'publish', 'closed', 'closed', '', 'group_606ab28858cd9', '', '', '2021-04-05 13:48:46', '2021-04-05 06:48:46', '', 0, 'http://localhost/porfolio/?post_type=acf-field-group&#038;p=177', 0, 'acf-field-group', '', 0),
(178, 1, '2021-04-05 13:48:04', '2021-04-05 06:48:04', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About page news', 'about_page_news', 'publish', 'closed', 'closed', '', 'field_606ab2a0c3066', '', '', '2021-04-05 13:48:46', '2021-04-05 06:48:46', '', 177, 'http://localhost/porfolio/?post_type=acf-field&#038;p=178', 1, 'acf-field', '', 0),
(179, 1, '2021-04-05 13:48:04', '2021-04-05 06:48:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606ab2a0c3067', '', '', '2021-04-05 13:48:04', '2021-04-05 06:48:04', '', 178, 'http://localhost/porfolio/?post_type=acf-field&p=179', 0, 'acf-field', '', 0),
(180, 1, '2021-04-05 13:48:04', '2021-04-05 06:48:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_606ab2a0c3068', '', '', '2021-04-05 13:48:04', '2021-04-05 06:48:04', '', 178, 'http://localhost/porfolio/?post_type=acf-field&p=180', 1, 'acf-field', '', 0),
(181, 1, '2021-04-05 13:48:04', '2021-04-05 06:48:04', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_606ab2a0c3069', '', '', '2021-04-05 13:48:04', '2021-04-05 06:48:04', '', 178, 'http://localhost/porfolio/?post_type=acf-field&p=181', 2, 'acf-field', '', 0),
(182, 1, '2021-04-05 13:48:46', '2021-04-05 06:48:46', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'About_page_news', 'about_page_news', 'publish', 'closed', 'closed', '', 'field_606ab2c1244be', '', '', '2021-04-05 13:48:46', '2021-04-05 06:48:46', '', 177, 'http://localhost/porfolio/?post_type=acf-field&p=182', 0, 'acf-field', '', 0),
(183, 1, '2021-04-05 13:52:53', '2021-04-05 06:52:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:200;s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_606ab3b828d38', '', '', '2021-04-05 13:55:04', '2021-04-05 06:55:04', '', 67, 'http://localhost/porfolio/?post_type=acf-field&#038;p=183', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'chua-phan-loai', 0),
(2, 'Menu main', 'menu-main', 0),
(3, 'Tin tức', 'tin-tuc', 0),
(4, 'Sản phẩm', 'san-pham', 0),
(5, 'Menu footer', 'menu-footer', 0),
(6, 'UX/UI', 'ux-ui', 0),
(7, 'HTML/CSS', 'html-css', 0),
(8, 'Màu sắc', 'mau-sac', 0),
(9, 'ReactJS', 'reactjs', 0),
(10, 'Layout', 'layout', 0),
(11, 'LOGO', 'logo', 0),
(12, 'Menu', 'menu', 0),
(13, 'Nguyên tắc', 'nguyen-tac', 0),
(14, 'Website Marketing', 'website-marketing', 0),
(15, 'abc', 'abc', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(21, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(38, 4, 0),
(39, 15, 0),
(40, 15, 0),
(43, 3, 0),
(51, 3, 0),
(51, 6, 0),
(51, 7, 0),
(51, 8, 0),
(51, 9, 0),
(51, 10, 0),
(51, 11, 0),
(51, 12, 0),
(51, 13, 0),
(51, 14, 0),
(54, 3, 0),
(56, 3, 0),
(64, 5, 0),
(65, 5, 0),
(66, 5, 0),
(83, 2, 0),
(87, 1, 0),
(87, 3, 0),
(88, 1, 0),
(88, 3, 0),
(94, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
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
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 7),
(4, 4, 'san-pham-cat', '', 0, 8),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'san-pham-cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'VanPho'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"5a9ed7ab674724fbfaa357b93545587aa8d81506f76df73375c1355232150866\";a:4:{s:10:\"expiration\";i:1618387382;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617177782;}s:64:\"a98cc870005ad0c8e9445dd6fa0d3a1139276567cab74a15162bddb16193eab9\";a:4:{s:10:\"expiration\";i:1617530653;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617357853;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '97'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1617597613'),
(23, 1, 'meta-box-order_san-pham', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:38:\"submitdiv,san-pham-catdiv,postimagediv\";s:6:\"normal\";s:36:\"postexcerpt,commentstatusdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_san-pham', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
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
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'VanPho', '$P$Ba7UrKzvvCxvFW5Uczn./1rlnk/lhl1', 'vanpho', 'levanpho.com@gmail.com', 'http://localhost/porfolio', '2021-03-25 04:47:40', '', 0, 'VanPho');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
