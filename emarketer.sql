-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2017 at 09:45 AM
-- Server version: 5.7.14-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emarketer`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(2, NULL, 1, 'Category 2', 'category-2', '2017-10-18 08:24:16', '2017-10-18 08:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-10-18 08:24:16', '2017-10-18 08:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(2, 'site', '2017-10-25 05:57:33', '2017-10-25 05:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-10-18 08:24:16', '2017-10-18 08:24:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 2, '2017-10-18 08:24:16', '2017-10-18 08:59:18', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 3, '2017-10-18 08:24:16', '2017-10-18 08:59:18', 'voyager.posts.index', NULL),
(4, 1, 'Accounts', '', '_self', 'voyager-person', NULL, 14, 1, '2017-10-18 08:24:16', '2017-10-18 08:59:48', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 5, '2017-10-18 08:24:16', '2017-10-18 08:59:18', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 4, '2017-10-18 08:24:16', '2017-10-18 08:59:18', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 14, 2, '2017-10-18 08:24:16', '2017-10-18 08:59:00', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2017-10-18 08:24:16', '2017-10-18 09:01:38', '', NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 16, 1, '2017-10-18 08:24:16', '2017-10-26 06:18:57', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 16, 3, '2017-10-18 08:24:16', '2017-10-26 06:19:00', 'voyager.database.index', NULL),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', '#000000', 8, 2, '2017-10-18 08:24:16', '2017-10-26 06:18:55', 'voyager.compass.index', NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', '#000000', 8, 1, '2017-10-18 08:24:16', '2017-10-26 06:43:42', NULL, ''),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 16, 2, '2017-10-18 08:24:16', '2017-10-26 06:19:00', 'voyager.settings.index', NULL),
(14, 1, 'Users', '', '_self', 'icon voyager-person', '#000000', NULL, 6, '2017-10-18 08:57:37', '2017-10-18 08:59:18', NULL, ''),
(15, 1, 'Users', '', '_self', 'icon voyager-person', '#000000', 14, 3, '2017-10-18 08:57:39', '2017-10-18 09:57:13', NULL, ''),
(16, 1, 'Config', '', '_self', 'voyager-params', '#000000', NULL, 7, '2017-10-18 09:01:16', '2017-10-18 09:04:16', NULL, ''),
(17, 1, 'Test', '', '_self', NULL, '#000000', 16, 4, '2017-10-18 09:59:43', '2017-10-26 06:18:55', NULL, ''),
(18, 2, 'Sales', 'sales', '_self', NULL, '#000000', NULL, 2, '2017-10-25 05:59:52', '2017-10-25 06:01:37', NULL, ''),
(19, 2, 'Marketing', 'marketing', '_self', NULL, '#000000', NULL, 1, '2017-10-25 06:00:21', '2017-10-25 06:01:37', NULL, ''),
(20, 2, 'Service', 'service', '_self', NULL, '#000000', NULL, 3, '2017-10-25 06:00:41', '2017-10-25 06:01:33', NULL, ''),
(21, 2, 'Integrations', 'integrations', '_self', NULL, '#000000', NULL, 4, '2017-10-25 06:00:56', '2017-10-25 06:01:33', NULL, ''),
(22, 2, 'About', 'about', '_self', NULL, '#000000', NULL, 5, '2017-10-25 06:01:10', '2017-10-25 06:01:33', NULL, ''),
(23, 2, 'Pricing', 'pricing', '_self', NULL, '#000000', NULL, 6, '2017-10-25 06:01:25', '2017-10-25 06:01:34', NULL, ''),
(24, 2, 'fghj', '', '_self', NULL, '#000000', 19, 1, '2017-10-25 07:11:43', '2017-10-25 08:09:36', NULL, NULL),
(25, 1, 'Themes', '/admin/themes', '_self', 'voyager-paint-bucket', NULL, NULL, 9, '2017-10-25 08:51:17', '2017-10-26 05:25:30', NULL, NULL),
(28, 1, 'Support', '/admin/support', '_self', 'voyager-umbrella', '#000000', NULL, 10, '2017-10-26 05:23:33', '2017-10-26 06:42:46', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(26, '2017_10_24_122518_voyager_themes', 2),
(27, '2017_10_24_122535_voyager_theme_options', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sales', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'sales', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-10-18 08:24:17', '2017-10-23 11:58:44'),
(2, 1, 'About', 'About', '<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">All Laravel routes are defined in your route files, which are located in the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes</code>&nbsp;directory. These files are automatically loaded by the framework. The&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>web<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>&nbsp;file defines routes that are for your web interface. These routes are assigned the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">web</code>&nbsp;middleware group, which provides features like session state and CSRF protection. The routes in&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>api<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>&nbsp;are stateless and are assigned the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">api</code>&nbsp;middleware group.</p>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">For most applications, you will begin by defining routes in your&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>web<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>&nbsp;file. The routes defined in&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>web<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>&nbsp;may be accessed by entering the defined route\'s URL in your browser. For example, you may access the following route by navigating to&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">http<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">:</span><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>your<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">-</span>app<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>dev<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>user</code>&nbsp;in your browser:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token scope\" style=\"box-sizing: border-box; color: #da564a;\">Route<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">::</span></span><span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">get<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'/user\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">,</span> <span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'UsersController@index\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span></code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Routes defined in the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">routes<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>api<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>&nbsp;file are nested within a route group by the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">RouteServiceProvider</code>. Within this group, the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>api</code>&nbsp;URI prefix is automatically applied so you do not need to manually apply it to every route in the file. You may modify the prefix and other route group options by modifying your&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">RouteServiceProvider</code>&nbsp;class.</p>\r\n<h2 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 30px; font-weight: 400; margin-top: 15px; margin-bottom: 15px; position: relative; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #525252; text-decoration-line: none; background-color: transparent;\" href=\"https://laravel.com/docs/5.5/eloquent#introduction\">Introduction</a></h2>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">The Eloquent ORM included with Laravel provides a beautiful, simple ActiveRecord implementation for working with your database. Each database table has a corresponding \"Model\" which is used to interact with that table. Models allow you to query for data in your tables, as well as insert new records into the table.</p>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Before getting started, be sure to configure a database connection in&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">config<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">/</span>database<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>php</code>. For more information on configuring your database, check out&nbsp;<a style=\"box-sizing: border-box; color: #f4645f; background-color: transparent;\" href=\"https://laravel.com/docs/5.5/database#configuration\">the documentation</a>.</p>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #f4645f; text-decoration-line: underline; background-color: transparent;\" name=\"defining-models\"></a></p>\r\n<h2 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 30px; font-weight: 400; margin-top: 55px; margin-bottom: 15px; position: relative; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #525252; text-decoration-line: none; background-color: transparent;\" href=\"https://laravel.com/docs/5.5/eloquent#defining-models\">Defining Models</a></h2>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">To get started, let\'s create an Eloquent model. Models typically live in the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">app</code>&nbsp;directory, but you are free to place them anywhere that can be auto-loaded according to your&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">composer<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>json</code>&nbsp;file. All Eloquent models extend&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">Illuminate\\<span class=\"token package\" style=\"box-sizing: border-box;\">Database<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Eloquent<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Model</span></code>&nbsp;class.</p>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">The easiest way to create a model instance is using the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">make<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">:</span>model</code>&nbsp;<a style=\"box-sizing: border-box; color: #f4645f; background-color: transparent;\" href=\"https://laravel.com/docs/5.5/artisan\">Artisan command</a>:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">php artisan make<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">:</span>model User</code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">If you would like to generate a&nbsp;<a style=\"box-sizing: border-box; color: #f4645f; background-color: transparent;\" href=\"https://laravel.com/docs/5.5/migrations\">database migration</a>&nbsp;when you generate the model, you may use the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">--</span>migration</code>&nbsp;or&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">-</span>m</code>&nbsp;option:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">php artisan make<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">:</span>model User <span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">--</span>migration\r\n\r\nphp artisan make<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">:</span>model User <span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">-</span>m</code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #f4645f; text-decoration-line: underline; background-color: transparent;\" name=\"eloquent-model-conventions\"></a></p>\r\n<h3 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 24px; font-weight: 400; margin-top: 45px; margin-bottom: 10px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Eloquent Model Conventions</h3>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Now, let\'s look at an example&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">Flight</code>&nbsp;model, which we will use to retrieve and store information from our&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">flights</code>&nbsp;database table:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token delimiter\" style=\"box-sizing: border-box;\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">namespace</span> <span class=\"token package\" style=\"box-sizing: border-box;\">App</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">use</span> <span class=\"token package\" style=\"box-sizing: border-box;\">Illuminate<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Database<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Eloquent<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Model</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">class</span> <span class=\"token class-name\" style=\"box-sizing: border-box;\">Flight</span> <span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">extends</span> <span class=\"token class-name\" style=\"box-sizing: border-box;\">Model</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span>\r\n   <span class=\"token comment\" style=\"box-sizing: border-box; color: #999999;\" spellcheck=\"true\"> //\r\n</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span></code></pre>\r\n<h4 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 16px; margin-top: 35px; margin-bottom: 10px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Table Names</h4>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Note that we did not tell Eloquent which table to use for our&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">Flight</code>&nbsp;model. By convention, the \"snake case\", plural name of the class will be used as the table name unless another name is explicitly specified. So, in this case, Eloquent will assume the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">Flight</code>&nbsp;model stores records in the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">flights</code>&nbsp;table. You may specify a custom table by defining a&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">table</code>&nbsp;property on your model:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token delimiter\" style=\"box-sizing: border-box;\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">namespace</span> <span class=\"token package\" style=\"box-sizing: border-box;\">App</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">use</span> <span class=\"token package\" style=\"box-sizing: border-box;\">Illuminate<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Database<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Eloquent<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\\</span>Model</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n\r\n<span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">class</span> <span class=\"token class-name\" style=\"box-sizing: border-box;\">Flight</span> <span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">extends</span> <span class=\"token class-name\" style=\"box-sizing: border-box;\">Model</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span>\r\n    <span class=\"token comment\" style=\"box-sizing: border-box; color: #999999;\" spellcheck=\"true\">/**\r\n     * The table associated with the model.\r\n     *\r\n     * @var string\r\n     */</span>\r\n    <span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">protected</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$table</span> <span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">=</span> <span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'my_flights\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span></code></pre>\r\n<h4 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 16px; margin-top: 35px; margin-bottom: 10px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Primary Keys</h4>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Eloquent will also assume that each table has a primary key column named&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">id</code>. You may define a protected&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$primaryKey</span></code>&nbsp;property to override this convention.</p>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">In addition, Eloquent assumes that the primary key is an incrementing integer value, which means that by default the primary key will be cast to an&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">int</code>&nbsp;automatically. If you wish to use a non-incrementing or a non-numeric primary key you must set the public&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$incrementing</span></code>&nbsp;property on your model to&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token boolean\" style=\"box-sizing: border-box; color: #da564a;\">false</span></code>. If your primary key is not an integer, you should set the protected&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$keyType</span></code>property on your model to&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">string</code>.</p>', 'pages/October2017/bran-castle-dracula-s-castle-best-castles-in-europe.jpg', 'about', 'about', 'about', 'ACTIVE', '2017-10-23 11:08:29', '2017-10-24 04:16:58'),
(3, 1, 'Marketing', 'marketing', '<p><img src=\"http://emarketer.host//storage/pages/October2017/corvin-castle-best-castles-in-europe.jpg\" width=\"100%\" /></p>', NULL, 'marketing', 'marketing', 'marketing', 'ACTIVE', '2017-10-23 12:03:44', '2017-10-23 12:07:40');
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'Service', 'service', '<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Components and slots provide similar benefits to sections and layouts; however, some may find the mental model of components and slots easier to understand. First, let\'s imagine a reusable \"alert\" component we would like to reuse throughout our application:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token comment\" style=\"box-sizing: border-box; color: #999999;\" spellcheck=\"true\">&lt;!-- /resources/views/alert.blade.php --&gt;</span></span>\r\n\r\n<span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;</span>div</span> <span class=\"token attr-name\" style=\"box-sizing: border-box;\">class</span><span class=\"token attr-value\" style=\"box-sizing: border-box; color: #0077aa;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">=</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span>alert alert-danger<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span></span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span>\r\n    <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$slot</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span>\r\n<span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;/</span>div</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span></code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><img style=\"float: left;\" src=\"http://emarketer.host//storage/pages/October2017/bran-castle-dracula-s-castle-best-castles-in-europe1.jpg\" alt=\"\" width=\"286\" height=\"191\" />The&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$slot</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span></code>&nbsp;variable will contain the content we wish to inject into the component. Now, to construct this component, we can use the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">@component</code>&nbsp;Blade directive:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">@<span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">component<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'alert\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span>\r\n    <span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;</span>strong</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span>Whoops<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">!</span><span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;/</span>strong</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span> Something went wrong<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">!</span>\r\n@endcomponent</code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Sometimes it is helpful to define multiple slots for a component. Let\'s modify our alert component to allow for the injection of a \"title\". Named slots may be displayed by simply \"echoing\" the variable that matches their name:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token comment\" style=\"box-sizing: border-box; color: #999999;\" spellcheck=\"true\">&lt;!-- /resources/views/alert.blade.php --&gt;</span></span>\r\n\r\n<span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;</span>div</span> <span class=\"token attr-name\" style=\"box-sizing: border-box;\">class</span><span class=\"token attr-value\" style=\"box-sizing: border-box; color: #0077aa;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">=</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span>alert alert-danger<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span></span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span>\r\n    <span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;</span>div</span> <span class=\"token attr-name\" style=\"box-sizing: border-box;\">class</span><span class=\"token attr-value\" style=\"box-sizing: border-box; color: #0077aa;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">=</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span>alert-title<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">\"</span></span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$title</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;/</span>div</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span>\r\n\r\n    <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$slot</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span>\r\n<span class=\"token markup\" style=\"box-sizing: border-box;\"><span class=\"token tag\" style=\"box-sizing: border-box; color: #da564a;\"><span class=\"token tag\" style=\"box-sizing: border-box;\"><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&lt;/</span>div</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">&gt;</span></span></span></code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Now, we can inject content into the named slot using the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">@slot</code>&nbsp;directive. Any content not within a&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">@slot</code>&nbsp;directive will be passed to the component in the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$slot</span></code>&nbsp;variable:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">@<span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">component<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'alert\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span>\r\n    @<span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">slot<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'title\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span>\r\n        Forbidden\r\n    @endslot\r\n\r\n    You are not allowed to access this resource<span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">!</span>\r\n@endcomponent</code></pre>\r\n<h4 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 16px; margin-top: 35px; margin-bottom: 10px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Passing Additional Data To Components</h4>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">Sometimes you may need to pass additional data to a component. For this reason, you can pass an array of data as the second argument to the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">@component</code>&nbsp;directive. All of the data will be made available to the component template as variables:<img style=\"float: right;\" src=\"http://emarketer.host//storage/pages/October2017/corvin-castle-best-castles-in-europe1.jpg\" alt=\"\" width=\"372\" height=\"247\" /></p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">@<span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">component<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'alert\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">,</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">[</span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'foo\'</span> <span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">&gt;</span> <span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'bar\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">]</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span>\r\n    <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span>\r\n@endcomponent</code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #f4645f; text-decoration-line: underline; background-color: transparent;\" name=\"displaying-data\"></a></p>\r\n<h2 style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-size: 30px; font-weight: 400; margin-top: 55px; margin-bottom: 15px; position: relative; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\"><a style=\"box-sizing: border-box; color: #525252; text-decoration-line: none; background-color: transparent; outline: 0px;\" href=\"https://laravel.com/docs/5.5/blade#displaying-data\">Displaying Data</a></h2>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">You may display data passed to your Blade views by wrapping the variable in curly braces. For example, given the following route:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\"><span class=\"token scope\" style=\"box-sizing: border-box; color: #da564a;\">Route<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">::</span></span><span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">get<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'greeting\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">,</span> <span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">function</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span>\r\n    <span class=\"token keyword\" style=\"box-sizing: border-box; color: #0077aa;\">return</span> <span class=\"token function\" style=\"box-sizing: border-box; color: #555555;\">view<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">(</span></span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'welcome\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">,</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">[</span><span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'name\'</span> <span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box; color: #555555;\">&gt;</span> <span class=\"token string\" style=\"box-sizing: border-box; color: #2e7d32;\">\'Samantha\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">]</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">)</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">;</span></code></pre>\r\n<p style=\"box-sizing: border-box; line-height: 1.7; margin: 10px 0px 20px; font-size: 14.5px; color: #525252; font-family: \'Source Sans Pro\', sans-serif;\">You may display the contents of the&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; color: #f4645f; border-radius: 3px; background: #f0f2f1; padding: 1px 5px; white-space: pre; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\">name</code>&nbsp;variable like so:</p>\r\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; font-size: 11px; word-break: normal; direction: ltr; color: #000000; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; margin-top: 10px; margin-bottom: 20px; background: rgba(238, 238, 238, 0.35); border-radius: 3px; padding: 10px; box-shadow: rgba(0, 0, 0, 0.125) 0px 1px 1px; vertical-align: middle;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: \'Operator Mono\', \'Fira Code\', Consolas, Monaco, \'Andale Mono\', monospace; word-spacing: normal; word-break: normal; direction: ltr; text-shadow: #ffffff 0px 1px; line-height: 2; tab-size: 4; hyphens: none; vertical-align: middle;\">Hello<span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">,</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">{</span> <span class=\"token variable\" style=\"box-sizing: border-box; color: #4ea1df;\">$name</span> <span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">}</span><span class=\"token punctuation\" style=\"box-sizing: border-box; color: #999999;\">.</span></code></pre>', NULL, 'service', 'service', 'service', 'ACTIVE', '2017-10-24 04:42:46', '2017-10-24 04:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(2, 'browse_database', NULL, '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(3, 'browse_media', NULL, '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(4, 'browse_compass', NULL, '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(5, 'browse_menus', 'menus', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(6, 'read_menus', 'menus', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(7, 'edit_menus', 'menus', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(8, 'add_menus', 'menus', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(9, 'delete_menus', 'menus', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(10, 'browse_pages', 'pages', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(11, 'read_pages', 'pages', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(12, 'edit_pages', 'pages', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(13, 'add_pages', 'pages', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(14, 'delete_pages', 'pages', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(15, 'browse_roles', 'roles', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(16, 'read_roles', 'roles', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(17, 'edit_roles', 'roles', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(18, 'add_roles', 'roles', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(19, 'delete_roles', 'roles', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(20, 'browse_users', 'users', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(21, 'read_users', 'users', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(22, 'edit_users', 'users', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(23, 'add_users', 'users', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(24, 'delete_users', 'users', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(25, 'browse_posts', 'posts', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(26, 'read_posts', 'posts', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(27, 'edit_posts', 'posts', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(28, 'add_posts', 'posts', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(29, 'delete_posts', 'posts', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(30, 'browse_categories', 'categories', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(31, 'read_categories', 'categories', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(32, 'edit_categories', 'categories', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(33, 'add_categories', 'categories', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(34, 'delete_categories', 'categories', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(35, 'browse_settings', 'settings', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(36, 'read_settings', 'settings', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(37, 'edit_settings', 'settings', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(38, 'add_settings', 'settings', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(39, 'delete_settings', 'settings', '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(40, 'browse_hooks', NULL, '2017-10-18 08:24:16', '2017-10-18 08:24:16', NULL),
(41, 'browse_themes', 'admin', '2017-10-25 08:51:17', '2017-10-25 08:51:17', NULL),
(42, 'browse_support', NULL, '2017-10-24 21:00:00', '2017-10-24 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(2, 1, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(3, 1, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(4, 1, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-10-18 08:24:17', '2017-10-18 08:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-10-18 08:24:16', '2017-10-18 08:24:16'),
(2, 'user', 'Normal User', '2017-10-18 08:24:16', '2017-10-18 08:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '192922308468-ailnfldrnga6pr7gka8m0bj7ngqopksc.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(11, 'site.domain', 'Site domain', '', NULL, 'text', 6, 'Site'),
(12, 'site.site.logo', 'logo', 'settings/October2017/1451311123_101563_or.jpg', NULL, 'image', 7, 'Site'),
(13, 'site.admin.select', 'select', '', NULL, 'select_dropdown', 8, 'Site'),
(14, 'site.google_analytics_code', 'Google Analytics code', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-108609861-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n  gtag(\'config\', \'UA-108609861-1\');\r\n</script>', NULL, 'text_area', 9, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-10-18 08:24:17', '2017-10-18 08:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `firstname`, `lastname`, `name`, `email`, `phone`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Admin', 'admin@emarketer.host', NULL, 'users/default.png', '$2y$10$699xRkM6kQ7YWUQFM.x9suf2tJk.amDq.sZ.tGOppeA1wOmej2EFi', 'KGA78xcps752TVzjM2X3uBoNgmyARiRHYpE25yvnq2WCxvEK01hjGUkzOcCD', '2017-10-18 08:24:17', '2017-10-18 08:24:17'),
(2, 2, 'User2', 'User', 'user2', 'user2@emarketer.host', '+380000000002', 'users/default.png', '$2y$10$699xRkM6kQ7YWUQFM.x9suf2tJk.amDq.sZ.tGOppeA1wOmej2EFi', 'QxI1u0AsAApTbH4EOPBiWcW30rqc4gJdT9M7a6mLkBqcL0XGiWaqP46vNlrE', '2017-10-18 08:39:56', '2017-10-18 08:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `voyager_themes`
--

CREATE TABLE `voyager_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voyager_themes`
--

INSERT INTO `voyager_themes` (`id`, `name`, `folder`, `active`, `version`, `created_at`, `updated_at`) VALUES
(1, 'Sample Theme', 'sample-theme', 1, '1.0', '2017-10-25 09:06:57', '2017-10-25 09:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `voyager_theme_options`
--

CREATE TABLE `voyager_theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `voyager_theme_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voyager_theme_options`
--

INSERT INTO `voyager_theme_options` (`id`, `voyager_theme_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'home_title', 'dfghdfgh', '2017-10-25 09:07:37', '2017-10-25 09:07:37'),
(2, 1, 'about', '<p>fghjfghjfghjfghj</p>\r\n<p>&nbsp;</p>\r\n<p>fghjfgjhfghj</p>\r\n<p>&nbsp;</p>\r\n<p>&lt;br&gt;dfghdfgh&lt;/br&gt;</p>\r\n<p>&nbsp;</p>\r\n<p>fdghdfgh</p>', '2017-10-25 09:07:37', '2017-10-25 09:24:41'),
(3, 1, 'logo', 'themes/October2017/20131223135424-8d1096a2-cu_s9999x4102.jpg', '2017-10-25 09:07:37', '2017-10-25 09:24:41'),
(4, 1, 'headline', '{}', '2017-10-25 09:24:41', '2017-10-25 09:24:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voyager_themes`
--
ALTER TABLE `voyager_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voyager_themes_folder_unique` (`folder`);

--
-- Indexes for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyager_theme_options_voyager_theme_id_index` (`voyager_theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `voyager_themes`
--
ALTER TABLE `voyager_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD CONSTRAINT `voyager_theme_options_voyager_theme_id_foreign` FOREIGN KEY (`voyager_theme_id`) REFERENCES `voyager_themes` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
