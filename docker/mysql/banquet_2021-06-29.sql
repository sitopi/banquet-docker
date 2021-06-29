# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.32)
# データベース: banquet
# 作成時刻: 2021-06-29 03:18:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2021_04_08_042330_create_mst_drunkards_table',1),
	(2,'2021_04_08_042641_create_tbl_drunkard_appearance_historys_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ mst_drunkards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mst_drunkards`;

CREATE TABLE `mst_drunkards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `move_speed` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `mst_drunkards` WRITE;
/*!40000 ALTER TABLE `mst_drunkards` DISABLE KEYS */;

INSERT INTO `mst_drunkards` (`id`, `name`, `level`, `hp`, `attack`, `move_speed`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'駆けつけ一気の新人OL',13,24,3,4,'世の中を知らない彼女は出されるものをひたすら飲み続けている。今夜の彼女の寝床はどこになるのだろうか。','2021-06-20 22:02:40','2021-06-20 22:24:32'),
	(2,'マーライオン竹田',234,422,432,432,'ただ渡される液体を体内に流し込んでいる感覚はあるが、気づいたときには湖が広がっていた。だれもそこで泳ごうとは思わないだろう。','2021-06-20 22:15:10','2021-06-20 22:23:42'),
	(3,'後方腕組レモンサワー課長',321,32,123,32,'彼の好物がレモンサワーであることは全世界が知るところであり、レモンサワー片手に上座に鎮座する様子は夏の風物詩である。','2021-06-20 22:21:42','2021-06-20 22:21:42');

/*!40000 ALTER TABLE `mst_drunkards` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ tbl_drunkard_appearance_historys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_drunkard_appearance_historys`;

CREATE TABLE `tbl_drunkard_appearance_historys` (
  `drunkard_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`drunkard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
