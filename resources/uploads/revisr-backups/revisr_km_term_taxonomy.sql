
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `km_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `km_term_taxonomy` DISABLE KEYS */;
INSERT INTO `km_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'product_type','',0,27),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_cat','Kate Morgan Meal Replacement Shakes come in a wide variety of flavours and are heavility fortified with vitamins and minerals to keep you healthy while you lose weight. They taste great and keep you feeling fuller for longer.  ',0,7),(7,7,'product_cat','Kate Morgan Meal Replacement Cremes are available in two delicious flavours: Chocolate and Vanilla.  They are a great alternative to shakes as they are a thick European Style Creme that you mix.  They are heavility fortified with vitamins and minerals to keep you healthy while you lose weight. They taste great and keep you feeling fuller for longer.  ',0,2),(15,15,'product_cat','Everything you need to start losing weight with Kate Morgan! Your very first Kate Morgan purchase should incorporate one of the following starter packs which include: Program Guide, Food Guide, a Shaker and an introductory supply of meal replacement formulas so that you can sample all the flavours available. Choose the starter that best suits you with either a 2 week, 4 week or 8 week supply of Kate Morgan meal replacement formulas. Additional to the starter packs, you may choose to try the Kate Morgan range of meal replacement soups, cremes or bars.. For your convenience Kate Morgan has both 10 day and 7 day packs available to purchase.  The 10 day pack contains a mix of the top 5 flavoured shakes.  The 7 day packs come in your selected flavour.',0,11),(9,9,'product_cat','Kate Morgan Meal Replacement Soups  and are heavility fortified with vitamins and minerals to keep you healthy while you lose weight. They taste great and are perfect for those cooler days.  ',0,1),(10,10,'product_cat','The Kate Morgan Meal Replacement Double Chocolate Bar is a convenient and easy option to eat on the go.  It is a great  alternative for lunch and tastes like real Chocolate.',0,1),(12,12,'nav_menu','',0,3),(13,13,'nav_menu','',0,3),(14,14,'nav_menu','',0,5),(17,17,'product_cat','As part of the Kate Morgan program we recommend that you purcahse items from this section to assist you with your weight loss journey',0,5);
/*!40000 ALTER TABLE `km_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

