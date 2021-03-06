-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: nba
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `score` float DEFAULT NULL,
  `assist` float DEFAULT NULL,
  `rebound` float DEFAULT NULL,
  `steal` float DEFAULT NULL COMMENT '謚｢譁ｭ',
  `block` float DEFAULT NULL COMMENT '逶門ｸｽ',
  `miss` float DEFAULT NULL,
  `play_time` float DEFAULT NULL,
  `illegal` float DEFAULT NULL,
  `three_point` float DEFAULT NULL,
  `penalty` float DEFAULT NULL COMMENT '鄂夂帥',
  `players_year` year(4) DEFAULT NULL COMMENT '騾臥ｧ蟷ｴ',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `zzz_idx` (`team`),
  CONSTRAINT `zzz` FOREIGN KEY (`team`) REFERENCES `teams` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'LeBron James',23,1,34,203,27.3,8.3,7.1,1.3,1.1,3.4,38,4.1,5,9,2003,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=638833913,3134162988&fm=179&app=42&f=JPEG?w=121&h=140'),(2,'James Harden',13,2,27,192,34.2,8.8,6.2,2.1,0.6,5.6,37.2,3.4,13,13,2008,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=952641737,1331015774&fm=179&app=42&f=JPEG?w=121&h=140'),(3,'Anthony Davis',23,28,27,206,29.4,13.3,4.4,1,2.5,4,36,4,3.2,9,2009,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3747792412,1463881156&fm=58&bpow=408&bpoh=612'),(4,'Kyrle Irving',11,4,27,196,22.7,4.8,6.4,2,0.8,4.2,30,4.1,6.1,10,2011,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1127544389,1724392703&fm=179&app=42&f=JPEG?w=121&h=140'),(5,'Giannis Antetokounmpo',34,3,25,210.8,26.7,5.9,12.6,1.3,1.5,4.1,33.5,3.4,2,13,2013,'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=7aa0a56c42c2d562f208d7ebdf2af7d2/f9198618367adab48975104f86d4b31c8701e411.jpg'),(6,'Stephen Curry',30,6,30,190.5,29.4,5.6,5.2,1.3,0.4,3,34.6,2.6,9.2,10.1,2009,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2367842334,1891850979&fm=179&app=42&f=JPEG?w=121&h=140'),(7,'Kevin Durant',35,6,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3793369333,1714607870&fm=179&app=42&f=JPEG?w=121&h=140'),(8,'Kawhi Leonard',2,9,27,200.7,27.5,3.2,8,1.9,0.5,2.1,34.9,1.6,5,8.8,2011,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3259863696,1809963211&fm=58&bpow=408&bpoh=612'),(9,'Kevin Love',2,22,27,200.7,27.5,3.2,8,1.9,0.5,2.1,34.9,1.6,5,8.8,2011,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2648408142,1117515247&fm=58&bpow=407&bpoh=612'),(10,'Russel Wesbrook',0,11,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2736305665,2580709331&fm=58'),(11,'Clris Paul',3,2,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2754541695,1963178686&fm=179&app=42&f=JPEG?w=121&h=140'),(12,'Joel Embild',21,7,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1958990470,1345757216&fm=58&bpow=408&bpoh=612'),(13,'Paul George',13,11,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=537421940,4156893877&fm=179&app=42&f=JPEG?w=121&h=140'),(14,'Damian Lillard',0,18,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=965313505,1290384133&fm=179&app=42&f=JPEG?w=121&h=140'),(15,'Blake Griffin',23,21,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3676584722,1967294155&fm=179&app=42&f=JPEG?w=121&h=140'),(16,'Kemba Walker',15,20,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3470453814,3790733911&fm=58&bpow=408&bpoh=612'),(17,'Bradley Beal',3,23,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1342462704,1611406349&fm=58&bpow=408&bpoh=612'),(18,'Devin Booker',1,8,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4229835522,694906547&fm=58&bpow=408&bpoh=612'),(19,'DeMar DeRozan',10,10,30,205.7,28.2,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=4077712738,3570829895&fm=179&app=42&f=JPEG?w=121&h=140'),(20,'JaVale McGee',7,1,30,213.4,11.1,6.1,7.3,0.8,1.1,3.3,35.7,1.9,8.9,9.8,2007,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3424254293,1258480136&fm=179&app=42&f=JPEG?w=121&h=140');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(30) NOT NULL,
  `team_win` int(11) DEFAULT NULL,
  `team_lose` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `team_boss` varchar(30) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL COMMENT '謗貞錐',
  `team_city` varchar(30) DEFAULT NULL,
  `team_area` varchar(30) DEFAULT NULL,
  `team_logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Lakers',23,21,'2019-01-15 17:35:43',NULL,9,'Los Angelas','west','lakers'),(2,'Rocket',24,18,'2019-01-15 16:19:26',NULL,4,'Houston','west','rocket'),(3,'Bucks',30,12,'2019-01-15 16:03:53',NULL,2,'Milwaukee','east','bucks'),(4,'Celtic',25,17,'2019-01-15 16:03:53',NULL,5,'Boston','east','celtic'),(5,'Heat',21,20,'2019-01-15 16:03:53',NULL,6,'Miami','east','heat'),(6,'Warrion',29,14,'2019-01-15 16:03:53',NULL,2,'Goden State','west','warrion'),(7,'76ers',28,16,NULL,NULL,4,'Philadelphia ','east','76ers'),(8,'Sun',11,33,NULL,NULL,15,'Phoenix ','west','sun'),(9,'Raptors',33,12,NULL,NULL,1,'Toronto','east','raptors'),(10,'Spurs',25,20,NULL,NULL,7,'San Antonio','west','spurs'),(11,'Thunder',26,16,'2019-01-15 16:08:51',NULL,3,'Oklahoma','west',NULL),(12,'Mavericks',20,23,NULL,NULL,13,'Dallas','west','mavericks'),(13,'Kings',23,21,NULL,NULL,10,'Sacramento ','west','kings'),(14,'Grizzlies',19,24,'2019-01-15 16:16:37',NULL,14,'Memphis ','west',NULL),(15,'Timberwolves',21,22,'2019-01-15 16:16:37',NULL,11,'Minnesota ','west',NULL),(16,'Nuggets',29,13,'2019-01-15 16:16:37',NULL,1,'Denver ','west',NULL),(17,'Clippers',24,19,'2019-01-15 16:16:37',NULL,6,'Los Angelas','west',NULL),(18,'Blazers',26,19,'2019-01-15 16:16:37',NULL,5,'Portland ','west',NULL),(19,'Jazz',24,21,'2019-01-15 16:16:37',NULL,8,'Utah ','west',NULL),(20,'Hornets',20,23,'2019-01-15 16:16:37',NULL,8,'Hornets','east',''),(21,'Pistons',18,23,'2019-01-15 16:16:37',NULL,10,'Detroit ','east',NULL),(22,'Cavaliers',9,35,'2019-01-15 16:16:37',NULL,15,'Cleveland ','east',NULL),(23,'Wizards',18,26,'2019-01-15 16:16:37',NULL,11,'Wizards','east',NULL),(24,'Magic',19,24,'2019-01-15 16:16:37',NULL,9,'Orlando ','east',NULL),(25,'Bulls',10,33,'2019-01-15 16:16:37',NULL,13,'Chicago ','east',NULL),(26,'Pacers',28,14,'2019-01-15 16:12:23',NULL,3,'Indiana ','east',NULL),(27,'Knicks',10,33,'2019-01-15 16:16:37',NULL,14,'New York','east',NULL),(28,'Pelicans',21,23,'2019-01-15 16:17:43',NULL,12,'New Orleans','east',NULL),(29,'Hawks',13,30,'2019-01-15 16:16:37',NULL,12,'Atlanta ','east',NULL),(30,'Nets',22,23,'2019-01-15 16:16:37',NULL,7,'Brooklyn ','east',NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-16 17:41:53
