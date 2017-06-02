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
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern`
--

LOCK TABLES `equity_data_has_pattern` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern` VALUES (1,'SBIN','2017-03-02',271.75,273,274.7,266.5,267.2,267.3,270.99,14220800,3853750000,80696,4596797,32.32),(2,'SBIN','2017-03-03',267.3,266.25,268.9,264.25,265.55,265.05,265.78,10120000,2689700000,75478,3907290,38.61),(3,'SBIN','2017-03-06',265.05,266.6,270.35,266.35,270.2,269.85,268.37,9515070,2553580000,63033,3982426,41.85),(4,'SBIN','2017-03-07',269.85,270.8,270.9,266.4,267.7,267.8,267.78,11599100,3106070000,65023,6347327,54.72),(5,'SBIN','2017-03-08',267.8,267.8,270.3,266,270.05,269.9,268.62,9122990,2450640000,65561,3081623,33.78),(6,'SBIN','2017-03-09',269.9,269,273.9,268.4,273.15,273.25,272.15,15594400,4244090000,95804,7576329,48.58),(7,'SBIN','2017-03-10',273.25,274.5,275.55,269.5,271.9,272.05,272.67,9557030,2605920000,77178,3246642,33.97),(8,'SBIN','2017-03-14',272.05,278.4,278.4,273.8,274.75,274.65,275.43,15734900,4333930000,108786,7747107,49.24),(9,'SBIN','2017-03-15',274.65,272.65,280.5,272.65,276.55,277.35,277.95,20056000,5574550000,127137,9841167,49.07),(10,'SBIN','2017-03-16',277.35,278,280.2,276.05,279.05,279.3,278.38,18005200,5012230000,139878,8827321,49.03),(11,'SBIN','2017-03-17',279.3,279.45,279.5,273.5,274,274.15,275.1,14265600,3924490000,95520,7240757,50.76),(12,'SBIN','2017-03-20',274.15,274.75,274.75,271.8,273.9,273.9,273.41,9678180,2646070000,71526,4612235,47.66),(13,'SBIN','2017-03-21',273.9,274.4,277.05,270.15,272.75,272.35,273.52,11898200,3254400000,72969,4944113,41.55),(14,'SBIN','2017-03-22',272.35,270.3,271,266.8,267.75,267.5,268.74,9887200,2657110000,97564,4670186,47.23),(15,'SBIN','2017-03-23',267.5,269,269.4,266.7,268.65,268.5,268.14,7998170,2144650000,77028,4061076,50.78),(16,'SBIN','2017-03-24',268.5,269.5,278.95,268.65,275.95,276.5,275.33,20133500,5543260000,135209,8243224,40.94),(17,'SBIN','2017-03-27',276.5,276,280.8,275.2,278.9,279.45,278.73,15966100,4450240000,103411,5464685,34.23),(18,'SBIN','2017-03-28',279.45,280.65,282.9,278.5,282.2,282.1,280.87,18673400,5244850000,89603,10584347,56.68),(19,'SBIN','2017-03-29',282.1,283.15,289.9,283.15,288.7,288.45,287.1,31008400,8902360000,160418,16769893,54.08),(20,'SBIN','2017-03-30',288.45,289,293.75,288.85,291.4,291.05,291.33,19683200,5734340000,111949,7306917,37.12),(21,'SBIN','2017-03-31',291.05,292,295,288.5,293.3,293.4,292.77,20185300,5909720000,121335,6436380,31.89),(22,'SBIN','2017-04-03',293.4,294.8,295.7,292.2,293.4,293.15,293.83,10509600,3088050000,63796,3224137,30.68),(23,'SBIN','2017-04-05',293.15,293.3,298.75,289.65,297,297.35,294.71,21936600,6465020000,143045,9434760,43.01),(24,'SBIN','2017-04-06',297.35,295.45,297.55,291.45,292.25,292.85,294.35,18413100,5419870000,90051,6325489,34.35),(25,'SBIN','2017-04-07',292.85,291.7,294.8,287.65,288.3,289.45,292.04,10765500,3143920000,67483,3287133,30.53),(26,'SBIN','2017-04-10',289.45,289.8,290.35,286.55,290,289.35,288.81,10307900,2977060000,95079,3192927,30.98),(27,'SBIN','2017-04-11',289.35,289.3,295.15,288.8,294.3,294.5,292.69,11682000,3419230000,93318,4281388,36.65),(28,'SBIN','2017-04-12',294.5,294,295.45,289.1,290.25,290.15,291.41,13251400,3861570000,88924,4725911,35.66),(29,'SBIN','2017-04-13',290.15,290.25,293.1,290,292,291.55,291.41,9944020,2897770000,73697,3191327,32.09),(30,'SBIN','2017-04-17',291.55,291.1,292.75,288.5,290.2,289.9,289.82,8146800,2361110000,70366,2782552,34.16),(31,'SBIN','2017-04-18',289.9,291.05,296.9,288.4,291.55,290.3,293.26,13457000,3946370000,112786,3933986,29.23),(32,'SBIN','2017-04-19',290.3,291.55,291.75,282.9,284.9,284.05,286.36,18150000,5197410000,106330,8414421,46.36),(33,'SBIN','2017-04-20',284.05,283.9,286.9,282.2,284.85,284.8,284.5,14514900,4129490000,134919,5768064,39.74),(34,'SBIN','2017-04-21',284.8,287,287,279.25,282.4,282.2,282.73,12042300,3404700000,90196,3890947,32.31),(35,'SBIN','2017-04-24',282.2,283.25,287.85,280.9,286.05,286.05,284.64,10077900,2868590000,89547,3206400,31.82),(36,'SBIN','2017-04-25',286.05,287.5,288.8,285,285.9,286.05,286.69,11531900,3306130000,146257,5021274,43.54),(37,'SBIN','2017-04-26',286.05,287.1,289.5,283.35,285.75,286.45,287.17,13836900,3973500000,124870,5730697,41.42),(38,'SBIN','2017-04-27',286.45,286.45,287.95,281.05,282.9,282.05,283.58,22622400,6415250000,119362,13404034,59.25),(39,'SBIN','2017-04-28',282.05,283,290.75,282.5,289.4,289.75,286.8,14152000,4058770000,86994,4940261,34.91),(40,'SBIN','2017-05-02',289.75,290.25,292.5,287.1,288.35,288.3,289.61,9754790,2825040000,79720,3226892,33.08),(41,'SBIN','2017-05-03',288.3,289.4,293.2,285.8,289.4,289.8,289.52,13950900,4039030000,86140,4756276,34.09),(42,'SBIN','2017-05-04',289.8,294,300,293.1,299.8,299.05,296.49,24534900,7274390000,141660,7644530,31.16),(43,'SBIN','2017-05-05',299.05,301,304.9,292.15,295.95,296,299.21,34756300,10399300000,192131,9028419,25.98),(44,'SBIN','2017-05-08',296,296.1,300.75,293.9,298.8,299.4,298.68,11560600,3452850000,87129,3497415,30.25),(45,'SBIN','2017-05-09',299.4,300.9,300.9,295.25,296.4,296.5,297.18,7843570,2330960000,52271,1619122,20.64),(46,'SBIN','2017-05-10',296.5,297,298.15,293,294.85,294.45,295.51,8699400,2570750000,54706,2414488,27.75),(47,'SBIN','2017-05-11',294.45,295.9,299.4,294.45,297.7,298.1,297.34,11934900,3548710000,75103,5119985,42.9),(48,'SBIN','2017-05-12',298.1,300,302.6,296,297.85,297.9,299.11,13376300,4000940000,80897,4186552,31.3),(49,'SBIN','2017-05-15',297.9,298.4,302,297.5,300.85,301.4,300.31,10383500,3118320000,85232,4253034,40.96),(50,'SBIN','2017-05-16',301.4,302,308.4,299.35,308.05,307.5,304.43,17533400,5337700000,130379,6038637,34.44),(51,'SBIN','2017-05-17',307.5,308,308.8,305.5,307.05,307.65,307.22,14120500,4338140000,83419,5555959,39.35),(52,'SBIN','2017-05-18',307.65,304.85,307.9,302,302,302.95,304.49,15471400,4710920000,109109,5470333,35.36),(53,'SBIN','2017-05-19',302.95,304.45,315.3,302,308.95,308,308.83,55251000,17062900000,339663,10945486,19.81),(54,'SBIN','2017-05-22',308,308.95,309.4,293.2,294.4,294.3,298.8,35771200,10688300000,239823,13476242,37.67),(55,'SBIN','2017-05-23',294.3,295,295.9,287.25,288.85,288.85,290.25,19846900,5760600000,133995,5684339,28.64),(56,'SBIN','2017-05-24',288.85,290.05,290.45,281.65,283.25,283.15,285.51,16436000,4692590000,120004,4768521,29.01),(57,'SBIN','2017-05-25',283.15,284.15,291.35,283.55,290,290.1,287.27,15018500,4314320000,112707,5507686,36.67),(58,'SBIN','2017-05-26',290.1,290.5,291,285.3,289,288.45,287.71,12304400,3540130000,139676,4485862,36.46),(59,'SBIN','2017-05-29',288.45,288.9,290.85,283.3,283.6,284,286.97,10620000,3047570000,86060,3905775,36.78);
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
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_rally_top`
--

LOCK TABLES `equity_data_has_pattern_rally_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_rally_top` VALUES (27,'SBIN','2015-07-07',270.8,270.4,274.65,270,273.8,272.9,272.6,12523400,3413840000,106296,6386313,50.99),(31,'SBIN','2015-07-13',270.55,272,274.35,267.9,273.5,273.7,271.57,8423080,2287470000,80546,2023632,24.02);
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
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_top_temp`
--

LOCK TABLES `equity_data_has_pattern_top_temp` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_top_temp` VALUES (24,'SBIN','2015-07-02',267.75,267.9,271.25,266.1,268.1,267.85,268.59,8741780,2347920000,84937,2653914,30.36),(25,'SBIN','2015-07-03',267.85,267.35,270,266.8,269.45,269.4,268.55,7238540,1943900000,59501,2101416,29.03),(26,'SBIN','2015-07-06',269.4,263.2,271.5,262,271.45,270.8,266.67,9458200,2522210000,75916,2406764,25.45),(27,'SBIN','2015-07-07',270.8,270.4,274.65,270,273.8,272.9,272.6,12523400,3413840000,106296,6386313,50.99),(31,'SBIN','2015-07-13',270.55,272,274.35,267.9,273.5,273.7,271.57,8423080,2287470000,80546,2023632,24.02);
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
INSERT INTO `equity_data_has_second_shoulder_top` VALUES (31,34,'SBIN','2015-07-16',268.05,269.75,272.75,268.1,272.4,272.2,270.46,8354120,2259430000,59028,3063941,36.68);
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
INSERT INTO `has_first_shoulder_data` VALUES (27,'2015-07-07',272.9,28,'2015-07-08',267.35,31,'2015-07-13',273.7,33,'2015-07-15',268.05);
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
  `price_value` float DEFAULT NULL,
  PRIMARY KEY (`has_id`,`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_neckline_points`
--

LOCK TABLES `has_neckline_points` WRITE;
/*!40000 ALTER TABLE `has_neckline_points` DISABLE KEYS */;
INSERT INTO `has_neckline_points` VALUES (17,29,'2015-07-09',267.49),(17,30,'2015-07-10',267.63),(17,31,'2015-07-13',267.77),(17,32,'2015-07-14',267.91),(17,33,'2015-07-15',268.05),(17,34,'2015-07-16',268.19),(17,35,'2015-07-17',268.33),(17,36,'2015-07-20',268.47),(17,37,'2015-07-21',268.61),(17,38,'2015-07-22',268.75),(17,39,'2015-07-23',268.89),(17,40,'2015-07-24',269.03),(17,41,'2015-07-27',269.17),(17,42,'2015-07-28',269.31),(17,43,'2015-07-29',269.45);
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
INSERT INTO `has_pattern_rules` VALUES (1,'HEAD_DURATION_PERCENTAGE_OF_RALLY',5,'TIME TAKEN TO MAKE LOW AFTER IDENTIFYING HEAD PEAK. ALSO SAME TIME IS USED TO VERIFY THAT THIS IS LOW POINT FROM FUTURE VALUES');
/*!40000 ALTER TABLE `has_pattern_rules` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
INSERT INTO `identified_has_data` VALUES (17,'SBIN',27,'2015-07-07',272.9,28,'2015-07-08',267.35,31,'2015-07-13',273.7,33,'2015-07-15',268.05,34,'2015-07-16',272.2,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
INSERT INTO `identified_has_neckline_data` VALUES (17,28,'2015-07-08',267.35,0.0523644);
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
INSERT INTO `market_sessions` VALUES (1,'2017-03-02'),(2,'2017-03-03'),(3,'2017-03-06'),(4,'2017-03-07'),(5,'2017-03-08'),(6,'2017-03-09'),(7,'2017-03-10'),(8,'2017-03-14'),(9,'2017-03-15'),(10,'2017-03-16'),(11,'2017-03-17'),(12,'2017-03-20'),(13,'2017-03-21'),(14,'2017-03-22'),(15,'2017-03-23'),(16,'2017-03-24'),(17,'2017-03-27'),(18,'2017-03-28'),(19,'2017-03-29'),(20,'2017-03-30'),(21,'2017-03-31'),(22,'2017-04-03'),(23,'2017-04-05'),(24,'2017-04-06'),(25,'2017-04-07'),(26,'2017-04-10'),(27,'2017-04-11'),(28,'2017-04-12'),(29,'2017-04-13'),(30,'2017-04-17'),(31,'2017-04-18'),(32,'2017-04-19'),(33,'2017-04-20'),(34,'2017-04-21'),(35,'2017-04-24'),(36,'2017-04-25'),(37,'2017-04-26'),(38,'2017-04-27'),(39,'2017-04-28'),(40,'2017-05-02'),(41,'2017-05-03'),(42,'2017-05-04'),(43,'2017-05-05'),(44,'2017-05-08'),(45,'2017-05-09'),(46,'2017-05-10'),(47,'2017-05-11'),(48,'2017-05-12'),(49,'2017-05-15'),(50,'2017-05-16'),(51,'2017-05-17'),(52,'2017-05-18'),(53,'2017-05-19'),(54,'2017-05-22'),(55,'2017-05-23'),(56,'2017-05-24'),(57,'2017-05-25'),(58,'2017-05-26'),(59,'2017-05-29'),(60,'2017-05-30'),(61,'2017-05-31'),(62,'2017-06-01'),(63,'2017-06-02'),(64,'2017-06-05'),(65,'2017-06-06'),(66,'2017-06-07'),(67,'2017-06-08'),(68,'2017-06-09'),(69,'2017-06-12'),(70,'2017-06-13'),(71,'2017-06-14'),(72,'2017-06-15'),(73,'2017-06-16');
/*!40000 ALTER TABLE `market_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'engine_has_pattern'
--
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


set  price_diff_percentage =  (input_head_low_close_price - input_first_shoulder_low_close_price) * 100
                                /  input_first_shoulder_low_close_price;

set neckline_slope =  price_diff_percentage/ (input_head_low_row_id - input_first_shoulder_low_row_id);

if abs(neckline_slope) > 0.1 then

set neckline_slope = neckline_slope/neckline_slope * 0.1;  -- set neckline slope to 0.1 or -0.1

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
  DECLARE no_more_rows BOOLEAN;
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
    SET no_more_rows = TRUE;

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SHOULDER_HEAD_DURATION =   2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from engine_has_pattern.has_first_shoulder_data;

OPEN has_rally_tops;

 IF no_more_rows = TRUE THEN
 close has_rally_tops;
 END IF;

FETCH has_rally_tops INTO previous_row_id,previous_row_date,previous_close_price;

SELECT curr_date FROM engine_has_pattern.equity_data_has_pattern
where row_id = previous_row_id
into previous_row_date;


rally_loop : LOOP

 IF no_more_rows = TRUE THEN
 LEAVE rally_loop;
 END IF;


FETCH has_rally_tops INTO current_row_id,current_row_date,current_close_price;

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
endDate date,
has_pattern_type int
)
BEGIN

call data_accumulation(symbol_in,startDate,endDate,duration_days);

call engine_has_pattern.find_rally_top(duration_days);

call engine_has_pattern.find_first_shoulder(duration_days);

call find_second_shoulder_for_has(symbol_in,duration_days);







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
BEGIN




  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SHOULDER_HEAD_DURATION int DEFAULT 0;


  DECLARE var_has_id int;
  DECLARE var_first_shoulder_low_row_id int;
  DECLARE var_first_shoulder_low_close_price float;
  DECLARE var_first_shoulder_low_date date;
   DECLARE var_head_low_row_id int;
  DECLARE var_head_low_close_price float;


  -- DECLARE VAR_HEAD_ROW_ID INT DEFAULT 0;





SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SHOULDER_HEAD_DURATION =    2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );



replace into engine_has_pattern.equity_data_has_second_shoulder_top(

SELECT distinct input_head_row_id,a.* FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price =
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id +  CALCULATED_SHOULDER_HEAD_DURATION)
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
endDate date,
has_pattern_type int)
BEGIN

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
BEGIN

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

-- Dump completed on 2017-06-02 22:46:04
