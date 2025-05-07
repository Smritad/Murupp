-- Adminer 4.8.1 MySQL 10.4.32-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `murupp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `murupp`;

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `about_us` (`id`, `banner_image`, `description`, `inserted_at`, `inserted_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'1742642631189.webp',	'<h3 style=\"box-sizing: border-box; padding: 0px; font-weight: 500; line-height: 48px; color: rgb(24, 24, 24); font-size: 40px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Situjuh; text-rendering: optimizelegibility; letter-spacing: normal;\">About Us</h3><blockquote style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; color: rgb(24, 24, 24); letter-spacing: normal;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 15px; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0);\">Murupp is a fashion label that artfully combines tradition with modern design, inspired by the founder\'s deep cultural roots and diverse experiences across India. From the tranquil landscapes of Leh-Ladakh to the vibrant energy of urban cities, the brand embodies a fusion of artistry, craftsmanship, and contemporary style.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 15px; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0);\">With distinctive, hand-crafted prints that tell unique stories, every piece celebrates individuality. Designed for those who embrace elegance, authenticity, and bold self-expression, our creations reflect a dedication to creativity and storytelling. The brand is ever-evolving and offers timeless pieces that stand out in both design&nbsp;and&nbsp;spirit.</p></blockquote>',	'2025-03-22 11:13:31',	1,	'2025-03-22 11:39:50',	1,	NULL,	NULL),
(2,	'1742642675996.png',	'<p>vvfvvf</p>',	'2025-03-22 11:24:35',	1,	NULL,	NULL,	'2025-03-22 11:24:41',	1);

DROP TABLE IF EXISTS `banner_details`;
CREATE TABLE `banner_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `banner_details` (`id`, `banner_heading`, `banner_title`, `banner_images`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'T’SEM - AW 24/25',	'New Collection',	'1740376726714.webp',	NULL,	NULL,	'2025-02-24 05:58:46',	1,	NULL,	NULL),
(2,	'T’SEM - AW 24/25',	'Exclusive Design',	'1740376737799.webp',	NULL,	NULL,	'2025-02-24 05:58:57',	1,	NULL,	NULL),
(3,	'T’SEM - AW 24/25',	'Exclusive Deisgnhvjgcvgjcvgb',	'1737796461366.webp',	'2025-01-25 09:14:22',	3,	NULL,	NULL,	'2025-01-25 09:23:47',	3);

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `colors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `print` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_total_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total price of the product based on quantity',
  `payment_status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1 => pending, 2 => processing, 3 => completed, 4 => cancelled',
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `user_id`, `session_id`, `product_id`, `quantity`, `colors`, `print`, `size`, `product_image`, `product_total_price`, `payment_status`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(53,	1,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 05:16:53',	NULL,	NULL,	NULL,	NULL),
(54,	10,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 05:26:18',	NULL,	NULL,	NULL,	NULL),
(55,	11,	NULL,	2,	2,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	38000.00,	'1',	NULL,	'2025-04-07 05:33:47',	NULL,	'2025-04-07 05:33:57',	NULL,	NULL),
(56,	12,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 05:36:46',	NULL,	NULL,	NULL,	NULL),
(58,	14,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 05:51:03',	NULL,	NULL,	NULL,	NULL),
(59,	15,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 05:56:46',	NULL,	NULL,	NULL,	NULL),
(60,	16,	NULL,	2,	1,	'Black',	'Chemet Print',	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	NULL,	'2025-04-07 10:30:52',	NULL,	NULL,	NULL,	NULL),
(61,	1,	NULL,	2,	1,	NULL,	NULL,	'L',	'/murupp/product/gallery/1740372553295.jpg',	19000.00,	'1',	1,	'2025-04-07 12:52:17',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `category_bottoms_details`;
CREATE TABLE `category_bottoms_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_bottoms_details` (`id`, `banner_heading`, `banner_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Bottoms',	'1739177362931.webp',	'2025-01-27 07:47:20',	1,	'2025-02-10 08:49:22',	1,	NULL,	NULL),
(2,	'Dresses6476',	'1737964489342.webp',	'2025-01-27 07:53:57',	1,	'2025-01-27 07:54:49',	1,	'2025-01-27 07:55:05',	1);

DROP TABLE IF EXISTS `category_coords_details`;
CREATE TABLE `category_coords_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_coords_details` (`id`, `banner_heading`, `banner_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Co-Ords',	'173917737535.webp',	'2025-01-27 09:18:32',	1,	'2025-02-10 08:49:35',	1,	NULL,	NULL),
(2,	'Dresses',	'1737969959496.png',	'2025-01-27 09:23:09',	1,	'2025-01-27 09:25:59',	1,	'2025-01-27 09:26:27',	1);

DROP TABLE IF EXISTS `category_dresses_details`;
CREATE TABLE `category_dresses_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_dresses_details` (`id`, `banner_heading`, `banner_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Dresses',	'1737962670757.webp',	'2025-01-27 07:24:30',	1,	NULL,	NULL,	'2025-01-27 07:39:24',	1),
(2,	'Dresses',	'1739177314678.webp',	'2025-01-27 07:29:51',	1,	'2025-02-10 08:48:34',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `category_jackets_details`;
CREATE TABLE `category_jackets_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_jackets_details` (`id`, `banner_heading`, `banner_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Blazers/Jackets',	'1739177388174.webp',	'2025-01-27 09:33:22',	1,	'2025-02-10 08:49:48',	1,	NULL,	NULL),
(2,	'Dresses6476',	'1737970681147.webp',	'2025-01-27 09:36:26',	1,	'2025-01-27 09:38:01',	1,	'2025-01-27 09:38:16',	1);

DROP TABLE IF EXISTS `category_tops_details`;
CREATE TABLE `category_tops_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_tops_details` (`id`, `banner_heading`, `banner_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Tops',	'1739177331665.webp',	'2025-01-27 08:55:07',	1,	'2025-02-10 08:48:51',	1,	NULL,	NULL),
(2,	'Dresses',	'1737969819225.webp',	'2025-01-27 08:57:20',	1,	'2025-01-27 09:23:39',	1,	'2025-01-27 09:07:28',	1);

DROP TABLE IF EXISTS `exchange_return`;
CREATE TABLE `exchange_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `exchange_return` (`id`, `heading`, `introduction`, `title`, `description`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(1,	'Returns and Exchange Policy',	'<div><span style=\"font-size: 10pt; font-family: Helvetica;\">The below policy applies to purchases made through the official website.</span></div>',	'INFORMATION WE COLLECT',	'<p>We collect both personal and non-personal information to provide and improve our Services. The types of data we collect include:</p><p>A. PERSONAL INFORMATION</p><p>• ACCOUNT INFORMATION: When you create an account, we may collect your name, email address, shipping address, billing address, phone number, and payment details.</p><p>• ORDER INFORMATION: We collect information about your purchases, including products ordered, payment methods, and transaction history.</p><p>B. NON-PERSONAL INFORMATION</p><p>• COOKIES AND TRACKING TECHNOLOGIES: We may use cookies, web beacons, and similar technologies to track activity on our Website and to store certain information. These tools help us enhance user experience, analyze trends, and personalize our services.</p><p>• USAGE DATA: We may collect information on how you access and use the Website, including your IP address, browser type, device information, pages visited, and duration of visits.</p>',	1,	'2025-02-27 09:46:01',	1,	'2025-03-04 07:31:12',	NULL,	NULL),
(2,	NULL,	NULL,	'EXCHANGE PROCESS',	'<p>To exchange an item:</p><p>1. CONTACT US: Email us at contact@murupp.com with your order number and reason for exchange.</p><p>2. RETURN THE ITEM: Send the item back in its original condition. You will be responsible for return&nbsp;<span style=\"letter-spacing: 0.7px; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">shipping.</span></p><p>3. EXCHANGE SHIPMENT: After the return is received at our warehouse, it will undergo quality inspection and upon approval we will process your exchange. If the requested size/color is unavailable, we’ll offer an alternative or store credit. Store credits are valid up to 6 months from the date of issue and cannot be extended.</p>',	1,	'2025-02-27 09:46:41',	NULL,	NULL,	NULL,	NULL),
(3,	NULL,	NULL,	'DAMAGED OR DEFECTIVE ITEMS',	'<p>If you receive a damaged or defective item, please contact us immediately at contact@murupp.com with your order number and photos of the item along with the tag attached. We’ll process an exchange or offer a suitable resolution.</p>',	1,	'2025-02-27 09:47:05',	NULL,	NULL,	NULL,	NULL),
(4,	NULL,	NULL,	'EXCLUSIONS',	'<p>Sale or discounted items</p><p>• Custom or personalized products</p><p>• Underwear, swimwear, or intimate items (unless faulty)</p>',	1,	'2025-02-27 09:47:28',	NULL,	NULL,	NULL,	NULL),
(5,	NULL,	NULL,	'ADDITIONAL NOTES',	'<p>• Orders placed using store credits can not be returned or exchanged.</p><p>• We do not accept returns or exchange on international orders.&nbsp;</p><p>• For processing timelines please refer to our Shipping &amp; Delivery policy.</p><p>If you have any questions, please feel free to reach out to our team at contact@murupp.com</p>',	1,	'2025-02-27 09:47:52',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `footer_details`;
CREATE TABLE `footer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `map_url` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `about` varchar(255) NOT NULL,
  `media_platform` text DEFAULT NULL,
  `media_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `footer_details` (`id`, `email`, `map_url`, `contact_number`, `about`, `media_platform`, `media_link`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'contact@murupp.com',	'https://maps.app.goo.gl/CrWXHbyejyE1rHvW7',	'7710040318',	'<p><span style=\"font-family: Montserrat, serif; font-size: 15px; letter-spacing: normal;\">Mumbai,&nbsp; India.</span></p>',	'[\"1\",\"3\"]',	'[\"https:\\/\\/www.facebook.com\\/\",\"https:\\/\\/instagram.com\\/\"]',	'2025-01-26 14:18:13',	1,	'2025-02-20 11:01:47',	1,	NULL,	NULL),
(2,	'vishnu@matrixbricks.com',	'https://maps.app.goo.gl/CrWXHbyejyE1rHvW7',	'315-666-6688',	'<p>dcsdcdscfsvsfv</p>',	'[\"4\"]',	'[\"https:\\/\\/www.facebook.com\\/\"]',	'2025-01-26 14:30:51',	1,	NULL,	NULL,	'2025-01-26 14:30:58',	1);

DROP TABLE IF EXISTS `guest_otp`;
CREATE TABLE `guest_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(255) DEFAULT NULL,
  `otp` text DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `guest_user_details`;
CREATE TABLE `guest_user_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) DEFAULT NULL,
  `ip_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `guest_user_details` (`id`, `session_id`, `ip_address`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(27,	'KvqsMkpLobbyExRSfiRN2YZHVEx1kM1tSan7CYm6',	'127.0.0.1',	NULL,	'2025-04-03 12:37:09',	NULL,	NULL,	NULL,	NULL),
(28,	'JfxU8QZy7ytLPUWLB3M3Knqa2NgWyKaFPxwDPAua',	'127.0.0.1',	NULL,	'2025-04-03 12:40:52',	NULL,	NULL,	NULL,	NULL),
(29,	'YvAIr09mndFrvjMeRKMVV0llo7E9ZH6tyF0Eu0X4',	'127.0.0.1',	NULL,	'2025-04-03 12:50:31',	NULL,	NULL,	NULL,	NULL),
(30,	'1Er2TTwCM8sMKJSua89InboMiNtcngbC10lBOBwI',	'127.0.0.1',	NULL,	'2025-04-03 12:55:40',	NULL,	NULL,	NULL,	NULL),
(31,	'LiicJXdARuhqx3ik4eHs0UirGoHowrIlhkKhtkCA',	'127.0.0.1',	NULL,	'2025-04-07 05:03:38',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `home_collection_details`;
CREATE TABLE `home_collection_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `home_collection_details` (`id`, `heading`, `description`, `image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'T’SEM / sem / AW 24/25',	'<blockquote style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; color: rgb(24, 24, 24); letter-spacing: normal;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 15px; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0);\">For my debut collection, I wanted to take a journey back to my roots, drawing inspiration from home and the memories. Living in an urban city now, this collection is my way of carrying a piece of my heritage and story into the world.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 15px; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0);\">As memories fade and the world around us changes, this is a small homage to home—atribute to the moments that ground us. Because home is more than a place. It’s a feeling, a memory, and a part of who we are.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 15px; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0);\">T\'SEM is all about that—about hearts, stories, and a connection. This collection is deeply personal to me, and I hope it brings a sense of warmth and belonging to anyone who wears it.<br><br><br></p></blockquote><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; letter-spacing: normal;\">Warmly,<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Murupp</p>',	'1737800614543.webp',	'2025-01-25 10:23:34',	3,	NULL,	NULL,	NULL,	NULL),
(2,	'Hotel Aarush Inn35465',	'<p>zvxbghgjnhmbhadfsezfvgrbvzgkhfgb</p>',	'1737801595133.png',	'2025-01-25 10:35:39',	3,	'2025-01-25 10:39:55',	3,	'2025-01-25 10:40:59',	3);

DROP TABLE IF EXISTS `home_shop_category`;
CREATE TABLE `home_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `home_shop_category` (`id`, `heading`, `image_title`, `product_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Shop by categories',	'5',	'1737883996470.webp',	'2025-01-26 09:33:16',	1,	'2025-02-21 05:51:36',	1,	NULL,	NULL),
(2,	NULL,	'2',	'173788402169.webp',	'2025-01-26 09:33:41',	1,	'2025-02-21 05:56:25',	1,	NULL,	NULL),
(3,	NULL,	'3',	'1737884036735.webp',	'2025-01-26 09:33:56',	1,	'2025-02-21 05:56:33',	1,	NULL,	NULL),
(4,	NULL,	'4',	'1737884053460.webp',	'2025-01-26 09:34:13',	1,	'2025-02-21 05:56:41',	1,	NULL,	NULL),
(5,	NULL,	'1',	'1737884065524.webp',	'2025-01-26 09:34:25',	1,	'2025-02-21 05:56:49',	1,	NULL,	NULL),
(6,	NULL,	'Dressese',	'1737884844310.webp',	'2025-01-26 09:38:19',	1,	'2025-01-26 09:47:24',	1,	'2025-01-26 09:48:20',	1);

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `master_collections`;
CREATE TABLE `master_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_collections` (`id`, `collection_name`, `slug`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'T’SEM - AW 24/25',	'tsem-aw-2425',	'2025-01-23 09:31:55',	1,	'2025-03-11 11:20:10',	1,	NULL,	NULL),
(2,	'T’SEM - AW 24/256',	'tsem-aw-24256',	'2025-01-23 10:10:18',	1,	NULL,	NULL,	'2025-01-23 10:10:24',	1);

DROP TABLE IF EXISTS `master_fabrics_composition`;
CREATE TABLE `master_fabrics_composition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `composition_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_fabrics_composition` (`id`, `composition_name`, `slug`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Viscose Satin',	'viscose-satin',	'2025-01-23 12:36:15',	1,	NULL,	NULL,	NULL,	NULL),
(2,	'Viscose Satin &  Lachka',	'viscose-satin-lachka',	'2025-01-23 12:41:08',	1,	NULL,	NULL,	NULL,	NULL),
(3,	'Lachka',	'lachka',	'2025-01-23 12:41:27',	1,	NULL,	NULL,	NULL,	NULL),
(4,	'Lachka5656',	'lachka5656',	'2025-01-23 12:45:36',	1,	NULL,	NULL,	'2025-01-23 12:51:50',	1);

DROP TABLE IF EXISTS `master_product_category`;
CREATE TABLE `master_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_product_category` (`id`, `category_name`, `slug`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Co-ord Set',	'co-ord-set',	'2025-01-23 11:05:22',	1,	NULL,	NULL,	NULL,	NULL),
(2,	'Blazers/Jackets',	'blazersjackets',	'2025-01-23 11:05:44',	1,	NULL,	NULL,	NULL,	NULL),
(3,	'Bottoms',	'bottoms',	'2025-01-23 11:05:53',	1,	NULL,	NULL,	NULL,	NULL),
(4,	'Tops',	'tops',	'2025-01-23 11:06:04',	1,	NULL,	NULL,	NULL,	NULL),
(5,	'Dresses',	'dresses',	'2025-01-23 11:06:12',	1,	NULL,	NULL,	NULL,	NULL),
(6,	'Testing',	'testing',	'2025-01-23 11:23:21',	1,	NULL,	NULL,	'2025-01-23 11:23:28',	1);

DROP TABLE IF EXISTS `master_product_fabrics`;
CREATE TABLE `master_product_fabrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fabrics_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_product_fabrics` (`id`, `fabrics_name`, `slug`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Dupion Satin',	'dupion-satin',	'2025-01-23 12:29:32',	1,	NULL,	NULL,	NULL,	NULL),
(2,	'Dupion Satin &  Imported  Lachka',	'dupion-satin-imported-lachka',	'2025-01-23 12:29:41',	1,	NULL,	NULL,	NULL,	NULL),
(3,	'Imported  Lachka',	'imported-lachka',	'2025-01-23 12:30:16',	1,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `master_product_print`;
CREATE TABLE `master_product_print` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `print_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_product_print` (`id`, `print_name`, `slug`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Chemet Print',	'chemet-print',	'2025-01-24 04:58:26',	1,	NULL,	NULL,	NULL,	NULL),
(2,	'Ri Print',	'ri-print',	'2025-01-24 04:59:02',	1,	NULL,	NULL,	NULL,	NULL),
(3,	'Saa Print',	'saa-print',	'2025-01-24 04:59:14',	1,	NULL,	NULL,	NULL,	NULL),
(4,	'testttt111',	'testttt',	'2025-01-24 05:01:21',	1,	NULL,	NULL,	'2025-01-24 05:09:39',	1),
(5,	'Testtttt',	'testtttt',	'2025-01-24 06:52:00',	3,	NULL,	NULL,	'2025-01-24 07:00:24',	3);

DROP TABLE IF EXISTS `master_product_size`;
CREATE TABLE `master_product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `bust` varchar(255) DEFAULT NULL,
  `waist` varchar(255) DEFAULT NULL,
  `hips` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `master_product_size` (`id`, `size`, `slug`, `bust`, `waist`, `hips`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'XS',	'xs',	'32',	'24',	'34',	'2025-01-24 04:34:49',	1,	'2025-02-10 10:10:22',	1,	NULL,	NULL),
(2,	'S',	's',	'34',	'26',	'36',	'2025-01-24 04:35:09',	1,	'2025-02-10 10:10:41',	1,	NULL,	NULL),
(3,	'M',	'm',	'36',	'28',	'38',	'2025-01-24 04:35:18',	1,	'2025-02-10 10:11:29',	1,	NULL,	NULL),
(4,	'L',	'l',	'38',	'30',	'40',	'2025-01-24 04:35:30',	1,	'2025-02-10 10:11:42',	1,	NULL,	NULL),
(5,	'XL',	'xl',	'40',	'32',	'42',	'2025-01-24 04:35:39',	1,	'2025-02-10 10:12:08',	1,	NULL,	NULL),
(6,	'test3333',	'test',	'',	'',	'',	'2025-01-24 04:37:57',	1,	NULL,	NULL,	'2025-01-24 04:42:58',	1),
(7,	'Test',	'test',	'',	'',	'',	'2025-01-24 06:48:01',	1,	NULL,	NULL,	'2025-01-24 06:48:51',	1),
(8,	'test3333',	'test3333',	'33',	'33',	'33',	'2025-02-10 07:34:38',	1,	'2025-02-10 07:39:04',	1,	'2025-02-10 07:39:33',	1);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `new_arrivals`;
CREATE TABLE `new_arrivals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_heading` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `new_arrivals` (`id`, `section_heading`, `product_name`, `product_price`, `product_size`, `product_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'New Arrivals',	'25',	'17,000',	'S M L XL',	'1737798095308.webp',	'2025-01-25 09:41:35',	3,	'2025-02-21 06:57:01',	1,	NULL,	NULL),
(2,	'New Arrivals',	'20',	'9,500',	'S M L XL',	'1737798171958.webp',	'2025-01-25 09:42:51',	3,	'2025-02-21 06:57:15',	1,	NULL,	NULL),
(3,	'New Arrivals',	'26',	'24,500',	'S M L XL',	'1737798230955.webp',	'2025-01-25 09:43:50',	3,	'2025-02-21 06:57:27',	1,	NULL,	NULL),
(4,	'New Arrivals',	'26',	'24,500',	'S M L XL',	'1737798267404.webp',	'2025-01-25 09:44:27',	3,	'2025-02-21 06:58:01',	1,	NULL,	NULL),
(5,	'New Arrivals',	'13',	'14,000',	'S M L XL',	'1737798338565.webp',	'2025-01-25 09:45:38',	3,	'2025-02-21 06:58:17',	1,	NULL,	NULL),
(6,	'New Arrivals',	'NAMKHA Midi  Dressdadcdcdfsc',	'INR 19,000666666666wdswdwsdwsd',	'S M L XLdescsecf',	'1737799250889.png',	'2025-01-25 09:52:48',	3,	'2025-01-25 10:00:50',	3,	'2025-01-25 10:01:38',	3);

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` text DEFAULT NULL,
  `invoice_id` text DEFAULT NULL,
  `payment_id` text DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `street` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `postal_code` bigint(11) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '0= Pending, 1=Completed, 2=Cancelled',
  `product_ids` text DEFAULT NULL,
  `product_names` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `prices` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `sizes` text DEFAULT NULL,
  `prints` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `order_details` (`id`, `user_id`, `order_id`, `invoice_id`, `payment_id`, `customer_name`, `customer_email`, `customer_phone`, `street`, `city`, `state`, `country`, `postal_code`, `billing_address`, `shipping_address`, `description`, `total_price`, `status`, `product_ids`, `product_names`, `quantities`, `prices`, `images`, `sizes`, `prints`, `created_at`, `created_by`) VALUES
(30,	1,	'order_Q3S1oKVnlxoZDj',	NULL,	'pay_Q3S1tPCM5UpV4p',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'22000',	1,	'[10]',	'[\"RI Blazer\"]',	'[1]',	'[22000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740374230752.jpg\"]',	'[\"L\"]',	NULL,	'2024-03-06 09:13:19',	1),
(31,	1,	'order_Q3qYGUn6kWZl1n',	NULL,	'pay_Q3qYMazduCEsgP',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'119000',	1,	'[6,10,13,2]',	'[\"NAMKHA: Crop Blazer\",\"RI Blazer\",\"SAA Tiered Midi Dress\",\"NAMKHA Midi Dress\"]',	'[2,2,2,1]',	'[28000,44000,28000,19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/173804218016.webp\",\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740374230752.jpg\",\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740374589926.jpg\",\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\",\"XL\",\"M\",\"M\"]',	NULL,	'2024-08-06 09:12:47',	1),
(32,	1,	'order_Q520lMZdtUf8oG',	NULL,	'pay_Q520qqKTsMc1Vf',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'12000',	1,	'[21]',	'[\"CHEMET Belted Dress\"]',	'[1]',	'[12000]',	'[\"https:\\/\\/anvayafoundation.com\\/Murupp\\/murupp\\/product\\/gallery\\/1738046167592.webp\"]',	'[\"L\"]',	NULL,	'2025-03-10 03:34:14',	1),
(33,	1,	'order_Q53GWxWx3p5bX3',	NULL,	'pay_Q53HlIClzE4uhy',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'28000',	1,	'[6]',	'[\"NAMKHA: Crop Blazer\"]',	'[2]',	'[28000]',	'[\"https:\\/\\/anvayafoundation.com\\/Murupp\\/murupp\\/product\\/gallery\\/173804218016.webp\"]',	'[\"L\"]',	NULL,	'2025-03-10 04:48:57',	1),
(34,	1,	'order_Q5S6XwwBCMm7Sw',	NULL,	'pay_Q5S6gZnF1SgcDW',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'38000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[2]',	'[38000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\"]',	NULL,	'2025-03-11 10:35:51',	1),
(97,	1,	'order_QBKVXNy0IRfAxx',	'65725087',	'pay_QBKVc3YBFFswzT',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\"]',	'[\"Ri Print\"]',	'2025-03-26 07:03:56',	1),
(98,	1,	'order_QBKbDW5nwROGw9',	'77733682',	'pay_QBKbIF6JYiAeVj',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"S\"]',	'[\"Ri Print\"]',	'2025-03-26 07:09:17',	1),
(99,	1,	'order_QBKil3byy5Wk0z',	'83215186',	'pay_QBKipk4XHrYH9u',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-03-26 07:16:26',	1),
(100,	1,	'order_QBL4BUlsyaVc5Z',	'25608224',	'pay_QBL4nBGCrEsBQN',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'76000',	1,	'[2,2]',	'[\"NAMKHA Midi Dress\",\"NAMKHA Midi Dress\"]',	'[1,3]',	'[19000,57000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\",\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\",\"S\"]',	'[\"Ri Print\",\"Chemet Print\"]',	'2025-03-26 07:37:14',	1),
(101,	1,	'order_QBMh7i1NXIHLwA',	'20683705',	'pay_QBMhDZWoVt6X6C',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-03-26 09:12:18',	1),
(102,	1,	'order_QBMk8fipYqphMg',	'32190714',	'pay_QBMkEGpU9joKOv',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\"]',	'[\"Chemet Print\"]',	'2025-03-26 09:15:09',	1),
(103,	1,	'order_QBMmzXfWlAnQ3L',	'88828323',	'pay_QBMn4i5ZMbyGk3',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-03-26 09:17:51',	1),
(104,	1,	'order_QBN96uLRMsZCB3',	'19515510',	'pay_QBN9cvkToeVISh',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Ri Print\"]',	'2025-03-26 09:39:12',	1),
(105,	1,	'order_QBNvwQOzJdk7U0',	'59753579',	'pay_QBNw1HWcTLpJFT',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\"]',	'[\"Chemet Print\"]',	'2025-03-26 10:25:00',	1),
(106,	1,	'order_QBO0ebLINhFjh6',	'12150243',	'pay_QBO0lOQJSfJycB',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'38000',	1,	'[2,2]',	'[\"NAMKHA Midi Dress\",\"NAMKHA Midi Dress\"]',	'[1,1]',	'[19000,19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\",\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\",\"S\"]',	'[\"Chemet Print\",\"Chemet Print\"]',	'2025-03-26 10:29:49',	1),
(107,	1,	'order_QBOULweqMuTiCF',	'91845937',	'pay_QBOUTTlq18Fsd0',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"M\"]',	'[\"Chemet Print\"]',	'2025-03-26 10:58:01',	1),
(108,	9,	'order_QEanLA2kjcEOmn',	'93825756',	'pay_QEanSEvlPhMP8H',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'8452057173',	'Pantnagar',	'Mumbai',	'Maharashtra',	'India',	400075,	'testingggggg',	'testingggggg',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-04-03 12:56:54',	9),
(109,	9,	'order_QEao38crSjxu2r',	'72971648',	'pay_QEao8QScRQtSTj',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'8452057173',	'Pantnagar',	'Mumbai',	'Maharashtra',	'India',	400075,	'testingggggg',	'testingggggg',	NULL,	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-04-03 12:57:32',	9),
(110,	1,	'order_QG2tJqEiHJOjd3',	'58441617',	'pay_QG2tTSnvK31Wax',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'38000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[2]',	'[38000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-04-07 05:05:03',	1),
(111,	1,	'order_QG34tJOOMr1Sky',	'92387512',	'pay_QG34y9RNqVqsk3',	'Riddhi Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'Pantnagar',	'navi mumbai',	'MAHARASHTRA',	'India',	400075,	'Building no 4, 402, Millenium Bussiness Park, Mahape',	'Building no 4, 402, Millenium Bussiness Park, Mahape',	NULL,	'38000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[2]',	'[38000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-04-07 05:15:57',	1),
(112,	13,	'order_QG3Zn1UMxYkbSl',	'86857210',	'pay_QG3Zs3maMlKTFI',	'Abhishek Jha',	'abhishek@matrixbricks.com',	'9026025271',	'Pantnagar',	'KALYAN',	'UTTAR PRADESH',	'India',	400075,	'Panvel,Navi Mumbai',	'Panvel,Navi Mumbai',	'Testinggggggg',	'19000',	1,	'[2]',	'[\"NAMKHA Midi Dress\"]',	'[1]',	'[19000]',	'[\"http:\\/\\/127.0.0.1:8000\\/murupp\\/product\\/gallery\\/1740372553295.jpg\"]',	'[\"L\"]',	'[\"Chemet Print\"]',	'2025-04-07 05:45:11',	13);

DROP TABLE IF EXISTS `order_status_details`;
CREATE TABLE `order_status_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `order_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_remarks` varchar(255) DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `status_updated_by` int(11) DEFAULT NULL,
  `status_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_status_details` (`id`, `user_id`, `order_id`, `order_status`, `order_remarks`, `delivery_date`, `status_updated_by`, `status_updated_at`) VALUES
(2,	'1',	'order_Q3S1oKVnlxoZDj',	'Order Placed',	NULL,	NULL,	1,	'2025-03-06 09:13:19'),
(19,	'1',	'order_Q3S1oKVnlxoZDj',	'Processing',	'The order has been processed',	'2025-03-13',	1,	'2025-03-06 11:20:42'),
(25,	'1',	'order_Q3qYGUn6kWZl1n',	'Order Placed',	NULL,	NULL,	1,	'2025-03-07 09:12:47'),
(26,	'1',	'order_Q3qYGUn6kWZl1n',	'Processing',	NULL,	NULL,	1,	'2025-03-07 09:38:28'),
(27,	'1',	'order_Q520lMZdtUf8oG',	'Order Placed',	NULL,	NULL,	1,	'2025-03-10 03:34:14'),
(28,	'1',	'order_Q53GWxWx3p5bX3',	'Order Placed',	NULL,	NULL,	1,	'2025-03-10 04:48:57'),
(29,	'1',	'order_Q53GWxWx3p5bX3',	'Processing',	NULL,	'2025-03-13',	1,	'2025-03-10 04:51:43'),
(30,	'1',	'order_Q3S1oKVnlxoZDj',	'Shipped',	NULL,	'2025-03-13',	1,	'2025-03-11 10:30:59'),
(31,	'1',	'order_Q3S1oKVnlxoZDj',	'Order Placed',	NULL,	'2025-03-13',	1,	'2025-03-11 10:31:54'),
(32,	'1',	'order_Q5S6XwwBCMm7Sw',	'Order Placed',	NULL,	NULL,	1,	'2025-03-11 10:35:51'),
(33,	'1',	'order_Q5SLPwMgP4Yw2e',	'Order Placed',	NULL,	NULL,	1,	'2025-03-11 10:49:51'),
(34,	'1',	'order_QAuDnq6vHce0uU',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 05:21:10'),
(35,	'1',	'order_QAwIzO6qzSWWNd',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 07:23:34'),
(36,	'1',	'order_QAweakEEBwWIQ5',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 07:44:12'),
(37,	'1',	'order_QAwguztkCfU18a',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 07:46:50'),
(38,	'1',	'order_QAxxvqCWf84RPi',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:00:56'),
(39,	'1',	'order_QAy5PKqODHhLs7',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:08:00'),
(40,	'1',	'order_QAy94wuQIi151o',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:11:30'),
(41,	'1',	'order_QAyFdQNsQgRxLF',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:17:45'),
(42,	'1',	'order_QAyIahf1BvKhrr',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:20:33'),
(43,	'1',	'order_QAyMG94YQOyPnm',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:23:58'),
(44,	'1',	'order_QAyaaWIslqVjBg',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 09:37:40'),
(45,	'1',	'order_QB27d9pEaLZYWq',	'Order Placed',	NULL,	NULL,	1,	'2025-03-25 13:04:47'),
(46,	'1',	'order_QBIm75ZudUbd4z',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 05:22:15'),
(47,	'1',	'order_QBItrZL9XnZaFx',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 05:29:33'),
(48,	'1',	'order_QBIww3oNPfUB2I',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 05:32:51'),
(49,	'1',	'order_QBK46sSmlYeGKV',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 06:37:59'),
(50,	'1',	'order_QBKF0KUcGBmXlN',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 06:48:16'),
(51,	'1',	'order_QBKRkVfmha8uHt',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 07:00:21'),
(52,	'1',	'order_QBKVXNy0IRfAxx',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 07:03:56'),
(53,	'1',	'order_QBKbDW5nwROGw9',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 07:09:17'),
(54,	'1',	'order_QBKil3byy5Wk0z',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 07:16:26'),
(55,	'1',	'order_QBL4BUlsyaVc5Z',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 07:37:14'),
(56,	'1',	'order_QBMh7i1NXIHLwA',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 09:12:18'),
(57,	'1',	'order_QBMk8fipYqphMg',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 09:15:09'),
(58,	'1',	'order_QBMmzXfWlAnQ3L',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 09:17:51'),
(59,	'1',	'order_QBN96uLRMsZCB3',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 09:39:12'),
(60,	'1',	'order_QBNvwQOzJdk7U0',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 10:25:00'),
(61,	'1',	'order_QBO0ebLINhFjh6',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 10:29:49'),
(62,	'1',	'order_QBOULweqMuTiCF',	'Order Placed',	NULL,	NULL,	1,	'2025-03-26 10:58:01'),
(63,	'9',	'order_QEanLA2kjcEOmn',	'Order Placed',	NULL,	NULL,	9,	'2025-04-03 12:56:54'),
(64,	'9',	'order_QEao38crSjxu2r',	'Order Placed',	NULL,	NULL,	9,	'2025-04-03 12:57:32'),
(65,	'1',	'order_QG2tJqEiHJOjd3',	'Order Placed',	NULL,	NULL,	1,	'2025-04-07 05:05:03'),
(66,	'1',	'order_QG34tJOOMr1Sky',	'Order Placed',	NULL,	NULL,	1,	'2025-04-07 05:15:57'),
(67,	'13',	'order_QG3Zn1UMxYkbSl',	'Order Placed',	NULL,	NULL,	13,	'2025-04-07 05:45:11');

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com',	'P3BFaY1VMCuHEhpgtXRya6v8uDdiL0Vybd1gybxA5k8cNtHyzCL0OUcYa33hQSnw',	'2025-02-26 13:00:55'),
('riddhi@matrixbricks.com',	'r2iyEwFNiEONAgL6UD6bmS7DQ7YB9vLTpFH9B1NffCitX6awp70xTaj6hNHfNodn',	'2025-02-27 04:42:59');

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-Inactive, 1-Active',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `payment` (`id`, `order_id`, `payment_id`, `status`, `created_at`) VALUES
(1,	'order_Q13UTGqcCfEUSE',	'pay_Q13Ud4o8FhQmcy',	1,	'2025-02-28 07:55:13');

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1,	'Dasboard',	'dashboard-sectionview',	'2025-01-20 10:11:41',	'2025-01-20 10:11:41'),
(2,	'User Management',	'user-management-sectionview',	'2025-01-20 10:12:45',	'2025-01-20 10:12:45'),
(3,	'User Management',	'user-add',	'2025-01-20 10:13:19',	'2025-01-20 10:13:19'),
(4,	'User Management',	'user-edit',	'2025-01-20 10:13:28',	'2025-01-20 10:13:28'),
(5,	'User Management',	'user-delete',	'2025-01-20 10:13:38',	'2025-01-20 10:13:38'),
(6,	'User Management',	'user-view',	'2025-01-20 10:13:56',	'2025-01-20 10:13:56'),
(7,	'User Permission',	'user-permission-sectionview',	'2025-01-20 10:15:45',	'2025-01-20 10:15:45'),
(8,	'User Permission',	'permission-add',	'2025-01-20 10:15:58',	'2025-01-20 10:15:58'),
(9,	'User Permission',	'permission-edit',	'2025-01-20 10:16:21',	'2025-01-20 10:16:21'),
(11,	'User Permission',	'permission-delete',	'2025-01-20 10:17:04',	'2025-01-20 10:17:04'),
(12,	'User Permission',	'permission-view',	'2025-01-20 10:17:41',	'2025-01-20 10:17:41'),
(13,	'Store Management',	'store-sectionview',	'2025-01-27 05:21:46',	'2025-01-27 05:21:46'),
(14,	'Store Management-Collection',	'store-collection-sectionview',	'2025-01-27 05:24:27',	'2025-01-27 05:24:27'),
(15,	'Store Management-Collection',	'store-collection-add',	'2025-01-27 05:24:58',	'2025-01-27 05:24:58'),
(16,	'Store Management-Collection',	'store-collection-edit',	'2025-01-27 05:26:05',	'2025-01-27 05:26:05'),
(17,	'Store Management-Collection',	'store-collection-delete',	'2025-01-27 05:30:04',	'2025-01-27 05:30:04'),
(18,	'Store Management-Collection',	'store-collection-view',	'2025-01-27 05:30:15',	'2025-01-27 05:30:15'),
(19,	'Store Management-Product Category',	'store-category-sectionview',	'2025-01-27 05:34:07',	'2025-01-27 05:34:07'),
(20,	'Store Management-Product Category',	'store-category-add',	'2025-01-27 05:35:38',	'2025-01-27 05:35:38'),
(21,	'Store Management-Product Category',	'store-category-edit',	'2025-01-27 05:35:46',	'2025-01-27 05:35:46'),
(22,	'Store Management-Product Category',	'store-category-delete',	'2025-01-27 05:37:00',	'2025-01-27 05:37:00'),
(23,	'Store Management-Product Category',	'store-category-view',	'2025-01-27 05:37:17',	'2025-01-27 05:37:17'),
(24,	'Store Management-Product Fabrics',	'store-fabrics-sectionview',	'2025-01-27 05:39:24',	'2025-01-27 05:39:24'),
(25,	'Store Management-Product Fabrics',	'store-fabrics-add',	'2025-01-27 05:39:47',	'2025-01-27 05:39:47'),
(26,	'Store Management-Product Fabrics',	'store-fabrics-edit',	'2025-01-27 05:40:05',	'2025-01-27 05:40:05'),
(27,	'Store Management-Product Fabrics',	'store-fabrics-delete',	'2025-01-27 05:40:44',	'2025-01-27 05:40:44'),
(28,	'Store Management-Product Fabrics',	'store-fabrics-view',	'2025-01-27 05:40:51',	'2025-01-27 05:40:51'),
(29,	'Store Management-Fabric Composition',	'store-composition-sectionview',	'2025-01-27 05:43:11',	'2025-01-27 05:43:11'),
(30,	'Store Management-Fabric Composition',	'store-composition-add',	'2025-01-27 05:47:18',	'2025-01-27 05:47:18'),
(31,	'Store Management-Fabric Composition',	'store-composition-edit',	'2025-01-27 05:47:37',	'2025-01-27 05:47:37'),
(32,	'Store Management-Fabric Composition',	'store-composition-delete',	'2025-01-27 05:47:50',	'2025-01-27 05:47:50'),
(33,	'Store Management-Fabric Composition',	'store-composition-view',	'2025-01-27 05:52:08',	'2025-01-27 05:52:08'),
(34,	'Store Management-Product Size',	'store-size-sectionview',	'2025-01-27 05:52:52',	'2025-01-27 05:52:52'),
(35,	'Store Management-Product Size',	'store-size-add',	'2025-01-27 05:54:11',	'2025-01-27 05:54:11'),
(36,	'Store Management-Product Size',	'store-size-edit',	'2025-01-27 05:54:25',	'2025-01-27 05:54:25'),
(37,	'Store Management-Product Size',	'store-size-delete',	'2025-01-27 05:55:28',	'2025-01-27 05:55:28'),
(38,	'Store Management-Product Size',	'store-size-view',	'2025-01-27 05:58:17',	'2025-01-27 05:58:17'),
(39,	'Store Management-Product Prints',	'store-prints-sectionview',	'2025-01-27 05:59:06',	'2025-01-27 05:59:06'),
(40,	'Store Management-Product Prints',	'store-prints-add',	'2025-01-27 05:59:25',	'2025-01-27 05:59:25'),
(41,	'Store Management-Product Prints',	'store-prints-edit',	'2025-01-27 05:59:38',	'2025-01-27 05:59:38'),
(42,	'Store Management-Product Prints',	'store-prints-delete',	'2025-01-27 05:59:54',	'2025-01-27 05:59:54'),
(43,	'Store Management-Product Prints',	'store-prints-view',	'2025-01-27 06:00:04',	'2025-01-27 06:00:04'),
(44,	'Store Management-Product Details',	'store-details-sectionview',	'2025-01-27 06:00:51',	'2025-01-27 06:00:51'),
(45,	'Store Management-Product Details',	'store-details-add',	'2025-01-27 06:01:06',	'2025-01-27 06:01:06'),
(46,	'Store Management-Product Details',	'store-details-edit',	'2025-01-27 06:01:20',	'2025-01-27 06:01:20'),
(47,	'Store Management-Product Details',	'store-details-delete',	'2025-01-27 06:01:33',	'2025-01-27 06:01:33'),
(48,	'Store Management-Product Details',	'store-details-view',	'2025-01-27 06:01:55',	'2025-01-27 06:01:55'),
(49,	'Home',	'home-sectionview',	'2025-01-27 06:04:50',	'2025-01-27 06:04:50'),
(50,	'Home-Banner',	'home-banner-sectionview',	'2025-01-27 06:08:48',	'2025-01-27 06:08:48'),
(51,	'Home-Banner',	'home-banner-add',	'2025-01-27 06:08:55',	'2025-01-27 06:08:55'),
(52,	'Home-Banner',	'home-banner-edit',	'2025-01-27 06:09:01',	'2025-01-27 06:09:01'),
(53,	'Home-Banner',	'home-banner-delete',	'2025-01-27 06:09:08',	'2025-01-27 06:09:08'),
(54,	'Home-Banner',	'home-banner-view',	'2025-01-27 06:09:17',	'2025-01-27 06:09:17'),
(55,	'Home-New Arrivals',	'home-arrivals-sectionview',	'2025-01-27 06:10:00',	'2025-01-27 06:10:00'),
(56,	'Home-New Arrivals',	'home-arrivals-add',	'2025-01-27 06:10:09',	'2025-01-27 06:10:09'),
(57,	'Home-New Arrivals',	'home-arrivals-edit',	'2025-01-27 06:10:16',	'2025-01-27 06:10:16'),
(58,	'Home-New Arrivals',	'home-arrivals-delete',	'2025-01-27 06:10:25',	'2025-01-27 06:10:25'),
(59,	'Home-New Arrivals',	'home-arrivals-view',	'2025-01-27 06:10:33',	'2025-01-27 06:10:33'),
(60,	'Home-Collection Details',	'home-collection-sectionview',	'2025-01-27 06:11:41',	'2025-01-27 06:11:41'),
(61,	'Home-Collection Details',	'home-collection-add',	'2025-01-27 06:11:53',	'2025-01-27 06:11:53'),
(62,	'Home-Collection Details',	'home-collection-edit',	'2025-01-27 06:11:58',	'2025-01-27 06:11:58'),
(63,	'Home-Collection Details',	'home-collection-delete',	'2025-01-27 06:12:05',	'2025-01-27 06:12:05'),
(64,	'Home-Collection Details',	'home-collection-view',	'2025-01-27 06:12:16',	'2025-01-27 06:12:16'),
(65,	'Home-Shop Category',	'home-category-sectionview',	'2025-01-27 06:15:07',	'2025-01-27 06:15:07'),
(66,	'Home-Shop Category',	'home-category-add',	'2025-01-27 06:15:34',	'2025-01-27 06:15:34'),
(67,	'Home-Shop Category',	'home-category-edit',	'2025-01-27 06:15:40',	'2025-01-27 06:15:40'),
(68,	'Home-Shop Category',	'home-category-delete',	'2025-01-27 06:15:47',	'2025-01-27 06:15:47'),
(69,	'Home-Shop Category',	'home-category-view',	'2025-01-27 06:15:53',	'2025-01-27 06:15:53'),
(70,	'Home-Product Policy',	'home-policy-sectionview',	'2025-01-27 06:16:30',	'2025-01-27 06:16:30'),
(71,	'Home-Product Policy',	'home-policy-add',	'2025-01-27 06:16:38',	'2025-01-27 06:16:38'),
(72,	'Home-Product Policy',	'home-policy-edit',	'2025-01-27 06:16:45',	'2025-01-27 06:16:45'),
(73,	'Home-Product Policy',	'home-policy-delete',	'2025-01-27 06:16:51',	'2025-01-27 06:16:51'),
(74,	'Home-Product Policy',	'home-policy-view',	'2025-01-27 06:16:57',	'2025-01-27 06:16:57'),
(75,	'Home-Testimonials',	'home-testimonial-sectionview',	'2025-01-27 06:17:36',	'2025-01-27 06:17:36'),
(76,	'Home-Testimonials',	'home-testimonial-add',	'2025-01-27 06:17:52',	'2025-01-27 06:17:52'),
(77,	'Home-Testimonials',	'home-testimonial-edit',	'2025-01-27 06:17:59',	'2025-01-27 06:17:59'),
(78,	'Home-Testimonials',	'home-testimonial-delete',	'2025-01-27 06:18:07',	'2025-01-27 06:18:07'),
(79,	'Home-Testimonials',	'home-testimonial-view',	'2025-01-27 06:18:14',	'2025-01-27 06:18:14'),
(80,	'Home-Social Media',	'home-media-sectionview',	'2025-01-27 06:20:23',	'2025-01-27 06:20:23'),
(81,	'Home-Social Media',	'home-media-add',	'2025-01-27 06:20:39',	'2025-01-27 06:20:39'),
(82,	'Home-Social Media',	'home-media-edit',	'2025-01-27 06:21:10',	'2025-01-27 06:21:10'),
(83,	'Home-Social Media',	'home-media-delete',	'2025-01-27 06:21:21',	'2025-01-27 06:21:21'),
(84,	'Home-Social Media',	'home-media-view',	'2025-01-27 06:21:31',	'2025-01-27 06:21:31'),
(85,	'Home-Footer',	'home-footer-sectionview',	'2025-01-27 06:22:14',	'2025-01-27 06:22:14'),
(86,	'Home-Footer',	'home-footer-add',	'2025-01-27 06:22:27',	'2025-01-27 06:22:27'),
(87,	'Home-Footer',	'home-footer-edit',	'2025-01-27 06:22:37',	'2025-01-27 06:22:37'),
(88,	'Home-Footer',	'home-footer-delete',	'2025-01-27 06:22:46',	'2025-01-27 06:22:46'),
(89,	'Home-Footer',	'home-footer-view',	'2025-01-27 06:22:54',	'2025-01-27 06:22:54');

DROP TABLE IF EXISTS `privacy_policy`;
CREATE TABLE `privacy_policy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `privacy_policy` (`id`, `heading`, `introduction`, `title`, `description`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(1,	'Privacy Policy',	'<p>At MURUPP (\"we\", \"us\", \"our\"), your privacy is a top priority. This Privacy Policy outlines the information we collect, how it is used, and how we protect your personal data when you visit our website located at https://www.murupp.com/ (“Website”) and purchase products (\"Products\"). By using the Website, you agree to the collection and use of information in accordance with this Privacy Policy.</p>',	'INFORMATION WE COLLECT',	'<p>We collect both personal and non-personal information to provide and improve our Services. The types of data we collect include:</p><p>A. PERSONAL INFORMATION</p><p>• ACCOUNT INFORMATION: When you create an account, we may collect your name, email address, shipping address, billing address, phone number, and payment details.</p><p>• ORDER INFORMATION: We collect information about your purchases, including products ordered, payment methods, and transaction history.</p><p>B. NON-PERSONAL INFORMATION</p><p>• COOKIES AND TRACKING TECHNOLOGIES: We may use cookies, web beacons, and similar technologies to track activity on our Website and to store certain information. These tools help us enhance user experience, analyze trends, and personalize our services.</p><p>• USAGE DATA: We may collect information on how you access and use the Website, including your IP address, browser type, device information, pages visited, and duration of visits.</p>',	1,	'2025-02-27 10:13:02',	NULL,	NULL,	NULL,	NULL),
(2,	NULL,	NULL,	'HOW WE USE YOUR INFORMATION',	'<p>We use the information we collect in the following ways:</p><p>• TO PROVIDE AND IMPROVE OUR SERVICES: To process and fulfill your orders, provide customer support, and improve the functionality of the Website.</p><p>• TO PERSONALIZE YOUR EXPERIENCE: To tailor content, offers, and advertisements to your preferences.</p><p>• FOR MARKETING AND PROMOTIONS: To send you promotional emails, newsletters, and updates on new products or special offers (you can opt out of marketing communications at any time).</p><p>• FOR LEGAL AND SECURITY PURPOSES: To comply with applicable laws, resolve disputes, and protect our legal rights and interests.By using our Website, you consent to the use of your data for these purposes.</p>',	1,	'2025-02-27 10:13:34',	1,	'2025-02-27 10:20:45',	NULL,	NULL),
(3,	NULL,	NULL,	'DATA SHARING AND DISCLOSURE',	'<p>We do not sell, rent, or trade your personal information to third parties. However, we may share your information with trusted third-party service providers to help us operate our Website and business. These service providers include, but are not limited to:</p><p>• PAYMENT PROCESSORS: To process your payment transactions securely.</p><p>• SHIPPING PARTNERS: To fulfill your orders and manage deliveries.</p><p>• ANALYTICS SERVICES: To analyze the usage and performance of our Website.</p><p>• EMAIL MARKETING PROVIDERS: To send promotional content and communications, if you’ve opted in.</p><p>We may also disclose your personal information if required by law or in response to valid legal requests from governmental authorities.</p>',	1,	'2025-02-27 10:14:12',	NULL,	NULL,	NULL,	NULL),
(4,	NULL,	NULL,	'COOKIES AND TRACKING TECHNOLOGIES',	'<p>We use cookies and similar technologies to enhance your experience on our Website. Cookies are small text files placed on your device when you visit our site. They help us:</p><p>• Remember your preferences and login information.</p><p>• Analyze Website traffic and improve performance.</p><p>• Provide personalized content and advertisements.You can control cookie settings through your browser’s settings. However, disabling cookies may affect your ability to use certain features of our Website.</p>',	1,	'2025-02-27 10:14:51',	NULL,	NULL,	NULL,	NULL),
(5,	NULL,	NULL,	'DATA SECURITY',	'<p>We take the security of your personal information seriously and implement appropriate security measures to protect your data from unauthorized access, alteration, or destruction. This includes encryption and secure server technology for processing sensitive data like payment information.</p><p>However, no method of online transmission or electronic storage is 100% secure. While we strive to protect your personal data, we cannot guarantee its absolute security.</p>',	1,	'2025-02-27 10:15:18',	NULL,	NULL,	NULL,	NULL),
(6,	NULL,	NULL,	'YOUR RIGHTS AND CHOICES',	'<p>A. ACCESS AND UPDATE YOUR INFORMATION You have the right to access, correct, or delete the personal information we hold about you. To do so, please log into your account or contact us directly.</p><p>B. OPT-OUT OF MARKETING COMMUNICATIONS You may opt out of receiving promotional emails and newsletters by following the unsubscribe link in any marketing email or by contacting us directly.</p><p>C. COOKIE PREFERENCES You can manage or disable cookies through your browser settings. Please note that disabling cookies may affect certain features of the Website.</p><p>D. DO NOT TRACK (DNT) Some web browsers may offer a \"Do Not Track\" option. Our Website does not currently respond to DNT signals.</p>',	1,	'2025-02-27 10:15:42',	NULL,	NULL,	NULL,	NULL),
(7,	NULL,	NULL,	'THIRD-PARTY LINKS',	'<p>Our Website may contain links to external sites or services that are not operated by us. We are not responsible for the privacy practices or content of third-party websites. We recommend reviewing the privacy policies of any external sites you visit.</p>',	1,	'2025-02-27 10:16:06',	NULL,	NULL,	NULL,	NULL),
(8,	NULL,	NULL,	'CHILDREN’S PRIVACY',	'<p>Our Website is not intended for children under the age of 13, and we do not knowingly collect personal information from children. If we learn that we have collected personal data from a child under 13, we will take steps to delete that information. If you are a parent or guardian and believe your child has provided us with personal information, please contact us.</p>',	1,	'2025-02-27 10:16:40',	NULL,	NULL,	NULL,	NULL),
(9,	NULL,	NULL,	'CHANGES TO THIS PRIVACY POLICY',	'<p>We may update our Privacy Policy from time to time. We encourage you to review this Privacy Policy periodically for any updates. Continued use of the Website after changes have been posted constitutes your acceptance of the revised Privacy Policy.</p>',	1,	'2025-02-27 10:17:06',	NULL,	NULL,	NULL,	NULL),
(10,	NULL,	NULL,	'CONTACT US',	'<p>If you have any questions or concerns about this Privacy Policy or our data practices, please contact us: enquiry@murupp.com</p>',	1,	'2025-02-27 10:17:31',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `available_quantity` bigint(20) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `style_code` varchar(255) DEFAULT NULL,
  `look_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `fabric_composition_id` int(11) DEFAULT NULL,
  `product_fabric_id` int(11) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `return` text DEFAULT NULL,
  `sizes` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `thumbnail_image` text DEFAULT NULL,
  `gallery_images` text DEFAULT NULL,
  `print_name` text DEFAULT NULL,
  `product_prints` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `product_details` (`id`, `collection_id`, `product_name`, `available_quantity`, `slug`, `style_code`, `look_name`, `category_id`, `fabric_composition_id`, `product_fabric_id`, `product_price`, `description`, `shipping`, `return`, `sizes`, `colors`, `thumbnail_image`, `gallery_images`, `print_name`, `product_prints`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(2,	1,	'NAMKHA Midi  Dress',	63,	'namkha-midi-dress',	'1AW24001D',	'NAMKHA: Midi  Dress',	5,	1,	1,	'19,000',	'<p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; color: rgb(24, 24, 24); letter-spacing: normal;\">Dresses Viscose Satin A chic midi A-line dress that stands out with its embroidered magpie appliqués and 3D embellishments created using piping. The plunging V-neckline, paired with bold geometric cut-outs on the bodice, adds a modern edge to the elegant silhouette. It also features hidden side pockets.</p><p class=\"text-btn-uppercase\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: 20px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; text-transform: uppercase; letter-spacing: 0.1em; color: rgb(24, 24, 24);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 600; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit;\">Fabric &amp; Care</span></p><ul class=\"list-text type-disc mb_12 gap-6\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: Montserrat, serif; font-size: 15px; list-style-position: initial; list-style-image: initial; gap: 2px; display: flex; flex-direction: column; color: rgb(24, 24, 24); letter-spacing: normal;\"><li class=\"font-2\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 14px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: &quot;Instrument Sans&quot;, sans-serif; font-style: inherit; font-weight: inherit; list-style: none; position: relative;\">Cotton Georgette</li><li class=\"font-2\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 14px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: &quot;Instrument Sans&quot;, sans-serif; font-style: inherit; font-weight: inherit; list-style: none; position: relative;\">Hand wash/ Dry Clean</li></ul>',	'Free Shipping Within India.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'Return Policies.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us.',	'[\"1\",\"2\",\"3\",\"4\"]',	'[]',	'[\"1740372412199.jpg\",\"174037241237.jpg\"]',	'[\"1740372553295.jpg\",\"1740372553103.jpg\",\"1740372553673.jpg\",\"174037255374.webp\",\"1740372553383.webp\"]',	'null',	'[]',	'2025-01-24 12:22:31',	3,	'2025-04-07 12:40:15',	1,	NULL,	NULL),
(3,	1,	'NAMKHA: Co-ord  Dress',	0,	'namkha-co-ord-dress',	'1AW24002SKI',	'NAMKHA: Co-ord  Dress',	1,	1,	1,	'18,500',	'A short bubble-hem skirt that features playful loop details. Its versatile \r\ndesign allows it to be styled effortlessly for various looks.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738040733955.webp\",\"1741005389235.webp\"]',	'[\"1738040733327.webp\",\"1738040733444.webp\",\"1738040733395.webp\",\"173804073396.webp\"]',	'null',	'[]',	'2025-01-28 05:05:33',	1,	'2025-03-03 12:36:29',	1,	NULL,	NULL),
(4,	1,	'NAMKHA Short  Bubble-Hem Skirt',	0,	'namkha-short-bubble-hem-skirt',	'1AW24002SKI',	'NAMKHA Short  Bubble-Hem Skirt',	3,	1,	1,	'9,000',	'A short bubble-hem skirt that features playful loop details. Its versatile \r\ndesign allows it to be styled effortlessly for various looks.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738040847613.webp\",\"1741007466244.webp\"]',	'[\"1738040847425.webp\",\"1738040847530.webp\",\"1738040847594.webp\",\"1738040847771.webp\"]',	'null',	'[]',	'2025-01-28 05:07:27',	1,	'2025-03-03 13:11:06',	1,	NULL,	NULL),
(5,	1,	'NAMKHA Strapless  Bubble-Hem Top',	2,	'namkha-strapless-bubble-hem-top',	'1AW24002T',	'NAMKHA Strapless  Bubble-Hem Top',	4,	1,	1,	'9,500',	'A strapless bubble-hem top that features playful loop details. Its versatile \r\ndesign allows it to be styled effortlessly for various looks. When combined \r\nwith the matching short bubble-hem skirt, it creates the illusion of a fun \r\nand chic dress, perfect for making a bold yet stylish statemen',	NULL,	NULL,	NULL,	NULL,	'[\"1738040998771.webp\",\"1738047668236.webp\"]',	'[\"1738040998459.webp\",\"1738040998190.webp\",\"1738040998964.webp\",\"1738040998922.webp\"]',	NULL,	NULL,	'2025-01-28 05:09:58',	1,	'2025-01-28 07:01:08',	1,	NULL,	NULL),
(6,	1,	'NAMKHA: Crop  Blazer',	0,	'namkha-crop-blazer',	'1AW24003BLZ',	'NAMKHA: Crop  Blazer',	2,	1,	1,	'14,000',	'A cropped blazer with 3D piping work on sleeves that adds a little fun and \r\ndrama. It features wide lapels and is a statement piece for any wardrobe.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738042180662.webp\",\"1738042180108.webp\"]',	'[\"173804218016.webp\",\"1738042180468.webp\",\"1738042180642.webp\",\"1738042180817.webp\"]',	'null',	'[]',	'2025-01-28 05:29:40',	1,	'2025-02-24 05:02:23',	1,	NULL,	NULL),
(7,	1,	'NAMKHA: Midi  Skirt & Bralette Set',	2,	'namkha-midi-skirt-bralette-set',	'1AW24003BR',	'NAMKHA: Midi  Skirt & Bralette Set',	1,	1,	1,	'14,500',	'A bralette top with loop details. It is paired with an A-Line skirt that also \r\nfeatures pockets.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738042363424.webp\",\"1738042363856.webp\"]',	'[\"1738042363907.webp\",\"1738042363977.webp\",\"1738042363825.webp\",\"173804236360.webp\"]',	'null',	'[]',	'2025-01-28 05:32:43',	1,	'2025-02-24 05:03:47',	1,	NULL,	NULL),
(8,	1,	'NAMKHA Bralette',	2,	'namkha-bralette',	'1AW24003BR',	'NAMKHA: Midi  Skirt & Bralette Set',	4,	1,	1,	'6,000',	'A bralette top with loop details. It is paired with an A-Line skirt that also \r\nfeatures pockets.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"173804255861.webp\",\"1738042558264.webp\"]',	'[\"1738042558231.webp\",\"1738042558336.webp\",\"1738042558176.webp\",\"1738042558811.webp\"]',	'null',	'[]',	'2025-01-28 05:35:58',	1,	'2025-02-24 05:04:22',	1,	NULL,	NULL),
(9,	1,	'NAMKHA Midi Skirt',	2,	'namkha-midi-skirt',	'1AW24003SKI',	'NAMKHA: Midi  Skirt & Bralette Set',	3,	1,	1,	'8,500',	'An A-Line midi skirt with loop details. This chic skirt also features pockets.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738043182847.webp\",\"1738043182457.webp\"]',	'[\"1738043182353.webp\",\"1738043182733.webp\",\"173804318244.webp\",\"173804318215.webp\"]',	'null',	'[]',	'2025-01-28 05:46:22',	1,	'2025-02-24 05:05:03',	1,	NULL,	NULL),
(10,	1,	'RI Blazer',	2,	'ri-blazer',	'1AW24004BLZ',	'RI: Blazer Set',	1,	1,	1,	'22,000',	'A printed blazer with loop details in the front. The design is simple and \r\nclassic but with a twist.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374230316.jpg\",\"1740374230825.jpg\"]',	'[\"1740374230752.jpg\",\"1740374230903.jpg\",\"1740374230620.jpg\",\"1740374230321.jpg\",\"1740374230733.webp\"]',	'null',	'[]',	'2025-01-28 05:56:40',	1,	'2025-02-24 05:17:10',	1,	NULL,	NULL),
(11,	1,	'RI Blazer',	2,	'ri-blazer',	'1AW24004BLZ',	'RI: Blazer Set',	2,	1,	1,	'12,500',	'A printed blazer with loop details in the front. The design is simple and \r\nclassic but with a twist.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374372277.jpg\",\"1740374372166.jpg\"]',	'[\"1740374372226.jpg\",\"1740374372585.jpg\",\"1740374372291.jpg\",\"1740374372360.jpg\",\"1740374372396.webp\"]',	'null',	'[]',	'2025-01-28 05:58:28',	1,	'2025-02-24 05:19:32',	1,	NULL,	NULL),
(12,	1,	'RI Godet Pants',	2,	'ri-godet-pants',	'1AW24004P',	'RI: Blazer Set',	3,	1,	1,	'9,500',	'Printed wide legged pants with godets on the sides.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374431183.jpg\",\"1740374431684.jpg\"]',	'[\"1740374431827.jpg\",\"1740374432483.jpg\",\"1740374432794.webp\"]',	'null',	'[]',	'2025-01-28 06:00:29',	1,	'2025-02-24 05:20:31',	1,	NULL,	NULL),
(13,	1,	'SAA Tiered Midi  Dress',	NULL,	'saa-tiered-midi-dress',	'1AW24005D',	'SAA: Tiered Midi  Dress',	5,	1,	1,	'14,000',	'A classic tiered midi dress. It also features pockets which is a bonus and \r\nis the perfect outfit for your brunch, day out or a vacation.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374589418.jpg\",\"1740374589300.jpg\"]',	'[\"1740374589926.jpg\",\"1740374589148.jpg\",\"174037458999.jpg\",\"1740374589614.jpg\",\"174037458974.jpg\",\"1740374589572.webp\"]',	'null',	'[]',	'2025-01-28 06:07:30',	1,	'2025-02-24 05:23:09',	1,	NULL,	NULL),
(14,	1,	'RISAA: Dual Print  Kimono Set',	NULL,	'risaa-dual-print-kimono-set',	'1AW24006KJ',	'RISAA: Dual Print  Kimono Set',	1,	1,	1,	'20,500',	'An dual-tone open-front kimono jacket, with an asymmetrical \r\nhemline.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374814912.webp\",\"1740374814240.jpg\"]',	'[\"1740374814821.webp\",\"1740374814782.jpg\",\"1740374814199.jpg\"]',	'[\"1\",\"2\"]',	'[\"1738057593220.jpg\",\"1738057593131.jpg\"]',	'2025-01-28 06:16:30',	1,	'2025-02-24 05:26:54',	1,	NULL,	NULL),
(15,	1,	'RISAA Dual Print  Kimono Jacket',	NULL,	'risaa-dual-print-kimono-jacket',	'1AW24006KJ',	'RISAA: Dual Print  Kimono Set',	2,	1,	1,	'12,500',	'An dual-tone open-front kimono jacket, with an asymmetrical \r\nhemline.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374914473.webp\",\"1740374914495.jpg\"]',	'[\"174037491479.webp\",\"1740374914444.jpg\",\"1740374914272.webp\",\"1740374914261.jpg\"]',	'[\"2\",\"3\"]',	'[\"1738057624226.jpg\",\"1738057624728.jpg\"]',	'2025-01-28 06:18:43',	1,	'2025-02-24 05:28:34',	1,	NULL,	NULL),
(16,	1,	'RISAA Shorts',	NULL,	'risaa-shorts',	'1AW24006SHO',	'RISAA: Dual Print  Kimono Set',	3,	1,	1,	'8,000',	'A high-waisted shorts with pockets and a tie up belt.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740374976360.webp\",\"1740374976116.jpg\"]',	'[\"1740374976946.jpg\",\"1740374976618.webp\",\"174037497643.webp\",\"1740374976304.jpg\"]',	'[\"2\",\"3\"]',	'[\"1738057655739.jpg\",\"1738057655637.jpg\"]',	'2025-01-28 06:20:05',	1,	'2025-02-24 05:29:36',	1,	NULL,	NULL),
(17,	1,	'SAA: Asymmetrical  Godet Skirt & Top  Set',	NULL,	'saa-asymmetrical-godet-skirt-top-set',	'1AW24007SKI',	'SAA: Asymmetrical  Godet Skirt & Top  Set',	1,	1,	1,	'17,000',	'A midi length skirt that features godets and pockets. The asymmetrical \r\nhemline adds a playful flair to the overall silhouette.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740375118942.jpg\",\"1740375118795.jpg\"]',	'[\"1740375118937.jpg\",\"1740375118675.jpg\",\"1740375118334.jpg\",\"1740375118858.jpg\"]',	'[\"1\",\"2\"]',	'[\"1738057710104.jpg\",\"1738057710874.jpg\"]',	'2025-01-28 06:22:25',	1,	'2025-02-24 05:31:58',	1,	NULL,	NULL),
(18,	1,	'SAA Asymmetrical  Godet Skirt',	NULL,	'saa-asymmetrical-godet-skirt',	'1AW24007T',	'SAA: Asymmetrical  Godet Skirt & Top  Set',	3,	1,	1,	'9,000',	'A midi length skirt that features godets and pockets. The asymmetrical \r\nhemline adds a playful flair to the overall silhouette',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740375217376.jpg\",\"1740375217807.jpg\"]',	'[\"1740375217869.jpg\",\"1740375217928.jpg\",\"1740375217257.jpg\"]',	'[\"1\"]',	'[\"1738057733414.jpg\"]',	'2025-01-28 06:23:45',	1,	'2025-02-24 05:33:37',	1,	NULL,	NULL),
(19,	1,	'SAA Box-Fit Crop  Top',	NULL,	'saa-box-fit-crop-top',	'1AW24007T',	'SAA: Asymmetrical  Godet Skirt & Top  Set',	4,	1,	1,	'8,000',	'A box-fit crop top with a<span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: 600; color: rgb(24, 24, 24); font-size: 15px; letter-spacing: 0.1em; text-transform: uppercase; background-color: transparent; text-align: var(--bs-body-text-align);\">RETURN POLICIES.<br></span><span style=\"color: rgba(var(--bs-secondary-rgb), var(--bs-text-opacity)); font-family: Montserrat, serif; font-size: 15px; letter-spacing: normal; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">You can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return &amp; Exchange Policy. If you need further assistance, feel free to contact us. Return &amp; Exchange Policy.</span><span style=\"color: rgba(var(--bs-secondary-rgb), var(--bs-text-opacity)); font-family: Montserrat, serif; font-size: 15px; letter-spacing: normal; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp;</span><a href=\"http://127.0.0.1:8000/product-detail/chemet-belted-dress#\" style=\"font-family: Montserrat, serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); box-sizing: border-box; margin: 0px; padding: 0px; color: var(--main); text-decoration: none; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-style: inherit; transition: 0.3s; cursor: pointer; display: inline-block;\">Return &amp; Exchange Policy.</a>&nbsp;front tie up detail.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1740375283563.jpg\",\"1740375283671.jpg\"]',	'[\"1740375283238.jpg\",\"1740375283587.jpg\",\"1740375283912.jpg\",\"1740375283494.jpg\"]',	'[\"2\",\"3\"]',	'[\"1738057773109.jpg\",\"1738057773322.jpg\"]',	'2025-01-28 06:25:12',	1,	'2025-02-24 05:34:43',	1,	NULL,	NULL),
(20,	1,	'RI Bowknot Dress',	NULL,	'ri-bowknot-dress',	'1AW24008D',	'RI: Bowknot Dress',	5,	1,	1,	'9,500',	'This chic short dress combines a classic silhouette with playful \r\ndetails. It is sleeveless and features a subtle asymmetric neckline, \r\nenhanced by a statement bowknot detail at the shoulder. The back \r\nhas geometric cutouts that adds an extra twist to the overall \r\nsilhouette.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738045960316.webp\",\"1738045960306.webp\"]',	'[\"1738045960683.webp\",\"1738045960736.webp\",\"1738045960490.webp\",\"1738045960354.webp\",\"1738045960141.webp\",\"1740375903517.webp\"]',	'[\"2\"]',	'[\"1738057791575.jpg\"]',	'2025-01-28 06:32:40',	1,	'2025-02-24 05:45:03',	1,	NULL,	NULL),
(21,	1,	'CHEMET Belted  Dress',	NULL,	'chemet-belted-dress',	'1AW24009D L',	'CHEMET: Belted  Dress',	5,	1,	1,	'12,000',	'A relaxed, loose fit short dress with full sleeves that offers both comfort \r\nand style. The bold printed tie-up belt cinches the waist, adding a playful \r\ntouch and creating a flattering shape, while the printed collars give the \r\ndress a sophisticated, eye-catching detail.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738046167246.webp\",\"1738046167517.webp\"]',	'[\"1738046167592.webp\",\"1738046167348.webp\",\"1738046167609.webp\",\"1738046167530.webp\",\"1738046167296.webp\",\"1738046167963.webp\"]',	'[\"3\",\"1\"]',	'[\"1738057825851.jpg\",\"1738057825548.jpg\"]',	'2025-01-28 06:36:07',	1,	'2025-02-24 05:46:13',	1,	NULL,	NULL),
(22,	1,	'CHEMET: Waist  Coat with Skirt',	NULL,	'chemet-waist-coat-with-skort',	'1AW24010SKO',	'CHEMET: Waist  Coat with Skirt',	1,	1,	1,	'16,500',	'A printed skort that blends the ease of shorts with the feminine flair of a \r\nskirt. With a bold print and versatile design, it\'s perfect for adding a pop of \r\nstyle to any look.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738046354434.webp\",\"1738046354569.webp\"]',	'[\"1738046354222.webp\",\"1738046354371.webp\",\"1738046354474.webp\"]',	'[\"3\",\"2\"]',	'[\"1738057866737.jpg\",\"1738057866927.jpg\"]',	'2025-01-28 06:39:14',	1,	'2025-02-24 05:47:42',	1,	NULL,	NULL),
(23,	1,	'CHEMET Skirt',	NULL,	'chemet-skirt',	'1AW24010SKO',	'CHEMET: Waist  Coat with Skirt',	3,	1,	1,	'8,000',	'A printed skirt that blends the ease of shorts with the feminine flair of a \r\nskirt. With a bold print and versatile design, it\'s perfect for adding a pop of \r\nstyle to any look.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738048452907.webp\",\"1738048452115.webp\"]',	'[\"173804643712.webp\",\"1738046437957.webp\",\"1738046437208.webp\"]',	'[\"3\",\"1\"]',	'[\"1738057890837.jpg\",\"1738057890159.jpg\"]',	'2025-01-28 06:40:37',	1,	'2025-02-24 05:54:06',	1,	NULL,	NULL),
(24,	1,	'CHEMET Bowknot  Waist Coat',	NULL,	'chemet-bowknot-waist-coat',	'1AW24010WC',	'CHEMET: Waist  Coat with Skirt',	4,	1,	1,	'8,500',	'A cropped waistcoat with a bowknot detail at the back is a statement \r\npiece that combines modern sophistication with a touch of whimsy',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738046538135.webp\",\"1738046538364.webp\"]',	'[\"1738046538999.webp\",\"1738046538767.webp\",\"1738046538356.webp\"]',	'[\"3\"]',	'[\"1738057907621.jpg\"]',	'2025-01-28 06:42:18',	1,	'2025-02-24 05:54:35',	1,	NULL,	NULL),
(25,	1,	'PUTIT Short  Bubble-Hem Dress',	NULL,	'putit-short-bubble-hem-dress',	'1AW24011D',	'PUTIT: Bubble-Hem  Dress',	5,	1,	1,	'17,000',	'A mini Bubble-Hem dress that is edgy and classic. Adorned with magpie \r\nembroidery on the shoulder & neckline, with the full sleeves, it makes for a \r\nstatement piece and is the perfect LBD.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"1738046666866.webp\",\"1738046666890.webp\"]',	'[\"1738046666681.webp\",\"1738046666939.webp\",\"173804666685.webp\",\"1738046666586.webp\"]',	'null',	'[]',	'2025-01-28 06:44:26',	1,	'2025-02-24 05:55:13',	1,	NULL,	NULL),
(26,	1,	'PUTIT Drop Waist  Dress',	NULL,	'putit-drop-waist-dress',	'1AW24012D',	'PUTIT: Drop Waist  Dress',	5,	1,	1,	'22,500',	'A drop waist Bubble-Hem dress that is adorned with magpie appliqué \r\nembroidery, and has a floor-length silhouette. The tie-up details on both \r\nsides of the waist create a flattering, adjustable fit while adding a hint of \r\nsultry charm. Perfect for formal occasions or events that call for a bold \r\nfashion statement, the dress is chic, elegant and just sexy enough.',	'FREE SHIPPING WITHIN INDIA.\r\n\r\nAll orders are shipped within 14 business days.\r\n\r\nFor more information, please refer to our Shipping & Delivery Policy.',	'RETURN POLICIES.\r\n\r\nYou can exchange or return an item within 7 days of receiving your order. For more details, please refer to our Return & Exchange Policy. If you need further assistance, feel free to contact us. Return & Exchange Policy. Return & Exchange Policy.',	'[\"1\",\"2\",\"3\",\"4\",\"5\"]',	'[]',	'[\"173804685978.webp\",\"1738046859579.webp\"]',	'[\"1738046859746.webp\",\"1738046859573.webp\",\"1738046859628.webp\",\"1738046859629.webp\",\"1738046859602.webp\"]',	'null',	'[]',	'2025-01-28 06:47:39',	1,	'2025-02-24 05:56:03',	1,	NULL,	NULL),
(28,	1,	'RI Blazer',	NULL,	'ri-blazer1',	'1AW24002SKI',	'NAMKHA: Midi  Skirt & Bralette Set',	4,	1,	1,	'9,500',	'<p>dsvfsvfv</p>',	'fsVffd',	'dsGVfvb',	'[\"3\"]',	'[\"Red\",\"Green\",\"Blue\",\"Pink\"]',	'[\"1739190129978.webp\"]',	'[\"1739190129722.png\"]',	NULL,	'[\"1739190129898.webp\"]',	'2025-02-10 12:22:09',	1,	'2025-02-11 05:30:54',	1,	'2025-02-11 09:05:52',	1),
(29,	1,	'tujmymum',	NULL,	'tujmymum',	'1AW24004BLZ',	'trhyrhth',	1,	2,	2,	'17,000',	'<p>dyhhdhgnh</p>',	'hdnhgnhg',	'dhmgmjgm',	'[\"2\",\"4\"]',	'[\"Green\",\"Custom Color\"]',	'[\"1739249901769.webp\"]',	'[\"1739249901775.webp\"]',	NULL,	NULL,	'2025-02-11 04:58:21',	1,	NULL,	NULL,	'2025-02-11 05:01:59',	1),
(30,	1,	'Flood Light',	NULL,	'flood-light',	'1AW24002SKI',	'cmmm',	2,	1,	1,	'9,500',	'<p>gdmjnmfm</p>',	'dnbn',	'gjnb hjnm',	'[\"3\"]',	'[\"Red\"]',	'[\"1740131472507.jpg\"]',	'[\"1740131472853.png\"]',	'[\"1\",\"2\",\"3\"]',	'[\"1740131472582.jpg\",\"1740131472833.jpg\",\"174013147258.jpg\"]',	'2025-02-21 09:51:12',	1,	'2025-02-21 10:27:55',	1,	'2025-02-21 11:08:06',	1);

DROP TABLE IF EXISTS `product_policies`;
CREATE TABLE `product_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `policy_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `product_policies` (`id`, `heading`, `description`, `policy_image`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'14-Days Return',	'Blazers/Jackets',	'1737887182907.webp',	NULL,	NULL,	NULL,	NULL,	'2025-01-26 10:27:36',	1),
(2,	'14-Days Return',	'Risk-free shopping with easy returns.',	'173797788637.png',	NULL,	NULL,	'2025-01-27 11:38:06',	1,	'2025-02-20 11:16:21',	1),
(3,	'Free Shipping',	'Pan India free shipping',	'1740050512660.png',	NULL,	NULL,	'2025-03-24 13:12:31',	1,	NULL,	NULL),
(4,	'Delivery Time',	'Delivers in 10-14 working days',	'1740050370331.png',	NULL,	NULL,	'2025-02-20 11:56:27',	1,	NULL,	NULL),
(5,	'Member Discounts',	'Special prices for our loyal customers.',	'1737978014640.png',	NULL,	NULL,	'2025-01-27 11:40:14',	1,	'2025-02-20 11:16:41',	1);

DROP TABLE IF EXISTS `seo_details`;
CREATE TABLE `seo_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `canonical_tag` varchar(255) DEFAULT NULL,
  `hreflang_tag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `seo_details` (`id`, `page_name`, `page_url`, `meta_title`, `meta_description`, `meta_keywords`, `meta_author`, `canonical_tag`, `hreflang_tag`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'test',	'http://localhost/phpmyadmin/index.php?route=/table/structure/save',	'test',	'test',	'test',	'test',	'test',	NULL,	NULL,	NULL,	NULL,	NULL,	'2025-02-11 07:25:24',	1),
(2,	'hastelloy c225666565',	'http://localhost/phpmyadmin/index.php?route=/table/structure/save',	'sfhsfgh56565656',	'sfhfxgh655544443',	'test56565656',	'test656566',	'test65655656',	'testt56655656',	NULL,	NULL,	NULL,	NULL,	'2025-01-29 06:58:49',	1);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cxhGUw2yknGNRHP8C58XcSm7RigcRxyVo0BVvtvP',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',	'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTW5VOTNtZmxuYmdQY0NmY2hWYWtHbTRoRU81bnkzVTZzSEdGZEpUMCI7czoxMzoibGFzdF9hY3Rpdml0eSI7aToxNzQ0MTAzNjU2O3M6MTA6ImNzcmZfdG9rZW4iO3M6NDA6Ik1uVTkzbWZsbmJnUGNDZmNoVmFrR200aEVPNW55M1U2c0hHRmRKVDAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlci1saXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',	1744105991),
('HdtyVCsurNFM1VxHT9mrn5PXUd2bJOO5SszcW7hi',	1,	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 13; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36',	'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidEx3ZUM5dFVQa3JyNm1qcFBpZ1h3VVpteFVjd0pVOVJ5SmtVQ0lvOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxMzoibGFzdF9hY3Rpdml0eSI7aToxNzQ0MDk1MzQwO3M6MTA6ImNzcmZfdG9rZW4iO3M6NDA6InRMd2VDOXRVUGtycjZtanBQaWdYd1VabXhVY3dKVTlSeUprVUNJbzgiO30=',	1744095340);

DROP TABLE IF EXISTS `shipping_delivery`;
CREATE TABLE `shipping_delivery` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `shipping_delivery` (`id`, `heading`, `introduction`, `title`, `description`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(1,	'Shipping and Delivery Policy',	'<font face=\"Helvetica\"><span style=\"font-size: 13.3333px;\">Below are the details regarding our shipping and delivery process:</span></font>',	'SHIPPING FEES',	'<p>• We offer free standard shipping pan India.</p><p>• Express shipping vary depending on your location and weight of the parcel.</p><p>• To opt for express shipping, you can either drop in a request on our WhatsApp at +91 7710040318, or send us an email at contact@murupp.com.</p><p>Please note, express shipping requests can be accepted or declined subject to product availability</p>',	1,	'2025-02-27 09:19:26',	1,	'2025-02-27 09:53:11',	NULL,	NULL),
(2,	NULL,	NULL,	'SHIPPING TIMEFRAME',	'<p>• Orders are typically processed and delivered within 10-15 business days, depending on the location.</p><p>• In case the pieces you’ve ordered aren’t readily available, one of our staff members will reach out and notify you of any delay via email/watsapp.</p><p>• For made to measure and custom pieces, our dispatch timeframe is 15-20 days but may also vary depending on the intricacy of the piece.</p><p>• INTERNATIONAL SHIPPING and delivery time may vary by destination.</p><p>Shipping times may be affected by factors such as weather, holidays, or carrier delays. We are not responsible for delays once the package is with the shipping carrier.</p>',	1,	'2025-02-27 09:20:51',	NULL,	NULL,	NULL,	NULL),
(3,	NULL,	NULL,	'CUSTOM DUTIES/ IMPORT CHARGES (for international shipping)',	'<p>Custom duties/taxes/charges can be levied once the parcel reaches its destination country.&nbsp;</p><p>If custom duties are imposed, the customer is liable for clearance of the charges.</p><p>We are not responsible for these charges and are not aware of what these charges may be for each destination&nbsp;</p><p>country, as applicable.&nbsp;</p><p>We would recommend contacting your local custom offices before placing an order to inquire about what these rates would be.</p>',	1,	'2025-02-27 09:21:33',	NULL,	NULL,	NULL,	NULL),
(4,	NULL,	NULL,	'ORDER TRACKING',	'<p>Once your order has shipped, you will receive a tracking number via email or whatsapp. You can use this tracking number to monitor your shipment through the carrier\'s website.</p>',	1,	'2025-02-27 09:22:10',	NULL,	NULL,	NULL,	NULL),
(5,	NULL,	NULL,	'INCORRECT SHIPPING ADDRESS',	'<p>Please double-check your shipping address at checkout. We are not responsible for orders shipped to incorrect or incomplete addresses provided by the customer.</p>',	1,	'2025-02-27 09:22:32',	NULL,	NULL,	NULL,	NULL),
(6,	NULL,	NULL,	'LOST OR DAMAGED ITEMS',	'<p>If your package is lost or damaged during transit, please contact us immediately at contact@murupp.com. We will assist you in filing a claim with the carrier or offer a suitable resolution depending on the circumstances.</p><p>For any questions or concerns regarding shipping or delivery, please contact our team at contact@murupp.com</p>',	1,	'2025-02-27 09:23:53',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_heading` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `social_media` (`id`, `section_heading`, `section_title`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'INSTAGRAM - @murupp',	'Elevate your wardrobe with fresh finds today!',	NULL,	NULL,	'2025-02-20 11:47:44',	1,	NULL,	NULL),
(2,	'INSTAGRAM -555',	'Elevate your wardrobe with fresh finds today!',	'2025-01-26 13:05:02',	1,	NULL,	NULL,	'2025-01-26 13:05:09',	1);

DROP TABLE IF EXISTS `terms_conditions`;
CREATE TABLE `terms_conditions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `terms_conditions` (`id`, `heading`, `introduction`, `title`, `description`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(1,	'TERMS OF SERVICE',	'<div style=\"text-align: left;\"><span style=\"letter-spacing: 0.7px;\">At MURUPP (\"we\", \"us\", \"our\"), your privacy is a top priority. This Privacy Policy outlines the information we collect, how it is used, and how we protect your personal data when you visit our website located at https://www.murupp.com/ (“Website”) and purchase products (\"Products\"). By using the Website, you agree to the collection and use of information in accordance with this Privacy Policy.</span></div>',	'ACCEPTANCE OF TERMS',	'<p><font color=\"#1f1f1f\" face=\"Google Sans, Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.1px; white-space-collapse: preserve;\">By accessing or using our Website, you agree to these Terms and conditions. If you do not agree to these Terms, please refrain from using the Website and purchasing any Products.</span></font></p><p><font color=\"#1f1f1f\" face=\"Google Sans, Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.1px; white-space-collapse: preserve;\">\r\nWe may update or modify these Terms at any time, and such changes will become effective upon posting. It is your responsibility to review the Terms periodically for any updates. Continued use of the Website constitutes your acceptance of the revised Terms.</span></font></p><div><span style=\"font-size: 10pt; font-family: Helvetica;\">\r\n</span></div>',	1,	'2025-02-27 07:02:18',	1,	'2025-03-11 11:15:34',	NULL,	NULL),
(2,	NULL,	NULL,	'ELIGIBILITY',	'<p><font color=\"#181818\" face=\"Helvetica\"><span style=\"font-size: 13.3333px; letter-spacing: normal;\">To access and use our Website, you must be at least the age of majority in your state or province of residence. By using the Website, you represent that you are of legal age to form a binding contract, or that you have obtained the consent of a parent or guardian.</span></font></p>',	1,	'2025-02-27 07:04:15',	1,	'2025-02-27 09:05:14',	NULL,	NULL),
(3,	NULL,	NULL,	'ACCOUNT CREATION AND SECURITY',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">To make a purchase or use certain features of the Website, you may be required to create an account. When<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">creating an account, you agree to provide accurate, current, and complete information. You are responsible for<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">maintaining the confidentiality of your account login credentials and for all activities that occur under your account.<br></span><span style=\"font-size: 10pt; font-family: Helvetica;\">You agree to immediately notify us of any unauthorized use or breach of security regarding your account.</span></p>',	1,	'2025-02-27 07:04:33',	1,	'2025-02-27 07:50:59',	NULL,	NULL),
(4,	NULL,	NULL,	'USE OF WEBSITE',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">You agree to use the Website in accordance with all applicable local, state, and national laws. You agree not to:<br>\r\n</span><span style=\"font-size: 10pt; font-family: Times-Roman;\">&nbsp; &nbsp; &nbsp;•&nbsp;</span><span style=\"font-family: Helvetica; font-size: 10pt; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Violate any applicable law or regulation.<br></span><span style=\"font-size: 10pt; font-family: Times-Roman;\">&nbsp; &nbsp; &nbsp;•&nbsp;</span><span style=\"font-family: Helvetica; font-size: 10pt; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Post or transmit any harmful, defamatory, obscene, or illegal content.<br></span><span style=\"font-size: 10pt; font-family: Times-Roman;\">&nbsp; &nbsp; &nbsp;•&nbsp;</span><span style=\"font-family: Helvetica; font-size: 10pt; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Engage in unauthorized access or interference with our Website or servers.<br></span><span style=\"font-size: 10pt; font-family: Times-Roman;\">&nbsp; &nbsp; &nbsp;•&nbsp;</span><span style=\"font-family: Helvetica; font-size: 10pt; background-color: transparent; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Use the Website for any fraudulent activity, including, but not limited to, identity theft, fraud, or phishing.<br></span><span style=\"font-size: 10pt; font-family: Helvetica;\">We reserve the right to terminate or suspend your access to the Website at our sole discretion for any violation of<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">these Terms.</span></p>',	1,	'2025-02-27 07:05:30',	1,	'2025-02-27 07:51:07',	NULL,	NULL),
(5,	NULL,	NULL,	'INTELLECTUAL PROPERTY RIGHTS',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">All content available on the Website, including text, images, graphics, logos, designs, videos, and software, is the<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">property of Murupp Gada Design Studio LLP and is protected by copyright, trademark, and other intellectual<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">property laws.<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">You are prohibited from copying, reproducing, distributing, or creating derivate works of any content without our<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">express written permission, Any unauthorized use may result in legal action.</span></p>',	1,	'2025-02-27 07:05:47',	1,	'2025-02-27 07:51:16',	NULL,	NULL),
(6,	NULL,	NULL,	'PRODUCT INFORMATION',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">We make every effort to ensure the accuracy of the product descriptions, including sizing, colors, and prices, on our<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Website. However, we do not guarantee the accuracy, completeness, or reliability of any product information. We<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">cannot guarantee that your computer monitor\'s display of any color will be accurate.</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Prices for products are subject to change without notice.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">We reserve the right at any time to modify or discontinue the products or services (or any part or content thereof)<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">without notice at any time. We shall not be liable to you or to any third-party for any modification, price change,<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">suspension or discontinuance of the product or service<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Certain products or services may be available exclusively online through the website. These products or services<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">may have limited quantities and are subject to return or exchange only according to our Return Policy.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">We do not warrant that the quality of any products, services, information, or other material purchased or obtained<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">by you will meet your expectations, or that any errors in the Service will be corrected.</span></p>',	1,	'2025-02-27 07:06:07',	1,	'2025-02-27 07:51:26',	NULL,	NULL),
(7,	NULL,	NULL,	'ORDERS AND PAYMENT',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">By placing an order through our Website, you agree to pay the full price for the items purchased, including any<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">applicable taxes, shipping fees, and handling charges. Orders are subject to availability, and we reserve the right to<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">cancel any order due to product unavailability or any other reason.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">We accept payment via credit/debit card, UPI, netbanking and all payments are processed securely through our<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">payment provider.</span></p>',	1,	'2025-02-27 07:06:24',	1,	'2025-02-27 07:51:35',	NULL,	NULL),
(8,	NULL,	NULL,	'SHIPPING AND DELIVERY',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">We strive to process and ship orders promptly. Delivery times may vary based on your location and the shipping<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">method chosen. Once your order has been dispatched, you will receive a confirmation email or message and the<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">tracking information.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Please note that we are not responsible for delays caused by the shipping carrier, customs processing, or<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">unforeseen circumstances.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">INTERNATIONAL SHIPPING: If you are ordering from outside of India, you may be subject to additional shipping<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">fees, customs duties, or taxes. You are responsible for complying with the laws and regulations of your country</span></p>',	1,	'2025-02-27 07:06:40',	1,	'2025-02-27 07:51:43',	NULL,	NULL),
(9,	NULL,	NULL,	'RETURNS AND EXCHANGES',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">We want you to be satisfied with your purchase. If you are not completely happy with your product, you may be<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">eligible for an exchange. For full details, please refer to our </span><span style=\"font-size: 10pt; font-family: Helvetica-Bold; font-weight: bold;\">[Return &amp; Exchange Policy]</span><span style=\"font-size: 10pt; font-family: Helvetica;\"> page.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Returned items must be in new, unused condition and include all original tags and packaging. Please note that<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">certain products (e.g., sale items, custom products) may be excluded from returns or exchanges.</span></p>',	1,	'2025-02-27 07:06:54',	1,	'2025-02-27 07:51:53',	NULL,	NULL),
(10,	NULL,	NULL,	'PRIVACY POLICY',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">We take your privacy seriously. By using the Website, you agree to our </span><span style=\"font-size: 10pt; font-family: Helvetica-Bold; font-weight: bold;\">[Privacy Policy]</span><span style=\"font-size: 10pt; font-family: Helvetica;\"> which explains how we<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">collect, use, and protect your personal information. Please review this policy to understand how your data is<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">handled.</span></p>',	1,	'2025-02-27 07:07:09',	1,	'2025-02-27 07:52:01',	NULL,	NULL),
(11,	NULL,	NULL,	'USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">If, at our request, you send certain specific submissions (for example contest entries) or without a request from us<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail,<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish,<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3)<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">to respond to any comments.</span><span style=\"font-size: 10pt; font-family: Helvetica;\">We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">any party’s intellectual property or these Terms of Service.<br>\r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy,<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">personality or other personal or proprietary right. You further agree that your comments will not contain libelous or<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">solely responsible for any comments you make and their accuracy. We take no responsibility and assume no<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">liability for any comments posted by you or any third-party</span></p>',	1,	'2025-02-27 07:07:28',	1,	'2025-02-27 07:52:12',	NULL,	NULL),
(12,	NULL,	NULL,	'LIMITATION OF LIABILITY',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">To the fullest extent permitted by law, Murupp Gada Design Studio LLP shall not be liable for any indirect,<br> \r\n</span><p><span style=\"font-size: 10pt; font-family: Helvetica;\">incidental, special, or consequential damages arising out of or in connection with your use of the Website or the<br></span><span style=\"font-size: 10pt; font-family: Helvetica;\">purchase of products. This includes, but is not limited to, any errors, interruptions, data loss, or loss of profits.<br></span><span style=\"font-size: 10pt; font-family: Helvetica;\">In no event will our total liability exceed the amount paid by you for the specific product(s) giving rise to the claim.</span></p></p>',	1,	'2025-02-27 07:07:42',	1,	'2025-02-27 07:52:37',	NULL,	NULL),
(13,	NULL,	NULL,	'DISCLAIMER OF WARRANTIES',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">The Website and all content and products provided through the Website are offered on an \"as-is\" and \"as-available\"<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">basis. We make no representations or warranties regarding the accuracy, completeness, or reliability of the<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">Website or the products offered. To the fullest extent permitted by law, we disclaim all warranties, express or<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose.</span></p>',	1,	'2025-02-27 07:07:57',	1,	'2025-02-27 07:52:45',	NULL,	NULL),
(14,	NULL,	NULL,	'INDEMNIFICATION',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">You agree to indemnify and hold harmless Murupp Gada Design Studio LLP, its affiliates, officers, directors,<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">employees, and agents from and against any claims, damages, liabilities, costs, and expenses (including attorney\'s<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">fees) arising out of or in connection with your use of the Website, violation of these Terms, or any breach of your<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">representations and warranties.</span></p>',	1,	'2025-02-27 07:08:12',	1,	'2025-02-27 07:52:55',	NULL,	NULL),
(15,	NULL,	NULL,	'GOVERNING LAW AND DISPUTE RESOLUTION',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">These Terms are governed by and construed in accordance with the laws of the state of Maharashtra, India. Any<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">disputes arising from these Terms will be resolved through binding arbitration in Mumbai, Maharashtra. You agree<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">to submit to the exclusive jurisdiction of the courts located in Mumbai, Maharashtra for any matters that cannot be<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">resolved through arbitration.</span></p>',	1,	'2025-02-27 07:08:24',	1,	'2025-02-27 07:53:03',	NULL,	NULL),
(16,	NULL,	NULL,	'SEVERABILITY',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">If any provision of these Terms is deemed invalid, illegal, or unenforceable, the remaining provisions will remain in<br> \r\n</span><span style=\"font-size: 10pt; font-family: Helvetica;\">full force and effect.</span></p>',	1,	'2025-02-27 07:08:38',	1,	'2025-02-27 07:53:11',	NULL,	NULL),
(17,	NULL,	NULL,	'CONTACT INFORMATION',	'<p><span style=\"font-size: 10pt; font-family: Helvetica;\">If you have any questions about these Terms or need further information, please mail us at enquiry@murupp.com</span></p>',	1,	'2025-02-27 07:08:51',	1,	'2025-02-27 07:53:21',	NULL,	NULL),
(18,	NULL,	NULL,	'Test1',	'<p>Testing</p>',	1,	'2025-03-11 10:25:13',	NULL,	NULL,	1,	'2025-03-11 11:17:12');

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_heading` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `star_rating` int(11) DEFAULT NULL,
  `reviewer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `testimonials` (`id`, `section_heading`, `section_title`, `heading`, `description`, `star_rating`, `reviewer`, `created_at`, `created_by`, `modified_at`, `modified_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Customer Say!',	'Our customers adore our products, and we constantly aim to delight them.',	'Variety of Styles!',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam maximus magna id cursus facilisis.',	5,	'Sybil Sharp',	NULL,	NULL,	'2025-01-26 11:12:30',	1,	NULL,	NULL),
(2,	NULL,	NULL,	'Variety of Styles!',	'<p><span style=\"letter-spacing: 0.5px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam maximus magna id cursus facilisis.</span></p>',	5,	'Sybil Sharp',	'2025-01-26 11:03:08',	1,	'2025-01-27 11:46:36',	1,	NULL,	NULL),
(3,	NULL,	NULL,	'Hotel Aarush Inn',	'<p>fbgbgdb</p>',	2,	'Sybil Sharp',	'2025-01-26 11:13:29',	1,	NULL,	NULL,	'2025-01-26 11:13:38',	1);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-Inactive, 1-Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1,	'Riddhi',	'Bhosale',	'riddhi@matrixbricks.com',	'9026022222',	'1740996305.jpg',	NULL,	'$2y$12$SfVfJyw9UaCKsSB974vITuCPjM3y50j5r7wV1oblto61XYobl.8XO',	1,	'hrrDWCvVGty0mjV4n303hpuomhCiAevAopkWfsbtjjMYl9lRBFZRZZwQRYdm',	'2025-01-22 07:03:14',	NULL,	'2025-03-06 04:37:47',	NULL,	NULL,	NULL),
(2,	'Admin',	NULL,	'admin@gmail.com',	NULL,	NULL,	NULL,	'$2y$12$Y36mZ6rD4QWMZkwyiOA.QegM1hBpkV/nKFbClJYXPEFlGZ8C8M49S',	1,	NULL,	'2025-01-22 07:11:41',	NULL,	'2025-01-22 07:11:41',	NULL,	NULL,	NULL),
(3,	'Super Admin',	NULL,	'superadmin@gmail.com',	NULL,	NULL,	NULL,	'$2y$12$PPRzQGg/dXyaflGDrdslLO.6OF9xcfvLn82E/0o/kCigmxhAo/jIi',	1,	NULL,	'2025-01-22 11:54:09',	1,	'2025-01-22 11:54:09',	NULL,	NULL,	NULL),
(16,	'abhishek',	NULL,	'abhishek@matrixbricks.com',	NULL,	NULL,	NULL,	'$2y$12$j6fLDKiRviSKPzv.uxOlNe5IArfAlVdBgX/HXzZgQf/8YUM95GkLi',	1,	NULL,	'2025-04-07 10:31:14',	NULL,	'2025-04-07 10:31:14',	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `users_permission`;
CREATE TABLE `users_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `permission_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`(768))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users_permission` (`id`, `user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\"]',	'2025-01-20 12:32:48',	'2025-01-23 05:52:06'),
(3,	2,	'[\"2\",\"7\",\"8\",\"9\",\"11\",\"12\"]',	'2025-01-20 13:19:44',	'2025-01-23 05:48:50'),
(41,	3,	'[\"8\",\"9\",\"11\",\"12\"]',	'2025-01-23 05:47:21',	'2025-01-23 05:49:02');

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `inserted_by` int(11) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wishlists` (`id`, `user_id`, `session_id`, `product_id`, `quantity`, `inserted_by`, `inserted_at`, `modified_by`, `modified_at`, `deleted_by`, `deleted_at`) VALUES
(49,	1,	'jB5nfInClbuEqw8CqI4kVoATTAowVXSTrLjpVZYI',	2,	1,	1,	'2025-04-07 12:40:39',	NULL,	NULL,	NULL,	NULL),
(50,	1,	'jB5nfInClbuEqw8CqI4kVoATTAowVXSTrLjpVZYI',	21,	1,	1,	'2025-04-07 12:44:44',	NULL,	NULL,	NULL,	NULL),
(51,	1,	'jB5nfInClbuEqw8CqI4kVoATTAowVXSTrLjpVZYI',	20,	1,	1,	'2025-04-07 12:45:04',	NULL,	NULL,	NULL,	NULL),
(52,	1,	'g1Vk9Xjr9OLQOzBbQExhdl8X6MC10f2u6ucsaOeX',	11,	1,	1,	'2025-04-08 04:35:50',	NULL,	NULL,	NULL,	NULL);

-- 2025-05-07 07:01:46
