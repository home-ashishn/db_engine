-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_has_pattern
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `equity_data_has_pattern`
--

DROP TABLE IF EXISTS `equity_data_has_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern`
--

LOCK TABLES `equity_data_has_pattern` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern` VALUES (1,'SBIN','2017-04-03',293.40,294.80,295.70,292.20,293.40,293.15,293.83,10509610.00,3088047360.00,63796,3224137,30.68),(2,'SBIN','2017-04-05',293.15,293.30,298.75,289.65,297.00,297.35,294.71,21936648.00,6465018368.00,143045,9434760,43.01),(3,'SBIN','2017-04-06',297.35,295.45,297.55,291.45,292.25,292.85,294.35,18413112.00,5419869696.00,90051,6325489,34.35),(4,'SBIN','2017-04-07',292.85,291.70,294.80,287.65,288.30,289.45,292.04,10765502.00,3143916032.00,67483,3287133,30.53),(5,'SBIN','2017-04-10',289.45,289.80,290.35,286.55,290.00,289.35,288.81,10307875.00,2977057536.00,95079,3192927,30.98),(6,'SBIN','2017-04-11',289.35,289.30,295.15,288.80,294.30,294.50,292.69,11682024.00,3419233536.00,93318,4281388,36.65),(7,'SBIN','2017-04-12',294.50,294.00,295.45,289.10,290.25,290.15,291.41,13251421.00,3861572864.00,88924,4725911,35.66),(8,'SBIN','2017-04-13',290.15,290.25,293.10,290.00,292.00,291.55,291.41,9944020.00,2897768960.00,73697,3191327,32.09),(9,'SBIN','2017-04-17',291.55,291.10,292.75,288.50,290.20,289.90,289.82,8146800.00,2361107200.00,70366,2782552,34.16),(10,'SBIN','2017-04-18',289.90,291.05,296.90,288.40,291.55,164.70,293.26,13457050.00,3946372608.00,112786,3933986,29.23),(11,'SBIN','2017-04-19',290.30,291.55,291.75,282.90,284.90,164.95,286.36,18149996.00,5197413888.00,106330,8414421,46.36),(12,'SBIN','2017-04-20',284.05,283.90,286.90,282.20,284.85,158.50,284.50,14514929.00,4129487360.00,134919,5768064,39.74),(13,'SBIN','2017-04-21',284.80,287.00,287.00,279.25,282.40,156.30,282.73,12042308.00,3404704768.00,90196,3890947,32.31),(14,'SBIN','2017-04-24',282.20,283.25,287.85,280.90,286.05,151.80,284.64,10077853.00,2868591360.00,89547,3206400,31.82),(15,'SBIN','2017-04-25',286.05,287.50,288.80,285.00,285.90,155.90,286.69,11531902.00,3306125568.00,146257,5021274,43.54),(16,'SBIN','2017-04-26',286.05,287.10,289.50,283.35,285.75,158.75,287.17,13836891.00,3973502464.00,124870,5730697,41.42),(17,'SBIN','2017-04-27',286.45,286.45,287.95,281.05,282.90,162.05,283.58,22622372.00,6415248384.00,119362,13404034,59.25),(18,'SBIN','2017-04-28',282.05,283.00,290.75,282.50,289.40,181.15,286.80,14152004.00,4058772992.00,86994,4940261,34.91),(19,'SBIN','2017-05-02',289.75,290.25,292.50,287.10,288.35,182.75,289.61,9754789.00,2825042432.00,79720,3226892,33.08),(20,'SBIN','2017-05-03',288.30,289.40,293.20,285.80,289.40,188.40,289.52,13950914.00,4039031552.00,86140,4756276,34.09),(21,'SBIN','2017-05-04',289.80,294.00,300.00,293.10,299.80,183.35,296.49,24534924.00,7274385408.00,141660,7644530,31.16),(22,'SBIN','2017-05-05',299.05,301.00,304.90,292.15,295.95,183.40,299.21,34756332.00,10399339520.00,192131,9028419,25.98),(23,'SBIN','2017-05-08',296.00,296.10,300.75,293.90,298.80,180.50,298.68,11560550.00,3452853248.00,87129,3497415,30.25),(24,'SBIN','2017-05-09',299.40,300.90,300.90,295.25,296.40,180.10,297.18,7843574.00,2330960384.00,52271,1619122,20.64),(25,'SBIN','2017-05-10',296.50,297.00,298.15,293.00,294.85,181.75,295.51,8699405.00,2570749696.00,54706,2414488,27.75),(26,'SBIN','2017-05-11',294.45,295.90,299.40,294.45,297.70,185.30,297.34,11934889.00,3548713728.00,75103,5119985,42.90),(27,'SBIN','2017-05-12',298.10,300.00,302.60,296.00,297.85,185.20,299.11,13376269.00,4000935168.00,80897,4186552,31.30),(28,'SBIN','2017-05-15',297.90,298.40,302.00,297.50,300.85,186.35,300.31,10383539.00,3118315008.00,85232,4253034,40.96),(29,'SBIN','2017-05-16',301.40,302.00,308.40,299.35,308.05,191.25,304.43,17533440.00,5337697280.00,130379,6038637,34.44),(30,'SBIN','2017-05-17',307.50,308.00,308.80,305.50,307.05,196.80,307.22,14120513.00,4338137600.00,83419,5555959,39.35),(31,'SBIN','2017-05-18',307.65,304.85,307.90,302.00,302.00,197.50,304.49,15471393.00,4710915584.00,109109,5470333,35.36),(32,'SBIN','2017-05-19',302.95,304.45,315.30,302.00,308.95,196.60,308.83,55250968.00,17062912000.00,339663,10945486,19.81),(33,'SBIN','2017-05-22',308.00,308.95,309.40,293.20,294.40,188.30,298.80,35771220.00,10688311296.00,239823,13476242,37.67),(34,'SBIN','2017-05-23',294.30,295.00,295.90,287.25,288.85,189.50,290.25,19846852.00,5760600576.00,133995,5684339,28.64),(35,'SBIN','2017-05-24',288.85,290.05,290.45,281.65,283.25,197.55,285.51,16435958.00,4692594688.00,120004,4768521,29.01),(36,'SBIN','2017-05-25',283.15,284.15,291.35,283.55,290.00,194.25,287.27,15018467.00,4314318336.00,112707,5507686,36.67),(37,'SBIN','2017-05-26',290.10,290.50,291.00,285.30,289.00,195.65,287.71,12304394.00,3540130816.00,139676,4485862,36.46),(38,'SBIN','2017-05-29',288.45,288.90,290.85,283.30,283.60,194.70,286.97,10619968.00,3047571456.00,86060,3905775,36.78),(39,'SBIN','2017-05-30',288.45,288.90,290.85,283.30,283.60,193.30,286.97,10620000.00,3047569920.00,86060,3905775,36.78),(40,'SBIN','2017-05-31',288.45,288.90,290.85,283.30,283.60,192.10,286.97,10620000.00,3047569920.00,86060,3905775,36.78);
/*!40000 ALTER TABLE `equity_data_has_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_pattern_rally_top`
--

DROP TABLE IF EXISTS `equity_data_has_pattern_rally_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern_rally_top` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_rally_top`
--

LOCK TABLES `equity_data_has_pattern_rally_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_rally_top` VALUES (2,'SBIN','2017-04-05',293.15,293.30,298.75,289.65,297.00,297.35,294.71,21936648.00,6465018368.00,143045,9434760,43.01),(31,'SBIN','2017-05-18',307.65,304.85,307.90,302.00,302.00,197.50,304.49,15471393.00,4710915584.00,109109,5470333,35.36),(35,'SBIN','2017-05-24',288.85,290.05,290.45,281.65,283.25,197.55,285.51,16435958.00,4692594688.00,120004,4768521,29.01);
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_pattern_top_temp`
--

DROP TABLE IF EXISTS `equity_data_has_pattern_top_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern_top_temp` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_top_temp`
--

LOCK TABLES `equity_data_has_pattern_top_temp` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_top_temp` VALUES (2,'SBIN','2017-04-05',293.15,293.30,298.75,289.65,297.00,297.35,294.71,21936648.00,6465018368.00,143045,9434760,43.01),(31,'SBIN','2017-05-18',307.65,304.85,307.90,302.00,302.00,197.50,304.49,15471393.00,4710915584.00,109109,5470333,35.36),(35,'SBIN','2017-05-24',288.85,290.05,290.45,281.65,283.25,197.55,285.51,16435958.00,4692594688.00,120004,4768521,29.01);
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_second_shoulder_top`
--

DROP TABLE IF EXISTS `equity_data_has_second_shoulder_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_second_shoulder_top` (
  `head_row_id` int(5) NOT NULL,
  `ROW_ID` int(5) NOT NULL,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float DEFAULT NULL,
  `OPEN_PRICE` float DEFAULT NULL,
  `HIGH_PRICE` float DEFAULT NULL,
  `LOW_PRICE` float DEFAULT NULL,
  `LAST_PRICE` float DEFAULT NULL,
  `CLOSE_PRICE` float DEFAULT NULL,
  `AVERAGE_PRICE` float DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float DEFAULT NULL,
  `TURNOVER` float DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`,`head_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_second_shoulder_top`
--

LOCK TABLES `equity_data_has_second_shoulder_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_second_shoulder_top` DISABLE KEYS */;
INSERT INTO `equity_data_has_second_shoulder_top` VALUES (35,37,'SBIN','2017-05-26',290.1,290.5,291,285.3,289,195.65,287.71,12304400,3540130000,139676,4485862,36.46);
/*!40000 ALTER TABLE `equity_data_has_second_shoulder_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_event_log`
--

DROP TABLE IF EXISTS `has_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_event_log` (
  `has_event_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `eval_run_id` int(11) DEFAULT NULL,
  `has_event_short_desc` varchar(45) DEFAULT NULL,
  `has_event_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`has_event_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_event_log`
--

LOCK TABLES `has_event_log` WRITE;
/*!40000 ALTER TABLE `has_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_first_shoulder_data`
--

DROP TABLE IF EXISTS `has_first_shoulder_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_first_shoulder_data` (
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date NOT NULL,
  `first_shoulder_top_close_price` float NOT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) NOT NULL,
  `head_date` date NOT NULL,
  `head_close_price` float NOT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`first_shoulder_top_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_first_shoulder_data`
--

LOCK TABLES `has_first_shoulder_data` WRITE;
/*!40000 ALTER TABLE `has_first_shoulder_data` DISABLE KEYS */;
INSERT INTO `has_first_shoulder_data` VALUES (31,'2017-05-18',197.5,33,'2017-05-22',188.3,35,'2017-05-24',197.55,36,'2017-05-25',194.25);
/*!40000 ALTER TABLE `has_first_shoulder_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_neckline_points`
--

DROP TABLE IF EXISTS `has_neckline_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_neckline_points` (
  `has_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `curr_date` date DEFAULT NULL,
  `price_value` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`has_id`,`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_neckline_points`
--

LOCK TABLES `has_neckline_points` WRITE;
/*!40000 ALTER TABLE `has_neckline_points` DISABLE KEYS */;
INSERT INTO `has_neckline_points` VALUES (92,34,'2017-05-23',188.85),(92,35,'2017-05-24',189.45),(92,36,'2017-05-25',190.00),(92,37,'2017-05-26',190.55),(92,38,'2017-05-29',191.10),(92,39,'2017-05-30',191.70),(92,40,'2017-05-31',192.25),(92,41,'2017-06-01',192.80),(92,42,'2017-06-02',193.40),(92,43,'2017-06-05',193.95),(92,44,'2017-06-06',194.50),(92,45,'2017-06-07',195.10),(92,46,'2017-06-08',195.65),(92,47,'2017-06-09',196.20),(92,48,'2017-06-12',196.75);
/*!40000 ALTER TABLE `has_neckline_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_pattern_rules`
--

DROP TABLE IF EXISTS `has_pattern_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_pattern_rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_value` float NOT NULL,
  `rule_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_name_UNIQUE` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pattern_rules`
--

LOCK TABLES `has_pattern_rules` WRITE;
/*!40000 ALTER TABLE `has_pattern_rules` DISABLE KEYS */;
INSERT INTO `has_pattern_rules` VALUES (1,'HEAD_DURATION_PERCENTAGE_OF_RALLY',5,'TIME TAKEN TO MAKE LOW AFTER IDENTIFYING HEAD PEAK. ALSO SAME TIME IS USED TO VERIFY THAT THIS IS LOW POINT FROM FUTURE VALUES'),(2,'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE',0.3,'MAX VALUE FOR SLOPE OF NECKLINE IN ABSOLUTE TERMS');
/*!40000 ALTER TABLE `has_pattern_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_pattern_type`
--

DROP TABLE IF EXISTS `has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_pattern_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pattern_type`
--

LOCK TABLES `has_pattern_type` WRITE;
/*!40000 ALTER TABLE `has_pattern_type` DISABLE KEYS */;
INSERT INTO `has_pattern_type` VALUES (1,'SHORT_CUT',NULL),(2,'FULL_LOW',NULL);
/*!40000 ALTER TABLE `has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_data`
--

DROP TABLE IF EXISTS `identified_has_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_data` (
  `has_id` int(5) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date DEFAULT NULL,
  `first_shoulder_top_close_price` float DEFAULT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) DEFAULT NULL,
  `head_date` date DEFAULT NULL,
  `head_close_price` float DEFAULT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  `second_shoulder_top_row_id` int(5) DEFAULT NULL,
  `second_shoulder_top_date` date DEFAULT NULL,
  `second_shoulder_top_close_price` float DEFAULT NULL,
  `second_shoulder_low_row_id` int(5) DEFAULT NULL,
  `second_shoulder_low_date` date DEFAULT NULL,
  `second_shoulder_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`has_id`,`symbol`,`first_shoulder_top_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
INSERT INTO `identified_has_data` VALUES (92,'SBIN',31,'2017-05-18',197.5,33,'2017-05-22',188.3,35,'2017-05-24',197.55,36,'2017-05-25',194.25,37,'2017-05-26',195.65,NULL,NULL,NULL);
/*!40000 ALTER TABLE `identified_has_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_neckline_data`
--

DROP TABLE IF EXISTS `identified_has_neckline_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_neckline_data` (
  `has_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `neckline_slope_value` float DEFAULT NULL,
  PRIMARY KEY (`has_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
INSERT INTO `identified_has_neckline_data` VALUES (92,33,'2017-05-22',188.3,0.3);
/*!40000 ALTER TABLE `identified_has_neckline_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_pattern_type`
--

DROP TABLE IF EXISTS `identified_has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_pattern_type` (
  `has_id` int(11) NOT NULL,
  `identified_pattern_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_pattern_type`
--

LOCK TABLES `identified_has_pattern_type` WRITE;
/*!40000 ALTER TABLE `identified_has_pattern_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_sessions`
--

DROP TABLE IF EXISTS `market_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_sessions` (
  `row_id` int(5) NOT NULL,
  `session_date` date DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_sessions`
--

LOCK TABLES `market_sessions` WRITE;
/*!40000 ALTER TABLE `market_sessions` DISABLE KEYS */;
INSERT INTO `market_sessions` VALUES (1,'2017-04-03'),(2,'2017-04-05'),(3,'2017-04-06'),(4,'2017-04-07'),(5,'2017-04-10'),(6,'2017-04-11'),(7,'2017-04-12'),(8,'2017-04-13'),(9,'2017-04-17'),(10,'2017-04-18'),(11,'2017-04-19'),(12,'2017-04-20'),(13,'2017-04-21'),(14,'2017-04-24'),(15,'2017-04-25'),(16,'2017-04-26'),(17,'2017-04-27'),(18,'2017-04-28'),(19,'2017-05-02'),(20,'2017-05-03'),(21,'2017-05-04'),(22,'2017-05-05'),(23,'2017-05-08'),(24,'2017-05-09'),(25,'2017-05-10'),(26,'2017-05-11'),(27,'2017-05-12'),(28,'2017-05-15'),(29,'2017-05-16'),(30,'2017-05-17'),(31,'2017-05-18'),(32,'2017-05-19'),(33,'2017-05-22'),(34,'2017-05-23'),(35,'2017-05-24'),(36,'2017-05-25'),(37,'2017-05-26'),(38,'2017-05-29'),(39,'2017-05-30'),(40,'2017-05-31'),(41,'2017-06-01'),(42,'2017-06-02'),(43,'2017-06-05'),(44,'2017-06-06'),(45,'2017-06-07'),(46,'2017-06-08'),(47,'2017-06-09'),(48,'2017-06-12'),(49,'2017-06-13'),(50,'2017-06-14'),(51,'2017-06-15');
/*!40000 ALTER TABLE `market_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'engine_has_pattern'
--
/*!50003 DROP PROCEDURE IF EXISTS `backtest_identify_all_has_pattern_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `backtest_identify_all_has_pattern_type`(
duration_days INT)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_has_id INT;
  DECLARE var_second_shoulder_top_row_id INT;
  DECLARE var_second_shoulder_top_close_price FLOAT;

  DECLARE calculated_cut_off_date DATE;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int DEFAULT 0;
    DECLARE var_cut_off_date_row_id int;




      DECLARE identified_has_details CURSOR FOR
    SELECT DISTINCT
        has_id,second_shoulder_top_row_id, second_shoulder_top_close_price
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.identified_has_data
    ORDER BY has_id ASC
;

   -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION =    ROUND(2 * duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from  engine_has_pattern.identified_has_pattern_type;

OPEN identified_has_details;

 IF no_more_rows = 1 THEN
 close identified_has_details;
 END IF;

find_second_shoulder__low_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

FETCH identified_has_details INTO var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price;

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

set calculated_cut_off_date =  var_second_shoulder_top_row_id +  CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION;

call identify_has_pattern_type(duration_days,calculated_cut_off_date,var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price,
                                    CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION
                                    );

-- call find_second_shoulder_low(current_head_row_id,current_head_close_price,duration_days);
 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

END LOOP find_second_shoulder__low_loop;


 close identified_has_details;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_neckline_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_neckline_data`(
input_has_id int,
input_first_shoulder_low_row_id int,
input_first_shoulder_low_close_price float,
input_first_shoulder_low_date date,
input_head_low_row_id int,
input_head_low_close_price float,
duration_days INT)
BEGIN


declare neckline_slope float default 0.0;

declare price_diff_percentage float default 0.0;

declare VAR_MAX_NECKLINE_SLOPE_ABS_VALUE float default 0.0;



SELECT rule_value FROM engine_has_pattern.has_pattern_rules
where rule_name = 'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE' into  VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;

set  price_diff_percentage =  (input_head_low_close_price - input_first_shoulder_low_close_price) * 100
                                /  input_first_shoulder_low_close_price;

set neckline_slope =  price_diff_percentage/ (input_head_low_row_id - input_first_shoulder_low_row_id);

if abs(neckline_slope) > VAR_MAX_NECKLINE_SLOPE_ABS_VALUE then

set neckline_slope = (neckline_slope/abs(neckline_slope)) * VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;  -- set neckline slope to 0.5 or -0.5

end if;

replace INTO engine_has_pattern.identified_has_neckline_data
(has_id,
first_shoulder_low_row_id,
first_shoulder_low_date,
first_shoulder_low_close_price,
neckline_slope_value)
VALUES  (
input_has_id ,
input_first_shoulder_low_row_id ,
input_first_shoulder_low_date ,
input_first_shoulder_low_close_price ,
neckline_slope
);

call calculate_neckline_points(input_has_id,input_first_shoulder_low_row_id,input_first_shoulder_low_close_price,
neckline_slope,duration_days);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_neckline_points` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_neckline_points`(
input_has_id int,
input_first_shoulder_low_row_id int,
input_first_shoulder_low_close_price float,
input_neckline_slope float,
duration_days INT)
BEGIN

declare loop_counter int default 0;

declare calculated_price_value float default 0;

declare calculated_row_id int default 0;



set loop_counter =   duration_days / 2;

plot_neckline_loop : LOOP

 IF loop_counter = 0 THEN
 LEAVE plot_neckline_loop;
 END IF;

 set calculated_row_id = loop_counter + input_first_shoulder_low_row_id;

 set calculated_price_value =  input_first_shoulder_low_close_price +
                                 ((loop_counter * input_neckline_slope) * input_first_shoulder_low_close_price/ 100);


 set calculated_price_value = (round(calculated_price_value/0.05)) * 0.05;                                

replace INTO engine_has_pattern.has_neckline_points
( select  input_has_id,calculated_row_id,a.session_date,calculated_price_value
from engine_has_pattern.market_sessions  a
where   a.ROW_ID = calculated_row_id
);



 set loop_counter = loop_counter - 1;

END LOOP plot_neckline_loop;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `data_accumulation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `data_accumulation`(symbol_in varchar(45),
startDate date,
endDate date,
duration_days INT)
BEGIN


delete from engine_has_pattern.equity_data_has_pattern;

ALTER TABLE engine_has_pattern.equity_data_has_pattern AUTO_INCREMENT =1;


INSERT INTO engine_has_pattern.equity_data_has_pattern

(select NULL,SYMBOL,
CURR_DATE,
PREV_CLOSE,
OPEN_PRICE,
HIGH_PRICE,
LOW_PRICE,
LAST_PRICE,
CLOSE_PRICE,
AVERAGE_PRICE,
TOTAL_TRADED_QUANTITY,
TURNOVER,
NO_OF_TRADES,
DELIVERABLE_QTY,
PERCENT_DELIVERABLE_QTY
 from engine_ea.equity_data_main where symbol = symbol_in
 and CURR_DATE between startDate and
 date_add(endDate, INTERVAL (duration_days/2) day)
 -- endDate
 );


delete from engine_has_pattern.market_sessions;

replace INTO engine_has_pattern.market_sessions

(select a.ROW_ID,a.CURR_DATE from engine_has_pattern.equity_data_has_pattern a);

delete from engine_has_pattern.equity_data_has_pattern  where  CURR_DATE >  endDate;

call validate_market_sessions_data(endDate,duration_days);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_first_shoulder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_first_shoulder`(
duration_days INT)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE current_close_price float DEFAULT 0;

  DECLARE previous_close_price float DEFAULT 0;

  DECLARE current_row_id int DEFAULT 0;

  DECLARE previous_row_id int DEFAULT 0;

  DECLARE current_row_date DATE;

  DECLARE previous_row_date DATE;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SHOULDER_HEAD_DURATION int DEFAULT 0;




    DECLARE has_rally_tops CURSOR FOR
    SELECT DISTINCT
        ROW_ID,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.equity_data_has_pattern_rally_top
    ORDER BY ROW_ID ASC
;



  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SHOULDER_HEAD_DURATION =   2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from engine_has_pattern.has_first_shoulder_data;

OPEN has_rally_tops;

 IF no_more_rows = 1 THEN
 close has_rally_tops;
 END IF;

FETCH has_rally_tops INTO previous_row_id,previous_row_date,previous_close_price;

SELECT curr_date FROM engine_has_pattern.equity_data_has_pattern
where row_id = previous_row_id
into previous_row_date;


rally_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;


FETCH has_rally_tops INTO current_row_id,current_row_date,current_close_price;

 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;

SELECT curr_date FROM engine_has_pattern.equity_data_has_pattern
where row_id = current_row_id
into current_row_date;

IF( current_row_id -  previous_row_id <=  CALCULATED_SHOULDER_HEAD_DURATION
and current_close_price > previous_close_price) THEN

insert into engine_has_pattern.has_first_shoulder_data
values(previous_row_id,previous_row_date,previous_close_price,null,null,null,
current_row_id,current_row_date,current_close_price,null,null,null);

call find_first_shoulder_and_head_low(previous_row_id,current_row_id,duration_days);


END IF;


 set  previous_row_id =   current_row_id;
 set  previous_row_date =   current_row_date;
 set  previous_close_price =   current_close_price;

END LOOP rally_loop;

CLOSE has_rally_tops;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_first_shoulder_and_head_low` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_first_shoulder_and_head_low`(
input_shoulder_top_row_id INT,
input_head_row_id INT,
duration_days INT)
BEGIN

DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

DECLARE CALCULATED_RALLY_LOW_DURATION int DEFAULT 0;

DECLARE target_close_price float DEFAULT 0;


DECLARE target_row_id int DEFAULT 0;


DECLARE target_row_date date;


SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_RALLY_LOW_DURATION =   ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


-- update first shoulder related low point details


SELECT a.row_id, a.curr_date, a. CLOSE_PRICE FROM engine_has_pattern.equity_data_has_pattern a
WHERE a.close_price =
( SELECT min(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_shoulder_top_row_id
and b.row_id <= (input_shoulder_top_row_id + CALCULATED_RALLY_LOW_DURATION)
)
and a.row_id > input_shoulder_top_row_id
and a.row_id <= (input_shoulder_top_row_id + CALCULATED_RALLY_LOW_DURATION)

into target_row_id,target_row_date,target_close_price;

update engine_has_pattern.has_first_shoulder_data
set  first_shoulder_low_row_id = target_row_id,
first_shoulder_low_date = target_row_date,
first_shoulder_low_close_price = target_close_price
where first_shoulder_top_row_id = input_shoulder_top_row_id;


-- update head related low point details

SELECT a.row_id, a.curr_date, a. CLOSE_PRICE FROM engine_has_pattern.equity_data_has_pattern a
WHERE a.close_price =
( SELECT min(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id + CALCULATED_RALLY_LOW_DURATION)
)
and a.row_id > input_head_row_id
and a.row_id <= (input_head_row_id + CALCULATED_RALLY_LOW_DURATION)

into target_row_id,target_row_date,target_close_price;

update engine_has_pattern.has_first_shoulder_data
set  head_low_row_id = target_row_id,
head_low_date = target_row_date,
head_low_close_price = target_close_price
where first_shoulder_top_row_id = input_shoulder_top_row_id;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_has`(
symbol_in varchar(45),
duration_days INT,
startDate date,
endDate date
-- ,input_pattern_type_id int
)
BEGIN

call data_accumulation(symbol_in,startDate,endDate,duration_days);

call engine_has_pattern.find_rally_top(duration_days);

call engine_has_pattern.find_first_shoulder(duration_days);

call find_second_shoulder_for_has(symbol_in,duration_days);

-- call identify_all_has_pattern_type(duration_days,endDate);







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_rally_top` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_rally_top`(
duration_days INT)
BEGIN

DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

DECLARE CALCULATED_RALLY_TOP_DURATION int DEFAULT 0;


SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_RALLY_TOP_DURATION =   ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


delete from engine_has_pattern.equity_data_has_pattern_top_temp;

insert into engine_has_pattern.equity_data_has_pattern_top_temp(

SELECT distinct a.* FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price >
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where DATEDIFF(a.curr_date,b.curr_date) <= duration_days
and DATEDIFF(a.curr_date,b.curr_date) > 0 )
) ;


delete from engine_has_pattern.equity_data_has_pattern_rally_top;

insert into engine_has_pattern.equity_data_has_pattern_rally_top(
SELECT distinct a.* FROM engine_has_pattern.equity_data_has_pattern_top_temp a
WHERE a.close_price >
( SELECT max(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id - a.row_id <= CALCULATED_RALLY_TOP_DURATION
and b.row_id - a.row_id > 0
)
);


/*
insert into engine_has_pattern.equity_data_has_pattern_rally_top(
SELECT a.* FROM engine_has_pattern.equity_data_has_pattern_top_temp a
WHERE NOT EXISTS
( SELECT curr_date FROM
engine_has_pattern.equity_data_has_pattern_top_temp b
where 1=1
AND DATEDIFF(b.curr_date,a.curr_date) < duration_days
AND DATEDIFF(b.curr_date,a.curr_date) > 0
)
)
;
*/






END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_second_shoulder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_second_shoulder`(
symbol_in varchar(45),
input_head_row_id int,
input_head_close_price float,
input_head_low_price float,
duration_days INT
)
proc_label: BEGIN




  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_HEAD_TO_SHOULDER_DURATION int DEFAULT 0;


  DECLARE var_has_id int;
  DECLARE var_first_shoulder_low_row_id int;
  DECLARE var_first_shoulder_low_close_price float;
  DECLARE var_first_shoulder_low_date date;
   DECLARE var_head_low_row_id int;
  DECLARE var_head_low_close_price float;

    DECLARE var_second_shoulder_count float;



  -- DECLARE VAR_HEAD_ROW_ID INT DEFAULT 0;





SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_HEAD_TO_SHOULDER_DURATION =    2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


SELECT count(*) FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price =
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id +  CALCULATED_HEAD_TO_SHOULDER_DURATION)
)
and a.CLOSE_PRICE < input_head_close_price
and a.CLOSE_PRICE > input_head_low_price

into var_second_shoulder_count;

if(var_second_shoulder_count = 0) then

leave proc_label;

end if;



replace into engine_has_pattern.equity_data_has_second_shoulder_top(

SELECT distinct input_head_row_id,a.* FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price =
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id +  CALCULATED_HEAD_TO_SHOULDER_DURATION)
)
and a.CLOSE_PRICE < input_head_close_price
and a.CLOSE_PRICE > input_head_low_price
)
;

replace into engine_has_pattern.identified_has_data(
select null,symbol_in, a.*,null,null,null,null,null,null from   engine_has_pattern.has_first_shoulder_data a
where a.head_row_id = input_head_row_id);

update  engine_has_pattern.identified_has_data a, engine_has_pattern.equity_data_has_second_shoulder_top b
set a.second_shoulder_top_row_id = b.ROW_ID,
a.second_shoulder_top_date = b.CURR_DATE,
a.second_shoulder_top_close_price = b.CLOSE_PRICE
where a.head_row_id = b.head_row_id;

select a.has_id,a.first_shoulder_low_row_id,a.first_shoulder_low_close_price, a.first_shoulder_low_date,
a.head_low_row_id,a.head_low_close_price from engine_has_pattern.identified_has_data a
where a.head_row_id = input_head_row_id
into  var_has_id,var_first_shoulder_low_row_id,var_first_shoulder_low_close_price, var_first_shoulder_low_date,
var_head_low_row_id,var_head_low_close_price;


call engine_has_pattern.calculate_neckline_data(var_has_id,var_first_shoulder_low_row_id,var_first_shoulder_low_close_price,
var_first_shoulder_low_date,var_head_low_row_id,var_head_low_close_price,duration_days);


-- call engine_has_pattern.identify_has_pattern_type





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_second_shoulder_for_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_second_shoulder_for_has`(
symbol_in varchar(45),
duration_days INT
)
BEGIN


  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE current_head_close_price float DEFAULT 0;

  DECLARE current_head_row_id int DEFAULT 0;

  DECLARE current_head_low_price float DEFAULT 0;



    DECLARE has_first_shoulder_details CURSOR FOR
    SELECT DISTINCT
        head_row_id,head_close_price,head_low_close_price
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.has_first_shoulder_data
    ORDER BY head_row_id ASC
;

  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

delete from engine_has_pattern.equity_data_has_second_shoulder_top;

if (select max(has_id) from engine_has_pattern.identified_has_data) > 10000
then
ALTER TABLE engine_has_pattern.equity_data_has_pattern AUTO_INCREMENT =1;
end if;

delete from engine_has_pattern.identified_has_data;

delete from  engine_has_pattern.has_neckline_points;
delete from  engine_has_pattern.identified_has_neckline_data;



OPEN has_first_shoulder_details;

 IF no_more_rows = 1 THEN
 close has_first_shoulder_details;
 END IF;

find_second_shoulder_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

FETCH has_first_shoulder_details INTO current_head_row_id,current_head_close_price,current_head_low_price;

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

call find_second_shoulder(symbol_in,current_head_row_id,current_head_close_price,current_head_low_price,duration_days);

-- call find_second_shoulder_low(current_head_row_id,current_head_close_price,duration_days);
 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

END LOOP find_second_shoulder_loop;


close has_first_shoulder_details;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_as_pattern_type_1_or_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_as_pattern_type_1_or_2`(
input_endDate_row_id int,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int
)
proc_label: BEGIN


declare var_shoulder_low_min_close_price float(10,2);

declare var_shoulder_low_min_row_id int;

declare var_shoulder_low_min_row_date date;




declare var_shoulder_low_slope float(10,2);

declare var_neckline_slope float(10,2);

declare var_effective_slope float(10,2);


declare price_diff_percentage float(10,2);


declare var_shoulder_top_neckline_price float(10,2);


declare var_shoulder_height_percentage float(10,2);

declare identified_as_type_2 boolean;






select min(CLOSE_PRICE) from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
into var_shoulder_low_min_close_price;

call identify_as_pattern_type_2(input_has_id,input_endDate_row_id, var_shoulder_low_min_close_price,
input_second_shoulder_top_row_id,identified_as_type_2);

if identified_as_type_2 = true
then

leave proc_label;

end if;


-- identify if pattern type 1 --


select ROW_ID,CURR_DATE from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
and FORMAT(CLOSE_PRICE,2)  = FORMAT(var_shoulder_low_min_close_price,2)
order by  ROW_ID desc
limit 1
into var_shoulder_low_min_row_id,var_shoulder_low_min_row_date;

select a.price_value from engine_has_pattern.has_neckline_points a
where a.has_id = input_has_id
and a.row_id = input_second_shoulder_top_row_id
into var_shoulder_top_neckline_price;

set  price_diff_percentage =  (var_shoulder_low_min_close_price - input_second_shoulder_top_close_price) * 100
                                /  input_second_shoulder_top_close_price;

set var_shoulder_low_slope =  price_diff_percentage/ (var_shoulder_low_min_row_id - input_second_shoulder_top_row_id);

select a.neckline_slope_value from engine_has_pattern.identified_has_neckline_data a
where a.has_id = input_has_id
into var_neckline_slope;

set var_effective_slope = var_shoulder_low_slope - var_neckline_slope;



set var_shoulder_height_percentage = (input_second_shoulder_top_close_price - var_shoulder_top_neckline_price) * 100/

                                                    input_second_shoulder_top_close_price;


if ((var_effective_slope * CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)   + var_shoulder_height_percentage)  < 0

then

replace into engine_has_pattern.identified_has_pattern_type values(input_has_id,1);

update engine_has_pattern.identified_has_data a
set  second_shoulder_low_row_id = var_shoulder_low_min_row_id,
second_shoulder_low_date =  var_shoulder_low_min_row_date,
second_shoulder_low_close_price = var_shoulder_low_min_close_price
where has_id = input_has_id;

end if;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_as_pattern_type_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_as_pattern_type_2`(
input_has_id int,
input_endDate_row_id int,
input_shoulder_low_min_close_price float,
input_second_shoulder_top_row_id int,
out output_identified boolean
)
BEGIN

declare var_current_close_price float(10,2);

declare var_current_date date;

declare var_current_row_id int;



  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

      DECLARE identified_neckline_points CURSOR FOR
    SELECT DISTINCT
           row_id,curr_date,price_value
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.has_neckline_points a
    where   has_id = input_has_id
    and row_id > input_second_shoulder_top_row_id
    and row_id <= input_endDate_row_id
    ORDER BY curr_date ASC
;


  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;



OPEN identified_neckline_points;

 IF no_more_rows = 1 THEN
 close identified_neckline_points;
 END IF;

identified_neckline_points_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;

FETCH identified_neckline_points INTO var_current_row_id,var_current_date,var_current_close_price;

 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;


 if (input_shoulder_low_min_close_price <=  var_current_close_price)
 then

 select a.curr_date from engine_has_pattern.has_neckline_points a
 where a.row_id = var_current_row_id
 into var_current_date;

replace into engine_has_pattern.identified_has_pattern_type values(input_has_id,2);

set output_identified = true;

update engine_has_pattern.identified_has_data a
set  second_shoulder_low_row_id = var_current_row_id,
second_shoulder_low_date =  var_current_date,
second_shoulder_low_close_price = input_shoulder_low_min_close_price
where has_id = input_has_id;


end if;
 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;

END LOOP identified_neckline_points_loop;


 close identified_neckline_points;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_has_pattern_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_has_pattern_type`(
duration_days INT,
cut_off_date date,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int
)
proc_label: BEGIN

declare var_cut_off_date_row_id int;

select a.ROW_ID from engine_has_pattern.equity_data_has_pattern a
where a.CURR_DATE = cut_off_date into var_cut_off_date_row_id;

IF ((var_cut_off_date_row_id -  input_second_shoulder_top_row_id  = 0) AND duration_days <= 30)
THEN

replace into engine_has_pattern.identified_has_pattern_type values(var_has_id,1);

LEAVE proc_label;


END IF;


IF (var_cut_off_date_row_id -  input_second_shoulder_top_row_id <   (0.2 * CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION))
THEN

LEAVE proc_label;

END IF;

IF (var_cut_off_date_row_id -  input_second_shoulder_top_row_id <=   CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)
THEN


call identify_as_pattern_type_1_or_2(var_cut_off_date_row_id,input_has_id,input_second_shoulder_top_row_id,
input_second_shoulder_top_close_price,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

LEAVE proc_label;

-- calculate(

END IF;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_market_sessions_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_market_sessions_data`(
endDate date,
duration_days INT)
proc_label: BEGIN

declare max_session_date date;

declare target_session_date date;


declare max_session_date_sr_no int;

declare end_date_sr_no int;

declare max_session_date_row_id int;

declare loop_counter int;





select max(a.session_date) from engine_has_pattern.market_sessions a  into max_session_date;

set target_session_date =  date_add(endDate, INTERVAL (duration_days/2) day);

if max_session_date  < target_session_date
then

select max(a.row_id) from engine_has_pattern.market_sessions a  into max_session_date_row_id;


select a.SR_NO from engine_ea.market_sessions a
where a.SESSION_DATE =  max_session_date
into max_session_date_sr_no;

if (max_session_date_sr_no is null) then

leave proc_label;

end if;

set end_date_sr_no =  max_session_date_sr_no + round(5 * datediff(target_session_date,max_session_date)/7);

set loop_counter = 1;


fill_market_sessions : LOOP

 IF loop_counter > (end_date_sr_no - max_session_date_sr_no) THEN
 LEAVE fill_market_sessions;
 END IF;

replace INTO engine_has_pattern.market_sessions

(select (max_session_date_row_id + loop_counter),a.SESSION_DATE from engine_ea.market_sessions a
where a.SR_NO = (max_session_date_sr_no  + loop_counter)
)
;


 set loop_counter = loop_counter + 1;

 end  loop fill_market_sessions;


end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 19:02:41
