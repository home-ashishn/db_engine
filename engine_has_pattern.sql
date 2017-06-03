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
INSERT INTO `equity_data_has_pattern` VALUES (1,'SBIN','2015-06-01',278.15,278.65,282.00,277.55,278.20,278.20,279.63,11567692.00,3234686720.00,103433,5711324,49.37),(2,'SBIN','2015-06-02',278.20,278.80,279.45,265.35,266.50,266.25,271.93,21653784.00,5888406016.00,205264,7275006,33.60),(3,'SBIN','2015-06-03',266.25,267.00,267.30,255.05,258.25,257.40,259.44,25967876.00,6737182208.00,242044,13002088,50.07),(4,'SBIN','2015-06-04',257.40,259.90,261.40,253.75,257.70,257.60,257.36,20210546.00,5201373696.00,151143,8787871,43.48),(5,'SBIN','2015-06-05',257.60,257.00,262.00,255.60,257.40,257.80,259.24,13539638.00,3509961728.00,124006,4314959,31.87),(6,'SBIN','2015-06-08',257.80,258.75,258.75,252.55,254.85,254.95,254.73,17384700.00,4428363776.00,113334,9921362,57.07),(7,'SBIN','2015-06-09',254.95,255.00,258.30,254.00,258.00,257.60,256.02,15275972.00,3911021568.00,117016,7188867,47.06),(8,'SBIN','2015-06-10',257.60,259.00,262.55,258.50,260.65,260.60,260.97,10910978.00,2847434752.00,88519,4351167,39.88),(9,'SBIN','2015-06-11',260.60,262.25,262.95,252.65,254.10,254.00,255.89,20857622.00,5337166336.00,139105,10202245,48.91),(10,'SBIN','2015-06-12',254.00,254.05,255.50,251.80,254.45,253.95,253.75,11440479.00,2903040768.00,89672,4605208,40.25),(11,'SBIN','2015-06-15',253.95,255.00,255.60,248.85,249.65,250.25,251.45,13545280.00,3405975296.00,113461,5502753,40.62),(12,'SBIN','2015-06-16',250.25,250.25,255.75,249.00,255.35,254.60,252.01,9896598.00,2494008320.00,105299,3596184,36.34),(13,'SBIN','2015-06-17',254.60,256.00,256.90,253.50,255.35,255.10,255.43,11241061.00,2871300096.00,92549,5161551,45.92),(14,'SBIN','2015-06-18',255.10,256.45,260.70,255.20,258.15,258.10,258.18,11598549.00,2994500608.00,87436,4891999,42.18),(15,'SBIN','2015-06-19',258.10,259.90,263.10,258.15,260.30,260.15,260.38,12216399.00,3180952576.00,97113,5205883,42.61),(16,'SBIN','2015-06-22',260.15,260.90,267.40,260.80,266.50,266.00,264.95,11051382.00,2928051456.00,115204,3468787,31.39),(17,'SBIN','2015-06-23',266.00,269.40,271.20,266.25,267.30,267.75,268.64,16180083.00,4346565120.00,120863,7106508,43.92),(18,'SBIN','2015-06-24',267.75,267.70,267.90,260.50,261.20,262.35,265.18,8361760.00,2217364736.00,75339,2655222,31.75),(19,'SBIN','2015-06-25',262.35,261.25,266.00,259.05,265.00,264.80,263.60,16506503.00,4351039488.00,100903,8298462,50.27),(20,'SBIN','2015-06-26',264.80,264.10,266.90,261.05,265.40,265.20,263.71,14588452.00,3847106048.00,98899,8497919,58.25),(21,'SBIN','2015-06-29',265.20,258.75,260.80,255.00,260.30,259.65,257.54,15040805.00,3873650432.00,105813,7262781,48.29),(22,'SBIN','2015-06-30',259.65,259.25,263.35,257.60,263.00,262.75,261.01,14181965.00,3701696000.00,85628,6736393,47.50),(23,'SBIN','2015-07-01',262.75,263.10,269.50,262.55,267.60,267.75,266.63,12072024.00,3218792448.00,91610,3342760,27.69),(24,'SBIN','2015-07-02',267.75,267.90,271.25,266.10,268.10,267.85,268.59,8741783.00,2347918848.00,84937,2653914,30.36),(25,'SBIN','2015-07-03',267.85,267.35,270.00,266.80,269.45,269.40,268.55,7238541.00,1943897600.00,59501,2101416,29.03),(26,'SBIN','2015-07-06',269.40,263.20,271.50,262.00,271.45,270.80,266.67,9458200.00,2522212608.00,75916,2406764,25.45),(27,'SBIN','2015-07-07',270.80,270.40,274.65,270.00,273.80,272.90,272.60,12523410.00,3413843712.00,106296,6386313,50.99),(28,'SBIN','2015-07-08',272.90,269.90,271.00,265.60,266.70,267.35,268.16,12669850.00,3397578752.00,85347,4992880,39.41),(29,'SBIN','2015-07-09',267.35,267.00,271.30,267.00,268.00,267.75,269.06,6469504.00,1740686592.00,57699,1536301,23.75),(30,'SBIN','2015-07-10',267.75,270.25,271.00,266.25,270.45,270.55,269.42,8788162.00,2367748608.00,77565,2731650,31.08),(31,'SBIN','2015-07-13',270.55,272.00,274.35,267.90,273.50,273.70,271.57,8423083.00,2287470592.00,80546,2023632,24.02),(32,'SBIN','2015-07-14',273.70,273.60,273.60,267.15,268.05,268.20,270.43,10337307.00,2795541504.00,93984,4931598,47.71),(33,'SBIN','2015-07-15',268.20,268.75,271.70,267.15,268.60,268.05,269.25,7483918.00,2015037056.00,59970,2971179,39.70),(34,'SBIN','2015-07-16',268.05,269.75,272.75,268.10,272.40,272.20,270.46,8354120.00,2259433472.00,59028,3063941,36.68),(35,'SBIN','2015-07-17',272.20,272.40,274.00,270.50,271.65,271.10,271.97,5571891.00,1515366144.00,49465,1807521,32.44);
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
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_rally_top`
--

LOCK TABLES `equity_data_has_pattern_rally_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_rally_top` VALUES (27,'SBIN','2015-07-07',270.80,270.40,274.65,270.00,273.80,272.90,272.60,12523410.00,3413843712.00,106296,6386313,50.99),(31,'SBIN','2015-07-13',270.55,272.00,274.35,267.90,273.50,273.70,271.57,8423083.00,2287470592.00,80546,2023632,24.02);
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
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_top_temp`
--

LOCK TABLES `equity_data_has_pattern_top_temp` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_top_temp` VALUES (24,'SBIN','2015-07-02',267.75,267.90,271.25,266.10,268.10,267.85,268.59,8741783.00,2347918848.00,84937,2653914,30.36),(25,'SBIN','2015-07-03',267.85,267.35,270.00,266.80,269.45,269.40,268.55,7238541.00,1943897600.00,59501,2101416,29.03),(26,'SBIN','2015-07-06',269.40,263.20,271.50,262.00,271.45,270.80,266.67,9458200.00,2522212608.00,75916,2406764,25.45),(27,'SBIN','2015-07-07',270.80,270.40,274.65,270.00,273.80,272.90,272.60,12523410.00,3413843712.00,106296,6386313,50.99),(31,'SBIN','2015-07-13',270.55,272.00,274.35,267.90,273.50,273.70,271.57,8423083.00,2287470592.00,80546,2023632,24.02);
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
INSERT INTO `has_neckline_points` VALUES (23,29,'2015-07-09',267.49),(23,30,'2015-07-10',267.63),(23,31,'2015-07-13',267.77),(23,32,'2015-07-14',267.91),(23,33,'2015-07-15',268.05),(23,34,'2015-07-16',268.19),(23,35,'2015-07-17',268.33),(23,36,'2015-07-20',268.47),(23,37,'2015-07-21',268.61),(23,38,'2015-07-22',268.75),(23,39,'2015-07-23',268.89),(23,40,'2015-07-24',269.03),(23,41,'2015-07-27',269.17),(23,42,'2015-07-28',269.31),(23,43,'2015-07-29',269.45);
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
INSERT INTO `has_pattern_rules` VALUES (1,'HEAD_DURATION_PERCENTAGE_OF_RALLY',5,'TIME TAKEN TO MAKE LOW AFTER IDENTIFYING HEAD PEAK. ALSO SAME TIME IS USED TO VERIFY THAT THIS IS LOW POINT FROM FUTURE VALUES'),(2,'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE',0.5,'MAX VALUE FOR SLOPE OF NECKLINE IN ABSOLUTE TERMS');
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
/*!40000 ALTER TABLE `has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_pattern_types`
--

DROP TABLE IF EXISTS `has_pattern_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_pattern_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pattern_types`
--

LOCK TABLES `has_pattern_types` WRITE;
/*!40000 ALTER TABLE `has_pattern_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_pattern_types` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
INSERT INTO `identified_has_data` VALUES (23,'SBIN',27,'2015-07-07',272.9,28,'2015-07-08',267.35,31,'2015-07-13',273.7,33,'2015-07-15',268.05,34,'2015-07-16',272.2,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
INSERT INTO `identified_has_neckline_data` VALUES (23,28,'2015-07-08',267.35,0.0523644);
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
INSERT INTO `identified_has_pattern_type` VALUES (21,1);
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
INSERT INTO `market_sessions` VALUES (1,'2015-06-01'),(2,'2015-06-02'),(3,'2015-06-03'),(4,'2015-06-04'),(5,'2015-06-05'),(6,'2015-06-08'),(7,'2015-06-09'),(8,'2015-06-10'),(9,'2015-06-11'),(10,'2015-06-12'),(11,'2015-06-15'),(12,'2015-06-16'),(13,'2015-06-17'),(14,'2015-06-18'),(15,'2015-06-19'),(16,'2015-06-22'),(17,'2015-06-23'),(18,'2015-06-24'),(19,'2015-06-25'),(20,'2015-06-26'),(21,'2015-06-29'),(22,'2015-06-30'),(23,'2015-07-01'),(24,'2015-07-02'),(25,'2015-07-03'),(26,'2015-07-06'),(27,'2015-07-07'),(28,'2015-07-08'),(29,'2015-07-09'),(30,'2015-07-10'),(31,'2015-07-13'),(32,'2015-07-14'),(33,'2015-07-15'),(34,'2015-07-16'),(35,'2015-07-17'),(36,'2015-07-20'),(37,'2015-07-21'),(38,'2015-07-22'),(39,'2015-07-23'),(40,'2015-07-24'),(41,'2015-07-27'),(42,'2015-07-28'),(43,'2015-07-29'),(44,'2015-07-30'),(45,'2015-07-31');
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

declare VAR_MAX_NECKLINE_SLOPE_ABS_VALUE float default 0.0;



SELECT rule_value FROM engine_has_pattern.has_pattern_rules
where rule_name = 'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE' into  VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;

set  price_diff_percentage =  (input_head_low_close_price - input_first_shoulder_low_close_price) * 100
                                /  input_first_shoulder_low_close_price;

set neckline_slope =  price_diff_percentage/ (input_head_low_row_id - input_first_shoulder_low_row_id);

if abs(neckline_slope) > VAR_MAX_NECKLINE_SLOPE_ABS_VALUE then

set neckline_slope = neckline_slope/abs(neckline_slope) * VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;  -- set neckline slope to 0.5 or -0.5

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
endDate date,
prediction_type int,
input_pattern_type_id int)
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

  DECLARE CALCULATED_HEAD_TO_SHOULDER_DURATION int DEFAULT 0;


  DECLARE var_has_id int;
  DECLARE var_first_shoulder_low_row_id int;
  DECLARE var_first_shoulder_low_close_price float;
  DECLARE var_first_shoulder_low_date date;
   DECLARE var_head_low_row_id int;
  DECLARE var_head_low_close_price float;


  -- DECLARE VAR_HEAD_ROW_ID INT DEFAULT 0;





SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_HEAD_TO_SHOULDER_DURATION =    2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );



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
/*!50003 DROP PROCEDURE IF EXISTS `identify_all_has_pattern_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_all_has_pattern_type`(
duration_days INT,
endDate date,
prediction_type int,
input_pattern_type_id int)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_has_id INT;
  DECLARE var_second_shoulder_top_row_id INT;
  DECLARE var_second_shoulder_top_date DATE;
  DECLARE var_second_shoulder_top_close_price FLOAT;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int DEFAULT 0;




      DECLARE identified_has_details CURSOR FOR
    SELECT DISTINCT
        has_id,second_shoulder_top_row_id, second_shoulder_top_date, second_shoulder_top_close_price
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

delete from  engine_has_pattern.has_pattern_type;

OPEN identified_has_details;

 IF no_more_rows = 1 THEN
 close identified_has_details;
 END IF;

find_second_shoulder__low_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

FETCH identified_has_details INTO var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_date,var_second_shoulder_top_close_price;

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

call identify_has_pattern_type(duration_days,endDate,var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_date,var_second_shoulder_top_close_price,
                                    CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

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
endDate date,
input_endDate_row_id int,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_date date,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int)
BEGIN

declare var_endDate_close_price float(10,2);

declare var_shoulder_low_min_close_price float(10,2);

declare var_shoulder_low_min_row_id int;



declare var_shoulder_low_slope float(10,2);

declare var_neckline_slope float(10,2);

declare var_effective_slope float(10,2);


declare price_diff_percentage float(10,2);


declare var_shoulder_top_neckline_price float(10,2);


declare var_shoulder_height_percentage float(10,2);






select min(CLOSE_PRICE) from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
into var_shoulder_low_min_close_price;

select a.price_value from engine_has_pattern.has_neckline_points a

where a.has_id = input_has_id
and a.row_id = input_second_shoulder_top_row_id
into var_shoulder_top_neckline_price;





select ROW_ID from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
and FORMAT(CLOSE_PRICE,2)  = FORMAT(var_shoulder_low_min_close_price,2)
order by  ROW_ID desc
limit 1
into var_shoulder_low_min_row_id;



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

replace into engine_has_pattern.identified_has_pattern_type values(var_has_id,1);

end if;







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
endDate date,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_date date,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int)
proc_label: BEGIN

  DECLARE var_endDate_row_id int;

select a.ROW_ID from engine_has_pattern.equity_data_has_pattern a
where a.CURR_DATE = endDate into var_endDate_row_id;

IF ((var_endDate_row_id -  input_second_shoulder_top_row_id  = 0) AND duration_days <= 30)
THEN

replace into engine_has_pattern.identified_has_pattern_type values(var_has_id,1);

LEAVE proc_label;


END IF;


IF (var_endDate_row_id -  input_second_shoulder_top_row_id <   (0.25 * CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION))
THEN

LEAVE proc_label;

END IF;

IF (var_endDate_row_id -  input_second_shoulder_top_row_id <   CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)
THEN


call identify_as_pattern_type_1_or_2(endDate,var_endDate_row_id,input_has_id,input_second_shoulder_top_row_id,
input_second_shoulder_top_date,input_second_shoulder_top_close_price,
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

-- Dump completed on 2017-06-03 22:33:53
