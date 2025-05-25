-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para postmanucode
CREATE DATABASE IF NOT EXISTS `postmanucode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `postmanucode`;

-- Volcando estructura para tabla postmanucode.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.cache: ~0 rows (aproximadamente)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel_cache_admin@exmaple.com|127.0.0.1', 'i:1;', 1748183700),
	('laravel_cache_admin@exmaple.com|127.0.0.1:timer', 'i:1748183700;', 1748183700);

-- Volcando estructura para tabla postmanucode.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.cache_locks: ~0 rows (aproximadamente)
DELETE FROM `cache_locks`;

-- Volcando estructura para tabla postmanucode.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.categories: ~5 rows (aproximadamente)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Tecnologia', 'labore-est-id-quam-eveniet-placeat', 'Vitae architecto ut delectus voluptatem ut.', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(2, 'Diseño', 'error-quia-labore-sit-est-sunt', 'Fugiat doloremque sunt est cum rerum quas assumenda quaerat.', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(3, 'Laravel', 'optio-corrupti-temporibus-praesentium-inventore-qui', 'Excepturi eos in ut voluptatem eum consequatur.', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(4, 'Node JS', 'et-sit-consequatur-sed-repellat', 'Est eius doloribus fugit culpa.', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(5, 'Flutter', 'aspernatur-beatae-ratione-et-ut-dignissimos-enim-dolore', 'Distinctio rerum repellat et a est eos.', '2025-04-14 07:25:15', '2025-04-14 07:25:15');

-- Volcando estructura para tabla postmanucode.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;

-- Volcando estructura para tabla postmanucode.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.jobs: ~0 rows (aproximadamente)
DELETE FROM `jobs`;

-- Volcando estructura para tabla postmanucode.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.job_batches: ~0 rows (aproximadamente)
DELETE FROM `job_batches`;

-- Volcando estructura para tabla postmanucode.media
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` enum('image','video','document') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_post_id_foreign` (`post_id`),
  CONSTRAINT `media_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.media: ~0 rows (aproximadamente)
DELETE FROM `media`;

-- Volcando estructura para tabla postmanucode.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.migrations: ~0 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_04_03_025901_create_posts_table', 1),
	(5, '2025_04_03_030004_create_categories_table', 1),
	(6, '2025_04_03_030026_create_tags_table', 1),
	(7, '2025_04_03_030113_create_post_tags_table', 1),
	(8, '2025_04_03_030205_create_post_categories_table', 1),
	(9, '2025_04_03_030221_create_media_table', 1),
	(10, '2025_04_13_233307_add_social_fields_to_users_table', 1);

-- Volcando estructura para tabla postmanucode.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.password_reset_tokens: ~0 rows (aproximadamente)
DELETE FROM `password_reset_tokens`;

-- Volcando estructura para tabla postmanucode.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.posts: ~50 rows (aproximadamente)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `content`, `summary`, `status`, `featured_image`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 5, 'Rerum quod quod ut. Y Dale U', 'rerum-quod-quod-ut', 'Reprehenderit molestiae quisquam voluptatem voluptas et et quibusdam. Facilis possimus repellendus deleniti. Soluta itaque necessitatibus dolor quia eos nam.\n\nEt consequatur repellat incidunt iste non sed dolorem. Et eos hic alias atque. A magni quia neque magni sunt quas voluptatum. Quae vitae voluptatem quibusdam ut consequatur id.\n\nEt repudiandae voluptas voluptas quia cum ab ad voluptate. Quisquam voluptatum voluptate dolores maiores. Asperiores et ex facere alias distinctio. Veritatis saepe voluptate possimus velit. Ducimus omnis qui sequi placeat.\n\nQuis laboriosam dolores blanditiis quidem autem vel magnam. Et tempora ut incidunt necessitatibus. Provident in veniam non delectus numquam optio. Dolorem repudiandae asperiores numquam doloremque ut eligendi.\n\nReiciendis odio quis fugit officiis officiis ex. Laboriosam id facere vel ratione modi et. Ratione exercitationem cumque natus repellat ut. Hic sint officia distinctio aperiam eaque.', 'Omnis dignissimos ducimus modi iusto qui.', 'published', 'blog/12.jpg', '2025-02-26 09:57:07', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(2, 2, 'Excepturi distinctio sequi aut a itaque ut optio.', 'excepturi-distinctio-sequi-aut-a-itaque-ut-optio', 'Vel voluptatem deleniti aut itaque iste qui neque. Eius veniam rem unde occaecati. Quia qui porro voluptas non.\n\nCumque quae illo laborum dolorem quis eum. Recusandae quo doloribus nobis quia eaque minus ducimus molestiae. Sequi quas sequi consectetur at quia libero ut.\n\nQuo officiis officiis omnis in accusantium. Amet consectetur quod delectus quae autem vitae. Ipsum quia voluptas perferendis corrupti. Architecto vitae ut quaerat nisi beatae reprehenderit voluptatem. Fugiat facilis hic tempore doloribus sint.\n\nQui et ab accusantium dolor voluptates. Qui at et pariatur nulla. Accusamus quod molestiae et et.\n\nMaiores est rerum voluptas culpa sunt. Consectetur sunt atque voluptatem nam. In eius culpa est.', 'Eligendi ratione numquam illo consequuntur architecto omnis.', 'archived', 'blog/12.jpg', '2025-03-19 04:38:22', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(3, 1, 'Aut maxime ad commodi quia nisi nesciunt.', 'aut-maxime-ad-commodi-quia-nisi-nesciunt', 'Eos eligendi quo maxime placeat unde id. Sint minima dolor et. Est neque necessitatibus vel blanditiis.\n\nEnim accusamus natus magnam sit distinctio amet. Sequi omnis voluptatibus maxime consequuntur placeat non sapiente tempora. Qui inventore et illo non omnis provident quos. Optio est ad explicabo.\n\nEt libero enim qui nemo molestias optio. Inventore itaque facilis rerum accusantium.\n\nDolorem voluptas atque deserunt distinctio. Est dolore vel veritatis velit. Autem labore voluptas repellendus voluptatem ipsa odio. Dolor quis atque voluptatum rerum fugiat itaque praesentium numquam.\n\nDolore veniam accusantium ut ut. Vel ad ullam perferendis pariatur beatae dolor beatae. Ut sed aspernatur qui voluptatem quia possimus omnis.', 'Eum ut recusandae repudiandae et consequatur illo alias.', 'published', 'blog/6.jpg', '2025-03-09 04:01:01', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(4, 5, 'Totam rerum delectus perferendis qui architecto soluta.', 'totam-rerum-delectus-perferendis-qui-architecto-soluta', 'Consequatur sed natus quia ipsum aliquam amet. Dolorem minus aliquam aliquid dignissimos placeat et voluptate repellat. Laborum quaerat culpa tenetur.\n\nDolorum facilis beatae praesentium minus deleniti sint. Alias dolores omnis enim sunt odio id corporis blanditiis. Similique voluptatem explicabo nostrum unde aut.\n\nOccaecati dolore blanditiis sapiente. Sed repellendus rerum consequatur unde.\n\nCum odit quaerat laborum rerum. Aut et dolor accusamus debitis provident. Occaecati praesentium laborum pariatur odit animi ipsum.\n\nAb sint recusandae nesciunt necessitatibus occaecati consectetur. Assumenda facere consequatur hic aut et ad voluptatum. Amet sapiente beatae qui placeat et voluptatibus mollitia.', 'Fugiat laboriosam tenetur et facere harum laboriosam earum inventore.', 'published', 'blog/7.jpg', '2025-01-06 20:02:16', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(5, 1, 'Et repudiandae voluptatem qui perferendis dolor minus.', 'et-repudiandae-voluptatem-qui-perferendis-dolor-minus', 'Illo veritatis autem dolorem quis nostrum voluptatum. Ipsam optio eius autem. Suscipit aut inventore atque iusto numquam voluptatem facere.\n\nUt iste et qui doloribus. Delectus omnis sed quibusdam et. Dolore a dolorem quia libero doloribus nihil libero. Occaecati sequi eligendi dolores eum et corrupti velit.\n\nArchitecto et exercitationem consectetur id. Rerum unde et at nam voluptate pariatur. Voluptas possimus voluptas sit dolores. Vitae atque voluptates minus qui nesciunt commodi.\n\nDolorum est ratione nobis perspiciatis id. Magnam molestias fugiat labore veniam et occaecati.\n\nPossimus corrupti dolores cum optio expedita quia itaque quasi. Quia sed est id tempore ut est quibusdam. Officia quia labore est consequatur rem eos et. Et dolore ut earum fugiat fugiat ut.', 'Tempore animi necessitatibus assumenda.', 'published', 'blog/10.jpg', '2025-01-22 12:44:35', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(6, 4, 'Et odit ducimus aliquam aut libero.', 'et-odit-ducimus-aliquam-aut-libero', 'Veniam labore sint eum facere ratione est sint nobis. Dignissimos expedita exercitationem est doloribus. Voluptatem mollitia nulla iusto labore in eos enim.\n\nQuia mollitia corporis facilis illum sed enim voluptas. Qui nihil vitae reiciendis numquam architecto. Repudiandae quas dolore et. Voluptatem repudiandae quae et.\n\nMolestias dignissimos consectetur eaque repellendus voluptatem voluptatem qui. Sed asperiores illo dignissimos commodi necessitatibus et. Nisi nemo consequatur expedita sed. Voluptates accusamus modi blanditiis eaque. Possimus autem labore laboriosam commodi autem.\n\nVoluptatum ut dolores voluptatem dolorem voluptatem laborum facere. Possimus omnis odit omnis cumque repudiandae est nihil. Vel et dolor quaerat velit libero quaerat. Cum deserunt quod quasi hic aperiam voluptates porro. Amet iusto dolorem rerum consequatur quasi velit voluptatem.\n\nSit deserunt ipsa et quaerat. Provident voluptas quia sed nobis modi vitae placeat. Nesciunt ratione quam totam officiis est officiis.', 'Recusandae mollitia similique exercitationem veritatis repellat est est.', 'draft', 'blog/18.jpg', '2025-01-07 06:31:17', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(7, 4, 'Placeat non eveniet ab voluptatem.', 'placeat-non-eveniet-ab-voluptatem', 'Aut magni delectus expedita iure non voluptas non. Ut commodi provident rerum consequatur maxime. Vel autem iste qui fugit totam nisi. Maxime cupiditate iste expedita laboriosam aut placeat.\n\nQuis sit fugiat dolor et. Ut qui commodi amet quo. Iste ut blanditiis et maxime eius dolor.\n\nOfficiis rerum ab tempora eos enim eius. Quia quia deleniti sunt qui. Corrupti blanditiis optio in eum dolor. Dolores culpa consequatur quis rerum dicta in officiis.\n\nPorro sequi est sint. Nisi labore et voluptates et sed cumque incidunt. Impedit ipsam repellat beatae vero amet tempore autem. Qui libero odit magni sequi aliquid.\n\nEum quibusdam voluptate aut numquam. Illum sunt enim excepturi at quidem porro quis. Dolor dolores sunt eligendi totam itaque. Exercitationem vitae suscipit corrupti atque in minima accusantium.', 'Voluptatum blanditiis quae quia.', 'draft', 'blog/15.jpg', '2025-01-01 12:32:35', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(8, 5, 'Facilis qui ut quasi delectus animi nihil.', 'facilis-qui-ut-quasi-delectus-animi-nihil', 'Impedit officiis minus aut sed debitis et omnis sed. Voluptas odio cupiditate fugiat quas. Amet sed sit ab blanditiis aspernatur nihil repellendus. Iste repellendus officia esse assumenda facilis aut.\n\nDignissimos perferendis porro quasi sint atque. Facere adipisci eum molestiae dicta. Officiis possimus qui id corporis facere.\n\nRem dolor nihil earum vitae dolorem. Esse officia quos culpa laudantium sed reiciendis quia. Quia officiis et nobis aut unde placeat error.\n\nAut quos quia veniam provident aliquam labore perspiciatis. Culpa atque reprehenderit fugit quia in enim velit. Possimus eum atque sit molestiae doloremque. Rerum doloremque nisi pariatur veniam.\n\nA quae porro cumque sint id aut. Molestiae dolor dignissimos inventore harum. Quia dolores quisquam voluptas debitis perferendis.', 'Dolorem rerum molestiae est nemo.', 'published', 'blog/19.jpg', '2025-03-12 04:25:20', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(9, 3, 'Ut velit sit illum quibusdam eveniet debitis maxime.', 'ut-velit-sit-illum-quibusdam-eveniet-debitis-maxime', 'Sequi et quia veniam eaque. Repellendus at nisi suscipit nihil eius quas. Eum voluptatem eos iste possimus expedita illo non ipsa.\n\nDoloremque debitis neque pariatur voluptatem accusantium ducimus molestias. Ex nostrum est illo. Dolorem veniam laborum atque odit ducimus cum.\n\nAccusantium dolore natus unde fugit inventore excepturi ullam. Libero veniam rerum repudiandae eum eos modi ea deleniti. Et iure ex odio ea velit dolorem.\n\nRepudiandae sed architecto ipsa ex. Y dale U Animi voluptas vel sunt omnis veritatis. Deserunt nisi excepturi et quos.\n\nVeritatis nihil dicta perferendis quae quis ipsam. Quod et nobis nostrum a sed quae. Quidem delectus sed numquam quam eos.', 'Dolore cum doloribus rem harum quibusdam fugiat.', 'published', 'blog/8.jpg', '2025-01-09 22:47:38', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(10, 5, 'Est sit non nam id amet voluptas et.', 'est-sit-non-nam-id-amet-voluptas-et', 'Nemo quaerat voluptate quis dolorem est tenetur. Vel modi iste vero aliquid soluta. Tenetur sit ducimus numquam ut. Qui est necessitatibus rem qui et.\n\nIpsa incidunt voluptatem provident qui maiores dolore nihil. Facilis id quidem veritatis aut earum. Enim quaerat recusandae ut explicabo. Aut aliquam consequuntur non et excepturi.\n\nSed eum iure veritatis error qui. Id voluptatum reprehenderit quam ea dolor voluptatibus dolorem. Unde earum et repellendus itaque. Molestiae voluptatibus molestias animi voluptatibus deserunt quos.\n\nPraesentium molestias voluptas sint blanditiis deserunt est. Expedita unde eum perferendis deleniti. Ut ut provident accusantium quod qui officiis nobis.\n\nEx et voluptatem et consectetur quasi maiores temporibus dolorem. Et maxime expedita labore perspiciatis et facilis. Voluptas voluptas eum aliquam sapiente earum voluptatem explicabo in.', 'Autem sit perferendis numquam possimus ut repudiandae.', 'archived', 'blog/3.jpg', '2025-01-31 22:30:23', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(11, 4, 'Dolores magni numquam maxime est expedita dolores nisi.', 'dolores-magni-numquam-maxime-est-expedita-dolores-nisi', 'Vel quis corrupti accusamus aut ut. Quibusdam libero repellat a sit nihil. Fuga molestiae omnis aspernatur ea.\n\nVoluptas possimus sint nisi laborum consequatur sequi molestias. Maiores cumque ipsa necessitatibus quas quas. Ipsa praesentium ut sunt. Qui incidunt magnam sit quod.\n\nReprehenderit illum nam maiores quaerat. Et omnis neque laudantium dolores optio. Placeat fuga veritatis eos dolores dolores eos nemo. Facilis ipsam nisi iure suscipit ratione.\n\nAut eos in est vel. Quis nihil illum nobis non illum sed. Consequatur cumque et aperiam dolore sunt molestiae. Unde itaque qui in veniam ipsa.\n\nLaudantium eum iusto sunt voluptate temporibus. Ut omnis itaque est harum voluptas est porro. Eveniet officia consequatur doloribus voluptates.', 'Est ipsum modi id magnam dolore labore ipsa.', 'published', 'blog/16.jpg', '2025-01-08 20:01:42', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(12, 3, 'Sit voluptas maxime tempora et natus.', 'sit-voluptas-maxime-tempora-et-natus', 'Eaque quis eius sapiente saepe quasi impedit quam. Totam repudiandae corrupti eum et adipisci ut quia. Quae ratione quod voluptas sapiente labore voluptas.\n\nSequi soluta architecto illo est et placeat adipisci odit. Qui sed alias ad voluptate ex qui sit. Vel quod magnam aut eveniet officia optio amet. Amet et dignissimos libero qui quis.\n\nEst eum consequatur quisquam sunt eos possimus voluptatem veritatis. Qui autem est vitae ex cupiditate. Ea laboriosam quibusdam alias minus accusamus non.\n\nNobis doloribus ut voluptatum quam. Voluptas sint repellendus facere nemo laboriosam. A adipisci non praesentium voluptas numquam et maxime. Maiores optio et dignissimos ut ea non.\n\nReiciendis in voluptates aut commodi vero rerum. Saepe est voluptas perspiciatis consequuntur ut omnis totam. Veniam consequatur maiores ea quo.', 'Sequi mollitia quam a incidunt.', 'published', 'blog/15.jpg', '2025-02-09 00:54:38', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(13, 1, 'Nulla delectus fugiat explicabo maxime id vitae. Y dale U', 'nulla-delectus-fugiat-explicabo-maxime-id-vitae', 'Voluptas ad quibusdam molestias neque dolor et. Consequatur perferendis molestiae aliquam dolores voluptatem eveniet enim. Est placeat reprehenderit veniam recusandae maiores. Repudiandae distinctio animi alias sunt excepturi.\n\nIn a quos sit at pariatur. Similique at saepe esse. Delectus nesciunt dolores ut est aliquid.\n\nSed vel tempora velit nobis. Eos porro voluptatibus aliquam quis. Nihil quia enim ipsam et. Dolor similique facere ipsam sunt repudiandae.\n\nAmet et ut at voluptate. Debitis sint sunt animi nam sed sapiente maxime. Quia eaque voluptate aut beatae voluptatibus.\n\nQuod iure et adipisci rerum excepturi sit. Corporis ratione rerum ipsa dolores ut perferendis. Sed omnis non qui aut. Et amet sed eos facilis aut dolores in.', 'Expedita laborum nisi eos illo assumenda.', 'published', 'blog/9.jpg', '2025-01-18 11:55:52', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(14, 3, 'Minus recusandae consequatur aliquid ut.', 'minus-recusandae-consequatur-aliquid-ut', 'Eveniet est cum sunt totam autem quibusdam eligendi autem. Temporibus nihil ex corrupti laboriosam. Aliquam et sunt a numquam voluptatem. Et natus ipsum libero consequatur.\n\nEst aut aliquid qui et sapiente. Quo ut aut vero expedita adipisci non doloribus tempore. Minima non praesentium fugiat nam voluptatem.\n\nIn sit ad dolorem soluta repellat ducimus possimus. Sequi aperiam dicta molestias sit voluptas culpa. Ea ipsum qui cum magni iusto. Et non maiores id omnis.\n\nNesciunt dolores dolorum eum. Aliquam molestias perferendis nulla eos ab at sit. Consequatur dolorum repellat aspernatur quod non. Suscipit unde tempora id voluptatem voluptatem.\n\nEt iste officiis assumenda sequi vel est. Culpa rerum et perferendis. Rerum dicta sunt repellat voluptatum. Laudantium et rerum quia est laboriosam.', 'Et nostrum non saepe est ut aliquam aut expedita.', 'published', 'blog/4.jpg', '2025-01-09 03:43:43', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(15, 5, 'Accusamus voluptates ut consequatur autem accusamus qui.', 'accusamus-voluptates-ut-consequatur-autem-accusamus-qui', 'Unde quaerat quisquam nulla tenetur et consectetur. Rem tempore aliquid itaque sunt et officia. Quidem ratione facilis molestiae. Voluptas illo odit nam qui et rerum voluptatum.\n\nOmnis itaque rerum velit et impedit. Asperiores aliquid iste quisquam enim dolorem exercitationem ad velit. Qui et ipsum corporis ea sint voluptas dolore a. Porro sequi non reiciendis et quidem enim.\n\nId dolore est reprehenderit ex cum sed tenetur. Ab mollitia et mollitia qui. Nobis qui corporis autem qui optio illo et. Iure libero sed iusto expedita excepturi.\n\nQuisquam natus odio sunt quae et est eveniet consequuntur. Libero dolorem unde nostrum officia sed commodi voluptatem. Occaecati laudantium laboriosam id quia. Ad quis et doloremque consequatur.\n\nDolorum sunt nobis est quisquam quia quis. Provident error enim libero occaecati qui. Sint perferendis velit ducimus aut. Omnis velit et nostrum occaecati.', 'Libero ut voluptatibus eos magni fugiat iste nemo.', 'archived', 'blog/19.jpg', '2025-02-27 09:37:10', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(16, 5, 'Magni qui nostrum perspiciatis veniam consequuntur rem.', 'magni-qui-nostrum-perspiciatis-veniam-consequuntur-rem', 'Rerum mollitia aut eum. Consequatur rem quisquam distinctio est. Ipsam ab ut deleniti impedit.\n\nAut culpa dolores excepturi occaecati laborum nisi omnis molestiae. Placeat iusto suscipit et. Sed illo ullam tempore dolorem voluptate id.\n\nAlias tempore atque doloribus corporis nobis aliquid. Est perferendis voluptatem placeat ipsa excepturi et. Qui dolore consectetur explicabo illo. Nesciunt non quo nostrum aut rerum in.\n\nNisi molestiae et id libero velit possimus. Illum ipsa dignissimos rerum et consequatur reprehenderit optio. Sit nisi voluptatibus voluptates quaerat ad. Eos eos facilis in dolorem qui architecto repellat.\n\nQuod dolor nulla voluptatem et sit. Nihil quis et provident consequatur at rerum.', 'Quo qui est in aut in incidunt vel.', 'draft', 'blog/18.jpg', '2025-02-07 08:17:35', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(17, 5, 'Molestias enim alias eos nesciunt quia.', 'molestias-enim-alias-eos-nesciunt-quia', 'Beatae aspernatur nostrum voluptatem doloremque. Aspernatur minus sit ea ut libero quasi esse. Libero dolor ullam occaecati. Neque minima ex reprehenderit deleniti rerum natus minus.\n\nAutem ratione voluptatem molestias ex. Dicta est exercitationem non explicabo corrupti excepturi veritatis. Libero deserunt nihil nostrum quis repudiandae et iure.\n\nSed perferendis delectus pariatur expedita ut necessitatibus. Recusandae magni dolores nemo quod cupiditate. Voluptatem vel perferendis odio temporibus tempora eveniet in. Laudantium et error est quis vel voluptatem.\n\nReprehenderit aliquam optio doloremque dignissimos. Quia ab inventore maxime et itaque quod. Recusandae atque at ut est. Quia quam assumenda quia consectetur.\n\nHarum est ducimus quia ut accusantium consequatur. Cumque quisquam voluptatem expedita harum rerum. Qui iste qui in. Nesciunt quia aliquam recusandae iure et est maiores. Neque et animi asperiores et quia non qui.', 'Consequatur quam veritatis porro ipsum minus qui.', 'published', 'blog/16.jpg', '2025-03-24 00:41:16', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(18, 4, 'Voluptas odio delectus quisquam dolor nihil non.', 'voluptas-odio-delectus-quisquam-dolor-nihil-non', 'Tempora repellendus nihil iusto ut repudiandae maxime voluptas. Ut soluta repudiandae et totam. Rerum aut optio et consequatur. Impedit reprehenderit labore quos ut temporibus corporis.\n\nFacere et architecto minima corrupti maiores. Officiis dolorem vero quia est blanditiis eveniet maxime fugiat.\n\nFacere aut aut et cum. Quo et libero eum est. Dolores non iure fuga aut. Quaerat voluptates ut quidem rerum minus et.\n\nNesciunt et eligendi nemo necessitatibus. Deleniti maiores quo natus perspiciatis possimus et adipisci.\n\nFacere ipsa voluptas magni. Corporis nobis corrupti aliquam et minus quasi iste. Voluptas nulla sunt vel praesentium.', 'Aperiam quidem dolor molestiae velit.', 'published', 'blog/15.jpg', '2025-04-06 19:51:28', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(19, 2, 'Esse eveniet hic quas et quaerat quae vel.', 'esse-eveniet-hic-quas-et-quaerat-quae-vel', 'Praesentium perspiciatis similique dolores libero et. Ad dignissimos assumenda quisquam vel. Eum facilis eveniet unde cumque.\n\nQuos laudantium vel quia mollitia. Laboriosam aut corporis molestiae nemo est. Nobis voluptate aut rerum ut temporibus beatae vel.\n\nRepudiandae laborum et omnis ut aperiam quia dolores quia. Dolorem dolores commodi aspernatur itaque et. Aut et aperiam non nisi et aut. Ut in quisquam incidunt doloremque consequatur maxime quos.\n\nQui et facere rerum rerum. Accusantium laudantium et nisi ipsa. Porro numquam aliquid omnis mollitia dolorem voluptatem.\n\nDolores asperiores hic molestiae dolor. Excepturi neque ab placeat commodi voluptatem autem.', 'Ut voluptatum quaerat nostrum odit ut quas.', 'published', 'blog/2.jpg', '2025-02-01 02:26:52', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(20, 3, 'Aut est a quos aliquam.', 'aut-est-a-quos-aliquam', 'Rerum optio tempora beatae est voluptates. Molestiae molestiae vero nisi natus sit sit autem ea. Tempora optio omnis repudiandae voluptatem occaecati iusto ea facilis. Nulla aperiam cum enim voluptas amet quibusdam ipsum.\n\nIpsa dolorem dignissimos voluptates voluptas explicabo nemo. Consequatur sit cupiditate est nobis et tenetur. Architecto aut neque debitis aut.\n\nEarum ad libero fugiat iure quo sed. Rerum itaque quo reprehenderit occaecati blanditiis. A repellat exercitationem est suscipit facilis corporis. Explicabo magnam non eos ab.\n\nEt accusantium repellendus quam numquam. Voluptates a sed vero consequatur et dolorum. Iure ratione minima et reiciendis. Sapiente aut dolorem nihil quia tenetur ea dolor deleniti.\n\nRerum tempore magnam vero enim dicta. Ea ut sit quibusdam magnam.', 'Aliquid eius iusto qui et deserunt modi.', 'archived', 'blog/9.jpg', '2025-03-07 11:06:10', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(21, 1, 'Est est eveniet porro quam impedit excepturi.', 'est-est-eveniet-porro-quam-impedit-excepturi', 'Modi molestiae vel optio quia aspernatur animi. Ipsam nulla laboriosam consequatur et exercitationem. Laboriosam unde consequatur inventore ut eligendi voluptatum. Cum dolor consequuntur debitis ipsa architecto optio occaecati. Ex ea veritatis ut dolor ut.\n\nSed doloribus consequatur fugit inventore et beatae id. Et id iusto et maxime quasi. Aut voluptatibus illum qui ab. Culpa unde doloremque reprehenderit modi.\n\nAb sit ipsum qui consequatur dolorem unde quaerat. Et repudiandae quam nihil sed facere. Quaerat rerum perspiciatis architecto nemo commodi. Quo odit non fugit ratione soluta temporibus.\n\nAtque vel voluptatem iure impedit. Veniam rerum asperiores quisquam aperiam assumenda. Odio et voluptate est consectetur.\n\nExcepturi cupiditate soluta architecto aut quos aut. Ea amet cupiditate quo quaerat temporibus praesentium impedit. Non nobis eos et sit aspernatur cumque. Animi libero qui sed atque inventore.', 'Est corporis nisi maxime nostrum.', 'draft', 'blog/3.jpg', '2025-03-01 13:36:34', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(22, 1, 'Molestiae tempore suscipit aut ab sequi qui culpa maiores.', 'molestiae-tempore-suscipit-aut-ab-sequi-qui-culpa-maiores', 'Ut et modi consequatur et aliquam reprehenderit. Incidunt aut consequatur rerum amet. Quaerat eius qui in nam ipsam recusandae. Explicabo consequatur nesciunt dolores quam nihil dignissimos numquam eos.\n\nEt illo culpa veritatis reiciendis rerum. Qui facilis aperiam quo quis. Aspernatur sit sit veniam autem.\n\nIn aperiam deleniti molestias aliquid necessitatibus. Reprehenderit fugit est eum eum voluptatibus tempore. Voluptatem corporis molestias voluptatum ea magnam totam.\n\nEum distinctio rerum velit quos accusamus velit. Esse natus temporibus enim aut atque sunt porro. Minima rerum expedita incidunt laborum illum.\n\nAb quaerat sint qui deleniti porro. Laborum sit doloremque est rerum ut. Quasi sint maiores beatae eaque distinctio perspiciatis ea natus. Dignissimos voluptatem excepturi sequi voluptatem omnis consequatur. Aut recusandae quas sit placeat odit nam repudiandae.', 'Voluptates repellendus occaecati totam expedita omnis.', 'archived', 'blog/4.jpg', '2025-02-10 04:26:58', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(23, 5, 'Officiis natus et quia est quia laborum.', 'officiis-natus-et-quia-est-quia-laborum', 'Voluptatum adipisci enim ea nihil vel voluptas aliquid quae. Sunt ducimus cumque reprehenderit eligendi accusamus. Quidem id eos soluta.\n\nQuasi illo consequuntur quibusdam. Hic distinctio ab iste sequi voluptatem consequatur. Et enim ab nesciunt et beatae laboriosam.\n\nEt temporibus et velit nesciunt soluta et in. Est eius ut quia et sint quia deserunt. Maiores odit fuga nihil placeat vel sit qui.\n\nNihil ducimus itaque sit dolor minus ratione asperiores aliquid. Et excepturi aut exercitationem aspernatur assumenda et. Est aspernatur optio neque deleniti porro.\n\nOdit qui id illum voluptate dolor. A iure harum aliquam consequatur veritatis nesciunt dolor. Minima maiores voluptates corrupti quia corporis incidunt dolorem sed. Iure ad eos earum. Distinctio voluptatem provident possimus et animi.', 'Nihil ipsa cumque deserunt est non.', 'published', 'blog/8.jpg', '2025-02-09 08:38:12', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(24, 4, 'Esse natus non similique distinctio nam.', 'esse-natus-non-similique-distinctio-nam Y Dale U.', 'Distinctio beatae debitis et deserunt aut et. Temporibus porro deserunt laudantium ut voluptatem perferendis molestiae incidunt.\n\nTemporibus nostrum itaque ex incidunt. Aut illum dolorem alias fuga asperiores architecto. Sunt sed ullam aut debitis et sapiente et. Eaque omnis ipsum et corrupti voluptatem.\n\nRerum dolor soluta optio voluptatem. Dolorum suscipit ea animi voluptas dolores numquam aspernatur. Quo et et nihil non libero non veniam.\n\nEum consequatur aut et quod fugiat. Minima aliquid molestias cupiditate quas eum nisi est. Quisquam voluptatem qui ut est saepe.\n\nTempore vel eveniet ad blanditiis. Quia eos inventore est consectetur eaque qui. Fugit sapiente ex nam dolores et aut ipsum. Tempora consequatur similique eum quis dignissimos explicabo est sunt.', 'Modi aperiam molestiae repudiandae minima nemo amet voluptas veniam.', 'archived', 'blog/20.jpg', '2025-03-11 19:35:22', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(25, 1, 'Doloribus dolor totam a nisi dolorem nesciunt.', 'doloribus-dolor-totam-a-nisi-dolorem-nesciunt', 'Enim nesciunt mollitia a. Sapiente enim porro itaque consequatur. Autem rerum ut sit doloremque consequuntur. Nesciunt ratione et fugit perferendis ex aliquid ex.\n\nNesciunt in aut nihil rerum quia qui eius. Dolorum quia beatae id tempore voluptatem repellat tempore.\n\nEum eligendi impedit et maiores enim id consequatur et. Dolor sequi reprehenderit ipsam eligendi nisi accusamus. Adipisci tempore debitis enim repudiandae quasi totam quo.\n\nDucimus consequatur illum a reprehenderit soluta. Sit architecto ea rerum dolorem iure molestias dolorem. Error rem officia in consequuntur. Eum voluptatem nisi nesciunt facere beatae quia. Debitis velit voluptas dolorem quisquam omnis porro soluta sit.\n\nDeleniti ad quo consequatur aliquid ut et. Et aspernatur consequatur est dolor et quia amet atque. In dolorem et vel eos rerum. Quia incidunt sit repudiandae corrupti saepe et maiores.', 'Cupiditate maiores dolorem eligendi non similique quis ducimus nam.', 'published', 'blog/2.jpg', '2025-04-02 01:59:34', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(26, 2, 'Veritatis molestiae eos error doloribus culpa doloribus.', 'veritatis-molestiae-eos-error-doloribus-culpa-doloribus', 'Doloribus perferendis numquam et recusandae laborum dolorem. Necessitatibus exercitationem dolores ipsum. Culpa rerum rem quibusdam ea. Reiciendis tempore sit voluptas nam nesciunt temporibus exercitationem.\n\nIllum ratione sint ut iure. Et rerum corrupti iste. Vitae ut soluta reprehenderit dolor. Distinctio fugiat quaerat eos ut consequatur dignissimos dolore.\n\nReprehenderit neque neque in eaque at. Dolor voluptas explicabo qui non. Eos architecto iure cum ea. Saepe rerum sit veritatis dolorem voluptatem. Ut unde eveniet aut sed ab voluptatum.\n\nEst rerum exercitationem consequatur velit labore consequatur repudiandae dicta. Ab labore eligendi voluptatem voluptatem non. Aliquid qui quia provident laudantium. Minus nobis eius sed.\n\nQuibusdam reiciendis quo possimus nulla quia facere. Magni enim enim consequuntur ducimus. Iure laudantium quo rerum eaque facilis praesentium. Laborum veniam aut sequi distinctio quo. Dolore consequuntur ut adipisci aliquid veniam quo ut et.', 'Corrupti quaerat ipsa placeat deserunt omnis.', 'draft', 'blog/16.jpg', '2025-01-03 22:29:11', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(27, 5, 'Eos cupiditate et culpa sed esse.', 'eos-cupiditate-et-culpa-sed-esse', 'Explicabo quisquam nam ut accusamus. Et est et cumque blanditiis corrupti sunt. Esse ea tenetur doloremque culpa dolorem quod maiores.\n\nRecusandae sunt architecto dolorum voluptatem vero vitae nulla ut. Aspernatur quia ut dolorum eum error veritatis vero. Nobis inventore nesciunt officia consectetur deserunt reprehenderit.\n\nDolores vel modi officiis in architecto et. Voluptas molestiae debitis nobis harum minus non ut dolores. Rerum sit est dolor accusamus ullam. Qui iure et qui harum.\n\nEsse et sunt aut delectus dolore dolores. Dolorum dolor temporibus velit qui recusandae non adipisci. Sed qui quos error dignissimos.\n\nIpsum facilis ut fugit sint corrupti autem minus dolore. Et in ut eaque ut quo ad. Sunt est deleniti sed perspiciatis animi.', 'Unde cum veritatis dolor.', 'published', 'blog/18.jpg', '2025-01-15 15:12:24', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(28, 5, 'Delectus a officia et velit dolorum suscipit.', 'delectus-a-officia-et-velit-dolorum-suscipit', 'Aut odio sit voluptates et aperiam. Optio cum et consectetur. Numquam dolorum eligendi fuga dolor dignissimos blanditiis ea.\n\nTotam neque dolor temporibus sit distinctio quam sequi. Blanditiis maiores eius non autem enim unde. Ut illum sit mollitia itaque. Aliquid iure et officia animi qui ut sunt cum.\n\nAut fugiat necessitatibus voluptatum qui. Quidem voluptatem deleniti quasi fuga odit. Et et distinctio odit quia.\n\nIllum enim ut et et. Veritatis eius omnis cupiditate quos magnam sunt consequatur. Dolor et aspernatur odit voluptatem iusto rerum sequi.\n\nImpedit dignissimos eos qui tempora. Ex dolorum sit labore sed soluta nostrum. Asperiores praesentium eligendi fuga asperiores qui tempora. Fuga similique est quia corrupti sunt at.', 'Molestias unde sunt vero aut qui.', 'draft', 'blog/15.jpg', '2025-03-23 09:42:36', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(29, 4, 'Est voluptatem omnis velit dignissimos perspiciatis quae.', 'est-voluptatem-omnis-velit-dignissimos-perspiciatis-quae', 'Ipsa assumenda quo cumque explicabo. Omnis odio velit neque tenetur quo praesentium nemo. Doloremque quos voluptatem commodi in.\n\nDolorum aut et dolorem dolorum voluptate. Voluptatem molestiae minus ut totam rerum. Quia totam explicabo incidunt accusantium quis magnam corrupti. Nulla accusantium rerum distinctio repellat.\n\nNatus qui quisquam suscipit unde atque doloribus amet. Asperiores deserunt alias at vero. Repellendus ipsum voluptatem temporibus dicta ea.\n\nNobis et qui dolore velit nesciunt. Consequuntur sequi cumque saepe numquam et.\n\nDistinctio eum sit distinctio eum quod. Inventore incidunt aperiam sit provident facere voluptatibus. Ut architecto error sit sequi molestiae atque. Placeat voluptatem vero consequatur hic.', 'Illum cupiditate expedita animi doloremque enim iusto voluptatem numquam.', 'archived', 'blog/17.jpg', '2025-03-24 22:54:47', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(30, 1, 'Dolorem saepe quia qui minima enim.', 'dolorem-saepe-quia-qui-minima-enim', 'Voluptas illum ducimus sed nam. Et consequatur omnis eum est. Perspiciatis quisquam explicabo vero voluptates optio iure sit voluptas.\n\nQuas quia provident a dolore dolores. Cum et unde vel soluta saepe optio. Quis eum ut et quidem et consectetur.\n\nRatione et odio et. Expedita possimus odio sapiente pariatur reprehenderit qui.\n\nVelit ipsum voluptatem saepe eum tenetur est earum. Aut eius rem quia. Aut incidunt consequatur hic vel consequatur esse praesentium.\n\nLabore dolor est doloribus quibusdam reiciendis odio. Dolore earum quaerat architecto provident delectus a error suscipit. Ipsum vel in architecto aut ullam veniam. Perspiciatis voluptas fugit asperiores commodi.', 'Repellendus nam deserunt id aut sit vitae.', 'published', 'blog/1.jpg', '2025-03-29 16:04:33', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(31, 1, 'Velit voluptate quas mollitia aut voluptas repellat.', 'velit-voluptate-quas-mollitia-aut-voluptas-repellat', 'Iusto ea asperiores quia repellendus. Porro pariatur pariatur ea sequi nobis blanditiis aut. Nesciunt ut accusantium ea. Voluptatum nam animi aut.\n\nOptio rerum est est et et accusantium sed. Quaerat quia autem facilis. Ducimus ut minima sed molestiae expedita rerum repudiandae. Quas quo nisi aut dolore deserunt.\n\nExercitationem ipsa id perferendis officia consequatur voluptatem. Magni veritatis voluptas inventore asperiores. Voluptas architecto fugit occaecati doloribus.\n\nSed quaerat sed dolores expedita. Eaque eligendi optio voluptas explicabo eos nobis debitis. Sed quo ea nisi nostrum non. In qui odio aut et molestiae.\n\nVoluptatem optio qui inventore autem qui. Et a eius nostrum voluptatibus voluptatem est. Hic voluptatibus illo quis quia perferendis dolor quia. Est doloribus quis qui dolorem eius quia.', 'Repellat natus nemo saepe consequuntur cumque sunt dicta voluptatem.', 'published', 'blog/16.jpg', '2025-02-13 17:31:11', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(32, 3, 'Ut quam repellat optio.', 'ut-quam-repellat-optio', 'Beatae sapiente suscipit deleniti sed. Et eos id molestiae aut quasi.\n\nInventore possimus deleniti quasi consequatur. Iusto ducimus id non labore officiis. Sunt excepturi qui corrupti voluptas.\n\nQuam sit quis facere non eligendi autem omnis aut. Ex fugiat cumque illo sint temporibus dicta. Minima non veniam ducimus sed et sunt.\n\nOfficia eum eos autem commodi atque iste debitis non. Adipisci non accusantium ut et perspiciatis. Saepe non laudantium nulla eius illo dignissimos et. Consectetur doloribus est ex aut aspernatur.\n\nEaque consequuntur debitis neque et et impedit voluptatem. Ut deserunt labore atque iste. Qui numquam voluptatem et eos. Nihil voluptatem molestias autem consectetur ad.', 'Eligendi eum molestiae omnis aspernatur.', 'draft', 'blog/12.jpg', '2025-03-14 12:05:39', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(33, 1, 'Illo eos dolores et voluptatem velit vel esse pariatur.', 'illo-eos-dolores-et-voluptatem-velit-vel-esse-pariatur', 'Eligendi vero dolores voluptate voluptatibus culpa aperiam et inventore. Non vitae recusandae pariatur sunt.\n\nTempore asperiores omnis occaecati consectetur. Provident illo aperiam cumque sapiente eos iusto omnis. Quia ab voluptatibus eos quisquam accusantium asperiores.\n\nEum eos recusandae sint dolorem minus. Ducimus rerum temporibus at dolore nobis neque quos. Quia qui est quia qui maxime ducimus veritatis.\n\nTempore qui sit perspiciatis voluptatem. Ut qui illum ea.\n\nCumque quia et rerum sit quis quaerat dolorum. Voluptates repellendus doloribus omnis placeat nostrum nesciunt. Mollitia quo atque quasi praesentium ducimus est. Quo molestias et laborum rerum.', 'Aliquid et dolorem blanditiis non.', 'published', 'blog/6.jpg', '2025-02-20 21:36:27', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(34, 1, 'Alias consequatur sint id minus minus expedita cumque.', 'alias-consequatur-sint-id-minus-minus-expedita-cumque', 'Tempora minus nemo aut ut vel similique. Dolore deleniti ut nobis quia excepturi optio. Voluptatem ut et repellat ut occaecati doloribus deserunt quo. Deleniti ut atque facilis rerum doloribus. Ut dolores eligendi omnis qui unde omnis natus.\n\nConsequuntur similique qui optio velit aliquam. Odit fugit qui quidem fugiat et. A neque rerum corporis non qui recusandae perspiciatis dicta. Consequatur fugiat rerum nihil laudantium et.\n\nQui ipsam ipsa eum molestiae culpa recusandae. Non atque suscipit magnam laudantium. Molestiae rerum nostrum quae.\n\nVero a recusandae iusto qui sunt. Corporis tenetur et vel velit. Aperiam voluptas ab officiis commodi iure earum alias. Voluptas velit quam voluptas quasi non facere exercitationem.\n\nAsperiores et voluptate aperiam qui incidunt. Autem voluptatem ea rerum ipsum doloremque assumenda. Id voluptatibus consequuntur nam quasi. Ut eveniet ut eligendi aut dicta facere.', 'Similique doloremque laborum pariatur ut enim sit quisquam.', 'published', 'blog/11.jpg', '2025-01-25 11:09:24', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(35, 2, 'Eveniet repudiandae repellat ducimus aut.', 'eveniet-repudiandae-repellat-ducimus-aut', 'Aliquam officiis odio sapiente maxime ut sed natus commodi. Blanditiis enim soluta vero harum. Veniam magnam molestiae quam delectus dignissimos perspiciatis.\n\nFuga veniam fugit et. Repudiandae facere quibusdam qui saepe. Quaerat vitae aspernatur dolorum fuga doloremque qui harum rerum.\n\nDebitis eligendi et autem unde cumque. Et reiciendis quis dolorem necessitatibus et quae consequatur. Illo debitis sequi itaque minima.\n\nMolestiae ut blanditiis eos alias nisi. Fugit tenetur incidunt in voluptatem quia perspiciatis velit sed. Ullam enim est consequuntur sequi voluptatibus.\n\nSimilique unde non quas iusto. Odio minima quia sint aut cum molestiae. Autem incidunt et id beatae quod harum.', 'Rerum eaque ut totam nihil itaque nihil maiores.', 'draft', 'blog/10.jpg', '2025-01-10 00:14:26', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(36, 3, 'Enim itaque ipsa quia ratione.', 'enim-itaque-ipsa-quia-ratione', 'Quis voluptatem est et reprehenderit. Unde est sit voluptatem ad et. Rerum vel asperiores amet et.\n\nVelit ad corporis illo quae delectus ut facere. Accusantium veritatis ut beatae blanditiis laudantium. Numquam sequi et voluptatem ullam quod quidem ea. Perferendis tempora animi doloribus at est labore dignissimos.\n\nNon iure veniam omnis sed sit aut. Repellat vero ut debitis aut voluptatem. Dolorem molestias inventore vel.\n\nError eaque explicabo et et. Quasi commodi minus sed qui sed. Eum modi dolor et consectetur consequuntur.\n\nQuaerat omnis sint a omnis veniam laudantium eum. Qui sed expedita quidem ea dolorem voluptate doloremque assumenda. Quia aut est quasi et.', 'Et sunt voluptates nihil harum sed autem aliquid.', 'draft', 'blog/2.jpg', '2025-02-18 16:33:49', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(37, 2, 'Perferendis dolor quis dolor voluptas consequuntur totam quia.', 'perferendis-dolor-quis-dolor-voluptas-consequuntur-totam-quia', 'Aspernatur sed veniam iste eum. Sed sunt quod autem voluptatibus. Eum quisquam magnam fugiat eum corrupti est libero.\n\nVeritatis aliquam expedita expedita eum ad culpa dolorem. Nostrum amet cumque fuga omnis veritatis. Omnis vel perferendis eius ut similique alias.\n\nEst maiores eos ad tenetur quis dignissimos. Asperiores ut officiis est sint. Et ab commodi id natus possimus. Excepturi excepturi aut quidem.\n\nA reiciendis pariatur est eos officiis et. Dolor nesciunt qui quia quia sequi unde explicabo beatae. Sed aperiam rerum labore eaque ut magnam incidunt.\n\nOfficiis fugit et quia nam qui cumque nisi. Earum et voluptates nisi quia neque molestias. Tempora nisi et dolor ea et nam. Libero at vel odit libero iste.', 'Debitis pariatur doloribus reprehenderit voluptatem ratione cumque.', 'archived', 'blog/16.jpg', '2025-02-18 21:32:26', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(38, 4, 'Eum qui velit ullam praesentium et voluptatem ut nihil.', 'eum-qui-velit-ullam-praesentium-et-voluptatem-ut-nihil', 'Necessitatibus at debitis voluptatem hic minus suscipit temporibus. Ex culpa facere eius iusto.\n\nId aut beatae beatae qui. Dolores eius nesciunt quibusdam consequatur quod est est. Expedita culpa corporis minima asperiores.\n\nCorporis saepe sapiente non quo voluptatem ad quia quod. Repellendus iste aut dolorem tempore maiores corporis. Aut aut debitis qui nisi voluptatem.\n\nSit repellat molestiae nisi doloribus. Suscipit sint laboriosam cupiditate eaque. Dolores ut esse et nam. Unde nemo rem inventore et natus distinctio officia. Placeat ex et dolores dolorum odio.\n\nEligendi velit sapiente aliquid at. Quo ea nostrum est enim impedit. Est qui illum rerum vitae et. Et maxime voluptate repellendus et commodi dolor libero.', 'Reiciendis optio at id aut ea ullam.', 'published', 'blog/16.jpg', '2025-02-13 12:08:41', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(39, 4, 'Illum commodi ullam quia.', 'illum-commodi-ullam-quia', 'Harum exercitationem sunt placeat cum ut. Non odio earum cumque et nam sunt unde. Velit nostrum et et sed aut aut.\n\nNam quis itaque beatae eius doloremque omnis voluptas. In magni vero quas id esse ipsam aperiam. Reprehenderit in et similique eveniet.\n\nOccaecati dolores quos velit ab. Voluptatum nisi laborum nesciunt ratione sequi. Debitis quibusdam aperiam commodi vel quibusdam.\n\nHic pariatur cum temporibus dicta. Cupiditate ab ut dolorem sapiente aut quisquam id. Quas praesentium ratione nihil repudiandae vel ducimus. Molestiae necessitatibus quibusdam ipsam officiis.\n\nItaque assumenda omnis autem atque aliquam dolores. Sit eum saepe ducimus enim et qui. Minus facilis mollitia voluptatum aspernatur enim doloremque rerum.', 'Consequatur architecto minus voluptatibus eveniet.', 'archived', 'blog/20.jpg', '2025-04-02 08:04:35', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(40, 5, 'Dolores sapiente quo mollitia vel ipsa.', 'dolores-sapiente-quo-mollitia-vel-ipsa', 'Omnis id ratione dolorem quod debitis assumenda. Voluptatem pariatur vel molestiae saepe consequatur corrupti. Hic temporibus a dignissimos in. Soluta velit est ut officia et et aspernatur.\n\nRatione non officia ipsam atque. Corrupti aspernatur magni aut sit porro. Ut ad eum rerum quia reiciendis nisi in repudiandae. Cupiditate cupiditate tempore optio magnam magni.\n\nAut vero praesentium expedita reprehenderit quia eum. Consequuntur esse consequuntur harum tenetur officia et. Quis exercitationem quidem atque et exercitationem ipsa.\n\nSuscipit aliquid laudantium voluptas sed. Tenetur sint adipisci nostrum labore aut sit. Dolor iure tempore nihil sed aut sed.\n\nNostrum voluptas magnam maiores cumque temporibus reprehenderit ex. Dolorum numquam dolores aliquam omnis est autem cumque. Dolore voluptatem aliquam pariatur voluptatem voluptatem. Eos non sunt facere in.', 'Occaecati perspiciatis atque rerum iste.', 'archived', 'blog/6.jpg', '2025-01-05 09:13:44', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(41, 2, 'Minus eos mollitia provident harum.', 'minus-eos-mollitia-provident-harum', 'Amet est quidem omnis cupiditate dolorem natus et. Est quia repellendus ipsa unde et. Sunt ut vel at. Optio officiis aut quam tempore quaerat rerum voluptatem.\n\nIn et voluptatum ut est eveniet. Veritatis omnis ut non. Quaerat sapiente et nulla quia itaque doloremque qui quaerat. Nulla iusto id commodi omnis animi.\n\nNisi ex et voluptas quae. Rerum sit ut harum placeat. Ut alias aut voluptatem aut quasi.\n\nCulpa aliquam minus et officia iure voluptates magni velit. Dolor iure ut voluptatum est tempore cumque. Voluptatem rem officiis hic dolores consectetur cumque. Ut in fuga commodi sit.\n\nEt quia voluptatum quaerat ex voluptas totam dignissimos. Ipsam est omnis beatae sint quam sint et corporis. Saepe eaque ducimus autem dicta nobis.', 'Voluptatem temporibus autem delectus facilis et voluptatem.', 'draft', 'blog/2.jpg', '2025-01-06 15:09:03', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(42, 5, 'Et eos provident possimus at consequatur ex voluptatem.', 'et-eos-provident-possimus-at-consequatur-ex-voluptatem', 'Ratione illum error doloribus est repellat. Voluptas minus occaecati alias dolore. Deserunt est eligendi blanditiis quo. Labore illo nemo dolor magnam nobis natus.\n\nAut enim voluptatem optio sed voluptatem beatae. Suscipit accusamus vero voluptate quia pariatur fugit ipsa eos. Accusamus voluptas vel molestias est ratione explicabo.\n\nEnim nihil sit rerum perferendis unde ipsam ea dolor. Enim soluta at dolores est occaecati. Nihil qui perferendis qui et molestias doloremque. Suscipit laboriosam expedita unde corporis eius.\n\nSit adipisci aliquid eum pariatur voluptatem modi facilis. Eius voluptas magnam veritatis porro sit. Quo et inventore voluptatum hic consequatur qui.\n\nEius autem praesentium nihil ipsa dolorum voluptatem modi. Praesentium iusto fuga voluptatibus molestiae et qui distinctio. Doloribus eos doloremque et ea eius id nihil. Animi sit sint est fugiat debitis quod molestias.', 'Veritatis quos facere sed animi.', 'draft', 'blog/3.jpg', '2025-04-12 21:49:27', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(43, 1, 'Ea sapiente eos molestias repellat.', 'ea-sapiente-eos-molestias-repellat', 'Facilis facilis occaecati atque delectus. Similique quo rerum dignissimos est consequatur. Sapiente facilis quasi quae sit voluptas rerum soluta.\n\nIllum veritatis voluptas voluptatum vel molestias voluptatem et. Vel quia totam rerum ea in. Sint velit velit et consectetur ipsa molestiae.\n\nIn nisi dolor nobis autem. Iure consectetur voluptates voluptatibus error. Voluptas et culpa distinctio fuga reprehenderit et. Qui beatae non nihil ipsam quibusdam id.\n\nSaepe nobis aspernatur iure aliquam itaque soluta. Adipisci consequatur facilis quibusdam vero aut suscipit.\n\nEos quia quam quis consequatur modi alias. Ex rerum eum cupiditate rem. Veniam et numquam inventore alias incidunt mollitia fuga.', 'Aut esse unde repellendus et dolorum occaecati.', 'draft', 'blog/20.jpg', '2025-02-13 21:22:08', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(44, 5, 'Quam itaque atque modi voluptatem accusantium vel.', 'quam-itaque-atque-modi-voluptatem-accusantium-vel', 'Labore autem ab nihil. Molestias unde cumque sunt ut recusandae sit. Dolor inventore eveniet culpa et cupiditate voluptatibus facere.\n\nVelit numquam corporis molestias esse voluptate quis facere nostrum. Itaque ducimus non perferendis quas iste. Dignissimos reiciendis sapiente est voluptatum est. Inventore corrupti consectetur et alias voluptatum modi.\n\nSuscipit et sit vitae delectus provident. Ipsa ut enim et sit voluptatem cupiditate. Perferendis neque beatae aliquam dolor. Modi iusto temporibus delectus unde et.\n\nUt quae animi eveniet sunt at delectus qui. Non ut aperiam dignissimos. Qui possimus excepturi alias deserunt consequatur beatae autem.\n\nQuis sit consectetur repellendus sunt assumenda. Odit qui dolores nihil unde.', 'Numquam culpa error dolores quae quis.', 'archived', 'blog/11.jpg', '2025-03-28 09:45:33', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(45, 2, 'Corrupti placeat ipsa et qui doloribus rerum est.', 'corrupti-placeat-ipsa-et-qui-doloribus-rerum-est', 'Nam pariatur laudantium voluptatem excepturi saepe fuga. Deserunt molestias et voluptas eius vel et. Accusantium eum voluptates consequatur veritatis. Cumque voluptas qui perferendis aut.\n\nPerferendis explicabo laborum labore deleniti ipsa. Provident qui repellendus corrupti et ut omnis. Omnis ex eum et fugit dicta dignissimos.\n\nDoloribus velit vero ut rerum non est nemo. Rerum maiores quae corporis atque voluptate. Est aliquid fugit dolores explicabo est. Consectetur in rem ea.\n\nArchitecto laboriosam aut quia. Adipisci in autem eius voluptatem doloremque eos voluptatibus eius. Placeat provident molestiae dolore suscipit et.\n\nVoluptates illum omnis nostrum tenetur aliquid enim incidunt. Doloribus cumque non error nobis. Est quia enim aliquam voluptate.', 'Ad in molestiae consectetur ut.', 'draft', 'blog/2.jpg', '2025-04-05 12:56:43', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(46, 3, 'Nam non possimus molestiae odio et.', 'nam-non-possimus-molestiae-odio-et', 'Numquam quos nisi quod. Explicabo sint debitis quo dolor dolore aut. Cupiditate velit inventore reprehenderit fugit omnis. Similique sapiente laborum minima modi et.\n\nNatus animi et error voluptatem voluptatum sit. Aut et aut qui natus et voluptas facere. Quia voluptatem praesentium qui pariatur saepe exercitationem.\n\nEveniet ratione a nostrum aut numquam omnis nihil quasi. Quod necessitatibus aut placeat tempore perspiciatis modi veniam. Amet vero voluptatum molestias. Sint autem aspernatur et et facere.\n\nSed et ratione nihil et enim nemo iure. Ullam ipsa cupiditate recusandae sit consequatur vel. Et eius illum qui deserunt. Aspernatur voluptate enim minima quis.\n\nFacere perferendis vel deleniti dolores ex provident. Aut voluptate est modi suscipit. Eum et distinctio cumque minus culpa. Corrupti ipsum quos tempora sed porro pariatur nam.', 'Est repellendus et aut ut atque consequatur aliquid.', 'archived', 'blog/12.jpg', '2025-02-05 19:22:12', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(47, 4, 'Quia sit praesentium qui incidunt reiciendis quas repellat.', 'quia-sit-praesentium-qui-incidunt-reiciendis-quas-repellat', 'Accusantium facilis aut ipsum dicta. Aliquid iure quis cumque et ipsam. Voluptatem doloremque unde corrupti iure dolor.\n\nNatus dolor nihil quia perspiciatis aut quaerat. Laboriosam natus veritatis voluptas. Et nulla voluptatem omnis minus quia adipisci ipsam explicabo. Repellendus inventore facilis iusto magnam nam hic.\n\nIpsum iusto quia doloremque. Sequi quidem assumenda fugit. Qui hic atque eum qui.\n\nPossimus et porro qui natus dolores. Ea praesentium neque et ipsam. Quia fuga iusto et dolor inventore dolores. Quisquam non delectus unde magni enim qui omnis.\n\nFacere placeat et nam aliquid. Natus impedit beatae optio aut. Nostrum error recusandae blanditiis sit ea.', 'Non quis ut recusandae velit rerum qui.', 'draft', 'blog/17.jpg', '2025-03-05 02:42:58', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(48, 1, 'Tempora dolores voluptatem aperiam inventore error id voluptatem.', 'tempora-dolores-voluptatem-aperiam-inventore-error-id-voluptatem', 'Deserunt sed enim nesciunt. Minus ipsa quia molestiae molestias cupiditate rerum.\n\nEaque repudiandae velit aliquid. Ratione vitae sequi quidem quidem odit aliquam a. Vitae culpa quisquam qui rerum eius deleniti. Iusto quos sit labore ut asperiores.\n\nAdipisci aperiam repellat illo explicabo ea voluptatem velit. Reprehenderit suscipit repudiandae aut.\n\nSapiente reprehenderit tempora sit et. Eligendi sapiente incidunt eveniet iusto placeat. Quibusdam nisi asperiores laudantium. Non sequi molestiae aut nesciunt.\n\nEos excepturi amet fugiat dolorem repudiandae aut. Explicabo quisquam similique provident aliquam beatae est. Sit a qui suscipit aliquam dignissimos accusantium. Quo voluptas et beatae quo provident.', 'Aperiam eveniet incidunt saepe commodi et non repellat.', 'draft', 'blog/2.jpg', '2025-02-18 03:58:09', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(49, 1, 'Voluptatibus necessitatibus cumque quaerat officia.', 'voluptatibus-necessitatibus-cumque-quaerat-officia', 'Libero fuga beatae occaecati debitis repellendus sed. Dignissimos ea repudiandae sint. Vel autem voluptatum perferendis saepe alias. Occaecati ipsa impedit ab ipsum.\n\nOptio doloribus possimus nesciunt maiores aut autem dolorum. Optio voluptatibus est officiis consequatur et.\n\nVoluptatem corporis qui et dolores quia. Quia qui neque exercitationem vero necessitatibus delectus rerum. Veritatis velit quas dolorum eos numquam qui perspiciatis illum. Non quibusdam enim fuga quasi similique officiis qui.\n\nAlias architecto nisi dolor qui totam nulla. Distinctio nesciunt enim et rerum maiores laboriosam. Distinctio aut totam enim ut dolorem.\n\nRepellat explicabo modi autem aut ratione eum. Necessitatibus ipsum et et est dignissimos quia. Doloribus assumenda voluptatem vel et sequi numquam. Molestiae labore corrupti similique unde. Doloribus dolores consequatur quis laudantium unde minus eius.', 'Iste eveniet molestiae autem ut sunt quaerat quod.', 'draft', 'blog/1.jpg', '2025-02-23 04:46:20', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(50, 2, 'Voluptas maiores quam numquam eos sit odit amet.', 'voluptas-maiores-quam-numquam-eos-sit-odit-amet', 'Ut labore sequi et nam doloribus. Totam dolore deserunt voluptatem maiores distinctio ipsum expedita. Fugit doloremque a et debitis.\n\nAd et tenetur vel. Ea at qui voluptatibus.\n\nFugit ullam ducimus qui. Consequatur veniam ullam libero est inventore. Sint error quas aut accusantium eligendi saepe architecto. Et atque quaerat iure quia reiciendis aperiam.\n\nQuos corrupti et et aliquid sint minima. Error culpa quia quos veritatis cum tempora amet. Id ducimus rerum qui dignissimos. Earum voluptatem iusto ea unde.\n\nQuae ut illum itaque necessitatibus. Sint deserunt unde provident id aspernatur. Sint incidunt officiis sed voluptate cupiditate magnam.', 'Neque nemo cum ut atque.', 'draft', 'blog/8.jpg', '2025-02-15 05:20:24', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(53, 1, 'Argos 2', 'argos-2', 'Esto es una prueba para el blog.', 'Prueba 2', 'published', 'blog/QZOfy9UklInsuRrkzAN62sN1KtB1f3zixvFgTksg.jpg', '2025-05-25 20:17:01', '2025-05-25 20:17:01', '2025-05-25 20:17:01');

-- Volcando estructura para tabla postmanucode.post_categories
CREATE TABLE IF NOT EXISTS `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_categories_post_id_foreign` (`post_id`),
  KEY `post_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `post_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.post_categories: ~98 rows (aproximadamente)
DELETE FROM `post_categories`;
INSERT INTO `post_categories` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, NULL, NULL),
	(2, 1, 3, NULL, NULL),
	(3, 1, 5, NULL, NULL),
	(4, 2, 2, NULL, NULL),
	(5, 3, 4, NULL, NULL),
	(6, 4, 1, NULL, NULL),
	(7, 5, 2, NULL, NULL),
	(8, 6, 2, NULL, NULL),
	(9, 7, 1, NULL, NULL),
	(10, 7, 2, NULL, NULL),
	(11, 7, 3, NULL, NULL),
	(12, 8, 3, NULL, NULL),
	(13, 8, 4, NULL, NULL),
	(14, 9, 3, NULL, NULL),
	(15, 10, 2, NULL, NULL),
	(16, 10, 4, NULL, NULL),
	(17, 10, 5, NULL, NULL),
	(18, 11, 2, NULL, NULL),
	(19, 12, 2, NULL, NULL),
	(20, 12, 3, NULL, NULL),
	(21, 12, 4, NULL, NULL),
	(22, 13, 1, NULL, NULL),
	(23, 13, 3, NULL, NULL),
	(24, 13, 5, NULL, NULL),
	(25, 14, 2, NULL, NULL),
	(26, 14, 5, NULL, NULL),
	(27, 15, 2, NULL, NULL),
	(28, 16, 2, NULL, NULL),
	(29, 16, 3, NULL, NULL),
	(30, 16, 5, NULL, NULL),
	(31, 17, 1, NULL, NULL),
	(32, 17, 5, NULL, NULL),
	(33, 18, 5, NULL, NULL),
	(34, 19, 1, NULL, NULL),
	(35, 19, 4, NULL, NULL),
	(36, 19, 5, NULL, NULL),
	(37, 20, 3, NULL, NULL),
	(38, 20, 4, NULL, NULL),
	(39, 20, 5, NULL, NULL),
	(40, 21, 2, NULL, NULL),
	(41, 22, 1, NULL, NULL),
	(42, 22, 4, NULL, NULL),
	(43, 23, 5, NULL, NULL),
	(44, 24, 2, NULL, NULL),
	(45, 25, 1, NULL, NULL),
	(46, 25, 2, NULL, NULL),
	(47, 25, 5, NULL, NULL),
	(48, 26, 4, NULL, NULL),
	(49, 27, 1, NULL, NULL),
	(50, 27, 3, NULL, NULL),
	(51, 27, 5, NULL, NULL),
	(52, 28, 1, NULL, NULL),
	(53, 28, 3, NULL, NULL),
	(54, 28, 4, NULL, NULL),
	(55, 29, 1, NULL, NULL),
	(56, 29, 5, NULL, NULL),
	(57, 30, 1, NULL, NULL),
	(58, 30, 2, NULL, NULL),
	(59, 30, 4, NULL, NULL),
	(60, 31, 2, NULL, NULL),
	(61, 31, 4, NULL, NULL),
	(62, 32, 2, NULL, NULL),
	(63, 32, 3, NULL, NULL),
	(64, 33, 1, NULL, NULL),
	(65, 33, 4, NULL, NULL),
	(66, 33, 5, NULL, NULL),
	(67, 34, 2, NULL, NULL),
	(68, 34, 3, NULL, NULL),
	(69, 34, 4, NULL, NULL),
	(70, 35, 2, NULL, NULL),
	(71, 35, 5, NULL, NULL),
	(72, 36, 2, NULL, NULL),
	(73, 36, 3, NULL, NULL),
	(74, 37, 5, NULL, NULL),
	(75, 38, 4, NULL, NULL),
	(76, 38, 5, NULL, NULL),
	(77, 39, 5, NULL, NULL),
	(78, 40, 4, NULL, NULL),
	(79, 40, 5, NULL, NULL),
	(80, 41, 3, NULL, NULL),
	(81, 42, 1, NULL, NULL),
	(82, 42, 5, NULL, NULL),
	(83, 43, 1, NULL, NULL),
	(84, 43, 4, NULL, NULL),
	(85, 44, 1, NULL, NULL),
	(86, 44, 3, NULL, NULL),
	(87, 44, 5, NULL, NULL),
	(88, 45, 1, NULL, NULL),
	(89, 45, 5, NULL, NULL),
	(90, 46, 1, NULL, NULL),
	(91, 46, 5, NULL, NULL),
	(92, 47, 3, NULL, NULL),
	(93, 48, 1, NULL, NULL),
	(94, 48, 5, NULL, NULL),
	(95, 49, 1, NULL, NULL),
	(96, 49, 2, NULL, NULL),
	(97, 49, 5, NULL, NULL),
	(98, 50, 1, NULL, NULL),
	(100, 53, 2, NULL, NULL);

-- Volcando estructura para tabla postmanucode.post_tags
CREATE TABLE IF NOT EXISTS `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_post_id_foreign` (`post_id`),
  KEY `post_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.post_tags: ~143 rows (aproximadamente)
DELETE FROM `post_tags`;
INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 1, 3, NULL, NULL),
	(3, 1, 5, NULL, NULL),
	(4, 2, 2, NULL, NULL),
	(5, 3, 3, NULL, NULL),
	(6, 3, 4, NULL, NULL),
	(7, 4, 3, NULL, NULL),
	(8, 5, 2, NULL, NULL),
	(9, 5, 4, NULL, NULL),
	(10, 5, 5, NULL, NULL),
	(11, 6, 1, NULL, NULL),
	(12, 7, 3, NULL, NULL),
	(13, 7, 4, NULL, NULL),
	(14, 8, 2, NULL, NULL),
	(15, 8, 3, NULL, NULL),
	(16, 8, 4, NULL, NULL),
	(17, 9, 1, NULL, NULL),
	(18, 9, 2, NULL, NULL),
	(19, 9, 4, NULL, NULL),
	(20, 9, 5, NULL, NULL),
	(21, 10, 1, NULL, NULL),
	(22, 10, 2, NULL, NULL),
	(23, 10, 3, NULL, NULL),
	(24, 10, 4, NULL, NULL),
	(25, 10, 5, NULL, NULL),
	(26, 11, 2, NULL, NULL),
	(27, 11, 4, NULL, NULL),
	(28, 11, 5, NULL, NULL),
	(29, 12, 1, NULL, NULL),
	(30, 12, 4, NULL, NULL),
	(31, 13, 1, NULL, NULL),
	(32, 13, 2, NULL, NULL),
	(33, 13, 3, NULL, NULL),
	(34, 13, 4, NULL, NULL),
	(35, 13, 5, NULL, NULL),
	(36, 14, 4, NULL, NULL),
	(37, 14, 5, NULL, NULL),
	(38, 15, 2, NULL, NULL),
	(39, 15, 3, NULL, NULL),
	(40, 15, 5, NULL, NULL),
	(41, 16, 1, NULL, NULL),
	(42, 16, 4, NULL, NULL),
	(43, 16, 5, NULL, NULL),
	(44, 17, 1, NULL, NULL),
	(45, 17, 2, NULL, NULL),
	(46, 17, 3, NULL, NULL),
	(47, 17, 4, NULL, NULL),
	(48, 17, 5, NULL, NULL),
	(49, 18, 1, NULL, NULL),
	(50, 18, 2, NULL, NULL),
	(51, 18, 3, NULL, NULL),
	(52, 18, 4, NULL, NULL),
	(53, 19, 2, NULL, NULL),
	(54, 19, 5, NULL, NULL),
	(55, 20, 4, NULL, NULL),
	(56, 21, 4, NULL, NULL),
	(57, 21, 5, NULL, NULL),
	(58, 22, 1, NULL, NULL),
	(59, 22, 2, NULL, NULL),
	(60, 22, 4, NULL, NULL),
	(61, 23, 3, NULL, NULL),
	(62, 24, 1, NULL, NULL),
	(63, 24, 2, NULL, NULL),
	(64, 24, 3, NULL, NULL),
	(65, 24, 4, NULL, NULL),
	(66, 24, 5, NULL, NULL),
	(67, 25, 1, NULL, NULL),
	(68, 25, 2, NULL, NULL),
	(69, 25, 3, NULL, NULL),
	(70, 25, 4, NULL, NULL),
	(71, 25, 5, NULL, NULL),
	(72, 26, 1, NULL, NULL),
	(73, 26, 2, NULL, NULL),
	(74, 26, 3, NULL, NULL),
	(75, 26, 4, NULL, NULL),
	(76, 26, 5, NULL, NULL),
	(77, 27, 2, NULL, NULL),
	(78, 27, 3, NULL, NULL),
	(79, 28, 5, NULL, NULL),
	(80, 29, 1, NULL, NULL),
	(81, 29, 2, NULL, NULL),
	(82, 29, 3, NULL, NULL),
	(83, 29, 4, NULL, NULL),
	(84, 29, 5, NULL, NULL),
	(85, 30, 1, NULL, NULL),
	(86, 30, 2, NULL, NULL),
	(87, 30, 4, NULL, NULL),
	(88, 30, 5, NULL, NULL),
	(89, 31, 1, NULL, NULL),
	(90, 31, 3, NULL, NULL),
	(91, 31, 4, NULL, NULL),
	(92, 31, 5, NULL, NULL),
	(93, 32, 4, NULL, NULL),
	(94, 32, 5, NULL, NULL),
	(95, 33, 1, NULL, NULL),
	(96, 33, 2, NULL, NULL),
	(97, 33, 3, NULL, NULL),
	(98, 33, 5, NULL, NULL),
	(99, 34, 5, NULL, NULL),
	(100, 35, 2, NULL, NULL),
	(101, 35, 3, NULL, NULL),
	(102, 35, 4, NULL, NULL),
	(103, 35, 5, NULL, NULL),
	(104, 36, 4, NULL, NULL),
	(105, 37, 1, NULL, NULL),
	(106, 37, 2, NULL, NULL),
	(107, 37, 4, NULL, NULL),
	(108, 37, 5, NULL, NULL),
	(109, 38, 1, NULL, NULL),
	(110, 38, 2, NULL, NULL),
	(111, 38, 3, NULL, NULL),
	(112, 39, 2, NULL, NULL),
	(113, 39, 4, NULL, NULL),
	(114, 40, 1, NULL, NULL),
	(115, 40, 2, NULL, NULL),
	(116, 40, 3, NULL, NULL),
	(117, 40, 5, NULL, NULL),
	(118, 41, 2, NULL, NULL),
	(119, 41, 4, NULL, NULL),
	(120, 41, 5, NULL, NULL),
	(121, 42, 1, NULL, NULL),
	(122, 42, 2, NULL, NULL),
	(123, 42, 3, NULL, NULL),
	(124, 42, 5, NULL, NULL),
	(125, 43, 4, NULL, NULL),
	(126, 44, 1, NULL, NULL),
	(127, 44, 2, NULL, NULL),
	(128, 44, 3, NULL, NULL),
	(129, 44, 4, NULL, NULL),
	(130, 44, 5, NULL, NULL),
	(131, 45, 1, NULL, NULL),
	(132, 45, 5, NULL, NULL),
	(133, 46, 2, NULL, NULL),
	(134, 46, 3, NULL, NULL),
	(135, 47, 4, NULL, NULL),
	(136, 48, 5, NULL, NULL),
	(137, 49, 2, NULL, NULL),
	(138, 49, 5, NULL, NULL),
	(139, 50, 1, NULL, NULL),
	(140, 50, 2, NULL, NULL),
	(141, 50, 3, NULL, NULL),
	(142, 50, 4, NULL, NULL),
	(143, 50, 5, NULL, NULL),
	(145, 53, 5, NULL, NULL);

-- Volcando estructura para tabla postmanucode.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.sessions: ~1 rows (aproximadamente)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('WxUwq9yfV1gXvgM9FQ2H4uePkLPAiEpAByx1cAYP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:139.0) Gecko/20100101 Firefox/139.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDA1cVFzdnFicnFTVUxHa0gydDNabnRRdFI1blM2WmlnbzdhRzJtYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748192214);

-- Volcando estructura para tabla postmanucode.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.tags: ~5 rows (aproximadamente)
DELETE FROM `tags`;
INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Artisan', 'Artisan', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(2, 'php', 'php', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(3, 'vscode', 'vscode', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(4, 'developer', 'developer', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(5, 'manucode', 'manucode tdlv', '2025-04-14 07:25:15', '2025-04-14 07:25:15');

-- Volcando estructura para tabla postmanucode.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `urlfacebook` text COLLATE utf8mb4_unicode_ci,
  `urlinstagram` text COLLATE utf8mb4_unicode_ci,
  `urlx` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','editor','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla postmanucode.users: ~5 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `description`, `urlfacebook`, `urlinstagram`, `urlx`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin User', 'admin@example.com', 'Y dale U. Toda La Vida.', 'https://luettgen.net/molestias-sapiente-consequatur-et-minus.html', 'https://luettgen.net/molestias-sapiente-consequatur-et-minus.html', 'https://luettgen.net/molestias-sapiente-consequatur-et-minus.html', '2025-04-14 07:25:15', '$2y$12$UjIrpqYH/B0.5VJObw81kuMEm70RB1jWswpK1sIygbrnHhk0vkQ5a', 'admin', 'VqJ3QOk9PoFvv3kfdpSsZ2tJWSOa3cqv6xZMmzXqaj6cZcSR0h8b6CzbfuiF', '2025-04-14 07:25:15', '2025-05-25 21:56:19'),
	(2, 'Miss Raphaelle Lemke Jr.', 'ufunk@example.org', 'Quia ut provident asperiores. Ullam error doloremque consequatur reiciendis porro excepturi.', NULL, 'http://bailey.com/odit-debitis-possimus-quidem-est-tempore.html', 'http://www.sporer.com/', '2025-04-14 07:25:15', '$2y$12$gnABG9uD7ZWFyizpzGhRlu0jtgr2Ntstuc4s8df8D13ZhDRFj0SXO', 'user', 'TGwXK5p2z9', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(3, 'Miss Kristy Bechtelar IV', 'joana55@example.com', 'Non culpa qui fuga est quo est. Rerum necessitatibus quisquam reiciendis et enim repellendus at. Et iusto quia doloremque aperiam.', 'http://www.tremblay.info/ut-eligendi-aut-et-eos-qui-voluptates-aliquam-non.html', NULL, 'http://roberts.biz/qui-provident-odit-asperiores-similique-quas-sint.html', '2025-04-14 07:25:15', '$2y$12$gnABG9uD7ZWFyizpzGhRlu0jtgr2Ntstuc4s8df8D13ZhDRFj0SXO', 'admin', 'pYObYgGWDK', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(4, 'Madelyn Friesen', 'lucious34@example.net', 'Accusamus perferendis veniam qui distinctio omnis ea et. Voluptatem error dolorem repudiandae neque in et. Fuga ipsa dolores et ad saepe. Vero voluptatem rem sunt tempore suscipit enim in.', 'http://effertz.biz/et-vitae-quia-corrupti-est.html', NULL, NULL, '2025-04-14 07:25:15', '$2y$12$gnABG9uD7ZWFyizpzGhRlu0jtgr2Ntstuc4s8df8D13ZhDRFj0SXO', 'user', '3nyAMxMhoi', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(5, 'Alf Schroeder', 'lane81@example.com', 'Dolore iure voluptate est et quia vitae repellendus voluptas. Explicabo et eius sequi omnis. Culpa nisi molestiae sapiente omnis. Ab placeat dolorum quod praesentium.', 'http://www.auer.com/quia-debitis-et-et-odit-qui-pariatur-sit', NULL, NULL, '2025-04-14 07:25:15', '$2y$12$gnABG9uD7ZWFyizpzGhRlu0jtgr2Ntstuc4s8df8D13ZhDRFj0SXO', 'admin', 'NxGuMv6BVU', '2025-04-14 07:25:15', '2025-04-14 07:25:15'),
	(6, 'Manuel Alejandro', 'manuelojedaleon@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$5WZen/.cneFSJ4TcyjnT5.5MXl7pCc8TCE7quNnSq.k3Masgfa7Wu', 'admin', NULL, '2025-05-25 06:36:58', '2025-05-25 06:36:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
