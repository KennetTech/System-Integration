-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bankingsystem
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` bigint NOT NULL,
  `account_opened` date DEFAULT NULL,
  `account_type` bigint DEFAULT NULL,
  `ballance` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'1981-10-28',1,0,'Midas Well'),(2,'1984-03-23',1,4596,'Marge Innastraightline'),(3,'2010-12-05',1,4513,'Mary Gold'),(4,'1995-10-05',1,1193,'Bill Dollar'),(5,'1957-03-03',1,4213,'Dan Druff'),(6,'1967-03-11',1,244,'Douglas Furr'),(7,'1976-09-16',1,293,'Aretha Holly'),(8,'1962-08-08',1,3286,'Jim Sox'),(9,'2005-04-20',1,2904,'Hein Noon'),(10,'1970-07-17',1,3354,'Dan Geruss'),(11,'2021-06-10',1,4102,'Phil Graves'),(12,'1967-10-09',1,1159,'Al Dente'),(13,'2018-12-07',1,386,'Marj Oram'),(14,'1950-03-16',1,3516,'Claire Annette Reed'),(15,'2017-08-21',1,4353,'Gladys C. Hughes'),(16,'1999-07-20',1,2994,'Harrison Fire'),(17,'1976-12-25',1,3946,'Faye Kinnitt'),(18,'1995-03-10',1,3522,'I. P. Freely'),(19,'1966-09-07',1,902,'Ulee Daway'),(20,'1979-03-19',1,1054,'Mike Rohsopht'),(21,'1993-10-30',1,3578,'Helena Hanbaskett'),(22,'1969-10-02',1,3193,'Shandy Lear'),(23,'1962-03-06',1,3448,'Jacklyn Hyde'),(24,'1986-02-15',1,1823,'Rusty Pipes'),(25,'1990-03-12',1,2989,'Sandy C. Shore'),(26,'1990-04-04',1,2940,'Aretha Holly'),(27,'1966-07-21',1,3773,'Juan Morefore DeRhode'),(28,'1984-07-19',1,942,'Dusty Carr'),(29,'1968-02-27',1,2877,'Otto B. Kilt'),(30,'2006-09-29',1,4454,'Neve Adda'),(31,'1974-06-25',1,1964,'Rocky Beach'),(32,'1996-07-27',1,2791,'Cam Payne'),(33,'1994-07-02',1,4042,'Ben Lyon'),(34,'1969-01-28',1,164,'Robin Money'),(35,'1981-06-30',1,614,'Eddie Bull'),(36,'1968-11-16',1,1890,'Ima Lytle Teapot'),(37,'2004-11-17',1,390,'Stan Dup'),(38,'2011-09-02',1,1960,'Daisy Picking'),(39,'1961-01-27',1,1371,'Rory Storm'),(40,'1971-08-12',1,1168,'Ethel L. Cahall'),(41,'1991-09-16',1,2013,'Therese R. Green'),(42,'1968-08-16',1,1133,'Aretha Holly'),(43,'1987-04-01',1,1940,'Marsha Mellow'),(44,'1971-08-25',1,4223,'Rocky Shore'),(45,'1961-02-25',1,4617,'Hal E. Luya'),(46,'1965-02-28',1,3425,'Brice Tagg'),(47,'2011-02-01',1,305,'Jan U. Wharry'),(48,'2012-06-27',1,4284,'Sheri Cola'),(49,'1995-12-06',1,1110,'Fletcher Bisceps'),(50,'2004-06-16',1,4203,'Adam Baum');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` bigint NOT NULL AUTO_INCREMENT,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'1999-10-07','gene.veum@yahoo.com','Fermin Waters'),(2,'1966-01-01','audrie.murphy@yahoo.com','Lois Orn'),(3,'1978-09-18','adriane.cormier@hotmail.com','Eartha Johns'),(4,'1979-08-26','towanda.walsh@hotmail.com','Tory Hammes'),(5,'1961-12-29','jeramy.hintz@gmail.com','Brendan Cummerata'),(6,'1998-07-27','domenica.schneider@gmail.com','Janae White'),(7,'1964-05-18','damian.romaguera@hotmail.com','Cruz Franecki'),(8,'1972-06-29','dane.botsford@hotmail.com','Zana Walker'),(9,'1969-04-09','demetrius.jones@hotmail.com','Katelin Friesen'),(10,'1985-04-11','isobel.kihn@gmail.com','Racquel Gutkowski'),(11,'1978-09-24','dewayne.glover@yahoo.com','Hector Kunde'),(12,'1964-07-19','nathaniel.hauck@hotmail.com','Alice McKenzie'),(13,'1978-03-16','shawna.langworth@gmail.com','Kirby Senger'),(14,'1962-11-22','arthur.powlowski@hotmail.com','Edmond Mante'),(15,'1971-08-12','nolan.dickens@gmail.com','Lance Mayer'),(16,'1988-01-02','glenda.connelly@hotmail.com','Britni Rolfson'),(17,'1961-07-14','jackie.mcglynn@gmail.com','Thomasina Feil'),(18,'1982-06-11','madelene.koss@hotmail.com','Ambrose Mitchell'),(19,'1973-01-06','iona.goodwin@gmail.com','Daren Runolfsson'),(20,'1990-10-25','octavio.gusikowski@yahoo.com','Jule Mraz'),(21,'1989-10-29','evangelina.monahan@hotmail.com','Benito Mills'),(22,'1991-09-16','yong.von@gmail.com','Lester Schneider'),(23,'1961-06-27','madlyn.hudson@gmail.com','Gregg Jacobi'),(24,'1976-09-20','burma.fritsch@hotmail.com','Wilford Anderson'),(25,'1970-03-21','noe.abbott@yahoo.com','Grover Altenwerth'),(26,'1971-07-25','jen.shanahan@gmail.com','Janeen Becker'),(27,'1969-05-30','alesha.vandervort@gmail.com','Jamar Williamson'),(28,'1963-03-23','emery.lakin@hotmail.com','Caprice Friesen'),(29,'1977-05-26','ruben.franecki@yahoo.com','Lyndsey Howe'),(30,'1971-02-15','kermit.dietrich@gmail.com','Cody Quitzon'),(31,'1989-03-18','frankie.wehner@yahoo.com','Garrett Abshire'),(32,'1977-12-22','dusty.conroy@yahoo.com','Casey Schaden'),(33,'1995-12-17','claude.thiel@yahoo.com','Madelaine Reichel'),(34,'1986-08-07','kyung.medhurst@gmail.com','Yoko Lindgren'),(35,'1969-09-08','henry.becker@hotmail.com','Milton Johnson'),(36,'1969-02-24','suzi.runolfsdottir@hotmail.com','Maxine Purdy'),(37,'1965-08-18','myung.bechtelar@yahoo.com','Donovan Nikolaus'),(38,'1977-12-14','kimbery.wilkinson@hotmail.com','Fabian Lindgren'),(39,'1958-10-02','craig.ebert@gmail.com','Darwin Krajcik'),(40,'1993-06-03','galen.koch@gmail.com','Van Schimmel'),(41,'1985-12-02','angelo.jones@hotmail.com','Melissia Hodkiewicz'),(42,'1976-08-31','dianna.vandervort@hotmail.com','Meaghan Kling'),(43,'1978-12-13','leonora.dibbert@hotmail.com','Rex Bergnaum'),(44,'2000-04-12','tianna.green@hotmail.com','Elden Trantow'),(45,'2004-02-12','samual.prohaska@hotmail.com','Gianna Monahan'),(46,'1982-03-30','eli.cartwright@yahoo.com','Francie Towne'),(47,'1983-06-28','zandra.white@hotmail.com','Julio Waters'),(48,'1961-05-20','assunta.moore@hotmail.com','Elizabeth Huel'),(49,'2002-05-18','willard.friesen@gmail.com','Gilbert Price'),(50,'1972-08-04','jesus.kunze@hotmail.com','Teena Cartwright');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_accounts`
--

DROP TABLE IF EXISTS `customers_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_accounts` (
  `customer_id` bigint NOT NULL,
  `account_id` bigint NOT NULL,
  PRIMARY KEY (`customer_id`,`account_id`),
  KEY `FKndwk6ilv1ljumwu4qejo3ocpd` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_accounts`
--

LOCK TABLES `customers_accounts` WRITE;
/*!40000 ALTER TABLE `customers_accounts` DISABLE KEYS */;
INSERT INTO `customers_accounts` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `customers_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (101);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overdraft`
--

DROP TABLE IF EXISTS `overdraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overdraft` (
  `overdraft_id` bigint NOT NULL,
  `amount` double NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `account_id` bigint NOT NULL,
  PRIMARY KEY (`overdraft_id`),
  KEY `FKhgi9ul8g39i8igu057nwi6g2t` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overdraft`
--

LOCK TABLES `overdraft` WRITE;
/*!40000 ALTER TABLE `overdraft` DISABLE KEYS */;
/*!40000 ALTER TABLE `overdraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` bigint NOT NULL,
  `amount` double NOT NULL,
  `date_and_time` datetime DEFAULT NULL,
  `from_account_id` bigint DEFAULT NULL,
  `to_account_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (51,4687.16,'2005-12-13 12:42:14',1,'DK3238722375332260'),(52,1960.62,'2015-02-16 11:22:30',2,'DK2157498241705813'),(53,1029.37,'2015-06-06 18:42:05',3,'DK5271119990067591'),(54,5349.34,'2000-03-05 11:43:25',4,'DK4000174376013703'),(55,3260.62,'1991-01-12 03:45:43',5,'DK9561629635024739'),(56,5289.5,'2015-04-18 13:16:00',6,'DK6945718221366093'),(57,281.91,'2018-08-03 05:56:09',7,'DK3043562086955031'),(58,3271.45,'2005-12-05 22:03:39',8,'DK9248449062780160'),(59,2715.52,'2006-07-11 16:57:26',9,'DK6646128979276354'),(60,5060.17,'2021-07-31 12:07:47',10,'DK4457535653623177'),(61,622.43,'2022-01-19 00:48:27',11,'DK3319993979655609'),(62,5692.09,'1983-07-04 05:44:48',12,'DK1036596880311862'),(63,4759.99,'2020-02-26 16:32:12',13,'DK3629660207628245'),(64,586.55,'1974-06-14 15:19:15',14,'DK1956185385358797'),(65,1428.1,'2017-08-31 14:53:19',15,'DK3240693381469269'),(66,4239.13,'2021-12-24 10:26:31',16,'DK1113687216487975'),(67,1276.65,'2004-08-26 15:41:51',17,'DK3520096280421557'),(68,4128.12,'1996-02-03 08:31:25',18,'DK6161474165061062'),(69,2085.04,'1974-11-10 20:28:08',19,'DK6713091594401092'),(70,3390.44,'2018-05-20 08:46:15',20,'DK1542027051317311'),(71,455.85,'2004-09-14 22:40:00',21,'DK2474136455686607'),(72,1009.16,'1994-11-10 01:51:29',22,'DK6291130920100810'),(73,582.79,'2015-01-19 17:31:05',23,'DK5825986141912172'),(74,3851.51,'2020-02-12 08:03:35',24,'DK9755294698908468'),(75,1650.79,'2010-05-03 17:30:03',25,'DK7526106299848327'),(76,688.05,'1992-02-04 05:42:20',26,'DK0245932495927350'),(77,189.05,'1989-07-03 12:20:53',27,'DK3449227140540119'),(78,3617.55,'2015-02-24 20:48:01',28,'DK1789707535466238'),(79,3084.11,'1979-01-26 19:28:02',29,'DK2146072391282625'),(80,5236.63,'2009-10-27 07:31:38',30,'DK9436009446605575'),(81,4169.87,'2004-06-23 08:33:38',31,'DK7910942377483584'),(82,3376.91,'2017-01-18 00:25:22',32,'DK6127856996175941'),(83,3989.26,'2022-05-02 19:07:10',33,'DK3099569891516844'),(84,2336.74,'1976-08-04 07:43:41',34,'DK9469326140567847'),(85,5448.58,'2001-01-05 08:17:14',35,'DK1066015070903528'),(86,3719.01,'2015-05-23 00:51:16',36,'DK6173843079297782'),(87,1146.49,'2014-10-04 13:43:17',37,'DK3611983714878402'),(88,1619.23,'2014-06-21 03:19:33',38,'DK3446233033840259'),(89,1880.38,'1997-05-05 11:42:12',39,'DK4956163002210848'),(90,4184.29,'2016-03-30 09:02:23',40,'DK6364377850317085'),(91,412.41,'2008-06-07 05:49:30',41,'DK7208273728861411'),(92,3932.81,'1995-01-06 04:21:16',42,'DK8588001558727261'),(93,5981.86,'2008-10-11 08:58:35',43,'DK7538411195687487'),(94,5083.39,'1975-07-14 14:43:57',44,'DK6206238996153462'),(95,6277.6,'1990-04-13 19:26:54',45,'DK6535008873059697'),(96,572.2,'1983-02-03 15:24:12',46,'DK0658184103863122'),(97,2878.48,'2012-07-01 15:02:04',47,'DK6802079290023501'),(98,3579.86,'2018-04-12 17:40:44',48,'DK4037380653067016'),(99,5214.25,'2003-03-23 03:17:39',49,'DK6643277672316781'),(100,5327.39,'2007-04-07 19:35:37',50,'DK1318325302346646');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27  8:45:27
