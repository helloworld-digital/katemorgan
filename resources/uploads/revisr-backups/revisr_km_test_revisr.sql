
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
DROP TABLE IF EXISTS `km_test_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_test_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_test_revisr` WRITE;
/*!40000 ALTER TABLE `km_test_revisr` DISABLE KEYS */;
INSERT INTO `km_test_revisr` VALUES (1,'2015-04-13 04:55:45','Successfully created a new repository.','init'),(2,'2015-04-13 04:56:11','Successfully backed up the database.','backup'),(3,'2015-04-13 04:56:14','Successfully pushed 1 commit to origin/.','push'),(4,'2015-04-13 04:56:14','Committed <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=6&action=edit\">#1b7fae7</a> to the local repository.','commit'),(5,'2015-04-13 04:56:15','Successfully pushed 1 commit to origin/.','push'),(6,'2015-04-13 23:11:19','Successfully backed up the database.','backup'),(7,'2015-04-13 23:11:22','Successfully pushed 2 commits to origin/master.','push'),(8,'2015-04-13 23:11:22','Committed <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=15&action=edit\">#f50d7bb</a> to the local repository.','commit'),(9,'2015-04-13 23:11:22','Successfully pushed 0 commits to origin/master.','push'),(10,'2015-04-20 03:52:39','Successfully backed up the database.','backup'),(11,'2015-04-20 03:52:42','Successfully pushed 2 commits to origin/master.','push'),(12,'2015-04-20 03:52:42','Committed <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=39&action=edit\">#e79f6a6</a> to the local repository.','commit'),(13,'2015-04-20 03:52:42','Successfully pushed 0 commits to origin/master.','push'),(14,'2015-04-20 04:13:19','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=40&action=edit\">#6728c6c</a> from origin/master.','pull'),(15,'2015-04-20 04:16:05','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=41&action=edit\">#3082474</a> from origin/master.','pull'),(16,'2015-04-20 04:17:03','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=42&action=edit\">#3ef136d</a> from origin/master.','pull'),(17,'2015-04-20 04:18:06','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=43&action=edit\">#07d26c7</a> from origin/master.','pull'),(18,'2015-04-20 04:21:23','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=44&action=edit\">#de8c174</a> from origin/master.','pull'),(19,'2015-04-20 04:23:40','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=45&action=edit\">#20a193d</a> from origin/master.','pull'),(20,'2015-04-20 04:39:03','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=46&action=edit\">#2310a6c</a> from origin/master.','pull'),(21,'2015-04-20 04:40:04','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=47&action=edit\">#9ef4ce6</a> from origin/master.','pull'),(22,'2015-04-20 04:43:06','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=48&action=edit\">#11649b3</a> from origin/master.','pull'),(23,'2015-04-20 04:48:29','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=49&action=edit\">#6f0d7eb</a> from origin/master.','pull'),(24,'2015-04-20 04:52:54','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=50&action=edit\">#0a97236</a> from origin/master.','pull'),(25,'2015-04-20 04:54:20','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=51&action=edit\">#bec081c</a> from origin/master.','pull'),(26,'2015-04-20 05:07:23','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=52&action=edit\">#a4be78f</a> from origin/master.','pull'),(27,'2015-04-20 05:13:58','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=53&action=edit\">#47ba4d9</a> from origin/master.','pull'),(28,'2015-04-20 05:14:49','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=54&action=edit\">#479943f</a> from origin/master.','pull'),(29,'2015-04-20 05:20:34','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=55&action=edit\">#2354ce8</a> from origin/master.','pull'),(30,'2015-04-20 05:33:04','Pulled <a href=\"http://dev.xmarketing.com.au/katemorgan/wp-admin/post.php?post=56&action=edit\">#03f47d2</a> from origin/master.','pull');
/*!40000 ALTER TABLE `km_test_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

