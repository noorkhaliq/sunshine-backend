/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - sunshine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE
DATABASE /*!32312 IF NOT EXISTS*/`sunshine` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE
`sunshine`;

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `phone`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `message`    text COLLATE utf8mb4_unicode_ci         DEFAULT NULL,
    `is_replied` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contactus` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `uuid`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `connection` text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `queue`      text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `payload`    longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `exception`  longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `failed_at`  timestamp                               NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `image`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `slug`        varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci         DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT NULL,
    `updated_at`  timestamp NULL DEFAULT NULL,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gallery` */

insert into `gallery`(`id`, `title`, `image`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`)
values (1, 'sed culpa', NULL, 'minima-ipsa-ut',
        'Enim porro molestiae sit aspernatur ea rem. Praesentium iusto quis minus reiciendis quasi. Doloribus quis consectetur est quia et quia in. Harum libero aliquam quasi aut corporis quod itaque veniam. Est explicabo ullam quae incidunt corporis beatae. Maxime omnis temporibus velit in repudiandae consequatur. Provident deserunt doloribus hic ipsa modi repellendus quaerat. Totam dicta cupiditate exercitationem. In placeat dolor perspiciatis veniam explicabo ipsam cumque. Et consequatur sit veritatis a est corrupti. Qui quia labore est voluptatem nostrum magni numquam ab. Aut dicta dignissimos sunt in ab eos non. Eveniet architecto excepturi id laboriosam doloremque est aut. Sint distinctio quibusdam earum aut fuga molestiae. Explicabo vel quas eligendi dolore consequuntur omnis. Et dignissimos et saepe. Est enim dolores ea necessitatibus cum. Et porro et inventore iste tempore. Numquam id voluptatum ipsa velit id et et. Nam optio eveniet illum architecto aut consequatur dolores. Doloribus temporibus dolorem esse labore molestiae repudiandae fuga et. Ipsa earum aperiam praesentium occaecati qui. Iste sed eveniet qui fugiat cumque et. Vitae aspernatur quia dolore dolores distinctio optio asperiores culpa. Quos quis sequi assumenda placeat magni. Incidunt magnam id qui est voluptatem accusantium quia. Aut architecto corrupti qui reiciendis. Vero nihil delectus culpa perspiciatis aut. Quam quam ut in nihil sit maxime itaque. Dolorem inventore temporibus voluptas consequuntur dolorem quam. Suscipit quia dolores ipsa perspiciatis occaecati. Saepe facere aperiam alias quo. Iure beatae velit nemo repellendus eaque. Excepturi eum et officiis tempore sint commodi sunt. Hic aut nihil aliquid excepturi sit velit ducimus. Fugiat error vel est aspernatur. Asperiores molestias dolor ea doloremque officia quasi. Vero sunt tempore debitis nulla. Doloribus dolor expedita tempora id esse. Fugiat perferendis laboriosam doloribus optio.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (2, 'ab amet', NULL, 'doloribus-totam-corporis',
        'Sunt officiis mollitia eaque impedit. Rerum corporis tempora et quis facere ipsa. Nobis et quia fugiat architecto labore est. Voluptates modi debitis assumenda excepturi facilis ipsa officiis. Non minus totam nisi. Ut doloremque deleniti quaerat amet aut et eaque laborum. Qui sit quas ad magni beatae aut nam. Neque assumenda consectetur vel magnam modi. Et architecto omnis iusto modi. Eos laboriosam quibusdam unde. Dolor facere temporibus sed unde a quod. Qui quo perspiciatis veritatis illo. Nihil assumenda eos hic neque ut quisquam neque. Dignissimos laborum molestiae iste est. Perferendis accusamus sed voluptatem quis quo est. Rerum a sint dignissimos sint omnis. Asperiores aut et sint libero libero et facilis ratione. Veniam ut eum dolorum harum. Nihil vel nemo aut minus reprehenderit architecto. Exercitationem qui quisquam accusantium saepe maiores ipsam. Est reiciendis inventore aut a fugiat doloribus. Temporibus quia quia quisquam id dolorum est dolores. Et eveniet nobis voluptatem et iure deserunt fugit. Corporis asperiores quia temporibus voluptatem consequatur dolorem excepturi. Ipsum in voluptatum ipsam qui rerum aut sed. Et qui et architecto dolore quia. In facere commodi qui rerum consequatur voluptatem ullam. Iure odio commodi molestiae aut aut at. Est occaecati suscipit ex fuga qui. Maiores consequatur quaerat iste deleniti dolorem quos ad. Velit et asperiores voluptatem tempora excepturi quam repudiandae. Ut alias non maxime quaerat atque. Commodi earum minima dolore molestiae vitae qui. Id et praesentium sapiente adipisci nulla. Sit excepturi officia est facere sed nobis voluptatibus. Est sequi maiores aut nihil. Omnis pariatur sit officia voluptas hic doloribus at. Illum necessitatibus qui sed doloribus in ullam corrupti ut. Quisquam voluptas facilis quia non. Quos et dolor repellendus voluptatem harum.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (3, 'velit eos', NULL, 'voluptatem-repudiandae-recusandae',
        'Et porro molestias quia impedit magnam recusandae. Quia et reprehenderit molestiae consequatur. Dolor illum nisi ut ipsam eos et qui. Maxime amet recusandae tenetur quia repudiandae soluta maiores. Consequuntur impedit nobis eligendi asperiores. Nostrum eum sit et molestiae modi exercitationem quae. Voluptatem magnam saepe molestias non. Quae animi quia possimus velit et. Et cumque quas sapiente consequatur iste necessitatibus. Velit animi id sequi ipsum nobis non. Dolor cumque et quis blanditiis ex sunt magnam. Possimus reprehenderit fugiat pariatur quisquam. Cum dolores laboriosam aperiam sed quasi odio cumque. Ut expedita eum eaque excepturi sit doloribus. Vel enim vero nesciunt dolore. Et quia dolor nam et et. Voluptas sed ducimus possimus cum. Est harum non voluptatem et necessitatibus dicta. Dolorem ea velit corrupti iste repudiandae aliquid aperiam. Perspiciatis et maxime iure iste. Rerum quia voluptatibus sint aut facilis. Nemo rerum vero reiciendis doloribus. Et natus dolores sequi pariatur sit error sint. Quia vel eum minima deleniti repellat ex repellat perferendis. Et libero aliquam incidunt libero. Nostrum id hic dolorem consequatur commodi voluptatem incidunt occaecati. Velit aut consectetur excepturi esse. Et aut laborum praesentium ut tempora at. Qui culpa sit porro labore. Voluptatem commodi dignissimos eum voluptatem nesciunt ut eius. Nesciunt consequatur autem beatae qui. Rerum deleniti laboriosam itaque animi nulla reprehenderit asperiores. Atque dolor reprehenderit eius impedit eos. Modi consectetur voluptatem quaerat cupiditate est ut. Et repudiandae officia est sint numquam ut exercitationem. Assumenda et recusandae est numquam. Id consectetur beatae et dolores dolore. Porro pariatur necessitatibus quidem reprehenderit molestiae quam quis. Voluptatem est in et qui iste qui. Quaerat consequatur aut cum nihil quas et.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (4, 'nihil iure', NULL, 'sit-quas-ducimus',
        'Deleniti fuga perspiciatis iure aliquam quam fuga. Facere quas nesciunt saepe sit deleniti officia omnis dolores. Provident tenetur deserunt sapiente et voluptas aut. Et et aspernatur nihil nostrum ipsa. Omnis debitis voluptas voluptatem ipsam quos autem ab. Autem mollitia illum vero quidem tempore blanditiis quam. Sed magnam voluptatibus sunt cum totam. Repellendus natus tenetur praesentium qui. Similique laudantium eveniet qui ut. Qui aut omnis sit officia velit rerum odio. Et harum et perferendis quia. Ut maxime occaecati commodi dolores at assumenda distinctio. Quo nihil officiis molestiae cupiditate. Occaecati eos aut quaerat. Ea dolorem nobis optio commodi molestiae molestias aut laudantium. Delectus numquam quam et corporis sint quaerat quia. Doloribus magnam cum odio. Eos nam accusantium velit magni veritatis odio. Architecto at laboriosam perferendis est amet autem eius. Vel corrupti exercitationem fuga sed repellat illum. Ad eum natus ut ratione. Dolor voluptas recusandae ducimus reprehenderit dolores exercitationem officia. Ut nobis dolores veritatis cumque aut. Nihil autem optio totam autem odio et deleniti. Eos quia saepe facilis voluptas. Sed ea aliquid eligendi cum sed. Perspiciatis rerum qui enim beatae accusamus nisi et. Id rerum velit sunt et sit incidunt. Rerum impedit ut modi ut dignissimos id ullam. Exercitationem illo vel dolorem tempora esse voluptate sequi. Optio architecto nihil explicabo sequi repudiandae quo. Voluptatibus corporis et assumenda dolores id. Cupiditate quaerat et ipsam commodi repellendus aut. Et veniam ut odit quidem. Natus autem aut fuga porro ut. Deleniti sed quod voluptates incidunt. Magni et doloribus accusamus dolor eum harum assumenda. Eligendi dolorem est culpa doloremque doloribus et consequatur. Eum rem ratione reprehenderit qui architecto nihil omnis atque. Ex quam eos eligendi dolore ipsa impedit facere.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (5, 'earum debitis', NULL, 'vel-aut-similique',
        'Accusamus molestiae illo illo reiciendis consequuntur dicta harum sunt. Enim dignissimos expedita amet facere. Nisi fugiat ea officiis sed eligendi. Quos et voluptas vero vel voluptatum consectetur. Cupiditate nobis eum delectus repellendus. Unde quasi et eum exercitationem deserunt praesentium. Voluptatum delectus incidunt cum aut laudantium. Id voluptatibus et quaerat quo et sunt autem. Aut rerum quos aut consequatur nostrum. Eaque reiciendis et rem qui neque qui aliquam. Delectus eaque odit expedita doloremque similique. Voluptatum sint necessitatibus tenetur optio. Corporis doloribus fugiat reiciendis est. Ut magni voluptatem in architecto cum et. Minus sed molestiae eius eos qui. Tempore est maiores nisi eligendi. Et ab explicabo veritatis labore consequatur et harum. Aliquam suscipit possimus consectetur assumenda blanditiis. Est non aut officia assumenda. Ex dicta in quo molestias voluptatem laborum voluptas. Nostrum et animi iste similique natus aut. Aliquid velit natus optio non dignissimos hic. Harum numquam esse aut quos. Optio tempora sint tempora adipisci cumque tempore aspernatur. Dolor cumque quidem iste consectetur non et. Quia id sed ipsa officia ut. Optio et eligendi qui saepe. Aut aut maiores soluta ut reiciendis veritatis. Tempora esse est error est. Dolorem occaecati veritatis et laudantium sit et non. Unde earum nesciunt vel ab et ea. Et facere earum enim et nisi sed officiis magni. Quis asperiores dignissimos adipisci nulla. Quaerat assumenda doloribus mollitia vel. Omnis praesentium nam id exercitationem. Et qui doloribus id ipsa nesciunt nihil sint. Totam voluptatibus vitae qui sed amet rem. Sequi maiores odit consectetur quam possimus soluta. Nam et est quo ipsam adipisci unde. Veniam rerum ut porro quod quas.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (6, 'laborum dolor', NULL, 'praesentium-quod-consectetur',
        'Velit asperiores nulla eos saepe modi est nihil. Doloremque nisi quidem laborum aut voluptatem. Aut rerum voluptatem ipsa omnis officiis fugit quidem. Vero nulla soluta dolor repellat deserunt veritatis. Rerum ullam praesentium cum vel et esse aut. Quos est quam tenetur velit. Iure sit maiores illum consequatur quia. Quam ipsum est rerum earum asperiores. Molestias eum suscipit reiciendis. Est velit molestias commodi sit deserunt adipisci maxime. Accusamus unde totam at voluptate. Voluptas earum quasi non sequi quos nulla molestiae. Est at non nobis iusto. Molestiae temporibus assumenda nam velit et. Sint ab quibusdam iusto eos dolorem tenetur. Exercitationem excepturi et vero et aliquid commodi deleniti. Blanditiis aperiam quis asperiores officia numquam magnam voluptatem tempore. Id quis debitis velit eos et est nihil. Veniam consequatur placeat vero temporibus. Saepe ex molestiae voluptas rerum quisquam maiores asperiores. Rem facilis accusantium molestias placeat blanditiis repellat molestias. Dicta ea dolorum a tempora pariatur qui. Sunt a et blanditiis ut. Odit perspiciatis molestias optio aut dolor et. Velit commodi dolorum rem sit. Vitae facilis saepe rerum. Qui recusandae ipsum explicabo et ipsa ex vero. Fuga in tempore aliquam dolores hic. Quod et neque et et. Molestiae dolorem temporibus totam adipisci fugiat ipsam repudiandae. Nihil illo modi iusto veniam omnis. Iure qui aperiam in. Soluta rem iste quia quia repellendus vitae accusantium. Soluta velit error qui ab rerum consequatur. Similique est optio distinctio sed ut. Aliquid aspernatur qui quo. Nulla commodi nisi non eligendi. Aut temporibus tempora et. Voluptatibus ut ut odit. Dolores sed ipsum eligendi molestiae.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (7, 'modi fuga', NULL, 'et-nisi-voluptas',
        'Debitis consequatur aliquam corporis in. Cum necessitatibus voluptatem quaerat totam. Rem architecto sed harum voluptates provident necessitatibus. Molestias voluptate dignissimos voluptatibus sed dolorem hic. Ullam voluptatem nemo ea repudiandae amet eos voluptas. Molestiae porro consequatur doloribus atque in. Est quia reiciendis quia hic occaecati. Eaque molestiae iste voluptatum nihil. Ut facilis facilis consequatur repellat. Aut reiciendis quaerat tenetur totam quam ea. Velit ratione a sapiente sit minima in. Est quia ut repudiandae molestias veritatis labore. Tempora asperiores similique sit aperiam. Soluta atque voluptatem iure consequatur non accusantium. Delectus veritatis ducimus enim quae est. A hic aut animi perspiciatis. Laudantium nisi placeat fugiat rerum eum. Culpa deleniti sed repudiandae dolores eligendi quia aut. Repellendus explicabo assumenda omnis in est. Debitis consequatur et ad odit ipsam omnis. Esse veniam laudantium eum aspernatur. Possimus ut et qui eos ut dolor fugit. Dignissimos id a voluptas assumenda nobis delectus. Est quisquam modi consequuntur deserunt. Nihil doloremque sint aut recusandae sapiente. Doloribus sapiente fugit consequatur consequatur possimus pariatur explicabo autem. Similique iste libero et repellendus id praesentium facilis expedita. Accusantium quo voluptatibus consequatur aut exercitationem esse. Et dolores sint esse accusantium. Quasi sint vitae dolores quae suscipit et exercitationem. Dolore rem dolor earum id tenetur rerum. Quasi fugiat voluptate omnis quis. Aliquam eum odit maiores ipsam. Eveniet eius voluptatem et labore. Est distinctio quisquam rerum debitis voluptatum qui dolor. Ut est veniam corporis omnis temporibus. Et aperiam et beatae. Qui aut tenetur ut qui laboriosam commodi ut sed. Dolore omnis ea numquam et et debitis. Maxime maxime accusamus quis eius.',
        '2022-06-07 05:35:08', '2022-06-07 05:35:08', NULL),
       (8, 'neque non', NULL, 'sequi-harum-sed',
        'Eaque mollitia minus sit nemo. Rerum qui incidunt quia non illo. Autem cumque delectus vel ut laudantium aut. Minima omnis tempore rerum illum dolorem enim. Sequi impedit atque soluta sint omnis. Voluptatem et officiis delectus dignissimos dicta officia. Rerum eligendi iste quia praesentium blanditiis quisquam sequi. Ullam aut fuga alias. Cum omnis laudantium iure eius. Quam rerum voluptatem nobis. Necessitatibus aspernatur in porro et. Eveniet reprehenderit voluptatem fugit deserunt molestiae aliquid. Aspernatur ea animi molestiae. Enim fuga rerum qui iusto ad reiciendis. Non repudiandae reprehenderit rerum magnam. Placeat voluptatibus architecto et quam. Enim cum voluptatem laboriosam cupiditate recusandae explicabo aut quisquam. Qui dicta saepe a nobis nobis velit atque. In voluptatem totam consequatur. Est sit rerum suscipit impedit cumque. Autem quidem neque praesentium illum. Omnis non qui et corporis. Consequatur eligendi dolorum officiis rem mollitia voluptas quo. Libero vel modi eum aspernatur. Ullam voluptatem quia cupiditate distinctio. Autem harum ut eligendi cum laboriosam et molestias. Sunt nulla autem non aut dolores rem. Vitae voluptate dicta sed impedit dignissimos sint. Natus quasi pariatur saepe omnis similique. Temporibus incidunt totam nulla id id dolores. Voluptatem illum a et impedit officia maxime qui. Libero quaerat iusto velit suscipit. Enim fugiat autem qui qui et. Mollitia consequatur voluptas qui mollitia quo. Repellat natus veritatis eos vel. Iste ipsam est qui possimus modi eum consequatur velit. Voluptas veritatis qui numquam cumque eaque sunt. Laborum rerum minus omnis eos. Eligendi magni eaque nobis consectetur hic adipisci qui. Assumenda et quo nemo aspernatur unde quisquam.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (9, 'dolore et', NULL, 'velit-adipisci-ut',
        'Aut odit dolores voluptatem quisquam enim magnam. Et sit occaecati aliquid voluptatem. Autem a aut et possimus. Rem illum repellendus omnis minus ex magni error. Perspiciatis quae consequatur quas voluptatem corporis. Aut eos voluptatum quia doloremque temporibus laboriosam odit. Rerum molestias facilis et itaque. Explicabo ex blanditiis molestias voluptatum suscipit alias cum natus. Atque dolores ullam et fugit. Distinctio et et perferendis voluptates illum illum. Incidunt omnis autem sit mollitia laudantium. Facere in reprehenderit ut necessitatibus. Enim quo neque non quo itaque impedit. Dolor quaerat aut dolorum vitae ipsam molestias ipsa. Sit quia earum qui. Et consequatur explicabo ea laboriosam. Facere ut beatae ut beatae ipsa. Sit aut incidunt laborum doloremque sed sint ducimus. Quia ut aut aut assumenda. Adipisci eius assumenda qui et voluptas minus. Sed voluptatem et porro maiores corporis porro inventore. Recusandae minus id odio repudiandae et. A ipsa qui animi molestiae doloremque. Voluptate excepturi eius enim ad enim qui perferendis. Minima officia quia est veritatis dolores. Doloribus explicabo non expedita voluptates. Et est magnam occaecati incidunt. Ipsum et officiis animi accusantium. Exercitationem esse consequatur sit alias explicabo molestiae. Ut officiis molestiae eos facere soluta aut tenetur et. Cumque qui vero fugiat explicabo eligendi quia consectetur. Qui voluptatibus quae recusandae recusandae. Aut odit ut sed consequatur corrupti quia quo sunt. Ab rerum ab molestias facere temporibus non. Tempora hic quisquam quo et quaerat. Quod at et minus culpa earum consequatur. Libero commodi aut a corporis quam. Qui tempora fugit impedit molestiae perspiciatis. Laboriosam voluptatem dolores sunt nihil eveniet magnam amet. Sit quibusdam nostrum expedita molestias voluptatem qui vel.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (10, 'laboriosam cum', NULL, 'nisi-quaerat-nostrum',
        'Sed molestias maiores maxime nisi ipsa omnis magnam. Ducimus ipsum est facere consequatur optio est qui. Minus ab numquam error voluptas quibusdam. Natus ut enim sit ipsam vel quibusdam iusto veniam. Quod at sunt iste asperiores dolore. Impedit voluptatem reiciendis asperiores ut omnis minus molestiae. Quasi delectus maiores voluptatem quis. Sint quis voluptate debitis repellendus impedit. Voluptas molestiae soluta optio non ipsa qui. Necessitatibus beatae eos cum corporis quia nihil. Numquam similique totam perferendis ea porro sunt sint. Consequatur sequi doloremque sed ab eaque tempore unde. Quidem necessitatibus mollitia quam voluptatem et dolorem ut. Sunt natus exercitationem aut minima veritatis fuga. Ad ut omnis odit sit eius. Reprehenderit voluptas non neque quae aut et. Deleniti facere amet fugiat nihil iure dolorem ut. Officiis vel aspernatur fugiat facilis. Nulla eum perspiciatis consequatur minus et. Consectetur sed quisquam mollitia qui quidem veniam non fugiat. Ut et illum molestiae at voluptas eos. Qui velit ex iure asperiores totam magni error. Laborum dolor officia dolor animi architecto. Aut quia illo sed aperiam. Est cumque et et itaque. Et delectus eos rerum asperiores aspernatur. Similique ex voluptatibus modi ullam nostrum a ut. Quia molestiae dolores architecto excepturi in et. Quibusdam quis totam facilis. Maxime odit eveniet velit soluta nobis nostrum. Molestiae non non ut velit quo. Qui qui sed voluptatem ipsum necessitatibus ex. Alias architecto cum tempora explicabo labore id ipsum. Adipisci odit aut asperiores molestias voluptatem provident quo dolorem. Neque magni autem qui ipsa ut. Laboriosam numquam consequuntur omnis ut. Rerum voluptatem provident libero consequatur accusamus qui. Nisi voluptas aspernatur eos ex molestiae molestiae ut hic. Non est nobis laborum sed. Alias sed delectus repellendus aspernatur ut.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations`
(
    `id`        int(10) unsigned NOT NULL AUTO_INCREMENT,
    `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch`     int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert into `migrations`(`id`, `migration`, `batch`)
values (73, '2014_10_12_000000_create_users_table', 1),
       (74, '2014_10_12_100000_create_password_resets_table', 1),
       (75, '2019_08_19_000000_create_failed_jobs_table', 1),
       (76, '2019_12_14_000001_create_personal_access_tokens_table', 1),
       (77, '2022_05_19_104044_create_contactus_table', 1),
       (78, '2022_05_19_104059_create_pages_table', 1),
       (79, '2022_05_19_104114_create_settings_table', 1),
       (80, '2022_05_26_010737_create_products_table', 1),
       (81, '2022_05_26_011047_create_gallery_table', 1);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `image`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `slug`        varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `sub_title`   varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci         DEFAULT NULL,
    `type`        varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT NULL,
    `updated_at`  timestamp NULL DEFAULT NULL,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert into `pages`(`id`, `title`, `image`, `slug`, `sub_title`, `description`, `type`, `created_at`, `updated_at`,
                    `deleted_at`)
values (1, 'About Us', NULL, 'about-us', NULL,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptu',
        'page', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (2, 'Fruit And', NULL, 'header', 'Vegetables', 'Now started', 'section', '2022-06-07 05:35:09',
        '2022-06-07 05:35:09', NULL),
       (3, 'Terms And Condition', NULL, 'terms-and-condition', NULL,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet imperdiet justo, nec tempus lorem. Integer urna sapien, vulputate ac maximus eget, mollis id neque. Ut eu convallis arcu. Donec risus tortor, bibendum a lectus at, egestas posuere mi. In vel auctor risus, ut consequat orci. Nullam aliquet turpis eget suscipit tempor. Ut at orci nunc. Donec eu ante dapibus, scelerisque ligula vel, accumsan magna. Duis dignissim volutpat ex at gravida. Duis fermentum enim est, eu tempus turpis dapibus id. Aliquam condimentum sodales nisi tempus tempus. Vivamus fringilla ligula felis, ut efficitur neque facilisis congue. Cras pellentesque volutpat auctor. Quisque velit lacus, suscipit sit amet erat eu, lacinia blandit nunc. Aliquam ut eros iaculis, pellentesque tortor et, viverra nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In augue massa, rutrum elementum lorem sed, tempus maximus lectus. Aenean tincidunt aliquam nibh blandit dapibus. Quisque fermentum enim blandit ante elementum fermentum. Nulla in malesuada nisl. Morbi ut auctor nisi, vitae congue purus. Phasellus eleifend, purus eget volutpat aliquam, ipsum enim porttitor ante, et vestibulum nibh sem ut nunc. In fermentum turpis orci, a ultricies dui ullamcorper nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean dictum mauris at luctus suscipit. Aenean ullamcorper orci in enim sagittis, et maximus quam venenatis. Proin bibendum dolor diam, vitae faucibus nunc pulvinar at. Mauris nunc erat, fringilla vitae nulla nec, lacinia vestibulum sem. Nulla nec nisl at risus aliquam venenatis eu lacinia lacus. Ut auctor nisi sit amet orci interdum, a finibus dolor fringilla. Maecenas sed lacus nisl. Ut blandit lorem urna, vel scelerisque tortor faucibus eget. Etiam nisi metus, placerat vel enim a, maximus semper libero.',
        'page', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (4, 'Privacy Policy', NULL, 'privacy-policy', NULL,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet imperdiet justo, nec tempus lorem. Integer urna sapien, vulputate ac maximus eget, mollis id neque. Ut eu convallis arcu. Donec risus tortor, bibendum a lectus at, egestas posuere mi. In vel auctor risus, ut consequat orci. Nullam aliquet turpis eget suscipit tempor. Ut at orci nunc. Donec eu ante dapibus, scelerisque ligula vel, accumsan magna. Duis dignissim volutpat ex at gravida. Duis fermentum enim est, eu tempus turpis dapibus id. Aliquam condimentum sodales nisi tempus tempus. Vivamus fringilla ligula felis, ut efficitur neque facilisis congue. Cras pellentesque volutpat auctor. Quisque velit lacus, suscipit sit amet erat eu, lacinia blandit nunc. Aliquam ut eros iaculis, pellentesque tortor et, viverra nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In augue massa, rutrum elementum lorem sed, tempus maximus lectus. Aenean tincidunt aliquam nibh blandit dapibus. Quisque fermentum enim blandit ante elementum fermentum. Nulla in malesuada nisl. Morbi ut auctor nisi, vitae congue purus. Phasellus eleifend, purus eget volutpat aliquam, ipsum enim porttitor ante, et vestibulum nibh sem ut nunc. In fermentum turpis orci, a ultricies dui ullamcorper nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean dictum mauris at luctus suscipit. Aenean ullamcorper orci in enim sagittis, et maximus quam venenatis. Proin bibendum dolor diam, vitae faucibus nunc pulvinar at. Mauris nunc erat, fringilla vitae nulla nec, lacinia vestibulum sem. Nulla nec nisl at risus aliquam venenatis eu lacinia lacus. Ut auctor nisi sit amet orci interdum, a finibus dolor fringilla. Maecenas sed lacus nisl. Ut blandit lorem urna, vel scelerisque tortor faucibus eget. Etiam nisi metus, placerat vel enim a, maximus semper libero.',
        'page', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets`
(
    `email`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `token`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    KEY          `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens`
(
    `id`             bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `tokenable_id`   bigint(20) unsigned NOT NULL,
    `name`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `token`          varchar(64) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `abilities`      text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `last_used_at`   timestamp NULL DEFAULT NULL,
    `created_at`     timestamp NULL DEFAULT NULL,
    `updated_at`     timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
    KEY              `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `sub_title`   varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `slug`        varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `image`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci         DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT NULL,
    `updated_at`  timestamp NULL DEFAULT NULL,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert into `products`(`id`, `title`, `sub_title`, `slug`, `image`, `description`, `created_at`, `updated_at`,
                       `deleted_at`)
values (1, 'et expedita', 'architecto expedita debitis in voluptatem alias', 'qui-vero-officiis', NULL,
        'Pariatur ab dolores cupiditate reprehenderit sunt. Doloremque qui animi cum voluptate. Dolore vel et sed iure. Consequuntur vero eveniet commodi et praesentium. Sit hic qui ut veritatis dicta modi molestiae. Et ut sed adipisci necessitatibus. Necessitatibus laborum aspernatur laboriosam quo exercitationem dignissimos eius. Dolorum recusandae sunt maxime molestiae. Omnis recusandae omnis et neque. Eveniet eligendi consequatur voluptatem. Ea nisi quo quia modi laborum accusamus ex. Soluta autem iusto maiores laboriosam. Explicabo accusantium facere quia quasi. Minus ut modi aut dolores ex molestiae labore. Sit et fuga dolorem voluptatum natus recusandae dolore possimus. Occaecati a ipsa error harum corporis. Eos ut vel id et repellendus suscipit non. Tempore numquam ipsa in qui eos et. Natus nihil sunt aut ut fuga. Ea sit similique ipsum harum nihil et sit. Et nobis voluptatem ut sequi non placeat nesciunt. Dolore beatae consequatur recusandae et. Pariatur et minima quia recusandae eos laborum odit praesentium. Voluptatum est quidem nobis tenetur nobis. Laboriosam quidem iure et esse omnis. Sit eligendi reiciendis at voluptas. Labore repellendus cum consequuntur quia voluptatem fugiat. Consequuntur sunt temporibus nemo fuga voluptas non. Occaecati omnis reiciendis qui in maxime architecto et temporibus. Beatae commodi incidunt facere voluptate corporis sint quia. Impedit provident delectus voluptas at. Soluta dolor nulla debitis rerum quam. Inventore et eveniet quia ut ducimus. Et vel magnam dolores. Iure atque repudiandae doloribus quae velit. Et voluptatem doloremque aperiam eaque recusandae voluptate consequatur voluptatem. Voluptate laboriosam voluptates iste commodi explicabo in. Voluptatibus omnis et sit et. Tempore magnam illum cumque libero qui nobis laboriosam veritatis. Delectus ut dignissimos at reiciendis.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (2, 'omnis quia', 'suscipit quo ipsam deserunt consequatur porro', 'dolore-libero-et', NULL,
        'Quos qui repellat molestiae cumque eius necessitatibus provident. Quia minus accusantium aut rerum nisi. Provident dolorem fugiat nisi officia. Amet voluptas excepturi quis voluptatem culpa. Eos qui omnis iure maiores. Omnis non provident sapiente officiis debitis voluptatem. Hic cumque nemo dolor sit consequatur ea. Quam culpa laudantium beatae illo fugit est neque. Et praesentium libero sed sed ex iste alias. A molestias deleniti blanditiis. Et assumenda exercitationem voluptas. Sapiente qui et odit incidunt error. Occaecati autem nemo sed voluptas repellendus. Non nulla distinctio consequatur temporibus sed nulla cum. Dolorum et similique omnis adipisci quisquam deleniti. Consequatur ex consequatur ullam saepe. Dolorem quae odio itaque. Et aut officia unde sed. Blanditiis officiis voluptate dolore nobis placeat atque. Autem perspiciatis non ad perspiciatis culpa sed et. Voluptas vel qui ea facere quia aperiam ad. Aut quia vel quo. Eveniet quas rerum non qui velit excepturi optio. Aut distinctio ducimus voluptate nostrum. Sit omnis maxime laboriosam aut ad. Quia veniam iure similique corporis ipsum. Omnis iste quia consequatur iste sequi id. Officiis hic ratione id ducimus quas ut. Nam sit occaecati cupiditate. Molestias facilis vel fugiat est quia. Sunt sequi itaque harum sunt. Quas ut est esse esse consequatur voluptates odit adipisci. Saepe atque ducimus quo vel. Dolores vitae dolorum vel totam tempore. Excepturi at ex velit laudantium. Dolorum placeat cupiditate ratione magnam. Pariatur inventore accusantium soluta cum iure. Nemo rerum provident accusamus optio nisi nobis. Similique officia nemo sed eum distinctio tenetur tempore. Dolorem et ut aspernatur omnis.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (3, 'alias fuga', 'sit cumque voluptatum ut iste recusandae', 'a-dolorum-sit', NULL,
        'Autem excepturi quos alias corporis in sed incidunt quia. Tempore natus error rerum fugit ipsum aliquid excepturi iure. Sint quia ea veniam voluptas quam unde. Dolore aut expedita numquam nemo. Consequatur ut incidunt qui ea quas quis dolores. Aut ab explicabo magni reiciendis optio quam hic. Odio sint dignissimos doloremque in. Fugit non assumenda cupiditate est nesciunt. Eum eligendi ex quas minima. Porro ut provident consequatur vel soluta corrupti aliquid animi. Occaecati quaerat quod quis molestiae natus. Voluptatibus qui rem consequatur iste saepe et. Accusamus in vel natus veritatis. Voluptates accusamus explicabo ullam est molestiae unde quia fugiat. Tempora voluptas ratione illo molestias velit eum est labore. Expedita doloremque necessitatibus non dicta rerum dolorem error cumque. Odio alias autem aut amet dolores magnam et. Ut et ipsa vitae. Non voluptas magni possimus fuga. Nihil itaque ea distinctio nostrum veniam dolor at. Esse error fuga iusto et corporis. Quisquam dolorem quia odio. Sint quam aut dolorem. Ut inventore quos labore quaerat autem officia. Quo unde qui libero rerum eos et earum sint. Dignissimos asperiores id ea voluptas. Architecto corporis vero consequatur est. Tempore adipisci natus maiores saepe sunt odio mollitia explicabo. Et omnis exercitationem sint reprehenderit mollitia quae magnam. Aut quia beatae et quae est similique. Sed assumenda libero enim ea consequuntur tenetur laudantium excepturi. Quos inventore quia et in. Est enim consequatur repudiandae eum. Quia soluta eligendi maiores ut magni. Blanditiis quia aut enim itaque. Enim veniam sapiente ipsum sunt qui et amet. Eum quis quia quibusdam numquam eos eos et qui. Sit nihil dolor quos. Aut et officiis dolor veniam omnis quia quaerat. Eos id optio vel excepturi nesciunt quo.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (4, 'atque qui', 'culpa dolorum aut vitae reprehenderit id', 'dolor-dolor-fugiat', NULL,
        'Placeat sapiente ut expedita dolor occaecati. Aspernatur odio quis unde aut placeat a rerum quibusdam. Dolorum repellendus qui voluptas ut rem distinctio qui. Rerum quis eligendi aliquid sit numquam rem. Iusto facere optio qui rerum explicabo est aliquid aut. Voluptatem et eius sunt sed velit quaerat. Eum id cupiditate unde enim dolores vitae. Magni nesciunt ut provident aut praesentium. Natus dignissimos officiis velit et molestiae sequi expedita. Officia ex ut ut reprehenderit ut expedita quis ratione. Ut et non possimus. Et expedita fugiat doloremque sed reprehenderit autem sed voluptates. Aut reiciendis dignissimos repellendus. Consectetur qui corporis id odio. Provident delectus cupiditate fugiat ipsa. Sint voluptatem omnis ut laudantium qui voluptas illo modi. Accusamus et animi quisquam dolor harum consectetur. Minima temporibus aperiam vitae dolor et. Aut porro tenetur vitae dignissimos et saepe quam. Fuga nostrum eos aut commodi dolorum. Fuga aut ipsum voluptas voluptatem unde tempora veniam impedit. Voluptatem consequuntur incidunt amet numquam. Cumque minus rem autem ratione impedit et quo. Autem corporis et iste qui asperiores. Magni voluptatibus consequatur perferendis et officiis quis. Consequatur modi ut ipsam velit maxime odit id. Et quisquam molestiae quis eos. Amet ad omnis quas voluptas. Omnis qui voluptatum tempore commodi eum aut doloribus. Quo est repellat rem corrupti. Qui numquam suscipit officiis animi. Exercitationem natus earum non quisquam consequatur quas aut sunt. Tenetur quaerat voluptas et animi autem doloribus. Pariatur ad non possimus et eius. Autem ea dolorem cumque. Eveniet et dolores et nisi veritatis. Quisquam laborum dignissimos ducimus porro nihil dolorem aut. Temporibus maiores ullam necessitatibus sed. Earum reiciendis voluptatem consectetur veritatis vel ut mollitia quia. Et ut illum omnis facilis nesciunt exercitationem.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (5, 'voluptate reprehenderit', 'accusantium ut suscipit rem quis aliquid', 'perspiciatis-cumque-nihil', NULL,
        'Doloribus doloremque illum ducimus molestiae. Ut placeat in consectetur illo sed minima. Consequatur eius quisquam pariatur ab. Culpa beatae odit corrupti laudantium. Molestiae error velit quia autem distinctio. Id mollitia voluptate sint voluptate in eum. Dicta non veritatis neque velit earum. Reprehenderit praesentium quidem fuga incidunt quisquam. Totam dolore iste qui ut qui. Fugiat vel atque cupiditate officia. Totam quae earum rerum amet et iure. Voluptatem enim distinctio quas excepturi reiciendis cumque animi. In explicabo ipsa nihil et. Officiis voluptas velit nobis natus dicta aut quisquam. Deserunt vitae aut nobis sint amet voluptatum. Fugiat rerum distinctio deleniti. Ut sed velit consectetur maxime. Quibusdam minima et perspiciatis est. Eos quisquam quae asperiores debitis nihil ut. Consequuntur ipsum eius quibusdam unde ut saepe provident. Quia ut sit cupiditate explicabo eaque cumque est qui. Sapiente est atque quisquam et mollitia sapiente. Itaque fuga architecto quisquam quis veniam commodi. Et nemo ipsa sint et. Eum veniam dolore aut. Magnam sit aspernatur facilis maxime molestiae laudantium odio aut. Aliquid odit veritatis eveniet commodi quos consequuntur. Consequatur impedit dignissimos ad et est. A modi ratione vitae aut ratione quis illo. Laboriosam praesentium quae rerum sit. Aut rerum incidunt in est. Cumque doloremque aperiam sed iure. Quos veniam ex nulla id. Saepe officia corporis illo velit. Iure quia dolores corporis aliquam provident vel. Et quia eos ipsa debitis ipsa. Nihil architecto quisquam enim. Cum eveniet eaque illo maiores animi voluptatum deleniti. Aut quaerat laudantium recusandae totam asperiores enim expedita. Consequatur illo quia officiis.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (6, 'nostrum exercitationem', 'optio sit dolores architecto ipsam eligendi', 'omnis-et-qui', NULL,
        'Aut harum perspiciatis qui voluptatem. Doloribus non et aperiam ipsum et possimus. Nam sint et at velit sapiente ipsam iste. Accusantium ut sed incidunt qui rerum. Rerum quasi qui cupiditate quis. Voluptatem amet temporibus expedita. Possimus debitis eveniet cumque voluptas dicta ad. Reiciendis expedita alias numquam recusandae corrupti harum et. Facilis neque asperiores vel natus sapiente. Voluptas nulla quis est non iusto consequatur. Sed est itaque inventore tenetur veniam porro. Et cupiditate vel nisi laborum rerum. Sint fugit numquam culpa. Provident et est beatae nisi. Explicabo molestias in quis earum quae nihil voluptas. Ea facilis non est eligendi voluptatibus ipsum. Unde ut dicta molestiae ullam ipsum nulla. Sint sit consequatur quasi ut aut voluptatum hic ipsa. Laudantium sed quis aspernatur soluta qui enim. Nihil dolor provident provident pariatur molestiae sit. Praesentium quis laudantium deleniti voluptates. Illum ipsam a quasi maxime ut nihil nisi. Quis corrupti quos sit eligendi tenetur qui nisi. Omnis voluptatem ipsam facilis quidem debitis distinctio. Dolor tempore maxime nobis est necessitatibus est nihil. Doloribus molestiae est consequatur voluptatem. Aut aspernatur omnis aut voluptatem veritatis. Dolores ratione sit sunt reprehenderit. Esse eius ut aut ratione excepturi corporis. Ea occaecati voluptas aut quia iure. Ipsa et quaerat vitae dicta sed sequi. Aspernatur eveniet commodi aut fugiat quia. Repellendus maiores voluptas totam. Saepe non pariatur doloribus et molestias. Temporibus voluptatem sunt enim repellat. Quod sed cum qui et. Labore possimus odio aperiam eum non distinctio. Harum laudantium est dolores provident quia dolore. Enim minima nobis cupiditate consequuntur necessitatibus ut eum accusantium. Voluptatem quidem reiciendis nostrum.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (7, 'quidem sit', 'sint et fugiat rerum quasi aut', 'ipsum-suscipit-eos', NULL,
        'Laudantium enim quia non eum et. Qui velit distinctio dolor omnis. Dignissimos qui accusamus illo. Consectetur iure aliquam quos nemo delectus commodi perspiciatis. Aut voluptatem illum alias repellendus voluptates aut. Nulla error vel illum sunt cupiditate ipsa accusantium repudiandae. Temporibus culpa dolores debitis laborum rerum similique. Beatae et at velit minima facilis incidunt et. Dolor ut natus voluptatibus est. Quae ut quia harum ab sapiente necessitatibus pariatur. Ad a impedit voluptatem soluta aut error rem. Autem ut recusandae soluta possimus amet. Explicabo assumenda sit labore velit ratione. Dolores quia hic omnis fugiat. Quasi et deleniti corporis nam quia. Sequi quibusdam est consequatur quia ullam magni aut. Magnam qui nihil in nemo dolores at fugiat. Inventore cum aliquam ut hic. Beatae possimus qui perspiciatis. Doloremque officiis sed sint quis fugit optio. Dolorem qui minima sapiente repudiandae repellendus ipsum. Perferendis quaerat possimus ex ea tenetur. Neque eius pariatur voluptatum voluptatem consequatur perferendis dignissimos tempore. Eveniet eum ducimus voluptas. Est sunt eaque architecto. Maiores aperiam aut in. Voluptatem et ut quia aut dolor nulla. Ipsam magnam voluptas accusantium. Sequi voluptas fugit quia molestiae aut. Tenetur et delectus harum aut. Vitae vitae nihil voluptas dolorem laudantium voluptatem omnis. Saepe voluptatibus sunt ut quis odit. Explicabo explicabo est id suscipit hic atque excepturi. Unde quo expedita quis dolorem aperiam perspiciatis ex. Autem blanditiis omnis accusantium aspernatur repellat doloribus aut. Unde consequatur qui dolor. Et et et voluptatem nisi reiciendis. Et voluptates temporibus quibusdam eligendi sit mollitia. Eius aut quos eveniet aut. Quas ea voluptatem itaque deserunt.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (8, 'eligendi similique', 'impedit sit quia iusto aliquid numquam', 'doloremque-aut-aut', NULL,
        'Delectus nulla eum sed non ratione non. Qui est deserunt et rerum consequuntur. Voluptatem aut aut nesciunt aliquam dolorem. Quod assumenda molestiae eum atque in ipsam dolore. Nemo est dicta minus quo inventore. Et quia odit voluptas quam exercitationem et optio. Similique vitae quo optio quos dicta qui. Magni quibusdam ullam deserunt ut sunt perferendis ducimus. Non ut illo ab ea ut sed tenetur. In molestiae qui et nihil suscipit voluptatibus est. Omnis nisi accusamus labore atque. Quia ut quia est velit dolore suscipit ut quia. Aut sunt quibusdam vitae. Omnis est quam nihil tenetur. Maxime soluta amet nulla. Sunt omnis voluptatem commodi sunt fuga sit rem. Ut est quos sit voluptatem necessitatibus est veritatis. Cumque cumque perferendis deleniti dolorum rem qui. Libero doloribus nulla nemo. Enim qui atque labore commodi molestiae. Ipsam explicabo suscipit libero voluptates sit. Pariatur hic est tempore. Cum voluptates aliquid expedita ut amet perspiciatis sed. Quae rerum quaerat est molestiae aut. Aspernatur tenetur veritatis ullam dolorem et. Eos vel velit mollitia. Dolore maxime sint est autem accusamus. Fugit non impedit sapiente laborum itaque quas. Quis aut blanditiis voluptates iste dolor harum expedita. Incidunt ea laboriosam ipsum quas aut. Nostrum consequatur quibusdam ea exercitationem et et. Qui ex reprehenderit aperiam esse officiis qui. Et quam et ipsam dicta. Sed ducimus dicta cupiditate et aliquid et repellat et. Est sit officiis quibusdam esse. Nulla occaecati et quo autem consectetur impedit. Ipsa odit molestiae non. Exercitationem harum recusandae at quas est quaerat soluta dicta. Asperiores expedita et necessitatibus quis consectetur corporis asperiores. Alias veritatis corrupti ex quo.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (9, 'iusto ex', 'voluptatem labore tempore magnam non eos', 'qui-voluptatem-sunt', NULL,
        'Ea eos voluptatem quia deleniti ducimus ipsum. Omnis eligendi magnam aliquid accusantium saepe rerum. Accusantium quis et voluptatibus eos aut eos molestiae eveniet. Repellendus eum deleniti quibusdam aut dolores aut. Voluptatibus voluptas nihil a id similique quam reiciendis. Sapiente dignissimos id delectus itaque. Ut corrupti qui recusandae quod a. Debitis explicabo alias voluptas itaque minima. Aliquam aliquam magni ut quia magni eos. Nesciunt laborum deserunt debitis ipsum earum mollitia debitis. Ratione dolor ut voluptas aspernatur amet at est ipsam. Est vel dolor qui recusandae ut animi. Ut velit ex nulla praesentium itaque qui quae. Animi voluptatum quibusdam consequuntur ipsam. Debitis rerum consectetur nesciunt laudantium. Rem facilis et voluptatem rem sequi repudiandae ipsam. Vel natus hic repellendus iure repudiandae. Id accusantium nam sapiente officiis nesciunt dolor. Perspiciatis qui aut accusantium maxime laboriosam. Aut dolorem dolores nisi nobis voluptatum. Quia qui et sit veritatis. Qui est ipsum culpa dolor et velit. Esse culpa omnis et ut quo. Numquam necessitatibus perferendis quis. Consequatur quidem consequatur facilis quia suscipit expedita. Delectus atque quia amet consequatur et quia dolorem. Unde veniam dolorem velit veniam libero. Architecto qui debitis velit qui distinctio culpa laborum voluptas. Blanditiis beatae quo animi libero. Nihil illo eos voluptas rerum saepe ea. Totam quos voluptatem sit provident aliquid. Et illum corporis provident eligendi libero. Accusamus qui et tempore id libero. Maxime vero dolorum sit explicabo. Est hic voluptas sed labore qui vero. Repellendus ipsa temporibus nemo minima. Assumenda nisi tempore voluptas debitis voluptatum dignissimos recusandae. Sunt sed atque laudantium vel laudantium ut velit. Est et voluptatum autem laborum minima officia quis. Consequatur placeat veniam ullam neque facere.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (10, 'nisi dolore', 'similique velit reiciendis est doloribus optio', 'est-expedita-id', NULL,
        'Nobis iste illum qui cum aliquam tempore. Numquam odit ad officiis dolore et. Eius ratione qui sit eaque voluptatum similique illo. Non impedit beatae ipsa explicabo. Laudantium vel hic recusandae et totam ut eveniet. Et inventore doloremque ad magnam. Eum illum quis eveniet non deleniti illo. Qui et ut quidem. Amet sunt sed quae laborum et rem illo. Veritatis veritatis necessitatibus ipsa eum blanditiis aut. Officiis est excepturi id. Delectus unde ratione eum. Nostrum nam tempore omnis id voluptas esse. Nisi quisquam voluptatem autem architecto numquam omnis omnis. Unde alias saepe omnis occaecati. Officiis molestiae possimus ab ipsa quia voluptatem pariatur vel. Aliquam architecto est sit soluta. Nisi ut et veniam qui consequatur. Excepturi consequuntur facilis voluptatem voluptas. Et porro corrupti at accusamus. Nobis recusandae ex culpa id est sit. Animi architecto molestias aliquam repellat. Fuga illum ut et. Est reprehenderit eius et rerum similique alias dolorem. Error vel sed sapiente. Velit sint qui quia vero ut qui. Autem omnis et reiciendis consectetur est assumenda officia. Et quaerat eos exercitationem non quod temporibus. Facere ut consequatur quidem quisquam. Commodi voluptas enim consequatur explicabo praesentium. Similique maxime corrupti error velit. Esse tempora corporis architecto qui eum praesentium. Quasi minus officia nemo officiis dolore. Est enim deserunt corrupti omnis. Autem suscipit laboriosam sapiente. Dolores velit placeat iure enim vel vel assumenda. Quam consequatur voluptatem quo et cum commodi natus. Ut libero reiciendis et ad libero debitis. Qui quia perferendis eveniet culpa. Minima eveniet est perferendis sed illum magni voluptatem.',
        '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `title`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `class`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `link`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert into `settings`(`id`, `title`, `class`, `link`, `created_at`, `updated_at`, `deleted_at`)
values (1, 'facebook', 'fa fa-facebook', 'http://facebook.com', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (2, 'twitter', 'fa fa-twitter', 'http://twitter.com', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL),
       (3, 'demo@gmail.com', 'fa fa-envelope', 'http://gmail.com', '2022-06-07 05:35:09', '2022-06-07 05:35:09', NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`
(
    `id`                bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`             varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` timestamp NULL DEFAULT NULL,
    `password`          varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token`    varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at`        timestamp NULL DEFAULT NULL,
    `updated_at`        timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert into `users`(`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`,
                    `updated_at`)
values (1, 'Antoinette Dibbert', 'misty.von@example.com', '2022-06-07 05:35:07',
        '$2y$10$7zOKxs3aUg6eF/OIME3aFeC/RFWGN6qE/GZ2PyZ9AEfThjHrH5b9G', 'kGZy7Rq8SJ', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (2, 'Mrs. Della Wisoky DVM', 'larson.bradford@example.com', '2022-06-07 05:35:07',
        '$2y$10$.qMtnshdnCYuUE95fIGsq.Bi6JCrUWZaahACKem995x52GarF9.xK', 'LtNgLaH2Te', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (3, 'Wilfrid Upton', 'champlin.ambrose@example.org', '2022-06-07 05:35:08',
        '$2y$10$pHoUChHSeLTm7D5xk5Dm0OrereNSIfKnNMlftha2HPNION6YSkagu', 'tu5wsi3psw', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (4, 'Domenico Goldner', 'egreen@example.net', '2022-06-07 05:35:08',
        '$2y$10$dtPI9WB5feZywTxUSvHCX.1FuGzjX2vCzPxGFYGlBfzIDXSt.BnUi', '10Or9McDbG', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (5, 'Mrs. Elta Pfannerstill', 'gillian.lesch@example.com', '2022-06-07 05:35:08',
        '$2y$10$3ZPak5AGzq49.NdcKuY3nufOSn2wTG1oItiIVBhyzZ/cls4yZyW/2', 'kkfYmmc3As', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (6, 'Katheryn Quitzon', 'otto97@example.com', '2022-06-07 05:35:08',
        '$2y$10$nOQ92cjHNRSXZ.74mTpa2OUh4ElP/bDVrOkuVjY.6FXXEqJcQLiA6', 'pBg2UQpytS', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (7, 'Maudie Rowe', 'malika.vonrueden@example.net', '2022-06-07 05:35:08',
        '$2y$10$nqwcnvSCmzZFDXcbN7XejeOo2aPOeDOigDyvqNmI1uie5rZbIo9nW', 'u0XaU6qX5z', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (8, 'Berenice Harber', 'ohalvorson@example.com', '2022-06-07 05:35:08',
        '$2y$10$lMpoJcVa9jV7iqiSehb7F.GtGEopPIYywFpC8mz6Ph.VZfSZRPxtm', 'ZBKdgliCje', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (9, 'Therese Zemlak IV', 'mayert.breanna@example.org', '2022-06-07 05:35:08',
        '$2y$10$SWy8rXknkpOjS7vLtbx1s.tEfm1pglPLrv52G./KsLUGH.yQWbwj6', 'X9xZVMSNii', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08'),
       (10, 'Josefina Lehner DDS', 'rasheed.herzog@example.net', '2022-06-07 05:35:08',
        '$2y$10$RD5MzWM.otYuDh1kvjlPyOd.B2vVU5te4iGUs7gapTGcK2PoDs2OC', 'QlONOAcqQg', '2022-06-07 05:35:08',
        '2022-06-07 05:35:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
