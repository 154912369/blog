-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tale
-- ------------------------------------------------------
-- Server version	5.7.13-log

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

--
-- Table structure for table `t_attach`
--
drop database blog;
CREATE DATABASE blog;
use blog;

DROP TABLE IF EXISTS `t_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` varchar(100) NOT NULL DEFAULT '',
  `author_id` int(10) DEFAULT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_attach`
--

LOCK TABLES `t_attach` WRITE;
/*!40000 ALTER TABLE `t_attach` DISABLE KEYS */;
INSERT INTO `t_attach` VALUES (1,'1.jpeg','image','/upload/2017/06/t93vgdj6o8irgo87ds56u0ou0s.jpeg',1,1496816096);
/*!40000 ALTER TABLE `t_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comments`
--

DROP TABLE IF EXISTS `t_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `author_id` int(10) unsigned DEFAULT '0',
  `owner_id` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comments`
--

LOCK TABLES `t_comments` WRITE;
/*!40000 ALTER TABLE `t_comments` DISABLE KEYS */;
INSERT INTO `t_comments` VALUES (1,6,1497672195,'tzs',0,1,'101011@gmail.com','http://juejin.im','0:0:0:0:0:0:0:1',NULL,'棒棒哒，厉害了','comment','approved',0),(2,6,1497672339,'tzs',0,1,'101011@gmail.com','http://juejin.im','0:0:0:0:0:0:0:1',NULL,'再次评论，看看效果','comment','approved',0),(3,5,1497676424,'tzs',0,1,'101011@gmail.com','http://juejin.im','0:0:0:0:0:0:0:1',NULL,'vswfwfwfw','comment','approved',0);
/*!40000 ALTER TABLE `t_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_contents`
--

DROP TABLE IF EXISTS `t_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `author_id` int(10) unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(10) unsigned DEFAULT '0',
  `comments_num` int(10) unsigned DEFAULT '0',
  `allow_comment` tinyint(1) DEFAULT '1',
  `allow_ping` tinyint(1) DEFAULT '1',
  `allow_feed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contents`
--

LOCK TABLES `t_contents` WRITE;
/*!40000 ALTER TABLE `t_contents` DISABLE KEYS */;
INSERT INTO `t_contents` VALUES (1,'about my blog','about',1487853610,1497324440,'## Br\n\r\n[ZHENFENG13](https://gith\n',1,'post','publish','Java','Java',18,2,1,1,1);
/*!40000 ALTER TABLE `t_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_logs`
--

DROP TABLE IF EXISTS `t_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_logs`
--

LOCK TABLES `t_logs` WRITE;
/*!40000 ALTER TABLE `t_logs` DISABLE KEYS */;
INSERT INTO `t_logs` VALUES (1,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815277),(2,'登录后台',NULL,1,'0:0:0:0:0:0:0:1',1496815280);
/*!40000 ALTER TABLE `t_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_metas`
--

DROP TABLE IF EXISTS `t_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_metas`
--

LOCK TABLES `t_metas` WRITE;
/*!40000 ALTER TABLE `t_metas` DISABLE KEYS */;
INSERT INTO `t_metas` VALUES (1,'default',NULL,'category',NULL,0,0),(6,'my github','https://github.com/zhisheng17','link','http://www.54tianzhisheng.cn/img/avatar.png',1,0),(7,'my website','http://www.54tianzhisheng.cn','link','http://www.54tianzhisheng.cn/img/avatar.png',0,0),(8,'随笔','随笔','tag',NULL,0,0),(9,'Java','Java','tag',NULL,0,0),(10,'Java','Java','category','有关Java的博客',0,0),(11,'HashMap','HashMap','tag',NULL,0,0),(12,'HashTable','HashTable','tag',NULL,0,0),(13,'HashSet','HashSet','tag',NULL,0,0),(14,'ConcurrentHashMap','ConcurrentHashMap','tag',NULL,0,0),(15,'Pyspider','Pyspider','tag',NULL,0,0),(16,'Python','Python','tag',NULL,0,0),(17,'爬虫','爬虫','tag',NULL,0,0),(19,'Python','Python','category','有关Python的博客',0,0),(20,'随笔',NULL,'category',NULL,0,0);
/*!40000 ALTER TABLE `t_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_options`
--

DROP TABLE IF EXISTS `t_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_options`
--

LOCK TABLES `t_options` WRITE;
/*!40000 ALTER TABLE `t_options` DISABLE KEYS */;
INSERT INTO `t_options` VALUES ('allow_install','',''),('site_description','SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统',NULL),('site_keywords','Blog',NULL),('site_theme','default',NULL),('site_title','Blog',''),('social_github','https://github.com/zhisheng17',NULL),('social_twitter','',NULL),('social_weibo','',NULL),('social_zhihu','https://www.zhihu.com/people/tian-zhisheng/activities',NULL);
/*!40000 ALTER TABLE `t_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_relationships`
--

DROP TABLE IF EXISTS `t_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_relationships`
--

LOCK TABLES `t_relationships` WRITE;
/*!40000 ALTER TABLE `t_relationships` DISABLE KEYS */;
INSERT INTO `t_relationships` VALUES (3,9),(3,10),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(5,15),(5,16),(5,17),(6,9),(6,10);
/*!40000 ALTER TABLE `t_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_url` varchar(200) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group_name` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `mail` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (1,'admin','a66abb5684c45962d887564f08346e8d','1041218129@qq.com',NULL,'admin',1490756162,0,0,'visitor');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-22 11:20:50
