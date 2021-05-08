-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 02:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ota_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'user', 'created', 1, 'App\\User', NULL, NULL, '{\"attributes\":{\"name\":\"Admin\",\"email\":\"admin@email.com\",\"password\":\"$2y$10$2UBqbbGgTUeEOW8nSxLV8OKoxuh.1DdYomJCM5CDwtbYSKYn1XFeC\",\"phone_number\":null,\"profile_photo\":null,\"status\":1}}', '2021-05-08 12:00:42', '2021-05-08 12:00:42'),
(2, 'user', 'created', 2, 'App\\User', NULL, NULL, '{\"attributes\":{\"name\":\"User\",\"email\":\"user@email.com\",\"password\":\"$2y$10$u.9\\/wHSE7N0htmhU20Lv1OxEp5A1sVM83cYeymb5NwNK80SpdGgMW\",\"phone_number\":null,\"profile_photo\":null,\"status\":1}}', '2021-05-08 12:00:44', '2021-05-08 12:00:44'),
(3, 'category', 'created', 1, 'App\\Category', NULL, NULL, '{\"attributes\":{\"category_name\":\"molestiae\",\"status\":1,\"user_id\":2}}', '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(4, 'category', 'created', 2, 'App\\Category', NULL, NULL, '{\"attributes\":{\"category_name\":\"consequatur\",\"status\":1,\"user_id\":2}}', '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(5, 'category', 'created', 3, 'App\\Category', NULL, NULL, '{\"attributes\":{\"category_name\":\"vitae\",\"status\":1,\"user_id\":1}}', '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(6, 'category', 'created', 4, 'App\\Category', NULL, NULL, '{\"attributes\":{\"category_name\":\"nihil\",\"status\":1,\"user_id\":2}}', '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(7, 'category', 'created', 5, 'App\\Category', NULL, NULL, '{\"attributes\":{\"category_name\":\"aut\",\"status\":1,\"user_id\":2}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(8, 'post', 'created', 1, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Fugit sapiente quia earum qui praesentium sed.\",\"post_body\":\"Placeat deserunt ullam exercitationem quia. Nemo ratione rerum sequi.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=18\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(9, 'post', 'created', 2, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Velit omnis deserunt qui neque ex alias tenetur.\",\"post_body\":\"Illum ad ut tempora quas illo. Aliquid adipisci reiciendis voluptatem voluptates similique reiciendis dolore. Ullam consequuntur asperiores quia ut alias ratione aliquam. Quis eligendi aliquam ratione libero maiores doloremque incidunt autem.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=11\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(10, 'post', 'created', 3, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Sapiente quod pariatur magnam voluptatum sit debitis ut alias.\",\"post_body\":\"Vel incidunt consequatur ipsam unde beatae. Consequatur esse et veritatis rerum.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=9\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(11, 'post', 'created', 4, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Officiis rerum quia rem iure.\",\"post_body\":\"Voluptate dolor blanditiis fuga ut. Nulla ab nisi quaerat ipsum ea iusto. Cumque perferendis possimus aliquid possimus doloremque est.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=19\",\"status\":1,\"category_id\":3,\"user_id\":2}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(12, 'post', 'created', 5, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Error exercitationem voluptates fugiat nobis nihil illo.\",\"post_body\":\"Nihil hic autem quis et incidunt neque maxime sit. Ea rerum quia eaque ut enim ut minima. Quae velit expedita pariatur voluptatum est eligendi. Consequuntur ad aut necessitatibus molestiae odio illo quia vel.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=3\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(13, 'post', 'created', 6, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Voluptatem ut odio officia et eligendi voluptatibus.\",\"post_body\":\"In porro impedit laudantium aut cumque natus. Explicabo dolorem perspiciatis excepturi ut. Minus est culpa est est. Sit quibusdam iste sit distinctio qui.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=38\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(14, 'post', 'created', 7, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Dignissimos consectetur aspernatur sunt sed a.\",\"post_body\":\"Accusamus sit ad et voluptas eveniet. Voluptates qui recusandae sed.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=10\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(15, 'post', 'created', 8, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Aut sed doloribus enim numquam.\",\"post_body\":\"Fuga consequatur quia assumenda sed beatae labore. Qui mollitia et tempore quia eveniet eum sit. Assumenda accusantium quo animi dolores rerum sed.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=33\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(16, 'post', 'created', 9, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Corrupti tenetur saepe incidunt aut omnis commodi.\",\"post_body\":\"Corrupti alias consectetur non sunt. Officiis iure adipisci ipsa labore. Ipsa sed qui voluptatem dolor dolorem.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=29\",\"status\":1,\"category_id\":4,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(17, 'post', 'created', 10, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Nihil rerum omnis expedita quisquam eius.\",\"post_body\":\"Quas voluptatibus voluptates unde laboriosam labore maiores eius. Non odio aliquam error quod dolor nihil quo voluptate. Est nemo quae aut reiciendis enim.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=37\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(18, 'post', 'created', 11, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Et accusamus sint tempora deleniti repudiandae.\",\"post_body\":\"Corporis corrupti nemo dolorem possimus sit quia. Eos praesentium tenetur et incidunt est aliquam. Molestias est ab repudiandae quo error aut. Molestiae et incidunt illum voluptatum quo in et. Assumenda voluptas et quod et ut.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=11\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(19, 'post', 'created', 12, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Dignissimos qui et totam facere dignissimos architecto repellat.\",\"post_body\":\"Et animi omnis sunt eligendi labore eveniet omnis. Tempora fugiat dolorem et incidunt eaque quam error. Voluptas unde id et. Doloribus repellendus est similique suscipit omnis. Omnis placeat id quasi nisi.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=13\",\"status\":1,\"category_id\":1,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(20, 'post', 'created', 13, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Est et sunt velit in.\",\"post_body\":\"Modi eius quibusdam illo nobis rerum. Aperiam repellendus est nemo perspiciatis. Dignissimos consequatur fugiat rerum doloremque accusantium modi quasi natus.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=23\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(21, 'post', 'created', 14, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Doloribus sapiente laboriosam aliquam maxime dolores quod aut.\",\"post_body\":\"Fuga voluptatibus eaque consequatur. Itaque et odit dicta numquam est ut. Maxime et optio quia consequuntur quia magnam.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=21\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(22, 'post', 'created', 15, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Nam sit distinctio nihil qui ea.\",\"post_body\":\"Ut voluptatem qui quisquam velit officia. Deserunt omnis eveniet totam itaque. Culpa iste sequi debitis voluptatem repellendus.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=20\",\"status\":1,\"category_id\":4,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(23, 'post', 'created', 16, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Et atque commodi esse corrupti qui.\",\"post_body\":\"Nisi molestias perspiciatis aut delectus laborum debitis ipsa. Non fugiat voluptate sed dolorum. Aliquam minima sunt et aut quia sint suscipit praesentium.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=14\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(24, 'post', 'created', 17, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Veniam corporis repellendus vel qui.\",\"post_body\":\"Et excepturi in maxime exercitationem autem fugiat. Et dolores autem debitis reiciendis eligendi. Recusandae atque voluptatem repudiandae nisi. Officiis rem in aliquid impedit incidunt eveniet.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=32\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(25, 'post', 'created', 18, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Enim quod eos repellendus aut.\",\"post_body\":\"Harum cumque omnis sed perspiciatis. Aperiam eveniet possimus voluptas quia recusandae. Voluptates ratione vitae rerum quia eum ratione.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=49\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(26, 'post', 'created', 19, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Accusamus est quisquam cumque libero cupiditate sunt quo.\",\"post_body\":\"Repellat ipsam aut ipsum qui nesciunt. Facilis explicabo quisquam illum nihil voluptatibus. Autem quis veniam laboriosam consequuntur in quis qui nobis.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=49\",\"status\":1,\"category_id\":1,\"user_id\":2}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(27, 'post', 'created', 20, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Aliquam dicta architecto velit.\",\"post_body\":\"Aut odio rem omnis quia accusantium libero aperiam. Ad consequuntur sunt omnis id aut ad aut earum. Laborum ipsam sed eveniet sint distinctio.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=31\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(28, 'post', 'created', 21, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Culpa voluptate saepe sit maxime est.\",\"post_body\":\"Iure ea et aliquid maiores itaque. Inventore rem est voluptatem. Quibusdam similique blanditiis soluta nulla quo. Eligendi corporis et dignissimos et nihil tempore.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=8\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(29, 'post', 'created', 22, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Molestiae ut omnis sit corrupti dolore aliquam et a.\",\"post_body\":\"Voluptatem laboriosam ab in officiis repellat odit. Nisi et nemo dolores illo ea temporibus fuga. Tempore quo autem soluta nostrum.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=44\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(30, 'post', 'created', 23, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Cupiditate molestiae est delectus sit eum necessitatibus animi.\",\"post_body\":\"Et sint quidem quis eaque vero ut quos. Corrupti a quis dolorem et assumenda voluptas omnis. Velit quia in nisi velit doloremque perferendis sint.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=6\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(31, 'post', 'created', 24, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Aliquam maxime veritatis doloremque ad nemo adipisci.\",\"post_body\":\"Nihil vel est ducimus. Maxime vel necessitatibus architecto adipisci. Nihil delectus qui ullam sit et aut omnis quia. Animi doloribus consequatur deleniti ex necessitatibus et ut.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=5\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(32, 'post', 'created', 25, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Sapiente eum velit odio laudantium.\",\"post_body\":\"Minima in architecto quis. Doloribus voluptate rerum quam adipisci. Et exercitationem nihil aut et qui ab. Culpa omnis rem hic rem quibusdam possimus. Unde qui est est voluptatem vitae nobis quam.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=30\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(33, 'post', 'created', 26, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Adipisci omnis est dolor ad nostrum qui.\",\"post_body\":\"Est libero ut maxime exercitationem in est. Aperiam accusamus beatae accusantium consectetur earum. Enim qui quod sed voluptatem corporis fuga. Rem ut hic repellat doloremque.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=49\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(34, 'post', 'created', 27, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Error accusamus asperiores aspernatur ut perspiciatis quisquam quia.\",\"post_body\":\"Assumenda et aperiam dolorum commodi blanditiis odio quo. Ipsam rerum animi modi ut quia et. Cumque dolores amet est ut.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=19\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(35, 'post', 'created', 28, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Fugiat sit ipsam exercitationem et recusandae.\",\"post_body\":\"Sequi consequatur omnis id ipsam qui praesentium corporis. Blanditiis eaque nostrum molestiae nihil velit qui aut. Odit cum magnam rem omnis velit mollitia. Ipsam esse dolore mollitia aut non rerum qui.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=39\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(36, 'post', 'created', 29, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Non ad vitae eum ipsam labore laborum.\",\"post_body\":\"Porro rem sed eligendi molestiae. Distinctio qui nesciunt vitae incidunt debitis sunt veniam qui. Placeat necessitatibus soluta expedita labore natus dolor et.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=32\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(37, 'post', 'created', 30, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Ut reprehenderit eaque explicabo quisquam rem eum voluptatem aspernatur.\",\"post_body\":\"Cum soluta officia velit molestias possimus id. Sed laudantium aut omnis qui adipisci excepturi.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=10\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(38, 'post', 'created', 31, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Repellendus aut in voluptas eum.\",\"post_body\":\"Et ea assumenda voluptatem sed dolorem repudiandae corporis praesentium. Nihil vitae consequatur necessitatibus hic consectetur ex. At sit eos consequatur deleniti aspernatur. Ratione porro et et veritatis.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=22\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(39, 'post', 'created', 32, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Soluta nostrum consequuntur voluptatem nesciunt accusamus quae tenetur ad.\",\"post_body\":\"Sint itaque vel natus. Voluptates qui quaerat aperiam sed et ea. Consectetur beatae at dolorum sit ea dolores.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=22\",\"status\":1,\"category_id\":1,\"user_id\":2}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(40, 'post', 'created', 33, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Ut fugiat est ea voluptatem quasi qui rerum.\",\"post_body\":\"Quis aut odio quas consequatur. Rerum tenetur vero dignissimos. Rem quia placeat eius architecto deserunt.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=47\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(41, 'post', 'created', 34, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Facilis sit praesentium ut.\",\"post_body\":\"Ratione saepe porro iusto sit et rerum dolores. Repellat tenetur modi quis inventore et. Perspiciatis reiciendis corrupti debitis neque est magni nesciunt.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=17\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(42, 'post', 'created', 35, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Neque deleniti ut eius dolor culpa porro et.\",\"post_body\":\"Omnis dolorem quidem laborum aut laudantium. Dolorum velit cupiditate eaque voluptas. Ullam et expedita nemo.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=18\",\"status\":1,\"category_id\":3,\"user_id\":2}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(43, 'post', 'created', 36, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Sunt nostrum est minus perspiciatis ipsum fugit.\",\"post_body\":\"Sed aperiam unde consequatur quia ipsa. Autem eius similique ipsa veritatis maiores aut nemo natus. Nam et sit voluptate temporibus debitis illum in. Tempore sit natus quia numquam et quia nihil soluta.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=48\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(44, 'post', 'created', 37, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Sit commodi quo voluptas eveniet.\",\"post_body\":\"Maxime voluptas tempora deserunt modi ipsa. Nesciunt distinctio est unde sapiente error eaque. Inventore alias sit aut. Et ipsa omnis culpa veritatis sed.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=42\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(45, 'post', 'created', 38, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Aut voluptates et sit ut ex.\",\"post_body\":\"Nihil rerum ad et distinctio doloribus repellat. Eligendi expedita molestias ab voluptatibus cum porro dolores.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=35\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(46, 'post', 'created', 39, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Voluptas excepturi autem facilis sed perspiciatis cum.\",\"post_body\":\"Praesentium eos nihil sed nobis qui distinctio eos. Est aut distinctio est molestiae in. Aliquam et animi earum culpa consequuntur odit voluptatem. Porro sint enim distinctio voluptate nulla modi.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=5\",\"status\":1,\"category_id\":2,\"user_id\":1}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(47, 'post', 'created', 40, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Est totam aut odit.\",\"post_body\":\"Aut sapiente debitis libero tempora veniam necessitatibus. Deleniti ut libero debitis aperiam ea ut. Dolorum natus unde ipsam assumenda consequatur. Commodi et iusto et dolorem incidunt animi officiis.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=47\",\"status\":1,\"category_id\":4,\"user_id\":1}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(48, 'post', 'created', 41, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Natus rerum et laboriosam tenetur.\",\"post_body\":\"Nulla sunt molestiae voluptates magni quidem voluptatem. Rerum nemo quia molestiae dicta. Est eum accusantium sit unde eum molestiae.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=24\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(49, 'post', 'created', 42, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Natus quam rerum et veritatis sed et error.\",\"post_body\":\"Et quaerat ut explicabo vitae. Amet quo dolorem nostrum voluptatem inventore sunt. Et ab sit est minus facere voluptas inventore. Ipsum iure et ea.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=1\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(50, 'post', 'created', 43, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Dicta voluptas quod qui nesciunt ea atque.\",\"post_body\":\"Voluptatum sapiente laborum inventore dolore. Error quo eum possimus fuga magnam. Incidunt illum aut aut autem aspernatur aperiam iusto.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=25\",\"status\":1,\"category_id\":3,\"user_id\":1}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(51, 'post', 'created', 44, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Ipsa ut iusto mollitia dicta qui ut.\",\"post_body\":\"Beatae quia saepe fugit. Omnis repellat illo provident quo. Tenetur non ea numquam voluptatibus.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=11\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(52, 'post', 'created', 45, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Nihil accusantium praesentium quidem doloribus enim.\",\"post_body\":\"Sapiente illo omnis sapiente sed reprehenderit illo repellendus. Iure et est placeat excepturi fugit et. Repellendus dolores quaerat omnis odio dolorem aut numquam.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=18\",\"status\":1,\"category_id\":1,\"user_id\":1}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(53, 'post', 'created', 46, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Voluptas occaecati animi repudiandae.\",\"post_body\":\"Qui non sed dignissimos sed iusto id. Qui blanditiis dolore ea non. Alias placeat debitis quas numquam eaque. Saepe veniam rerum aut error fugit ea odit.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=50\",\"status\":1,\"category_id\":1,\"user_id\":2}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(54, 'post', 'created', 47, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Praesentium et quod corrupti reprehenderit.\",\"post_body\":\"Aperiam ut ducimus non sapiente sit blanditiis et. Eos expedita pariatur et qui expedita veritatis et sunt. Nesciunt commodi iure molestiae sint omnis facilis est. Sit voluptates laudantium rem et non voluptatum qui. Est inventore dolore aut velit labore.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=1\",\"status\":1,\"category_id\":5,\"user_id\":2}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(55, 'post', 'created', 48, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Pariatur rem hic non consequuntur.\",\"post_body\":\"Dolores aut repudiandae accusantium vel dolorum. Neque sapiente quia ea. Officia qui delectus ut veniam laborum inventore.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=49\",\"status\":1,\"category_id\":2,\"user_id\":2}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(56, 'post', 'created', 49, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Ab sint at voluptas reiciendis repellat sit.\",\"post_body\":\"Ut eum quis est rerum nihil est aut. Dolorum voluptate harum eveniet fuga corrupti in laborum. Architecto soluta libero nobis assumenda. Aspernatur soluta eaque qui.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=14\",\"status\":1,\"category_id\":4,\"user_id\":2}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(57, 'post', 'created', 50, 'App\\Post', NULL, NULL, '{\"attributes\":{\"post_title\":\"Eveniet tenetur vero quasi culpa aliquid facere.\",\"post_body\":\"Consequatur necessitatibus quasi aliquam. Nihil ut ratione perferendis voluptatem. Sit fuga quia animi possimus quia.\",\"featured_image\":\"https:\\/\\/loremflickr.com\\/840\\/580\\/reading\\/all?random=27\",\"status\":1,\"category_id\":5,\"user_id\":1}}', '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(58, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2021-05-08 12:07:49', '2021-05-08 12:07:49'),
(59, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2021-05-08 12:11:05', '2021-05-08 12:11:05'),
(60, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\":\"guXsW2DYTkSkPQiyXabk5Qd2ZGAhEHDEwHP72GU7\",\"company_name\":\"Minya Tour\",\"company_email\":\"help@email.com\",\"company_phone\":\"01065165640\",\"company_address\":\"This is Our Description\",\"company_city\":\"Minya\",\"company_logo\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/files\\/1\\/minyalogo.png\",\"record_per_page\":\"10\",\"company_currency_symbol\":\"EGP\",\"register_notification_email\":\"1\",\"default_role\":\"2\",\"max_login_attempts\":\"3\",\"lockout_delay\":\"2\"}', '2021-05-08 12:11:50', '2021-05-08 12:11:50'),
(61, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2021-05-08 12:11:50', '2021-05-08 12:11:50'),
(62, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\":\"guXsW2DYTkSkPQiyXabk5Qd2ZGAhEHDEwHP72GU7\",\"company_name\":\"Minya Tour\",\"company_email\":\"help@email.com\",\"company_phone\":\"01065165640\",\"company_address\":\"This is Our Description\",\"company_city\":\"Minya\",\"company_logo\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/files\\/1\\/minyalogo.png\",\"record_per_page\":\"10\",\"company_currency_symbol\":\"EGP\",\"register_notification_email\":\"1\",\"default_role\":\"2\",\"max_login_attempts\":\"3\",\"lockout_delay\":\"2\"}', '2021-05-08 12:12:43', '2021-05-08 12:12:43'),
(63, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2021-05-08 12:12:43', '2021-05-08 12:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `book_car`
--

CREATE TABLE `book_car` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_recieve` date NOT NULL,
  `days` int(11) NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_hotel`
--

CREATE TABLE `book_hotel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_tour`
--

CREATE TABLE `book_tour` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_date` date NOT NULL,
  `persons` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_model`, `car_details`, `car_image`, `car_price`, `user_id`, `created_at`, `updated_at`, `discount`) VALUES
(1, 'Vero.', 'Et voluptatem corporis ex consequatur rem. Suscipit doloremque voluptates voluptatem a. Officia recusandae libero quam ut qui similique consequuntur. Vel consequuntur error quisquam provident facilis quas. Et quisquam voluptas voluptatem quod.', '/storage/files/1/51rkn5UDQhL._UY462_.jpg', '877', 1, '2021-05-08 12:01:00', '2021-05-08 12:08:59', 0),
(2, 'Quisquam quia.', 'Vero similique perspiciatis laboriosam est. Blanditiis hic quo illum eos. Labore provident aut sunt similique. Ea tempora natus necessitatibus voluptatem atque itaque. Iusto aspernatur explicabo saepe perspiciatis.', 'https://loremflickr.com/840/580/cars/all?random=14', '071', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0),
(3, 'Repellendus.', 'Rem dolorum expedita quo suscipit dignissimos et. Alias est voluptas natus nemo minus. Cumque illo perspiciatis amet dolorem rerum error earum. Qui asperiores molestiae minima non. Ab ut fuga et eius et. Beatae praesentium odio iure et modi quos dolorem sit.', 'https://loremflickr.com/840/580/cars/all?random=45', '905', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(4, 'Dolore.', 'Consequatur iste nihil consequatur voluptates vel cumque. Fuga cupiditate perferendis exercitationem est culpa. Dicta illo delectus inventore dicta. Iusto omnis itaque quia quia. Quod odit distinctio quia itaque. Et quo molestiae fugiat beatae. Doloremque ullam et aut nesciunt nemo nihil.', 'https://loremflickr.com/840/580/cars/all?random=26', '932', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0),
(5, 'Et.', 'Earum quo provident maxime quam. Magnam est sunt ea inventore. Et ea a ea eius vero nostrum qui. Aut quia rerum et vero totam eum incidunt. Dolorem nisi quas minima. Labore alias accusantium distinctio veritatis adipisci. Iure voluptas officia occaecati fugiat.', 'https://loremflickr.com/840/580/cars/all?random=16', '286', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 5),
(6, 'Fugiat.', 'Nobis reprehenderit magni praesentium quia perferendis. Minima aliquid eligendi sapiente. Deleniti non quidem laboriosam est inventore. Est enim culpa ipsum aut eum sapiente sapiente. Placeat mollitia consequatur cupiditate labore. Pariatur maxime excepturi magnam animi ab.', 'https://loremflickr.com/840/580/cars/all?random=37', '168', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 2),
(7, 'Voluptas.', 'Sit accusamus et ratione et quis impedit eum. Cupiditate quas non natus harum porro facere repellat enim. Ut sunt vel quos aspernatur voluptas quaerat. Autem qui possimus quasi exercitationem voluptates aliquam. Consequatur magni omnis enim libero voluptatem.', 'https://loremflickr.com/840/580/cars/all?random=47', '787', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 7),
(8, 'Officia.', 'Itaque iure provident velit nostrum voluptatem ipsam et. Eum et sequi numquam rerum. Sit voluptatem fugiat culpa itaque. Quia nulla necessitatibus corporis. Ea nam harum consequuntur velit rerum doloribus.', 'https://loremflickr.com/840/580/cars/all?random=13', '658', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(9, 'Veritatis temporibus.', 'Odio nemo ad qui aliquid quia repudiandae. Quam nihil quod deserunt quidem unde vero possimus. Id nisi blanditiis nemo delectus incidunt non laboriosam. Provident voluptatum dolorem dolor facere impedit voluptate. Eos quam et quia quia exercitationem. Doloremque maiores eum id voluptas.', 'https://loremflickr.com/840/580/cars/all?random=28', '358', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(10, 'Praesentium sint.', 'Illum repellendus hic vel tenetur. Quia vel adipisci fugit perspiciatis odio. Ullam enim officiis sed et nam repellendus quam. Quisquam sed et quae vel fugit possimus. Praesentium sequi dolores quis sed. Sint magnam voluptas facilis qui consequuntur ut. Natus assumenda est corporis nam quis aut occaecati neque.', 'https://loremflickr.com/840/580/cars/all?random=28', '055', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 7),
(11, 'Quo et.', 'Cum quod incidunt dolorem qui minima deserunt. Molestias modi ipsum quia inventore veritatis quia asperiores voluptas. Magni perspiciatis voluptas aut cupiditate maiores eos aut enim. Enim esse quis nihil aut pariatur deleniti aliquam. Esse animi eligendi molestiae eveniet consequatur.', 'https://loremflickr.com/840/580/cars/all?random=11', '736', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 1),
(12, 'Illum aut.', 'Quibusdam et saepe incidunt. Facilis dolorem qui consequatur maxime eligendi. Qui ut non atque incidunt sint blanditiis. Dolorum omnis quia necessitatibus repellat eveniet. Aut qui aut voluptas eius.', 'https://loremflickr.com/840/580/cars/all?random=16', '986', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 4),
(13, 'Sed expedita.', 'Iste occaecati sunt et ea labore repellendus. Nesciunt fugit occaecati asperiores non architecto enim in officiis. Doloribus temporibus qui expedita nisi soluta. Non distinctio quidem suscipit aut est ipsum dolorem. Perspiciatis consectetur accusamus quod aut est reprehenderit. Vel vitae libero ipsam mollitia recusandae similique.', 'https://loremflickr.com/840/580/cars/all?random=49', '891', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0),
(14, 'Vel.', 'Totam dolorem voluptas non facere autem. Qui ut et quia rerum molestiae minima aut. Qui nostrum asperiores cum reiciendis labore odio aut delectus. Voluptatem voluptate porro ex numquam. Praesentium dolor ipsa id suscipit blanditiis nisi. Illo velit et vero qui.', 'https://loremflickr.com/840/580/cars/all?random=35', '197', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 9),
(15, 'Facere.', 'Et mollitia et alias autem corrupti quos eaque. Unde alias deserunt exercitationem architecto. Et et saepe doloribus velit expedita. Sint quam enim nisi ab et maiores numquam. Autem fugiat deleniti minus praesentium eaque qui. Quia eius delectus et enim aut perspiciatis quas.', 'https://loremflickr.com/840/580/cars/all?random=39', '109', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 9),
(16, 'Beatae quaerat.', 'Minus non suscipit et asperiores impedit. Maiores unde aliquam iure atque dolorem dolorem. Perferendis ea aut doloremque enim. Et nihil dolorum occaecati. Placeat corrupti soluta perspiciatis qui qui. Molestiae officiis nihil sed labore.', 'https://loremflickr.com/840/580/cars/all?random=5', '329', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(17, 'Voluptate nihil.', 'Et placeat cum adipisci vel. Similique officia nemo et dolores dolore. Numquam quae nesciunt id quae natus ipsa aperiam. Doloribus odio quo deleniti sint deleniti. Quia et repudiandae tenetur delectus. Enim molestias est non distinctio et. Qui ut eos in dolorem asperiores.', 'https://loremflickr.com/840/580/cars/all?random=47', '402', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 4),
(18, 'Quisquam laboriosam.', 'Qui fugiat quia sed nemo ipsam. Nam voluptates iste minima sed dolores numquam explicabo. Et sed hic praesentium alias illum. Illum et rerum consectetur ipsa voluptate natus minima. Animi deserunt aut et unde. Cupiditate iusto et cumque. Qui id aut veniam eligendi.', 'https://loremflickr.com/840/580/cars/all?random=19', '287', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 5),
(19, 'Nihil eum.', 'Dolores atque harum tempora id est. Harum incidunt eos voluptates voluptatem. Cupiditate sed qui ut inventore ducimus vitae dolor. Nesciunt excepturi rerum omnis expedita aut excepturi. Accusantium nihil hic dolorum vero recusandae dicta deserunt.', 'https://loremflickr.com/840/580/cars/all?random=33', '645', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 7),
(20, 'Quis.', 'Omnis cumque numquam sint non et laborum. Neque sunt nostrum sit et velit eveniet. Tempora nulla temporibus et rerum occaecati. Deleniti repudiandae sapiente ducimus dolorum ea. Et deserunt vel consequatur rerum sed qui maiores. Qui quidem aperiam nihil quis ut. Veniam accusantium consequatur adipisci ut magni.', 'https://loremflickr.com/840/580/cars/all?random=2', '239', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(21, 'Vitae eos.', 'Quod officia et repellendus consequuntur. Ut veritatis aut modi sed sint. Pariatur qui omnis architecto perferendis necessitatibus. Ut voluptas beatae sint dolorum inventore culpa.', 'https://loremflickr.com/840/580/cars/all?random=2', '513', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 6),
(22, 'Debitis est.', 'Qui odit facilis in officia magnam. Dolores tempore impedit non quo pariatur voluptate vel. Natus sint omnis voluptas assumenda cum commodi. Officiis corporis voluptatem architecto.', 'https://loremflickr.com/840/580/cars/all?random=43', '371', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 4),
(23, 'Dolores.', 'Debitis labore iusto quia deleniti et et. Sequi ut qui error. Quasi officia ut quia vero voluptatem iure nam. Accusamus similique in occaecati eos pariatur quis soluta. Et temporibus eaque sit quia laboriosam et ut minus. Sequi harum perferendis odit sint rerum.', 'https://loremflickr.com/840/580/cars/all?random=46', '835', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 4),
(24, 'Dignissimos.', 'Eaque temporibus sequi in velit. Dicta exercitationem accusamus et et ea ut. Libero totam dolorum repellendus sunt. Ipsa tempora inventore adipisci voluptatem ea aut aliquam sed. Doloribus asperiores ut recusandae exercitationem ex quo et. Aperiam cum saepe est quidem. Rerum tempore at est inventore culpa.', 'https://loremflickr.com/840/580/cars/all?random=40', '619', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(25, 'Ad.', 'Voluptatem sed et est exercitationem. Doloribus maxime placeat incidunt expedita. Vitae eum et optio doloribus ut enim qui. Rerum odit iure delectus voluptatem eveniet est sapiente. Possimus ratione est dignissimos deserunt dolorem itaque voluptatum. Temporibus provident id officiis reprehenderit et voluptatum. Odio repellat totam inventore nobis.', 'https://loremflickr.com/840/580/cars/all?random=49', '348', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0),
(26, 'Sed ad.', 'Et nihil ipsam maiores laudantium dolorem ducimus harum. Commodi quisquam ipsum dolore sed sunt. Et voluptate nostrum cumque molestias laudantium facilis aut. Omnis placeat architecto sunt dignissimos aperiam quae nam. A molestias nesciunt iure assumenda. Sit modi fugiat aut ut sint. Quas libero rem nemo illo ut est.', 'https://loremflickr.com/840/580/cars/all?random=39', '909', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 5),
(27, 'Omnis dolores.', 'Facere quos facilis quae excepturi. Doloremque minus ut rerum harum ut eveniet. Autem ea quis reiciendis repellat. Commodi vitae id aut.', 'https://loremflickr.com/840/580/cars/all?random=42', '385', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 5),
(28, 'Ab aspernatur.', 'Et sed a ducimus labore id at cum. Consectetur voluptas animi veniam excepturi tempore. Dolores veritatis ad omnis optio. Officia sit quia necessitatibus quia quisquam.', 'https://loremflickr.com/840/580/cars/all?random=38', '160', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 6),
(29, 'Iste nostrum.', 'Facere consequatur quo architecto officia. Tempore ut cupiditate praesentium iste. Assumenda commodi magni enim id veritatis quos. Iste modi sed sunt officiis non. Ipsa quo saepe expedita et.', 'https://loremflickr.com/840/580/cars/all?random=9', '683', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 1),
(30, 'Est fugiat.', 'Qui unde esse sapiente laborum molestias veritatis. Voluptatum inventore suscipit consequuntur omnis et illo molestiae. Ab et exercitationem dolore culpa debitis. Neque modi id sit quo.', 'https://loremflickr.com/840/580/cars/all?random=6', '470', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 9),
(31, 'Amet sapiente.', 'Eligendi ea commodi dignissimos eveniet fuga deleniti. Deleniti consequatur ullam error. Voluptatibus minus aut architecto eaque. Et et voluptatibus quasi sed. In tempore nihil corrupti omnis perferendis possimus quasi. Ut rerum rerum sit quod officiis aut quod. Quis sit culpa aut doloribus.', 'https://loremflickr.com/840/580/cars/all?random=26', '530', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(32, 'Dicta voluptatem.', 'Nihil tempore tenetur aperiam ullam saepe unde. Et sit aut voluptas est quibusdam at. Non maxime nesciunt corporis aut repellat numquam. Doloribus cum eum modi ad.', 'https://loremflickr.com/840/580/cars/all?random=21', '601', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(33, 'Ipsum praesentium.', 'Animi deserunt repudiandae rerum ad quidem et. Doloribus asperiores dolor aut sunt omnis in iure voluptatem. Quia excepturi officia velit consequatur cupiditate accusantium tenetur. In nulla aut vel quos.', 'https://loremflickr.com/840/580/cars/all?random=11', '910', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(34, 'Qui.', 'Maiores accusantium provident similique voluptatem praesentium a quos omnis. Soluta dolorum expedita quia. Cumque sint ut ut enim. Praesentium autem officia eum ipsam vitae. Deserunt qui voluptates ullam consectetur laboriosam laudantium et. Quae tempora quidem sequi quia. Illum ut autem exercitationem error.', 'https://loremflickr.com/840/580/cars/all?random=12', '936', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(35, 'Non optio.', 'A voluptatem atque amet et. Ad similique culpa expedita ipsam nihil. Tenetur corrupti et eveniet eligendi necessitatibus natus maxime tempora. Deserunt ducimus ut qui expedita soluta veritatis. Occaecati ut maxime veritatis enim sit fuga soluta. Dolore tempore quibusdam at est aliquam.', 'https://loremflickr.com/840/580/cars/all?random=39', '292', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 6),
(36, 'Et explicabo.', 'Aut velit doloribus nobis quasi veniam qui iste. Molestiae delectus eum rem voluptatem nostrum quaerat omnis. Ipsa id ut quae quia. Debitis aut est animi fugiat iusto fuga eos quos. Eligendi cupiditate porro rerum omnis quasi aut.', 'https://loremflickr.com/840/580/cars/all?random=49', '096', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 9),
(37, 'Officiis quas.', 'Labore impedit velit iure iure. Ea recusandae magni nemo sed dolore in ducimus. Dolorum architecto distinctio laudantium dicta praesentium tempora. Minus non amet et veritatis aperiam eveniet aliquid. Neque asperiores quia nam eligendi at.', 'https://loremflickr.com/840/580/cars/all?random=10', '797', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 2),
(38, 'Libero dolorem.', 'Exercitationem et nisi inventore impedit. Doloribus sequi molestiae suscipit voluptatem iste saepe. Consequuntur quis consectetur sunt. Cum aut rerum aut omnis quos et tempore. Dolore laboriosam quis quas vero repudiandae. Nulla ut eos provident alias in amet consectetur. Dolores ut beatae magnam voluptas doloribus consequuntur.', 'https://loremflickr.com/840/580/cars/all?random=49', '743', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 2),
(39, 'Voluptate maxime.', 'In excepturi consequuntur dicta. Voluptatem ex vel dolore facilis. Dolor aliquid voluptate neque architecto sequi suscipit. Explicabo natus pariatur corporis est velit numquam nobis. Nesciunt provident iusto facere non. Et tempora autem pariatur veniam autem distinctio rem.', 'https://loremflickr.com/840/580/cars/all?random=19', '602', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 6),
(40, 'Blanditiis.', 'Et voluptatibus nulla commodi officia iste. Est at ut odit. Et sit distinctio eaque quia consequatur. Quo aspernatur necessitatibus totam fuga omnis.', 'https://loremflickr.com/840/580/cars/all?random=29', '169', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 1),
(41, 'Ea corrupti.', 'Facere quod velit quaerat quam accusantium qui dolores. Quisquam temporibus non est ipsam nemo aut. Voluptas et nisi reprehenderit atque et alias reprehenderit. Modi consequatur quia ad sint aut velit amet. Nemo facere quia id odit laborum ut. Sed maxime fugiat aut illum. Ex excepturi aliquam necessitatibus qui et autem sint.', 'https://loremflickr.com/840/580/cars/all?random=43', '097', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 6),
(42, 'Autem.', 'Dicta officiis atque voluptatem magni. Quo est eos occaecati quam excepturi et et. Adipisci asperiores necessitatibus dolorem labore. Odit laboriosam itaque et magni cum consequatur consequatur.', 'https://loremflickr.com/840/580/cars/all?random=23', '730', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 7),
(43, 'Dolores.', 'Unde voluptatum doloribus voluptatem illum velit. Veritatis iure nobis quidem. Natus maxime iusto nihil maiores quibusdam in modi quo. Cumque quis dolore cum enim ipsa ab ipsum. Non temporibus molestiae omnis placeat. Sed deleniti sed et facilis.', 'https://loremflickr.com/840/580/cars/all?random=30', '858', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 1),
(44, 'Reiciendis odio.', 'Tempore velit perferendis pariatur ut rem a natus laboriosam. Error sequi incidunt tenetur cupiditate fugit non. Sequi tempore sunt ut blanditiis voluptatem modi sequi. Velit vero a soluta pariatur et error occaecati. Quia sed tempore facere. Aut est qui distinctio. Aliquid atque rerum eligendi deleniti praesentium.', 'https://loremflickr.com/840/580/cars/all?random=42', '980', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0),
(45, 'Optio tenetur.', 'Tenetur velit modi sunt voluptates similique quibusdam. Quibusdam dicta ipsam voluptatibus odit repudiandae placeat sit voluptatem. Est ullam atque omnis vel voluptatem animi atque ducimus. Delectus deserunt reprehenderit unde autem omnis. Commodi ratione debitis quia ea eveniet. Pariatur neque expedita incidunt fugiat voluptatibus maxime dolores. Et minus enim mollitia.', 'https://loremflickr.com/840/580/cars/all?random=21', '462', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 7),
(46, 'Expedita officia.', 'In vel laborum facilis saepe qui consequatur. Non error voluptatum ullam deleniti. Corporis qui eos qui cum dolorem quia explicabo. Commodi rerum cupiditate repudiandae odio. Architecto et ipsum pariatur quae maxime quis harum dolores. Atque dolores et veritatis harum. Veritatis labore iusto placeat asperiores rem.', 'https://loremflickr.com/840/580/cars/all?random=8', '966', 1, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 3),
(47, 'Qui culpa.', 'Qui eveniet rem facilis ut aliquid omnis. Cumque pariatur error voluptas ipsa voluptas veritatis. Aut dolorem atque expedita quia ea harum voluptatem recusandae. Sit tempora fugiat ipsum.', 'https://loremflickr.com/840/580/cars/all?random=2', '918', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 2),
(48, 'Quas voluptatum.', 'Voluptatem harum quia nam et cumque. Est quo eum nesciunt est quibusdam dolores est. Et accusamus tempora corporis voluptas nulla doloribus quasi. Quibusdam recusandae at omnis quaerat ipsum. Provident quibusdam totam explicabo sed natus. Autem dolorem autem dolorem earum rerum est assumenda.', 'https://loremflickr.com/840/580/cars/all?random=47', '899', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 8),
(49, 'Et.', 'Sit reprehenderit ut dolores deleniti ullam est soluta. Alias ut repudiandae voluptatem. Impedit earum ut deleniti quia error nobis. Quia qui est enim. Minus distinctio alias rerum voluptas rem culpa laboriosam.', 'https://loremflickr.com/840/580/cars/all?random=43', '341', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 4),
(50, 'Possimus saepe.', 'Et minus quidem illo culpa nobis. Distinctio repellat quo quia provident voluptates. Consequatur non modi perspiciatis quasi vitae esse. Culpa nesciunt et dolores veritatis voluptate tempora optio ex. Eum cum enim et nam.', 'https://loremflickr.com/840/580/cars/all?random=48', '567', 2, '2021-05-08 12:01:00', '2021-05-08 12:01:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'molestiae', 1, 2, '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(2, 'consequatur', 1, 2, '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(3, 'vitae', 1, 1, '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(4, 'nihil', 1, 2, '2021-05-08 12:00:45', '2021-05-08 12:00:45'),
(5, 'aut', 1, 2, '2021-05-08 12:00:46', '2021-05-08 12:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hot_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_price` int(11) NOT NULL,
  `hot_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hot_name`, `hot_price`, `hot_address`, `hot_details`, `hot_type`, `hot_image`, `user_id`, `created_at`, `updated_at`, `discount`) VALUES
(1, 'At molestias.', 749, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Rem voluptatum repellat sapiente et expedita ut. Repellat dolor pariatur accusamus. Quis eligendi nihil eos molestiae qui eum. Ut magni cumque minima deserunt facere occaecati. Dolore reiciendis sunt eos consectetur. Delectus distinctio omnis deserunt vitae voluptate modi optio dolores. Id beatae autem voluptas praesentium aperiam nobis. Sint voluptatem odit fuga quia.', '', 'https://loremflickr.com/840/580/hotels/all?random=23', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 5),
(2, 'Veritatis laboriosam.', 988, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Sit nostrum maiores consectetur quae doloremque. Non omnis ipsam porro aut exercitationem tempore aspernatur dolor. Cum non quia dolor doloremque pariatur non. Ut temporibus voluptas maxime aliquid. Dolorem sed eos explicabo minus ut corporis et. Est esse est consequuntur excepturi eveniet sunt qui accusantium. Et itaque nulla nemo sed quam id natus iste. Voluptate minus et et enim officia.', '', 'https://loremflickr.com/840/580/hotels/all?random=14', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(3, 'Qui labore.', 932, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Illum voluptatem dolore facere eum eum soluta quis. Saepe consequuntur dolores earum id. Commodi id eius excepturi incidunt. Eligendi voluptatem qui deleniti. Accusantium eos quos distinctio. Voluptas quibusdam impedit rerum distinctio optio. Aut nobis aut non. Dolorem sunt aut esse et maiores asperiores. Sint quia officiis ut cum eos blanditiis maxime libero.', '', 'https://loremflickr.com/840/580/hotels/all?random=18', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 4),
(4, 'Praesentium.', 164, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Quasi ab quo sunt voluptatem. Fuga minima consequuntur doloremque voluptates. Enim eligendi accusantium sint est inventore aliquam. Vero ex fugiat officiis sit aperiam consequatur. Qui rem explicabo eaque eos nisi et tempora.', '', 'https://loremflickr.com/840/580/hotels/all?random=9', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 7),
(5, 'Aut ut.', 88, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'A est magnam unde odio. Officia similique dolore quisquam itaque. Optio repellat totam ut. Nisi recusandae ex pariatur nemo voluptatem. Eum aut quidem deleniti ipsum exercitationem expedita cum. Omnis culpa ea accusamus explicabo repellendus recusandae. Est sed ut vero quo. Sequi omnis sunt perspiciatis ut repudiandae. Qui enim ut tempore ipsa.', '', 'https://loremflickr.com/840/580/hotels/all?random=40', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(6, 'Maxime.', 834, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Quae repudiandae laborum nobis. Voluptatibus enim rerum culpa dolor est quas. Vitae itaque autem sit doloremque molestias. Aut sunt provident facilis quos aut. Maiores veniam praesentium enim. Commodi adipisci quisquam debitis ut repellendus vero hic. Incidunt quo autem reiciendis sint. Debitis nemo omnis veritatis beatae iusto porro.', '', 'https://loremflickr.com/840/580/hotels/all?random=38', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(7, 'Culpa.', 844, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Esse occaecati esse eos iure libero ipsa vitae voluptate. Et quidem at nesciunt occaecati. Atque voluptatem perferendis eligendi sed. Quos quisquam sapiente sint sapiente iusto. Voluptatum et nemo placeat ut iusto vel debitis.', '', 'https://loremflickr.com/840/580/hotels/all?random=30', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 7),
(8, 'Hic.', 306, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Suscipit aut ut facere aut occaecati. Et accusamus aspernatur consequatur iure quaerat quidem et. Fuga officiis inventore qui. Aut eum recusandae qui ut quam labore. Occaecati reprehenderit eius ab consequatur aut facilis. Distinctio aut facere ut dolorem. Ab non reiciendis accusamus quis eum incidunt. Libero commodi cum nemo et velit. Quis pariatur pariatur aliquid perferendis iusto nostrum sint.', '', 'https://loremflickr.com/840/580/hotels/all?random=37', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 4),
(9, 'Soluta ex.', 266, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Omnis velit voluptatem perspiciatis dicta nesciunt. Dolorem maxime similique aut magni saepe rerum sed architecto. Sed rerum veritatis est. Recusandae autem veritatis aut amet in. Repellat nisi soluta cum omnis. Numquam explicabo minima sed pariatur molestiae saepe odio. Magni magnam ut quis odio autem. Aut velit qui quis veniam rerum aut praesentium.', '', 'https://loremflickr.com/840/580/hotels/all?random=48', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 8),
(10, 'Laudantium ipsa.', 895, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Qui blanditiis quo iste. Ducimus earum molestias iusto praesentium odit dolorum et. Illum ea cumque sed quae enim dolores soluta. Qui nam ducimus porro ut odio enim dolore. Et quas libero iusto qui nisi. Deserunt in omnis rerum reprehenderit laboriosam accusamus a. Deserunt eius ea qui quisquam eveniet et fugiat. Maxime vel corrupti ullam quo deserunt. Saepe et et ratione ut illo perspiciatis ut. Consequatur nostrum recusandae animi at.', '', 'https://loremflickr.com/840/580/hotels/all?random=12', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(11, 'Unde a.', 280, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Cumque dolores omnis molestias quae molestiae ea consectetur ut. Molestiae nisi fuga et odit. Aut molestiae aliquid ipsa quasi iure magnam cumque. Nulla veniam distinctio consequatur culpa consectetur. Quo vel vero ab numquam sit voluptatem et. Pariatur minus eos iure eius provident doloribus ut ut.', '', 'https://loremflickr.com/840/580/hotels/all?random=47', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(12, 'Quia.', 165, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Expedita ratione repellendus sint est molestiae eius. Autem nobis ut recusandae. At doloribus est excepturi est. Beatae aut eos aut ut. Nihil sed iure id.', '', 'https://loremflickr.com/840/580/hotels/all?random=21', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 7),
(13, 'Et.', 591, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Autem aliquam ab optio ut nisi voluptas nesciunt. Et odit accusamus minus placeat commodi. Dolor occaecati earum nulla modi nisi quos omnis. Suscipit maxime in beatae placeat omnis quia corrupti. Qui ut ut saepe sit sapiente. Voluptates consequatur qui voluptas quae eveniet eaque. Reprehenderit qui repudiandae aliquid porro. Officia similique eum enim deleniti quia. Reiciendis dolore ipsam quos ut similique.', '', 'https://loremflickr.com/840/580/hotels/all?random=48', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 5),
(14, 'Nemo delectus.', 707, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Fugit rem consequatur qui dolorem laborum suscipit. Voluptatem distinctio nihil aut dolores ducimus minus. Aut quod occaecati voluptates eius provident repellat quia. Consectetur voluptatum aspernatur tenetur ut nemo voluptatum ex et. Debitis ullam occaecati nihil nostrum sequi temporibus et molestiae. Aliquid ex nesciunt commodi minima ex autem atque. Aut veritatis et totam facere. Officia in quia aut dolorum rerum. Voluptatibus reiciendis ipsum quo minus et vitae minima. Et molestias qui aperiam molestiae amet facere culpa quia.', '', 'https://loremflickr.com/840/580/hotels/all?random=9', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 1),
(15, 'Impedit quos.', 114, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Ea impedit aut consequatur sunt ipsum. Quis et et temporibus sunt porro. Natus consequatur aut omnis similique et sed eos. Quas pariatur sit et voluptatem. Quo dolorem nihil et cumque ut est. Tempore et iure dolores iste.', '', 'https://loremflickr.com/840/580/hotels/all?random=17', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 4),
(16, 'Vel rerum.', 632, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Ut sed mollitia autem est cumque nisi delectus. Distinctio voluptas ut natus necessitatibus illum. At quod officia ipsam debitis maiores ratione occaecati. Voluptatem explicabo corporis ut molestias voluptatibus cupiditate iste. Qui suscipit qui ea voluptates aut. Voluptatem non voluptatem provident officiis dolores. Itaque delectus quaerat distinctio doloremque unde. Ea laborum ut repellendus enim cupiditate quaerat. Tempore dolore aliquam qui culpa ipsa.', '', 'https://loremflickr.com/840/580/hotels/all?random=28', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(17, 'Nobis.', 268, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Numquam reprehenderit non a ex et eius laborum. Aut pariatur consequuntur voluptas quos repellat assumenda. Possimus sint quas laborum porro reiciendis unde non. Dolores debitis aliquam ipsa occaecati facilis. Dolorem molestiae laborum tempore nihil quaerat labore expedita et. Earum eaque aut quibusdam.', '', 'https://loremflickr.com/840/580/hotels/all?random=42', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(18, 'Voluptatem eaque.', 476, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Voluptate qui delectus exercitationem. Excepturi odio ut voluptatem impedit esse. Aut ex voluptatem vel sunt illo. Quaerat autem aut eos quae. A quis laboriosam doloremque assumenda. Quisquam saepe delectus iste error porro. Totam quo non eum aut reprehenderit ipsa ex. Eum consequatur omnis et neque similique quaerat et. Eum non vitae enim officia cupiditate.', '', 'https://loremflickr.com/840/580/hotels/all?random=19', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 2),
(19, 'Quia.', 466, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Enim debitis accusantium adipisci. Corrupti a doloremque blanditiis. Numquam numquam voluptatem explicabo eos sed. Omnis ut perspiciatis voluptatem voluptas et suscipit. Exercitationem accusamus sed ipsam est facilis et. Corporis dolores quo aut rerum aut. Distinctio magni perferendis nesciunt pariatur quas maxime rerum. Aliquam nulla optio cum et omnis sequi est molestiae.', '', 'https://loremflickr.com/840/580/hotels/all?random=14', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(20, 'Eos.', 407, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Omnis fuga dolor dignissimos qui velit alias. Veritatis vel labore et qui excepturi cum. Animi repellat ipsum modi dolores et aut. Delectus fuga consequuntur non minima suscipit accusantium consequatur. Accusantium minima magnam voluptas provident distinctio non distinctio cupiditate. Quis numquam quas quo qui.', '', 'https://loremflickr.com/840/580/hotels/all?random=4', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 6),
(21, 'Minima fugiat.', 304, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Id ut quidem consequatur ut. Hic totam eum dolores recusandae hic quas tempora. Assumenda ut ut odio nostrum sint soluta. Magni explicabo maiores architecto repudiandae est exercitationem quia. Laborum libero dolores dolores nemo. Delectus tempore quia et nemo accusamus voluptas sunt.', '', 'https://loremflickr.com/840/580/hotels/all?random=48', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(22, 'Praesentium.', 626, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Dolores eaque beatae minus corrupti alias. Nam nostrum neque voluptatibus modi quo eum ut perspiciatis. Rerum voluptatum est laboriosam quidem voluptates at. Consequatur eligendi tempora fugiat cum autem. Blanditiis quisquam et iste aut eos ut fuga earum. Excepturi magnam consectetur est dicta. Est facilis nisi est in id et dolores. Voluptate eveniet pariatur et aspernatur culpa. Voluptate impedit earum architecto ut. Ut animi doloremque iure iusto.', '', 'https://loremflickr.com/840/580/hotels/all?random=21', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 8),
(23, 'Eveniet ullam.', 767, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Quo in consectetur ea alias odit voluptas. Architecto nemo qui rem sed architecto quo. Rerum sunt qui laborum vel dolorum voluptatem error placeat. Ut rerum aut quia similique. Dolores qui enim incidunt quasi qui reprehenderit ad. Praesentium quis recusandae sit dignissimos totam. Delectus dolor eaque consequatur in. Enim voluptates ipsa sed officiis ad voluptas temporibus. Et aut ullam animi. In velit reiciendis aut unde.', '', 'https://loremflickr.com/840/580/hotels/all?random=35', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 6),
(24, 'Quas.', 379, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nam consequatur debitis voluptatem dignissimos. Ex qui labore nihil ad. Molestiae veniam corrupti quia repellat eos nihil harum ea. Atque consequatur sit non quos eveniet. Nulla voluptas exercitationem molestiae quidem suscipit autem vitae nisi. Harum voluptatem similique voluptates autem dolores. Qui voluptas facilis et consequuntur molestiae. Sed ducimus nulla voluptates qui quas. Omnis recusandae soluta odit eum ratione animi. Quidem libero voluptatem ea porro sequi et.', '', 'https://loremflickr.com/840/580/hotels/all?random=35', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(25, 'Error.', 10, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Unde iste exercitationem debitis in. Officiis voluptatem et cum sequi fuga officia. Labore maxime consectetur qui eaque. Molestias voluptatem qui provident. Neque consequatur impedit quam dolorum pariatur aliquam. Voluptatem ut sunt assumenda iure tenetur dolorem beatae porro. Consequatur placeat saepe dicta dignissimos. Iure doloremque nostrum deserunt doloremque provident. Hic voluptas eos vel. Voluptatum vitae harum voluptatibus nihil.', '', 'https://loremflickr.com/840/580/hotels/all?random=40', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(26, 'Rerum.', 718, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nam distinctio dolorum dolor id nihil libero sequi. Error consequatur ullam iste eum explicabo quidem. Architecto ullam libero sed quos quis non. Eos sit laudantium laboriosam architecto eligendi pariatur molestias. Nisi quam earum magnam qui eum. Voluptatem repudiandae laborum illo corporis placeat. Recusandae corrupti qui sit veritatis rerum quas.', '', 'https://loremflickr.com/840/580/hotels/all?random=40', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(27, 'Eos.', 366, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Ad velit nulla qui. Explicabo ex inventore qui. Sunt ipsum voluptatibus beatae enim est. Quisquam dolorem odio culpa molestias et nobis eveniet. At neque libero vel quia. Odio illum et eaque velit cupiditate quo in. Et quis sit aut et quas rem voluptatem quisquam.', '', 'https://loremflickr.com/840/580/hotels/all?random=26', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(28, 'Maxime.', 507, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Eos sequi aut aut vel natus cumque impedit. Modi qui eius eligendi vel aut. Quod quaerat dignissimos blanditiis reprehenderit quaerat. Ipsam tempore ratione quo consectetur eveniet. Modi minus qui perspiciatis et qui rerum. Magnam excepturi nesciunt et. Ea at deleniti ipsam aut sint praesentium repellat. Dolores quos est porro sit reprehenderit cum. Maxime aut autem modi impedit quae. Doloremque ex doloribus dolorem in sit dignissimos et.', '', 'https://loremflickr.com/840/580/hotels/all?random=12', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(29, 'Aut ducimus.', 231, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Aliquam voluptates excepturi ipsam ex. Omnis quibusdam voluptatem sunt molestias. Id et quis et laboriosam dolorem qui ab. Inventore ipsam eveniet aut. Natus nam quisquam consequatur. In ea laborum beatae. Ad iure sit perspiciatis iusto iste. Praesentium numquam qui molestias eos reprehenderit aut aut. Voluptates rerum facilis maiores tempore et omnis.', '', 'https://loremflickr.com/840/580/hotels/all?random=39', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 2),
(30, 'Vel.', 35, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nesciunt delectus soluta qui dolorum nulla. Sit sint et laudantium dolorum. Voluptates illo culpa sapiente aut consequatur. Quis et voluptatum voluptas inventore voluptatem quibusdam dolores minima. Nihil aut debitis sit.', '', 'https://loremflickr.com/840/580/hotels/all?random=27', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 1),
(31, 'Est nesciunt.', 796, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Repudiandae incidunt eius consequatur occaecati autem. Consectetur tenetur quod aut architecto facere et pariatur. Aut quidem velit assumenda nihil voluptas inventore sunt. Rerum explicabo aliquid incidunt eligendi deserunt sunt. A omnis minima qui. Debitis commodi voluptas illum dignissimos eaque. Aut voluptates officia fuga. Necessitatibus et iusto voluptate pariatur quo repellendus quo.', '', 'https://loremflickr.com/840/580/hotels/all?random=27', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(32, 'Dolorem soluta.', 506, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Et in quae nihil voluptas ea beatae sunt rem. Id eaque repellat illum dolores amet omnis sint alias. Voluptates et dolorem qui mollitia. Mollitia ab id sint tempore. Fugit vel voluptatum dolorem iusto et. Eos blanditiis sit eum. Dignissimos optio assumenda iste veniam aut. Vitae repudiandae suscipit eos autem et.', '', 'https://loremflickr.com/840/580/hotels/all?random=2', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(33, 'Vitae aut.', 994, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Est eos ad doloremque id est repellat. Ducimus est quis exercitationem qui ad tempora tempore. Exercitationem fuga iusto enim nam animi natus hic. Ipsa ut quos ex pariatur unde molestias odit. Quibusdam delectus blanditiis eum ullam.', '', 'https://loremflickr.com/840/580/hotels/all?random=7', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 7),
(34, 'Incidunt a.', 460, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Est ut quis non similique delectus. Non maiores labore fugiat cumque similique omnis adipisci sunt. Aut sit voluptas repellat ex reprehenderit repellat id. Animi quae dolorem commodi harum. Et magnam fugit sit harum quia ea et. Magni labore deleniti sunt quis voluptas eos. Qui consequatur tempora aspernatur voluptatem illo. Similique laborum voluptate id nulla.', '', 'https://loremflickr.com/840/580/hotels/all?random=15', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 6),
(35, 'Accusantium deleniti.', 532, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Quo aspernatur placeat cumque amet. Assumenda quisquam rerum minima consectetur animi dicta. Quasi aut ullam beatae hic consequatur quos pariatur sed. Distinctio nemo est consequatur rem aut. Velit doloremque qui hic velit et perferendis.', '', 'https://loremflickr.com/840/580/hotels/all?random=19', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 4),
(36, 'Adipisci placeat.', 996, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Ipsa laboriosam quis dolorem officiis quibusdam illum earum. Eligendi enim voluptates distinctio dolore. Ut voluptatem eum omnis deserunt voluptas et. Aliquam ullam rem voluptatum quis non harum occaecati. Et voluptas qui nam ullam dignissimos explicabo. Consequuntur sunt necessitatibus expedita ab est qui inventore. Dolores non beatae et. Esse optio quaerat blanditiis labore. Delectus quae quisquam rerum autem soluta.', '', 'https://loremflickr.com/840/580/hotels/all?random=32', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 6),
(37, 'Nam.', 839, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Soluta illo est aspernatur excepturi. Qui incidunt recusandae quia quo enim nihil. Modi nobis labore esse maiores. Officia necessitatibus eum voluptatem numquam. Facere mollitia corporis dignissimos maiores. Blanditiis eligendi a aut omnis velit minima. Nemo impedit ut tempore totam quidem sint quaerat nihil.', '', 'https://loremflickr.com/840/580/hotels/all?random=39', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 1),
(38, 'Molestiae.', 622, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Ut quasi vero excepturi excepturi autem sunt. Maiores corporis ea et consequatur dolorem architecto optio qui. Est blanditiis voluptas voluptatem quas. Non totam illo rem sit reprehenderit. Facilis quisquam quis aspernatur illum dolor. Magni veniam est dolore.', '', 'https://loremflickr.com/840/580/hotels/all?random=45', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9),
(39, 'Consequuntur non.', 258, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Blanditiis dolores quo distinctio voluptates. Facere ut et ab dolorum veniam quia. Qui sint et nobis quia repudiandae dolores dolores ipsum. Iure eum non recusandae quod eius. Ut corrupti et maxime sit quia est. Laudantium iusto debitis est tempore. Optio tempore quia id autem consequuntur eum. In consequuntur officia illo. Enim vel quisquam et voluptatem. Ipsa autem doloribus placeat nesciunt repellendus.', '', 'https://loremflickr.com/840/580/hotels/all?random=29', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 5),
(40, 'Recusandae.', 655, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Et facere ut qui expedita sunt veritatis odio. Sit et eaque iusto fuga est. Adipisci ducimus illum non est et. Delectus mollitia repellendus corrupti ex reiciendis blanditiis. Rem assumenda possimus molestiae doloremque id in.', '', 'https://loremflickr.com/840/580/hotels/all?random=25', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(41, 'Accusantium.', 330, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nulla est sit fuga sunt vitae. Numquam rerum enim voluptas nam reprehenderit dolor. Dolorem reprehenderit minus animi iure excepturi autem ut. Et ad molestiae quibusdam soluta voluptatem laboriosam. Adipisci deleniti vel animi est ad.', '', 'https://loremflickr.com/840/580/hotels/all?random=30', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 7),
(42, 'Sint commodi.', 561, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Exercitationem alias vel veniam sed perferendis omnis similique. Excepturi maxime sint ducimus maxime. Nemo repellat id sint et tempora vel. Et sunt quis porro et aut architecto. Sit minus qui laborum quo assumenda quibusdam explicabo. Sed similique dolor rem explicabo itaque maiores. Culpa numquam commodi sed porro. Pariatur ipsum sed non non vitae ut maiores cupiditate.', '', 'https://loremflickr.com/840/580/hotels/all?random=30', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 8),
(43, 'Explicabo eveniet.', 707, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nulla est quis doloribus architecto aut quam cumque ea. Pariatur aut voluptatem doloribus aliquam sit repellat. Doloremque ab beatae exercitationem quia quae quaerat aut. Vero est molestiae impedit ad. Quis aspernatur cumque asperiores dolores tempora possimus ut. Est et dolorum aperiam asperiores non ut. Dolorem at qui rerum qui provident voluptas. Voluptas ut doloremque accusamus eos commodi. Quidem non quis ducimus officiis praesentium in nam nobis.', '', 'https://loremflickr.com/840/580/hotels/all?random=11', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(44, 'Eum amet.', 255, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Vel iure odio fuga. Tempora est maiores veritatis at minima velit officiis. Harum fugit labore dolor illum numquam. Cupiditate quia fugit ipsam mollitia. Dolorum et quo optio eum. Cupiditate dolores consequatur ducimus.', '', 'https://loremflickr.com/840/580/hotels/all?random=27', 1, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 2),
(45, 'Nostrum.', 465, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Magnam dolores ipsam provident. Itaque eum optio odit ipsam. Sed voluptatibus molestias minima sit adipisci architecto. Et iure ut quia non sit officiis dicta. Dolor voluptas et nam et molestias. Numquam officiis quae non nesciunt ea temporibus labore.', '', 'https://loremflickr.com/840/580/hotels/all?random=4', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 8),
(46, 'Sequi et.', 952, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Suscipit nobis optio aut qui aliquid et quia qui. Quas animi quia debitis distinctio qui numquam quis. Et ipsam labore consequatur ea ut. Qui quod qui quo recusandae aliquam quisquam aut. Molestiae quis harum ea minus occaecati. Corporis explicabo laborum illo tempore aut saepe exercitationem. Qui quae illum qui quae et pariatur consectetur totam. Fuga aperiam eos sit itaque occaecati inventore deserunt.', '', 'https://loremflickr.com/840/580/hotels/all?random=49', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 4),
(47, 'Explicabo.', 976, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Repellendus voluptatibus neque temporibus asperiores. Voluptate qui sapiente voluptatem deleniti quae. Qui tenetur non facilis maxime magni dolores. Accusamus magnam odio nam nihil qui enim voluptas. Velit eius accusantium ullam quis consequatur. Ab exercitationem asperiores autem esse optio. Esse sapiente non ut occaecati est odit aliquam. Velit autem at ipsam voluptate. Dolorem ut necessitatibus ducimus reiciendis optio neque.', '', 'https://loremflickr.com/840/580/hotels/all?random=42', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 2),
(48, 'Nemo.', 364, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Veritatis saepe qui aliquam suscipit modi laboriosam. Vitae ut alias quod pariatur. Aut a tenetur omnis dolore tempore inventore beatae. Non voluptas sapiente velit. Est voluptas cum quam veritatis officia beatae. In voluptates labore quis vero. Culpa iusto alias amet sed aut molestiae. Iusto expedita magni magni est enim maiores officia sequi.', '', 'https://loremflickr.com/840/580/hotels/all?random=6', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 3),
(49, 'Soluta maxime.', 672, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Nesciunt animi molestiae non eos omnis est. Fugiat ea deserunt aut et ipsam quisquam ad. Tempore in dolor ut placeat. Explicabo sint quas labore accusantium enim tenetur officia. Maxime laboriosam voluptatum sit rerum fugiat deleniti. Incidunt dolores et soluta et iure.', '', 'https://loremflickr.com/840/580/hotels/all?random=23', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 0),
(50, 'Debitis voluptas.', 539, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', 'Dolorem dolores explicabo ut eius quia. Numquam quibusdam accusamus adipisci nostrum. Sequi aliquam consequuntur doloremque numquam excepturi nam et similique. Quia suscipit fuga dolor consequatur. Cupiditate fugiat non rem et fugit sint. Atque molestiae labore eveniet corrupti possimus commodi rerum. Sed odit molestiae et officiis distinctio nam. Omnis odit repellendus vero excepturi ab et. Qui velit nostrum nihil et enim. Qui et magni ducimus enim sit quibusdam velit ut.', '', 'https://loremflickr.com/840/580/hotels/all?random=46', 2, '2021-05-08 12:00:56', '2021-05-08 12:00:56', 9);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_16_085749_create_settings_table', 1),
(5, '2020_06_16_094101_create_activity_log_table', 1),
(6, '2020_06_16_094554_create_permission_tables', 1),
(7, '2020_06_16_100611_add_profile_fields_to_users_table', 1),
(8, '2020_07_10_153635_create_categories_table', 1),
(9, '2020_07_10_153700_create_posts_table', 1),
(10, '2021_04_27_222206_create_hotels_table', 1),
(11, '2021_04_27_222557_create_cars_table', 1),
(12, '2021_04_27_222720_create_guides_table', 1),
(13, '2021_04_27_230012_create_book_tour_table', 1),
(14, '2021_04_27_230349_create_book_hotel_table', 1),
(15, '2021_04_27_230950_create_book_car_table', 1),
(16, '2021_04_27_234204_create_tours_table', 1),
(17, '2021_04_30_060230_add_column_to_hotels', 1),
(18, '2021_04_30_065125_add_column_to_cars', 1),
(19, '2021_04_30_163330_add_column_to_book_tour', 1),
(20, '2021_05_03_011723_create_rating_tour_table', 1),
(21, '2021_05_03_023805_add_column_to_rating_tour', 1),
(22, '2021_05_03_035241_create_rating_hotel_table', 1),
(23, '2021_05_03_041112_create_rating_car_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(3, 'App\\User', 1),
(4, 'App\\User', 1),
(5, 'App\\User', 1),
(6, 'App\\User', 1),
(7, 'App\\User', 1),
(8, 'App\\User', 1),
(9, 'App\\User', 1),
(10, 'App\\User', 1),
(11, 'App\\User', 1),
(12, 'App\\User', 1),
(13, 'App\\User', 1),
(14, 'App\\User', 1),
(15, 'App\\User', 1),
(16, 'App\\User', 1),
(17, 'App\\User', 1),
(18, 'App\\User', 1),
(19, 'App\\User', 1),
(20, 'App\\User', 1),
(21, 'App\\User', 1),
(22, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'update-settings', 'web', '2021-05-08 12:00:30', '2021-05-08 12:00:30'),
(2, 'view-user', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(3, 'create-user', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(4, 'update-user', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(5, 'destroy-user', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(6, 'view-role', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(7, 'view-permission', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(8, 'create-role', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(9, 'create-permission', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(10, 'update-role', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(11, 'update-permission', 'web', '2021-05-08 12:00:31', '2021-05-08 12:00:31'),
(12, 'destroy-role', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(13, 'destroy-permission', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(14, 'view-activity-log', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(15, 'view-category', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(16, 'create-category', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(17, 'update-category', 'web', '2021-05-08 12:00:32', '2021-05-08 12:00:32'),
(18, 'destroy-category', 'web', '2021-05-08 12:00:33', '2021-05-08 12:00:33'),
(19, 'view-post', 'web', '2021-05-08 12:00:33', '2021-05-08 12:00:33'),
(20, 'create-post', 'web', '2021-05-08 12:00:33', '2021-05-08 12:00:33'),
(21, 'update-post', 'web', '2021-05-08 12:00:34', '2021-05-08 12:00:34'),
(22, 'destroy-post', 'web', '2021-05-08 12:00:34', '2021-05-08 12:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_body`, `featured_image`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Fugit sapiente quia earum qui praesentium sed.', 'Placeat deserunt ullam exercitationem quia. Nemo ratione rerum sequi.', 'https://loremflickr.com/840/580/reading/all?random=18', 1, 1, 1, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(2, 'Velit omnis deserunt qui neque ex alias tenetur.', 'Illum ad ut tempora quas illo. Aliquid adipisci reiciendis voluptatem voluptates similique reiciendis dolore. Ullam consequuntur asperiores quia ut alias ratione aliquam. Quis eligendi aliquam ratione libero maiores doloremque incidunt autem.', 'https://loremflickr.com/840/580/reading/all?random=11', 1, 2, 1, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(3, 'Sapiente quod pariatur magnam voluptatum sit debitis ut alias.', 'Vel incidunt consequatur ipsam unde beatae. Consequatur esse et veritatis rerum.', 'https://loremflickr.com/840/580/reading/all?random=9', 1, 2, 2, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(4, 'Officiis rerum quia rem iure.', 'Voluptate dolor blanditiis fuga ut. Nulla ab nisi quaerat ipsum ea iusto. Cumque perferendis possimus aliquid possimus doloremque est.', 'https://loremflickr.com/840/580/reading/all?random=19', 1, 3, 2, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(5, 'Error exercitationem voluptates fugiat nobis nihil illo.', 'Nihil hic autem quis et incidunt neque maxime sit. Ea rerum quia eaque ut enim ut minima. Quae velit expedita pariatur voluptatum est eligendi. Consequuntur ad aut necessitatibus molestiae odio illo quia vel.', 'https://loremflickr.com/840/580/reading/all?random=3', 1, 1, 1, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(6, 'Voluptatem ut odio officia et eligendi voluptatibus.', 'In porro impedit laudantium aut cumque natus. Explicabo dolorem perspiciatis excepturi ut. Minus est culpa est est. Sit quibusdam iste sit distinctio qui.', 'https://loremflickr.com/840/580/reading/all?random=38', 1, 1, 1, '2021-05-08 12:00:46', '2021-05-08 12:00:46'),
(7, 'Dignissimos consectetur aspernatur sunt sed a.', 'Accusamus sit ad et voluptas eveniet. Voluptates qui recusandae sed.', 'https://loremflickr.com/840/580/reading/all?random=10', 1, 2, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(8, 'Aut sed doloribus enim numquam.', 'Fuga consequatur quia assumenda sed beatae labore. Qui mollitia et tempore quia eveniet eum sit. Assumenda accusantium quo animi dolores rerum sed.', 'https://loremflickr.com/840/580/reading/all?random=33', 1, 2, 1, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(9, 'Corrupti tenetur saepe incidunt aut omnis commodi.', 'Corrupti alias consectetur non sunt. Officiis iure adipisci ipsa labore. Ipsa sed qui voluptatem dolor dolorem.', 'https://loremflickr.com/840/580/reading/all?random=29', 1, 4, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(10, 'Nihil rerum omnis expedita quisquam eius.', 'Quas voluptatibus voluptates unde laboriosam labore maiores eius. Non odio aliquam error quod dolor nihil quo voluptate. Est nemo quae aut reiciendis enim.', 'https://loremflickr.com/840/580/reading/all?random=37', 1, 2, 1, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(11, 'Et accusamus sint tempora deleniti repudiandae.', 'Corporis corrupti nemo dolorem possimus sit quia. Eos praesentium tenetur et incidunt est aliquam. Molestias est ab repudiandae quo error aut. Molestiae et incidunt illum voluptatum quo in et. Assumenda voluptas et quod et ut.', 'https://loremflickr.com/840/580/reading/all?random=11', 1, 5, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(12, 'Dignissimos qui et totam facere dignissimos architecto repellat.', 'Et animi omnis sunt eligendi labore eveniet omnis. Tempora fugiat dolorem et incidunt eaque quam error. Voluptas unde id et. Doloribus repellendus est similique suscipit omnis. Omnis placeat id quasi nisi.', 'https://loremflickr.com/840/580/reading/all?random=13', 1, 1, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(13, 'Est et sunt velit in.', 'Modi eius quibusdam illo nobis rerum. Aperiam repellendus est nemo perspiciatis. Dignissimos consequatur fugiat rerum doloremque accusantium modi quasi natus.', 'https://loremflickr.com/840/580/reading/all?random=23', 1, 3, 1, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(14, 'Doloribus sapiente laboriosam aliquam maxime dolores quod aut.', 'Fuga voluptatibus eaque consequatur. Itaque et odit dicta numquam est ut. Maxime et optio quia consequuntur quia magnam.', 'https://loremflickr.com/840/580/reading/all?random=21', 1, 3, 1, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(15, 'Nam sit distinctio nihil qui ea.', 'Ut voluptatem qui quisquam velit officia. Deserunt omnis eveniet totam itaque. Culpa iste sequi debitis voluptatem repellendus.', 'https://loremflickr.com/840/580/reading/all?random=20', 1, 4, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(16, 'Et atque commodi esse corrupti qui.', 'Nisi molestias perspiciatis aut delectus laborum debitis ipsa. Non fugiat voluptate sed dolorum. Aliquam minima sunt et aut quia sint suscipit praesentium.', 'https://loremflickr.com/840/580/reading/all?random=14', 1, 5, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(17, 'Veniam corporis repellendus vel qui.', 'Et excepturi in maxime exercitationem autem fugiat. Et dolores autem debitis reiciendis eligendi. Recusandae atque voluptatem repudiandae nisi. Officiis rem in aliquid impedit incidunt eveniet.', 'https://loremflickr.com/840/580/reading/all?random=32', 1, 5, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(18, 'Enim quod eos repellendus aut.', 'Harum cumque omnis sed perspiciatis. Aperiam eveniet possimus voluptas quia recusandae. Voluptates ratione vitae rerum quia eum ratione.', 'https://loremflickr.com/840/580/reading/all?random=49', 1, 2, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(19, 'Accusamus est quisquam cumque libero cupiditate sunt quo.', 'Repellat ipsam aut ipsum qui nesciunt. Facilis explicabo quisquam illum nihil voluptatibus. Autem quis veniam laboriosam consequuntur in quis qui nobis.', 'https://loremflickr.com/840/580/reading/all?random=49', 1, 1, 2, '2021-05-08 12:00:47', '2021-05-08 12:00:47'),
(20, 'Aliquam dicta architecto velit.', 'Aut odio rem omnis quia accusantium libero aperiam. Ad consequuntur sunt omnis id aut ad aut earum. Laborum ipsam sed eveniet sint distinctio.', 'https://loremflickr.com/840/580/reading/all?random=31', 1, 2, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(21, 'Culpa voluptate saepe sit maxime est.', 'Iure ea et aliquid maiores itaque. Inventore rem est voluptatem. Quibusdam similique blanditiis soluta nulla quo. Eligendi corporis et dignissimos et nihil tempore.', 'https://loremflickr.com/840/580/reading/all?random=8', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(22, 'Molestiae ut omnis sit corrupti dolore aliquam et a.', 'Voluptatem laboriosam ab in officiis repellat odit. Nisi et nemo dolores illo ea temporibus fuga. Tempore quo autem soluta nostrum.', 'https://loremflickr.com/840/580/reading/all?random=44', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(23, 'Cupiditate molestiae est delectus sit eum necessitatibus animi.', 'Et sint quidem quis eaque vero ut quos. Corrupti a quis dolorem et assumenda voluptas omnis. Velit quia in nisi velit doloremque perferendis sint.', 'https://loremflickr.com/840/580/reading/all?random=6', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(24, 'Aliquam maxime veritatis doloremque ad nemo adipisci.', 'Nihil vel est ducimus. Maxime vel necessitatibus architecto adipisci. Nihil delectus qui ullam sit et aut omnis quia. Animi doloribus consequatur deleniti ex necessitatibus et ut.', 'https://loremflickr.com/840/580/reading/all?random=5', 1, 3, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(25, 'Sapiente eum velit odio laudantium.', 'Minima in architecto quis. Doloribus voluptate rerum quam adipisci. Et exercitationem nihil aut et qui ab. Culpa omnis rem hic rem quibusdam possimus. Unde qui est est voluptatem vitae nobis quam.', 'https://loremflickr.com/840/580/reading/all?random=30', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(26, 'Adipisci omnis est dolor ad nostrum qui.', 'Est libero ut maxime exercitationem in est. Aperiam accusamus beatae accusantium consectetur earum. Enim qui quod sed voluptatem corporis fuga. Rem ut hic repellat doloremque.', 'https://loremflickr.com/840/580/reading/all?random=49', 1, 1, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(27, 'Error accusamus asperiores aspernatur ut perspiciatis quisquam quia.', 'Assumenda et aperiam dolorum commodi blanditiis odio quo. Ipsam rerum animi modi ut quia et. Cumque dolores amet est ut.', 'https://loremflickr.com/840/580/reading/all?random=19', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(28, 'Fugiat sit ipsam exercitationem et recusandae.', 'Sequi consequatur omnis id ipsam qui praesentium corporis. Blanditiis eaque nostrum molestiae nihil velit qui aut. Odit cum magnam rem omnis velit mollitia. Ipsam esse dolore mollitia aut non rerum qui.', 'https://loremflickr.com/840/580/reading/all?random=39', 1, 5, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(29, 'Non ad vitae eum ipsam labore laborum.', 'Porro rem sed eligendi molestiae. Distinctio qui nesciunt vitae incidunt debitis sunt veniam qui. Placeat necessitatibus soluta expedita labore natus dolor et.', 'https://loremflickr.com/840/580/reading/all?random=32', 1, 2, 1, '2021-05-08 12:00:48', '2021-05-08 12:00:48'),
(30, 'Ut reprehenderit eaque explicabo quisquam rem eum voluptatem aspernatur.', 'Cum soluta officia velit molestias possimus id. Sed laudantium aut omnis qui adipisci excepturi.', 'https://loremflickr.com/840/580/reading/all?random=10', 1, 5, 2, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(31, 'Repellendus aut in voluptas eum.', 'Et ea assumenda voluptatem sed dolorem repudiandae corporis praesentium. Nihil vitae consequatur necessitatibus hic consectetur ex. At sit eos consequatur deleniti aspernatur. Ratione porro et et veritatis.', 'https://loremflickr.com/840/580/reading/all?random=22', 1, 2, 1, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(32, 'Soluta nostrum consequuntur voluptatem nesciunt accusamus quae tenetur ad.', 'Sint itaque vel natus. Voluptates qui quaerat aperiam sed et ea. Consectetur beatae at dolorum sit ea dolores.', 'https://loremflickr.com/840/580/reading/all?random=22', 1, 1, 2, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(33, 'Ut fugiat est ea voluptatem quasi qui rerum.', 'Quis aut odio quas consequatur. Rerum tenetur vero dignissimos. Rem quia placeat eius architecto deserunt.', 'https://loremflickr.com/840/580/reading/all?random=47', 1, 3, 1, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(34, 'Facilis sit praesentium ut.', 'Ratione saepe porro iusto sit et rerum dolores. Repellat tenetur modi quis inventore et. Perspiciatis reiciendis corrupti debitis neque est magni nesciunt.', 'https://loremflickr.com/840/580/reading/all?random=17', 1, 3, 1, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(35, 'Neque deleniti ut eius dolor culpa porro et.', 'Omnis dolorem quidem laborum aut laudantium. Dolorum velit cupiditate eaque voluptas. Ullam et expedita nemo.', 'https://loremflickr.com/840/580/reading/all?random=18', 1, 3, 2, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(36, 'Sunt nostrum est minus perspiciatis ipsum fugit.', 'Sed aperiam unde consequatur quia ipsa. Autem eius similique ipsa veritatis maiores aut nemo natus. Nam et sit voluptate temporibus debitis illum in. Tempore sit natus quia numquam et quia nihil soluta.', 'https://loremflickr.com/840/580/reading/all?random=48', 1, 2, 2, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(37, 'Sit commodi quo voluptas eveniet.', 'Maxime voluptas tempora deserunt modi ipsa. Nesciunt distinctio est unde sapiente error eaque. Inventore alias sit aut. Et ipsa omnis culpa veritatis sed.', 'https://loremflickr.com/840/580/reading/all?random=42', 1, 3, 1, '2021-05-08 12:00:49', '2021-05-08 12:00:49'),
(38, 'Aut voluptates et sit ut ex.', 'Nihil rerum ad et distinctio doloribus repellat. Eligendi expedita molestias ab voluptatibus cum porro dolores.', 'https://loremflickr.com/840/580/reading/all?random=35', 1, 5, 2, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(39, 'Voluptas excepturi autem facilis sed perspiciatis cum.', 'Praesentium eos nihil sed nobis qui distinctio eos. Est aut distinctio est molestiae in. Aliquam et animi earum culpa consequuntur odit voluptatem. Porro sint enim distinctio voluptate nulla modi.', 'https://loremflickr.com/840/580/reading/all?random=5', 1, 2, 1, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(40, 'Est totam aut odit.', 'Aut sapiente debitis libero tempora veniam necessitatibus. Deleniti ut libero debitis aperiam ea ut. Dolorum natus unde ipsam assumenda consequatur. Commodi et iusto et dolorem incidunt animi officiis.', 'https://loremflickr.com/840/580/reading/all?random=47', 1, 4, 1, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(41, 'Natus rerum et laboriosam tenetur.', 'Nulla sunt molestiae voluptates magni quidem voluptatem. Rerum nemo quia molestiae dicta. Est eum accusantium sit unde eum molestiae.', 'https://loremflickr.com/840/580/reading/all?random=24', 1, 1, 1, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(42, 'Natus quam rerum et veritatis sed et error.', 'Et quaerat ut explicabo vitae. Amet quo dolorem nostrum voluptatem inventore sunt. Et ab sit est minus facere voluptas inventore. Ipsum iure et ea.', 'https://loremflickr.com/840/580/reading/all?random=1', 1, 2, 2, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(43, 'Dicta voluptas quod qui nesciunt ea atque.', 'Voluptatum sapiente laborum inventore dolore. Error quo eum possimus fuga magnam. Incidunt illum aut aut autem aspernatur aperiam iusto.', 'https://loremflickr.com/840/580/reading/all?random=25', 1, 3, 1, '2021-05-08 12:00:50', '2021-05-08 12:00:50'),
(44, 'Ipsa ut iusto mollitia dicta qui ut.', 'Beatae quia saepe fugit. Omnis repellat illo provident quo. Tenetur non ea numquam voluptatibus.', 'https://loremflickr.com/840/580/reading/all?random=11', 1, 2, 2, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(45, 'Nihil accusantium praesentium quidem doloribus enim.', 'Sapiente illo omnis sapiente sed reprehenderit illo repellendus. Iure et est placeat excepturi fugit et. Repellendus dolores quaerat omnis odio dolorem aut numquam.', 'https://loremflickr.com/840/580/reading/all?random=18', 1, 1, 1, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(46, 'Voluptas occaecati animi repudiandae.', 'Qui non sed dignissimos sed iusto id. Qui blanditiis dolore ea non. Alias placeat debitis quas numquam eaque. Saepe veniam rerum aut error fugit ea odit.', 'https://loremflickr.com/840/580/reading/all?random=50', 1, 1, 2, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(47, 'Praesentium et quod corrupti reprehenderit.', 'Aperiam ut ducimus non sapiente sit blanditiis et. Eos expedita pariatur et qui expedita veritatis et sunt. Nesciunt commodi iure molestiae sint omnis facilis est. Sit voluptates laudantium rem et non voluptatum qui. Est inventore dolore aut velit labore.', 'https://loremflickr.com/840/580/reading/all?random=1', 1, 5, 2, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(48, 'Pariatur rem hic non consequuntur.', 'Dolores aut repudiandae accusantium vel dolorum. Neque sapiente quia ea. Officia qui delectus ut veniam laborum inventore.', 'https://loremflickr.com/840/580/reading/all?random=49', 1, 2, 2, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(49, 'Ab sint at voluptas reiciendis repellat sit.', 'Ut eum quis est rerum nihil est aut. Dolorum voluptate harum eveniet fuga corrupti in laborum. Architecto soluta libero nobis assumenda. Aspernatur soluta eaque qui.', 'https://loremflickr.com/840/580/reading/all?random=14', 1, 4, 2, '2021-05-08 12:00:51', '2021-05-08 12:00:51'),
(50, 'Eveniet tenetur vero quasi culpa aliquid facere.', 'Consequatur necessitatibus quasi aliquam. Nihil ut ratione perferendis voluptatem. Sit fuga quia animi possimus quia.', 'https://loremflickr.com/840/580/reading/all?random=27', 1, 5, 1, '2021-05-08 12:00:51', '2021-05-08 12:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `rating_car`
--

CREATE TABLE `rating_car` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_hotel`
--

CREATE TABLE `rating_hotel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_tour`
--

CREATE TABLE `rating_tour` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_tour`
--

INSERT INTO `rating_tour` (`id`, `user_id`, `tour_id`, `rating`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 3, 'dfx', '2021-05-08 12:10:43', '2021-05-08 12:10:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2021-05-08 12:00:34', '2021-05-08 12:00:34'),
(2, 'user', 'web', '2021-05-08 12:00:44', '2021-05-08 12:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(19, 2),
(20, 1),
(21, 1),
(22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'company_name', 'Minya Tour'),
(2, 'company_email', 'help@email.com'),
(3, 'company_phone', '01065165640'),
(4, 'company_address', 'This is Our Description'),
(5, 'company_city', 'Minya'),
(6, 'company_logo', '/storage/files/1/minyalogo.png'),
(7, 'company_currency_symbol', 'EGP'),
(8, 'record_per_page', '10'),
(9, 'default_role', '2'),
(10, 'max_login_attempts', '3'),
(11, 'lockout_delay', '2'),
(12, '_token', 'guXsW2DYTkSkPQiyXabk5Qd2ZGAhEHDEwHP72GU7'),
(13, 'register_notification_email', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_price` int(11) NOT NULL,
  `tour_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `tour_review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tour_guide_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `tour_name`, `tour_price`, `tour_address`, `start_date`, `end_date`, `tour_review`, `tour_discount`, `tour_details`, `tour_image`, `user_id`, `tour_guide_id`, `created_at`, `updated_at`) VALUES
(2, 'Dolore in.', 7052, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '6', 'Minus est dolor quis impedit. Quam ut sit reprehenderit et. Assumenda et ipsa dolores illum quis voluptatem autem aut. Libero autem accusantium quidem et rerum. Repellendus et expedita nihil amet est magnam quod. Laboriosam nesciunt repellendus nihil quia expedita. Impedit ut quaerat labore ut. Accusantium ad et qui alias omnis accusamus autem corporis. Dolores voluptas quas deleniti hic quia minima. Laudantium perspiciatis explicabo et eum ipsam facere.', 'https://loremflickr.com/840/580/egypt,tour/all?random=22', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(3, 'Amet hic.', 7981, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '0', 'Odit est consequatur modi rerum exercitationem aut neque non. Cumque aut itaque numquam eos et nihil numquam. Officia ut perferendis soluta beatae. Ratione sint sit ipsum a ab iusto explicabo. Autem laborum aut iusto. Qui et soluta aspernatur nostrum et eos qui tempore. Voluptate in illo voluptate quo.', 'https://loremflickr.com/840/580/egypt,tour/all?random=25', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(4, 'Odit aliquid.', 7162, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '3', 'Qui asperiores provident ea omnis iusto eos. Officiis voluptatum est aperiam. Quisquam consequatur eaque aut ab. Doloribus pariatur molestiae et. Accusamus rerum nostrum nam dolorem aut. Dolore voluptas dolores aperiam non.', 'https://loremflickr.com/840/580/egypt,tour/all?random=8', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(5, 'Fuga sequi.', 8465, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '0', 'Et consequuntur numquam rerum commodi. Libero ab ducimus ducimus ex eaque. Adipisci sed fuga vel recusandae delectus. Soluta quae itaque debitis doloribus quam nulla. Nihil maxime quaerat doloremque consequatur dolor. Consequatur accusamus dolorem minima ipsa assumenda. Aut laudantium consequatur cupiditate. Quo necessitatibus quia sit dolorem animi est quisquam.', 'https://loremflickr.com/840/580/egypt,tour/all?random=25', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(6, 'Cumque.', 9191, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Esse similique rerum earum. Assumenda velit sint totam eum omnis distinctio. Deleniti voluptates repellendus facere non. A magni vel fuga incidunt id veritatis. Recusandae doloremque aut saepe laudantium eum a. Sapiente inventore et necessitatibus qui. Nulla est harum facere iure officiis. Nisi quia aut unde aliquid libero vel sed.', 'https://loremflickr.com/840/580/egypt,tour/all?random=24', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(7, 'Voluptas consequuntur.', 9409, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '1', 'Minus omnis explicabo omnis aut vel molestiae quos. Veniam maxime nobis labore ut. Ad laudantium aut rerum ut commodi. Aperiam veniam suscipit accusantium autem fugiat. Est rerum animi sit perferendis. Voluptas libero nobis officia autem.', 'https://loremflickr.com/840/580/egypt,tour/all?random=23', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(8, 'Dignissimos.', 2252, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Eligendi et blanditiis laborum corporis qui. Eius perferendis sunt dolorem voluptas aut quia. Id doloremque et et libero sint et quia. Nisi dolor rerum modi odit. Quo est veniam nemo sed et nesciunt. Mollitia ut aperiam sit quis tenetur voluptas. Occaecati provident debitis commodi aut quia exercitationem. Deserunt expedita soluta praesentium dolore libero praesentium.', 'https://loremflickr.com/840/580/egypt,tour/all?random=50', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(9, 'Culpa.', 6979, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '6', 'Voluptates quis placeat ut incidunt qui. Sapiente sed incidunt sequi excepturi fuga harum. Quia quia vel quis aperiam voluptate eum rerum enim. Corporis eos veniam dignissimos quo ipsa a. Blanditiis deleniti ut dignissimos. Est eius qui laborum incidunt accusamus odit. Repellat in quia et eius. Assumenda nihil magni ullam qui voluptatem possimus.', 'https://loremflickr.com/840/580/egypt,tour/all?random=32', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(10, 'Qui.', 4535, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Corrupti dolorem nulla nulla. Vel officiis eum necessitatibus animi est. Atque fuga dolores sint cupiditate quia voluptatem dicta cum. Voluptas fugiat ab suscipit autem rerum. Dolorem laudantium voluptatem in sapiente officia quia omnis. Minus vel pariatur eos sunt sed doloribus. Dolorem magni dolor asperiores quasi dolore eaque. Ipsam qui non enim adipisci.', 'https://loremflickr.com/840/580/egypt,tour/all?random=28', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(11, 'Placeat.', 9391, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '7', 'Quo eius quae perferendis earum assumenda. Atque distinctio eaque omnis omnis. Dicta expedita aut deleniti sit odio. Minima est facilis ab. Est quae molestias similique vel sit aut. Recusandae voluptatem et autem quae quo est iure. Necessitatibus quasi nesciunt itaque eos consectetur labore inventore hic. Ea unde omnis laudantium voluptas.', 'https://loremflickr.com/840/580/egypt,tour/all?random=32', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(12, 'Veritatis.', 4176, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Sed necessitatibus facere eaque libero voluptatem maiores quasi. Praesentium quos magni in nobis cum veritatis. Nulla at non minima quod. Doloribus vel incidunt velit ea. Voluptatem delectus totam eligendi in quia. Et et voluptas et. Perspiciatis maiores qui aperiam aut aut ea. Perspiciatis est id esse sequi neque.', 'https://loremflickr.com/840/580/egypt,tour/all?random=50', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(13, 'Totam ullam.', 6197, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Quis illum et error eaque dolorem sit natus. Non ducimus hic qui neque. Maxime voluptatem sit nihil doloribus quaerat. Iste corrupti eaque eos sint aut. Sed labore aut voluptate dolorum. Est nobis quod et voluptatem laudantium aperiam. Non perferendis ut tempora adipisci iure quasi. Est praesentium neque ipsam reiciendis molestiae est.', 'https://loremflickr.com/840/580/egypt,tour/all?random=37', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(14, 'Dolor molestiae.', 9001, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Dicta earum perspiciatis vel iusto quaerat magnam. Est dolore quaerat debitis ut. Doloremque voluptatem aut quasi. Quis itaque quis maiores et. Maxime quae et molestias. Quia magnam consequatur dolorem optio. Sit error eum omnis placeat veritatis. Numquam sint voluptatum et sit aut quibusdam. Totam et eveniet omnis harum et. Omnis sed velit eum molestias eum error.', 'https://loremflickr.com/840/580/egypt,tour/all?random=2', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(15, 'Mollitia repudiandae.', 9163, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '7', 'Sit delectus dicta mollitia et. Sed sapiente vel voluptas vel et id. Molestiae dolor enim illum cupiditate necessitatibus laboriosam impedit. Sint magni illum repudiandae perferendis amet omnis deserunt doloribus. Reiciendis harum sit accusantium vel officia ipsam.', 'https://loremflickr.com/840/580/egypt,tour/all?random=16', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(16, 'Quas ex.', 6190, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Velit voluptas est est dolores ex. Eos voluptas qui sit totam. Sunt quia saepe nihil et. Atque sint in asperiores repudiandae eius iure omnis et. Qui et saepe est non et cum harum. Possimus exercitationem voluptas autem. Qui quis aperiam perferendis porro a.', 'https://loremflickr.com/840/580/egypt,tour/all?random=41', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(17, 'Blanditiis officiis.', 5309, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '9', 'Quo veniam molestiae tempora aut earum non. Rerum ducimus ut iusto. Accusantium maiores sit aliquam repellendus. Nobis illo inventore corporis. Reprehenderit voluptas et facere fugiat quod ad eligendi. Ducimus accusamus laborum perferendis magni. Aspernatur vitae ea totam. Est omnis sit quia ut esse nemo nam. Et soluta optio maiores sed modi. Asperiores nesciunt harum natus qui sunt velit omnis.', 'https://loremflickr.com/840/580/egypt,tour/all?random=36', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(18, 'Pariatur esse.', 2014, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '3', 'Alias odit eos voluptatem cum nihil culpa sit dignissimos. Qui ut officiis nesciunt dicta minus praesentium. Sed expedita est ea molestiae unde. Similique sit esse ea consectetur. Reiciendis dignissimos laborum ipsa vitae ipsam aut. Iste dolorem libero magnam vitae.', 'https://loremflickr.com/840/580/egypt,tour/all?random=9', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(19, 'Molestiae reprehenderit.', 2628, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '2', 'Accusamus doloribus totam libero repellat eius quo voluptas. Commodi quaerat non quo ducimus blanditiis vel. Perspiciatis et nihil esse quia aperiam voluptas. Placeat eveniet itaque totam molestiae et. Sunt est voluptas qui facere ut. Natus rerum cum corrupti eum. Autem aperiam animi cum. Dolorem repellat qui consequatur earum est. Rerum ipsam adipisci natus quia aliquam neque repudiandae.', 'https://loremflickr.com/840/580/egypt,tour/all?random=40', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(20, 'Accusantium vitae.', 6379, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Quo rerum architecto vero dolorem quia eos facilis inventore. Non et sunt non suscipit. Maxime optio quos aliquam ad atque. In voluptas et quaerat nam. Ipsam accusantium minus deleniti. Rerum qui et nostrum dicta. Sed eligendi consequuntur tempore quia omnis.', 'https://loremflickr.com/840/580/egypt,tour/all?random=12', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(21, 'Aut.', 9767, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '7', 'Nostrum voluptatum earum laudantium doloribus. Saepe dicta voluptas qui nemo. Fugit minus et vero sit a dolor facilis. Quia ipsa et exercitationem aut perferendis. Recusandae ratione incidunt autem debitis et. Repellendus dicta ab quo.', 'https://loremflickr.com/840/580/egypt,tour/all?random=19', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(22, 'Adipisci ea.', 8881, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Est iste provident consequatur quo deserunt et et nulla. Voluptatum rem vitae qui omnis vel neque. Molestiae qui nam mollitia officia voluptatum. Et dicta inventore illo qui enim officiis. Et molestiae vitae doloremque. Voluptatem ut quaerat eum odit. Quisquam voluptatem velit natus velit vel accusamus sit. Quos inventore enim iste delectus.', 'https://loremflickr.com/840/580/egypt,tour/all?random=49', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(23, 'Quod.', 6059, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Porro aut iste quam minima rerum cumque asperiores sit. Consequatur facere repudiandae dolor et amet nostrum. Porro sed earum ullam fuga sit nulla pariatur assumenda. Ducimus atque asperiores pariatur eligendi labore non fugit. Omnis qui sit incidunt ut eum quia qui. Sequi quasi autem aliquam saepe.', 'https://loremflickr.com/840/580/egypt,tour/all?random=39', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(24, 'Provident.', 7498, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Voluptas voluptatem molestiae est eveniet et. Nesciunt vitae blanditiis et ipsam aut. Dignissimos facilis iste fugiat labore accusamus. Qui porro beatae debitis. Omnis quis doloremque dicta voluptatem suscipit autem laboriosam. Temporibus consequatur in id sed aut. Dolores id dolore ab excepturi.', 'https://loremflickr.com/840/580/egypt,tour/all?random=3', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(25, 'Ut dolorum.', 2028, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Eum nihil facilis eaque sed quo. Architecto exercitationem quam quaerat. Magni laborum excepturi iusto eius fugit. Labore consequatur impedit dolorem fuga facilis voluptate culpa. Natus deserunt iusto consequatur. Excepturi magnam quasi et quam rerum qui quibusdam. Nulla perferendis voluptatem sit sed rerum debitis.', 'https://loremflickr.com/840/580/egypt,tour/all?random=35', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(26, 'Dolores sit.', 4081, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '0', 'Et sed mollitia eius eligendi. Qui facilis et omnis omnis. Non itaque ipsa qui magni sit molestias ullam. Nulla blanditiis magnam reiciendis in quia quo voluptas. Ut id sunt sit voluptatum et omnis distinctio. Perferendis sed atque rem cum numquam qui.', 'https://loremflickr.com/840/580/egypt,tour/all?random=20', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(27, 'Vel.', 5019, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '9', 'Veritatis quo voluptatem autem non ipsam impedit at. Fugit adipisci quis et at alias. Eveniet numquam exercitationem qui enim facere. Aut illum pariatur quae aut. Corrupti quia pariatur rem. Minus nobis dolor illo sit nulla alias. Placeat et veniam pariatur autem ex. Perferendis iusto molestias et doloribus. Sed quia qui ex tenetur.', 'https://loremflickr.com/840/580/egypt,tour/all?random=36', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(28, 'Aut praesentium.', 223, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '3', 'Veniam incidunt et ipsum. Omnis est culpa est. Aperiam quos dicta fuga voluptas eius. Molestiae quidem ratione nihil assumenda voluptatem incidunt mollitia. Est libero consequatur doloribus omnis dolorem totam repellendus. Hic laudantium aut atque possimus voluptas et debitis. Numquam nulla vitae nobis est fuga. Sint qui qui magnam veniam doloremque.', 'https://loremflickr.com/840/580/egypt,tour/all?random=4', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(29, 'Velit.', 9287, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '1', 'Et praesentium et quae aut. Pariatur et porro fuga a. Dolores delectus iure non consequuntur ullam. Minima vero maiores maxime dolore. Nobis qui et voluptates.', 'https://loremflickr.com/840/580/egypt,tour/all?random=24', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(30, 'Nam.', 246, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '6', 'Beatae voluptates voluptas nesciunt nostrum. Consequatur in et earum impedit. Nemo molestiae quo modi dignissimos eaque inventore. Praesentium sed tenetur commodi rerum occaecati et. Velit deleniti occaecati impedit magni. Et qui aut iusto ut ut nemo. Harum optio quo eum quia mollitia. Dolore ut sint placeat dolore. Quia quam possimus fugit.', 'https://loremflickr.com/840/580/egypt,tour/all?random=18', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(31, 'Repellendus ad.', 7593, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Fuga ut officiis esse doloremque sit reiciendis odit et. Eos asperiores cum laborum iusto quis. Praesentium id non soluta maiores ut eveniet. Suscipit ut magnam labore ad non. Ducimus ad dolorem qui accusamus eius blanditiis voluptatibus eum. Maiores aspernatur quae qui quasi natus. Non architecto earum et sunt.', 'https://loremflickr.com/840/580/egypt,tour/all?random=38', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(32, 'Delectus molestiae.', 8303, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Pariatur quos animi non dolor. Illum mollitia eos quas eveniet dicta in. Eligendi quis ad est sed saepe excepturi nihil. Ipsam deleniti fuga dolor. Qui excepturi natus voluptas blanditiis dolorum voluptatem fugit. Omnis laborum odit deleniti quo accusantium modi. Porro nihil eligendi ea reprehenderit voluptas. Consequatur perspiciatis similique quia est ipsum. Voluptatem quibusdam quia dolorem vel.', 'https://loremflickr.com/840/580/egypt,tour/all?random=39', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(33, 'Beatae beatae.', 7350, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '1', 'Enim exercitationem ratione doloremque libero qui corrupti numquam. Rerum nesciunt omnis sed voluptas provident quia aut. Alias culpa nulla corrupti voluptates reiciendis magni quos. Dignissimos voluptatem sed sunt labore sunt id. Est maxime quia est consequatur. Provident nisi qui maxime aut est vel. Dolore reiciendis ab sit non dolores. Quia consequatur impedit sint dignissimos est officiis rem. Similique autem voluptas qui aut vel maiores quo.', 'https://loremflickr.com/840/580/egypt,tour/all?random=44', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(34, 'Non.', 7882, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '6', 'Corporis quia iste corrupti ab. Temporibus non a voluptates ut fugiat neque. Aliquid labore nostrum minus. Voluptatem et vitae illum aspernatur sint sequi. Provident fuga ab atque assumenda unde. Eos labore nisi debitis quo repudiandae excepturi.', 'https://loremflickr.com/840/580/egypt,tour/all?random=46', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(35, 'Velit.', 772, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '7', 'Iusto libero aut voluptatibus rem voluptates saepe. Maxime ipsum optio laborum veritatis et. Et eius omnis velit placeat qui consectetur iure ut. Illo et architecto quaerat corrupti hic. Aut ut nesciunt ratione.', 'https://loremflickr.com/840/580/egypt,tour/all?random=1', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(36, 'Mollitia.', 1117, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '2', 'Velit et aspernatur vel maxime rerum. Quia optio est qui doloremque. Quaerat placeat nisi possimus dolorem. Molestias quisquam dolorem suscipit molestiae. Velit repudiandae magnam quaerat eius eum. Impedit qui eum est vel doloribus non. Ut sed enim et reiciendis. Vel pariatur illo laboriosam ex corrupti labore.', 'https://loremflickr.com/840/580/egypt,tour/all?random=32', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(37, 'Adipisci doloribus.', 393, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '4', 'Tempora in ut aliquid sint molestiae ducimus qui. Ut quasi sed animi nihil. Maxime atque natus quas et quam. Numquam dolorem perferendis blanditiis quam doloremque sed temporibus. Consequatur maxime dolorem quo rerum sequi non. Doloremque et eum enim eveniet quae nihil voluptatem quia. Blanditiis quasi quisquam rerum consequatur et in facere.', 'https://loremflickr.com/840/580/egypt,tour/all?random=20', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(38, 'Fugit et.', 2881, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '2', 'Magnam quos accusantium deleniti molestias voluptas tenetur deserunt. Et qui quos qui fugit voluptas tenetur. Aliquid molestias ipsam iure distinctio voluptatem. Animi dolor debitis praesentium. Aliquid nostrum voluptas consectetur consequatur non inventore.', 'https://loremflickr.com/840/580/egypt,tour/all?random=50', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(39, 'Sapiente.', 3234, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Non saepe molestiae voluptate quam nihil. Similique a id vitae cupiditate rem. Autem aut temporibus maxime dolores. In quaerat voluptates odio qui rerum. Atque et doloribus quas vitae rerum ex. Eos deleniti eaque itaque fugit. Officiis est veritatis et ut.', 'https://loremflickr.com/840/580/egypt,tour/all?random=27', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(40, 'In sunt.', 3374, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Aut inventore quibusdam ut porro aut laudantium. Corrupti velit iusto numquam rem fuga temporibus. Rerum ducimus eveniet sunt. Et eius rerum eum non laboriosam. Consequuntur nulla iusto consequuntur voluptas voluptatem laboriosam atque omnis. Et quod commodi aut. Omnis et quia aliquam tempore vero excepturi et. Optio non deleniti et omnis quod pariatur. Ex assumenda incidunt fuga itaque quae.', 'https://loremflickr.com/840/580/egypt,tour/all?random=21', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(41, 'Dolorem sequi.', 3166, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Numquam molestias aut optio itaque. Dolorem et autem animi nobis. Alias rerum vel reprehenderit illo consequatur provident. Saepe nulla excepturi inventore earum ad molestias sapiente. Nesciunt dolorem dolores at accusantium dicta quia id. Dignissimos odit natus sit corporis. Repellat ut quo est enim. Fugit adipisci rerum dolorum nostrum rem. Doloribus sequi sit officiis itaque voluptates.', 'https://loremflickr.com/840/580/egypt,tour/all?random=2', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(42, 'Pariatur aspernatur.', 9106, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '9', 'Repellat ab et fuga. Aut in totam magnam sint. Aperiam vel quo libero vel iste accusantium dolore eligendi. Asperiores velit ut illo quae rerum. Fugiat facilis numquam quisquam nobis magni ducimus sit.', 'https://loremflickr.com/840/580/egypt,tour/all?random=9', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(43, 'Aut.', 784, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '9', 'Distinctio deleniti velit sunt ut deserunt in tempora. Dicta sint in et. Maiores illum distinctio ea cupiditate et voluptatem aut. Nulla doloribus aut soluta eligendi. Nihil ex quod reiciendis rerum id fugiat. Sint ratione molestiae dolorem quidem voluptatem enim delectus illo. Debitis aut nobis animi. Praesentium eius modi eum totam perferendis temporibus. Accusantium doloribus accusamus aspernatur in. Impedit est repudiandae qui occaecati quisquam aspernatur.', 'https://loremflickr.com/840/580/egypt,tour/all?random=13', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(44, 'Dicta pariatur.', 5261, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '3', 'Et magnam sequi tempora hic recusandae aliquid est. Et culpa officiis quisquam rerum. Veritatis vel eos in fugit ut quasi. Velit ipsum suscipit laboriosam ut. Asperiores tenetur asperiores mollitia sit ducimus. Voluptas in vitae et provident laboriosam. Dolor molestias libero at magni accusantium itaque doloremque libero. Aut accusamus ea rerum nam iure.', 'https://loremflickr.com/840/580/egypt,tour/all?random=40', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(45, 'Cupiditate sed.', 8765, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Eligendi quae cumque voluptatum dolorem earum expedita. Non possimus quos soluta nulla explicabo. Et ut ex delectus quia adipisci expedita rerum. Dolorem quidem vitae ducimus aut cumque exercitationem mollitia et. Omnis sit eum rem dolorem. Maiores in quisquam expedita sint quis. Eos mollitia aperiam aut nobis. Architecto quo sed dolorem dolorem mollitia neque.', 'https://loremflickr.com/840/580/egypt,tour/all?random=15', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(46, 'Et adipisci.', 7626, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '0', 'Saepe sint voluptas et. Debitis mollitia aliquam ratione alias odio dolorem autem reiciendis. Culpa et neque voluptas consequatur. Sequi in consequatur iste iure fugit. Blanditiis quis atque assumenda doloremque.', 'https://loremflickr.com/840/580/egypt,tour/all?random=2', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(47, 'Laudantium architecto.', 4785, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '5', 'Similique modi optio eum laboriosam adipisci quas. Unde sint nihil quod et. Animi qui earum omnis. Laboriosam est est aut. Quaerat quia corrupti eius qui aliquid. Sunt sunt voluptate minus voluptates sapiente quia. Ut molestias cumque eius provident corporis hic quia sit.', 'https://loremflickr.com/840/580/egypt,tour/all?random=48', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(48, 'Nostrum.', 383, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '0', 'Nulla voluptatem sed tempora soluta et quas veniam. Maxime omnis reprehenderit dolores iusto doloribus atque distinctio. Omnis accusantium error amet. Aut quo quidem perspiciatis. Aperiam repudiandae quo et fuga ea temporibus fugiat. Quibusdam architecto est porro aperiam et qui neque. Non sed placeat occaecati blanditiis et est aliquam quia.', 'https://loremflickr.com/840/580/egypt,tour/all?random=15', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(49, 'Officia.', 7024, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '8', 'Alias est corporis reiciendis ea. Voluptas ab voluptatem et mollitia et voluptatem rerum rem. Dolorem fugit placeat debitis quia quia quo. Itaque quas possimus deleniti ut. Sit laborum aut voluptatum possimus.', 'https://loremflickr.com/840/580/egypt,tour/all?random=34', 1, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52'),
(50, 'Voluptatibus explicabo.', 1631, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28155.498759348007!2d30.740541754090838!3d28.10270074451467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145b2500ef4e77ab%3A0xb2ea14850bbd47b5!2z2YHZhtiv2YIg2LnZhdixINin2YTYrtmK2KfZhSDYp9mE2YXZhtmK2KcgLSBPbWFyIEVsLUtoYXlhbSBBbCBNaW55YSBIb3RlbA!5e0!3m2!1sen!2seg!4v1619805956424!5m2!1sen!2seg', '0000-00-00', '0000-00-00', NULL, '9', 'Animi beatae molestiae molestias pariatur omnis veritatis. Aperiam atque quidem temporibus dolorem. Veritatis dicta consequuntur eius vel cumque deleniti quam. Possimus voluptatibus quisquam asperiores delectus et voluptate voluptatem itaque. Iusto voluptates in sequi rem.', 'https://loremflickr.com/840/580/egypt,tour/all?random=38', 2, NULL, '2021-05-08 12:00:52', '2021-05-08 12:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `profile_photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Admin', 'admin@email.com', NULL, NULL, '2021-05-08 12:00:42', '$2y$10$2UBqbbGgTUeEOW8nSxLV8OKoxuh.1DdYomJCM5CDwtbYSKYn1XFeC', NULL, '2021-05-08 12:00:42', '2021-05-08 12:00:42', 1),
(2, 'User', 'user@email.com', NULL, NULL, '2021-05-08 12:00:44', '$2y$10$u.9/wHSE7N0htmhU20Lv1OxEp5A1sVM83cYeymb5NwNK80SpdGgMW', NULL, '2021-05-08 12:00:44', '2021-05-08 12:00:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `book_car`
--
ALTER TABLE `book_car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_car_car_id_foreign` (`car_id`),
  ADD KEY `book_car_user_id_foreign` (`user_id`);

--
-- Indexes for table `book_hotel`
--
ALTER TABLE `book_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_hotel_hotel_id_foreign` (`hotel_id`),
  ADD KEY `book_hotel_user_id_foreign` (`user_id`);

--
-- Indexes for table `book_tour`
--
ALTER TABLE `book_tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_tour_user_id_foreign` (`user_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guides_phone_unique` (`phone`),
  ADD KEY `guides_user_id_foreign` (`user_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `rating_car`
--
ALTER TABLE `rating_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_hotel`
--
ALTER TABLE `rating_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_tour`
--
ALTER TABLE `rating_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_user_id_foreign` (`user_id`),
  ADD KEY `tours_tour_guide_id_foreign` (`tour_guide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `book_car`
--
ALTER TABLE `book_car`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_hotel`
--
ALTER TABLE `book_hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_tour`
--
ALTER TABLE `book_tour`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `rating_car`
--
ALTER TABLE `rating_car`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_hotel`
--
ALTER TABLE `rating_hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_tour`
--
ALTER TABLE `rating_tour`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_car`
--
ALTER TABLE `book_car`
  ADD CONSTRAINT `book_car_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_car_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_hotel`
--
ALTER TABLE `book_hotel`
  ADD CONSTRAINT `book_hotel_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_hotel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_tour`
--
ALTER TABLE `book_tour`
  ADD CONSTRAINT `book_tour_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guides`
--
ALTER TABLE `guides`
  ADD CONSTRAINT `guides_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_tour_guide_id_foreign` FOREIGN KEY (`tour_guide_id`) REFERENCES `guides` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
