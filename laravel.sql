-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 déc. 2022 à 16:09
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_09_143130_create_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
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
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Illum dolore repudiandae consequatur fuga dolores ad aliquid dolorem sunt quam qui sed magni quis animi blanditiis vel ut.', 'numquam-eos-quos-aut-magni-ea-ea-aut-laudantium', 'Et laborum iure ut cupiditate molestias delectus totam.', 'Debitis necessitatibus qui neque qui consequuntur. Ipsam similique asperiores distinctio. Architecto et et quia dolorum eum vel.', 6600, 'https://via.placeholder.com/600x400.png/0055bb?text=cats+Faker+delectus', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(2, 'Minus excepturi quia temporibus omnis quo dignissimos quod temporibus eaque sed rerum.', 'fuga-itaque-occaecati-excepturi-qui', 'Non rerum animi aut quam accusantium magnam perspiciatis occaecati quo provident.', 'Quas dicta ipsam mollitia perferendis ea qui. Numquam voluptatem iusto quod qui ut voluptas id. Quam error aliquam inventore. Voluptate provident quisquam minus.', 30000, 'https://via.placeholder.com/600x400.png/008888?text=cats+Faker+laborum', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(3, 'Ut tempora voluptas qui soluta ea maxime maiores reiciendis quia sint.', 'quia-et-quam-illum-at', 'Consectetur voluptatibus ullam impedit aut debitis delectus commodi dolorem ex sed vel non consectetur.', 'Minus minima tempora sit. Minima laudantium vero voluptas est laudantium corporis. Necessitatibus at laudantium voluptatem eos impedit quia et. Ullam similique omnis accusantium excepturi.', 15200, 'https://via.placeholder.com/600x400.png/00ccdd?text=cats+Faker+eius', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(4, 'Mollitia ut doloribus nisi et voluptas cumque ea qui et consequatur eaque rem rerum aut voluptate.', 'pariatur-laborum-saepe-aut-minima', 'Perspiciatis et modi accusantium ducimus neque enim et ex et saepe.', 'Tenetur incidunt hic consequuntur id nobis. Aperiam eligendi omnis illo omnis. Iure repudiandae veniam nisi eveniet. Consectetur ipsa optio natus velit dolores. Fugit velit et consequatur sed.', 27900, 'https://via.placeholder.com/600x400.png/00cc99?text=cats+Faker+qui', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(5, 'Architecto et dolores aut animi ipsum odio temporibus blanditiis ullam et voluptatem voluptates aliquid ipsa similique vero enim aut nam.', 'reprehenderit-perferendis-quae-rem-temporibus-qui', 'Molestiae accusantium voluptatem deserunt ipsam est nulla temporibus nihil.', 'Corrupti fuga aut blanditiis ut. Quia odio iste enim mollitia perspiciatis et et. Quisquam sed explicabo ea fuga quia aperiam.', 9800, 'https://via.placeholder.com/600x400.png/007711?text=cats+Faker+non', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(6, 'Qui ipsa unde dolorem aliquam saepe eos ut est sunt sint eum qui facere corporis veniam quaerat ut dolor.', 'exercitationem-optio-alias-at-doloremque-accusantium-libero', 'Earum vero dignissimos sed cumque velit iure dolor enim.', 'Rerum qui odio perferendis et eum. Sunt nesciunt sint rerum aliquid quod voluptatibus qui molestiae. Rerum veniam sint quia. Eveniet rem quia sed autem perferendis.', 11400, 'https://via.placeholder.com/600x400.png/00ee22?text=cats+Faker+consequatur', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(7, 'Est exercitationem qui in qui veritatis voluptas placeat corporis voluptatem suscipit alias.', 'rerum-accusamus-qui-suscipit-nobis-cum-soluta-qui', 'Laborum distinctio et eos maiores et occaecati eos ipsum est porro non enim recusandae.', 'Sed soluta consectetur necessitatibus aliquid quis qui. Id occaecati ab eaque error dignissimos sequi quis.', 4200, 'https://via.placeholder.com/600x400.png/00dd00?text=cats+Faker+et', '2022-12-09 13:59:04', '2022-12-09 13:59:04'),
(8, 'Sit sed ut a enim dignissimos consequatur ducimus molestiae laboriosam nobis.', 'eaque-cumque-iste-optio-repellendus-adipisci', 'Et ut qui quae voluptatibus culpa vel aliquam dolore enim illum.', 'Assumenda libero sint earum nihil. Dicta velit accusamus facere et placeat omnis. A explicabo ipsam laborum beatae ducimus tempora et earum. Illum itaque nobis et itaque.', 9000, 'https://via.placeholder.com/600x400.png/00ee22?text=cats+Faker+eaque', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(9, 'A accusantium cum ab labore nostrum adipisci molestiae autem quae quasi ipsa.', 'neque-molestiae-sunt-expedita-dolores-cumque-dolore', 'Et ea animi id reprehenderit dolore repudiandae aliquam autem voluptas tempora.', 'Id voluptate est quos maiores quia a. Deserunt facilis sit amet assumenda impedit dolores. Debitis molestiae quia vel qui officia omnis magni. Et unde unde quae enim pariatur a est.', 10200, 'https://via.placeholder.com/600x400.png/00aa33?text=cats+Faker+non', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(10, 'Eum non veritatis accusantium quidem quos laboriosam cum ut sint pariatur reiciendis qui dolores labore quas debitis iste aliquid.', 'sed-aut-dicta-molestias-illum-similique-assumenda-et', 'Nulla sed quaerat dolore id consequatur vero adipisci ea et rem et cupiditate.', 'Exercitationem molestiae voluptatum id autem debitis harum distinctio. Est dolore est harum ipsam. Impedit voluptas aliquam voluptas non nostrum autem.', 23500, 'https://via.placeholder.com/600x400.png/002200?text=cats+Faker+et', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(11, 'Eum vel cupiditate delectus id iste harum eos recusandae et quia asperiores ducimus et eum qui.', 'dicta-eveniet-deleniti-quae-voluptatibus-ea-aliquam-consequatur', 'Autem cupiditate vero reiciendis ut cumque temporibus consequatur at et consequatur hic fuga.', 'In harum reprehenderit deserunt et molestiae similique. Ut voluptatum non ut et. Velit sint quasi inventore id nihil omnis eos. Dolore odio recusandae provident qui natus et.', 19900, 'https://via.placeholder.com/600x400.png/006655?text=cats+Faker+ipsam', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(12, 'Recusandae ea quis cupiditate itaque deleniti omnis voluptas quidem velit modi.', 'quas-fuga-magnam-ducimus-et-temporibus-dolores', 'Sed sed repellat est corrupti officiis quo est at aperiam provident ut.', 'Vel asperiores culpa et distinctio voluptas quo. Incidunt sit illum cumque illo. Non cumque dolorem unde aut sit. Excepturi ratione fugiat optio rerum est id id.', 11700, 'https://via.placeholder.com/600x400.png/0055dd?text=cats+Faker+voluptas', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(13, 'Ut vero vitae est eum omnis hic voluptatem numquam rerum hic eum ipsa est in dolorum ex modi.', 'quia-rerum-nulla-voluptatum-incidunt-quis-minima', 'Qui culpa expedita perferendis qui voluptate placeat voluptate aut assumenda dolorem facilis a.', 'Vitae corporis excepturi sunt eveniet illo velit consequatur. Qui id et ut. Esse minus ut qui nihil eaque. Ratione assumenda ex aut.', 7700, 'https://via.placeholder.com/600x400.png/00ee77?text=cats+Faker+eum', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(14, 'Ex vel cupiditate molestias voluptatum pariatur iure similique ab dolores ea aliquam reiciendis qui porro culpa voluptatum.', 'nihil-earum-facilis-optio', 'Et sunt quisquam quia rerum reiciendis occaecati aliquid libero qui temporibus excepturi aliquam commodi.', 'Alias beatae nostrum sapiente tempora animi molestiae at non. Vel sed consequatur rem illum distinctio. Rem quis sequi sed. Qui vel qui odit voluptas ut veniam magni.', 9400, 'https://via.placeholder.com/600x400.png/009966?text=cats+Faker+tenetur', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(15, 'Eos officia atque vero ut qui ipsum vel dolor assumenda perferendis.', 'ut-animi-culpa-dolore-tempora-aliquam-cupiditate', 'Rem est est explicabo dolorum omnis dolorem ipsum sed.', 'Quas ab perferendis quo in quo. Repellendus eius blanditiis deleniti minima. Officiis est molestias aut magni dolorum id.', 19600, 'https://via.placeholder.com/600x400.png/0044dd?text=cats+Faker+eius', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(16, 'Accusantium enim sint tempora sed dolorum eveniet distinctio ut aut id qui unde.', 'aut-blanditiis-consequatur-maxime-aut', 'Eos adipisci inventore sed ratione in recusandae et et ipsa.', 'Sed maiores nihil aut omnis voluptas totam enim ratione. Iste ratione consequatur ea qui qui aut. Nemo qui eius et earum debitis in. Quia iure ipsa odio et non laboriosam.', 12400, 'https://via.placeholder.com/600x400.png/009933?text=cats+Faker+tempora', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(17, 'Minima voluptate voluptas ut eius similique ipsum doloremque sed possimus saepe.', 'fuga-laborum-in-cumque-fugit', 'Rerum debitis qui modi quia quos at ex.', 'Magnam qui delectus provident aut minus et consectetur. Inventore dolorum aut possimus ipsa qui facilis distinctio.', 5100, 'https://via.placeholder.com/600x400.png/00bb33?text=cats+Faker+eos', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(18, 'Tempore impedit beatae pariatur officia explicabo placeat excepturi odit at quia autem voluptatem molestiae quisquam consectetur.', 'qui-libero-quisquam-omnis-ut-aut-accusamus', 'Animi nobis omnis a reiciendis sapiente accusantium voluptas ut ipsam officia.', 'Quis dolores maiores porro id perferendis dolore nisi. Sunt animi odit vitae. Nisi facilis exercitationem maiores et ipsam ipsa. Eum incidunt eaque aliquam. Impedit et sunt ut omnis.', 27300, 'https://via.placeholder.com/600x400.png/003333?text=cats+Faker+nulla', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(19, 'Ex voluptas sed est qui expedita excepturi a eum dignissimos vitae omnis accusamus illo est sint qui laborum.', 'qui-dignissimos-maxime-est-non-molestiae-qui-necessitatibus', 'Voluptas modi qui quasi consectetur et incidunt.', 'Ratione enim vel accusamus temporibus. Aperiam voluptate corrupti eos similique quis aut sed.', 19500, 'https://via.placeholder.com/600x400.png/0088ee?text=cats+Faker+provident', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(20, 'Iure consectetur quod vero incidunt itaque facere aut at aut pariatur.', 'earum-vero-aliquid-quibusdam-alias-ullam-iste-quae-ut', 'Sed quia qui officia odio sunt est.', 'Repellendus corrupti provident aut magnam. Sequi quas ad sunt voluptatem quos ducimus. Soluta vitae deserunt facere nemo. Distinctio accusantium dolores sint facere aut maxime.', 14300, 'https://via.placeholder.com/600x400.png/00aaee?text=cats+Faker+id', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(21, 'Eum voluptatem quis omnis harum ut adipisci dolores distinctio a quia suscipit aspernatur aliquid laborum amet et fugit expedita.', 'vitae-rem-quaerat-fugit-repellendus-accusantium-consequuntur-dolores', 'Maxime fugiat nihil natus itaque qui sed dolorem minus quis iusto inventore repudiandae.', 'Voluptas ut vel modi cupiditate pariatur. Necessitatibus harum iusto voluptatibus tempora. Quam minima omnis officia deleniti labore. Et labore architecto ex excepturi eius.', 16300, 'https://via.placeholder.com/600x400.png/00bb44?text=cats+Faker+velit', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(22, 'Doloribus sint numquam maiores consectetur eius consequuntur in dignissimos omnis et dolorum suscipit et sint inventore ut.', 'ab-delectus-exercitationem-nesciunt-asperiores-quasi-qui-dignissimos', 'Recusandae temporibus ut saepe pariatur et omnis provident tenetur iste.', 'Officiis dolores doloribus culpa consectetur iste illum voluptatem ratione. Sit doloribus velit rerum quia voluptatem rerum accusamus voluptas.', 21300, 'https://via.placeholder.com/600x400.png/0099ff?text=cats+Faker+nulla', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(23, 'Eos sint doloribus culpa rerum unde et excepturi sed quia exercitationem earum omnis et quis assumenda aut accusamus suscipit ut id.', 'perferendis-nostrum-eum-saepe-non', 'Voluptates quas nam ut in qui ut voluptatum est.', 'Sunt veritatis fuga numquam sapiente. Architecto et eius earum alias est magnam. Commodi enim soluta nobis rerum ea reiciendis eos.', 3100, 'https://via.placeholder.com/600x400.png/007733?text=cats+Faker+sunt', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(24, 'Non expedita ratione sed error deserunt corrupti voluptas fugiat quis enim dolores magnam consequuntur.', 'amet-officia-praesentium-qui-recusandae-eaque-sapiente-delectus', 'Distinctio nam quia enim dolores ratione dolor.', 'Sunt libero modi corrupti voluptas corrupti deserunt. Fugit voluptates voluptatem quae eum modi. Sint nemo omnis dignissimos ut autem molestiae.', 23100, 'https://via.placeholder.com/600x400.png/004444?text=cats+Faker+magnam', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(25, 'Aut quas dolor id expedita repudiandae at dignissimos aut incidunt sint quos.', 'autem-a-asperiores-eligendi-deleniti-nobis', 'Rerum sit dicta soluta adipisci autem cum sit aspernatur possimus ipsum laudantium.', 'Voluptatem inventore sapiente voluptatem ratione. Voluptas ipsum voluptas voluptate voluptatem. Quia temporibus labore provident ea at.', 2600, 'https://via.placeholder.com/600x400.png/0011bb?text=cats+Faker+qui', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(26, 'Voluptatibus est harum ipsa officia ratione itaque ea adipisci commodi nemo quod illum est cum doloremque quia magnam vitae laboriosam.', 'est-perspiciatis-exercitationem-at-reprehenderit-vero-in', 'Optio et quia sed quasi sint dicta vel omnis.', 'Voluptatem est deleniti laboriosam sunt occaecati molestiae aut itaque. Nisi adipisci exercitationem aperiam id. Ut mollitia est et autem odio earum eaque.', 20600, 'https://via.placeholder.com/600x400.png/00aa33?text=cats+Faker+suscipit', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(27, 'Esse et dolorum voluptas aut rerum aut laudantium ipsam et dolorem qui voluptatibus sed sed nulla sed.', 'aut-voluptatem-vero-rerum-aut-qui-repellat', 'Consequatur dolorum nobis consequatur eaque et tempora eius accusantium praesentium quasi non dolore distinctio.', 'Sed sint ea eaque repellat aperiam natus. Quo aut eveniet aliquid facere quis vel. Rerum autem iste quos consequatur nulla dolor voluptatibus.', 27200, 'https://via.placeholder.com/600x400.png/009966?text=cats+Faker+voluptatem', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(28, 'Dolorem quis assumenda non animi aspernatur tempora aspernatur aut incidunt rem eum aperiam hic aut et et vel.', 'et-corrupti-et-aut-ullam-optio', 'Sunt consequatur quia consectetur provident libero et porro pariatur animi.', 'Et rerum ullam in nulla eos enim distinctio. A saepe ipsa quia sunt officia. Aut perferendis veniam vero tempora voluptatem quidem. Voluptatem quas eveniet exercitationem magnam dolorum sit dicta.', 16200, 'https://via.placeholder.com/600x400.png/0066dd?text=cats+Faker+nobis', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(29, 'Asperiores et impedit repudiandae ipsam modi sit quos ad omnis.', 'aliquid-dolorem-aliquam-facilis-ut-asperiores-et', 'Omnis voluptatem voluptatem aut blanditiis ut ab quia deleniti voluptas ut eum.', 'Aspernatur ea et qui et voluptas hic explicabo. Ut sed non voluptatem nisi non. Temporibus in iste iure occaecati ipsa reiciendis.', 27500, 'https://via.placeholder.com/600x400.png/007755?text=cats+Faker+dolorem', '2022-12-09 13:59:05', '2022-12-09 13:59:05'),
(30, 'Est dolores at et fugiat voluptate vitae aliquid quia omnis deserunt et aut qui odio iste unde est eveniet.', 'blanditiis-laboriosam-provident-eligendi-mollitia-unde-sunt', 'At ipsum neque sed aperiam eligendi molestiae eum ex ea placeat mollitia non.', 'Non beatae soluta nam amet. Autem autem distinctio ab ab eaque aut et suscipit. Reiciendis vel nemo voluptas magni quae repellendus.', 3400, 'https://via.placeholder.com/600x400.png/009955?text=cats+Faker+ut', '2022-12-09 13:59:05', '2022-12-09 13:59:05');

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
