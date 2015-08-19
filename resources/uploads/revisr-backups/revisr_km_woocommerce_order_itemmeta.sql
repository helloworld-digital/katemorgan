
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
DROP TABLE IF EXISTS `km_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `km_woocommerce_order_itemmeta` DISABLE KEYS */;
INSERT INTO `km_woocommerce_order_itemmeta` VALUES (1,1,'_qty','1'),(2,1,'_tax_class',''),(3,1,'_product_id','25'),(4,1,'_variation_id','0'),(5,1,'_line_subtotal','2.6'),(6,1,'_line_total','2.6'),(7,1,'_line_subtotal_tax','0'),(8,1,'_line_tax','0'),(9,1,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(10,2,'method_id','free_shipping'),(11,2,'cost','0'),(12,2,'taxes','a:0:{}'),(13,3,'_qty','1'),(14,3,'_tax_class',''),(15,3,'_product_id','38'),(16,3,'_variation_id','0'),(17,3,'_line_subtotal','211.95'),(18,3,'_line_total','211.95'),(19,3,'_line_subtotal_tax','0'),(20,3,'_line_tax','0'),(21,3,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(22,4,'method_id','free_shipping'),(23,4,'cost','0'),(24,4,'taxes','a:0:{}'),(25,5,'_qty','1'),(26,5,'_tax_class',''),(27,5,'_product_id','33'),(28,5,'_variation_id','0'),(29,5,'_line_subtotal','393.9'),(30,5,'_line_total','393.9'),(31,5,'_line_subtotal_tax','0'),(32,5,'_line_tax','0'),(33,5,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(34,6,'method_id','free_shipping'),(35,6,'cost','0'),(36,6,'taxes','a:0:{}'),(37,7,'_qty','1'),(38,7,'_tax_class',''),(39,7,'_product_id','254'),(40,7,'_variation_id','0'),(41,7,'_line_subtotal','2.6'),(42,7,'_line_total','2.6'),(43,7,'_line_subtotal_tax','0'),(44,7,'_line_tax','0'),(45,7,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(46,8,'method_id','free_shipping'),(47,8,'cost','0'),(48,8,'taxes','a:0:{}'),(49,9,'_qty','5'),(50,9,'_tax_class',''),(51,9,'_product_id','229'),(52,9,'_variation_id','0'),(53,9,'_line_subtotal','13'),(54,9,'_line_total','13'),(55,9,'_line_subtotal_tax','0'),(56,9,'_line_tax','0'),(57,9,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(58,10,'_qty','1'),(59,10,'_tax_class',''),(60,10,'_product_id','31'),(61,10,'_variation_id','0'),(62,10,'_line_subtotal','393.9'),(63,10,'_line_total','393.9'),(64,10,'_line_subtotal_tax','0'),(65,10,'_line_tax','0'),(66,10,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(67,11,'method_id','free_shipping'),(68,11,'cost','0'),(69,11,'taxes','a:0:{}'),(187,27,'method_id','flat_rate'),(185,26,'_line_tax','0'),(186,26,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(184,26,'_line_subtotal_tax','0'),(183,26,'_line_total','2.6'),(182,26,'_line_subtotal','2.6'),(181,26,'_variation_id','0'),(180,26,'_product_id','229'),(178,26,'_qty','1'),(179,26,'_tax_class',''),(176,25,'_line_tax','0'),(177,25,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(175,25,'_line_subtotal_tax','0'),(174,25,'_line_total','36.4'),(173,25,'_line_subtotal','36.4'),(171,25,'_product_id','257'),(172,25,'_variation_id','0'),(170,25,'_tax_class',''),(169,25,'_qty','1'),(168,24,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(167,24,'_line_tax','0'),(165,24,'_line_total','2.6'),(166,24,'_line_subtotal_tax','0'),(164,24,'_line_subtotal','2.6'),(163,24,'_variation_id','0'),(162,24,'_product_id','248'),(161,24,'_tax_class',''),(160,24,'_qty','1'),(188,27,'cost','10'),(189,27,'taxes','a:0:{}'),(190,28,'_qty','1'),(191,28,'_tax_class',''),(192,28,'_product_id','976'),(193,28,'_variation_id','0'),(194,28,'_line_subtotal','0.01'),(195,28,'_line_total','0.01'),(196,28,'_line_subtotal_tax','0'),(197,28,'_line_tax','0'),(198,28,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(199,29,'method_id','tablerate'),(200,29,'cost','0'),(201,29,'taxes','a:0:{}'),(202,30,'_qty','1'),(203,30,'_tax_class',''),(204,30,'_product_id','976'),(205,30,'_variation_id','0'),(206,30,'_line_subtotal','0.01'),(207,30,'_line_total','0.01'),(208,30,'_line_subtotal_tax','0'),(209,30,'_line_tax','0'),(210,30,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(211,31,'method_id','free_shipping'),(212,31,'cost','0'),(213,31,'taxes','a:0:{}'),(234,34,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(233,34,'_line_tax','0'),(232,34,'_line_subtotal_tax','0'),(231,34,'_line_total','0.01'),(229,34,'_variation_id','0'),(230,34,'_line_subtotal','0.01'),(228,34,'_product_id','976'),(227,34,'_tax_class',''),(226,34,'_qty','1'),(235,35,'method_id','rp_table_rate'),(236,35,'cost','10'),(237,35,'taxes','a:0:{}'),(238,36,'_qty','1'),(239,36,'_tax_class',''),(240,36,'_product_id','976'),(241,36,'_variation_id','0'),(242,36,'_line_subtotal','0.01'),(243,36,'_line_total','0.01'),(244,36,'_line_subtotal_tax','0'),(245,36,'_line_tax','0'),(246,36,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(247,37,'_qty','1'),(248,37,'_tax_class',''),(249,37,'_product_id','306'),(250,37,'_variation_id','0'),(251,37,'_line_subtotal','164'),(252,37,'_line_total','164'),(253,37,'_line_subtotal_tax','0'),(254,37,'_line_tax','0'),(255,37,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(256,38,'method_id','rp_table_rate'),(257,38,'cost','0'),(258,38,'taxes','a:0:{}'),(259,39,'_qty','1'),(260,39,'_tax_class',''),(261,39,'_product_id','976'),(262,39,'_variation_id','0'),(263,39,'_line_subtotal','0.01'),(264,39,'_line_total','0.01'),(265,39,'_line_subtotal_tax','0'),(266,39,'_line_tax','0'),(267,39,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(268,40,'method_id','free_shipping'),(269,40,'cost','0'),(270,40,'taxes','a:0:{}');
/*!40000 ALTER TABLE `km_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

