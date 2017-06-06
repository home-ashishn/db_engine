-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prediction_has_pattern
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
-- Table structure for table `has_evaluation_run`
--

DROP TABLE IF EXISTS `has_evaluation_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_evaluation_run` (
  `has_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_evaluation_run`
--

LOCK TABLES `has_evaluation_run` WRITE;
/*!40000 ALTER TABLE `has_evaluation_run` DISABLE KEYS */;
INSERT INTO `has_evaluation_run` VALUES (1,'SBIN','2017-05-29',30),(2,'SBIN','2017-05-29',30),(3,'SBIN','2017-05-29',30),(4,'SBIN','2017-05-29',30),(5,'SBIN','2017-05-29',30),(6,'SBIN','2017-05-29',30),(7,'SBIN','2017-05-29',30),(8,'SBIN','2017-05-29',30),(9,'SBIN','2017-05-29',30),(10,'SBIN','2017-05-29',30),(11,'SBIN','2017-05-29',30),(12,'SBIN','2017-05-31',30),(13,'SBIN','2017-05-31',30),(14,'SBIN','2017-05-31',30),(15,'SBIN','2017-05-31',30),(16,'SBIN','2017-05-31',30),(17,'SBIN','2017-05-31',30),(18,'SBIN','2017-05-31',30),(19,'SBIN','2017-05-31',30),(20,'SBIN','2017-05-31',30),(21,'SBIN','2017-05-31',30),(22,'SBIN','2017-05-31',30),(23,'SBIN','2017-05-31',30),(24,'SBIN','2017-05-31',30),(25,'SBIN','2017-05-31',30),(26,'SBIN','2017-05-31',30),(27,'SBIN','2017-05-31',30),(28,'SBIN','2017-05-31',30),(29,'SBIN','2017-05-31',30),(30,'SBIN','2017-05-31',30);
/*!40000 ALTER TABLE `has_evaluation_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_neckline_points`
--

DROP TABLE IF EXISTS `has_neckline_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_neckline_points` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `curr_date` date DEFAULT NULL,
  `price_value` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`,`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_neckline_points`
--

LOCK TABLES `has_neckline_points` WRITE;
/*!40000 ALTER TABLE `has_neckline_points` DISABLE KEYS */;
INSERT INTO `has_neckline_points` VALUES (28,85,34,'2017-05-23',188.85),(28,85,35,'2017-05-24',189.45),(28,85,36,'2017-05-25',190.00),(28,85,37,'2017-05-26',190.55),(28,85,38,'2017-05-29',191.10),(28,85,39,'2017-05-30',191.70),(28,85,40,'2017-05-31',192.25),(28,85,41,'2017-06-01',192.80),(28,85,42,'2017-06-02',193.40),(28,85,43,'2017-06-05',193.95),(28,85,44,'2017-06-06',194.50),(28,85,45,'2017-06-07',195.10),(28,85,46,'2017-06-08',195.65),(28,85,47,'2017-06-09',196.20),(28,85,48,'2017-06-12',196.75),(29,89,34,'2017-05-23',188.85),(29,89,35,'2017-05-24',189.45),(29,89,36,'2017-05-25',190.00),(29,89,37,'2017-05-26',190.55),(29,89,38,'2017-05-29',191.10),(29,89,39,'2017-05-30',191.70),(29,89,40,'2017-05-31',192.25),(29,89,41,'2017-06-01',192.80),(29,89,42,'2017-06-02',193.40),(29,89,43,'2017-06-05',193.95),(29,89,44,'2017-06-06',194.50),(29,89,45,'2017-06-07',195.10),(29,89,46,'2017-06-08',195.65),(29,89,47,'2017-06-09',196.20),(29,89,48,'2017-06-12',196.75);
/*!40000 ALTER TABLE `has_neckline_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_prediction_rules`
--

DROP TABLE IF EXISTS `has_prediction_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_prediction_rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_value` float NOT NULL,
  `rule_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_name_UNIQUE` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_prediction_rules`
--

LOCK TABLES `has_prediction_rules` WRITE;
/*!40000 ALTER TABLE `has_prediction_rules` DISABLE KEYS */;
INSERT INTO `has_prediction_rules` VALUES (1,'TARGET_HAS_DURATION_FACTOR',2,'THE FACTOR WITH WHICH THE DURATION NEEDS TO BE MULTIPLIED WHEN TARGET HAS IS TO BE IDENTIFIED'),(2,'BACKTESTING_DURATION_IN_YEARS',3,'BACKTESTING DURATION IN YEARS');
/*!40000 ALTER TABLE `has_prediction_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_data`
--

DROP TABLE IF EXISTS `identified_has_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_data` (
  `has_evaluation_run_id` int(5) NOT NULL,
  `has_id` int(5) NOT NULL,
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
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
INSERT INTO `identified_has_data` VALUES (30,92,'SBIN',31,'2017-05-18',197.5,33,'2017-05-22',188.3,35,'2017-05-24',197.55,36,'2017-05-25',194.25,37,'2017-05-26',195.65,NULL,NULL,NULL);
/*!40000 ALTER TABLE `identified_has_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_neckline_data`
--

DROP TABLE IF EXISTS `identified_has_neckline_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_neckline_data` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(5) NOT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `neckline_slope_value` float DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
INSERT INTO `identified_has_neckline_data` VALUES (28,85,33,'2017-05-22',188.3,0.3),(29,89,33,'2017-05-22',188.3,0.3);
/*!40000 ALTER TABLE `identified_has_neckline_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_pattern_type`
--

DROP TABLE IF EXISTS `identified_has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_pattern_type` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(11) NOT NULL,
  `identified_pattern_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_pattern_type`
--

LOCK TABLES `identified_has_pattern_type` WRITE;
/*!40000 ALTER TABLE `identified_has_pattern_type` DISABLE KEYS */;
INSERT INTO `identified_has_pattern_type` VALUES (6,74,1),(7,75,1),(8,76,1),(11,78,1),(13,79,2),(14,80,2),(15,81,2),(17,83,2),(27,84,2),(28,85,2),(29,89,2);
/*!40000 ALTER TABLE `identified_has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prediction_type`
--

DROP TABLE IF EXISTS `prediction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prediction_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prediction_type`
--

LOCK TABLES `prediction_type` WRITE;
/*!40000 ALTER TABLE `prediction_type` DISABLE KEYS */;
INSERT INTO `prediction_type` VALUES (1,'current_time','Identify the pattern for current time frame. Not required to analyse wether the pattern was successful. Only needed output is support/resistance types for future dates based on neckline'),(2,'back_testing','Identify the pattern for past dates. Also analyse wether the pattern was successful based upon neckline and volume data.');
/*!40000 ALTER TABLE `prediction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prediction_has_pattern'
--
/*!50003 DROP PROCEDURE IF EXISTS `find_has_main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_has_main`(
symbol_in varchar(45),
duration_days INT,
endDate date)
BEGIN

  DECLARE var_evaluation_run_id int;

  DECLARE var_identified_pattern_type_id int;

  DECLARE VAR_TARGET_HAS_DURATION_FACTOR float DEFAULT 0;

  DECLARE VAR_BACKTESTING_DURATION_IN_YEARS float DEFAULT 0;




SELECT rule_value FROM prediction_has_pattern.has_prediction_rules
where rule_name = 'TARGET_HAS_DURATION_FACTOR' into  VAR_TARGET_HAS_DURATION_FACTOR;

SELECT rule_value FROM prediction_has_pattern.has_prediction_rules
where rule_name = 'BACKTESTING_DURATION_IN_YEARS' into  VAR_BACKTESTING_DURATION_IN_YEARS;

  SET @startDate = DATE_SUB(endDate,INTERVAL (VAR_TARGET_HAS_DURATION_FACTOR*duration_days) day) ;

INSERT INTO prediction_has_pattern.has_evaluation_run
values (null,symbol_in,endDate,duration_days);


select max(a.has_evaluation_run_id) from prediction_has_pattern.has_evaluation_run a
into var_evaluation_run_id;

call prediction_has_pattern.find_target_has(symbol_in,duration_days,@startDate,endDate,var_evaluation_run_id,
                                            var_identified_pattern_type_id);

if var_identified_pattern_type_id = 2
then


-- start backtesting back from already covered period

call prediction_has_pattern.has_backtesting(symbol_in ,
duration_days,
@startDate,
var_evaluation_run_id,
VAR_BACKTESTING_DURATION_IN_YEARS);

end if;


-- replace INTO prediction_has_pattern.identified_has_pattern_type





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_target_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_target_has`(
symbol_in varchar(45),
duration_days INT,
startDate date,
endDate date,
input_evaluation_run_id int,
out var_identified_pattern_type_id int
)
BEGIN

  DECLARE var_has_id INT;
  DECLARE var_second_shoulder_top_row_id INT;
  DECLARE var_second_shoulder_top_date DATE;
  DECLARE var_second_shoulder_top_close_price FLOAT;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int DEFAULT 0;


  DECLARE identified_has_data_count int;




caLL engine_has_pattern.find_has (symbol_in,duration_days,
                                  startDate, endDate);

select count(*) from engine_has_pattern.identified_has_data into identified_has_data_count;

if (identified_has_data_count >= 1)   then

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;


SET CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION =    ROUND(2 * duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from  engine_has_pattern.identified_has_pattern_type;

select a.has_id,a.second_shoulder_top_row_id,a.second_shoulder_top_date,
a.second_shoulder_top_close_price from  engine_has_pattern.identified_has_data a
where a.second_shoulder_top_date =
(select max(second_shoulder_top_date) from   engine_has_pattern.identified_has_data)

INTO var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_date,var_second_shoulder_top_close_price;


replace INTO prediction_has_pattern.identified_has_data
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_data a
where a.has_id = var_has_id);

call engine_has_pattern.identify_has_pattern_type(duration_days,endDate,var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price,
                                    CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

select a.identified_pattern_type_id from  engine_has_pattern.identified_has_pattern_type a

where a.has_id = var_has_id

into var_identified_pattern_type_id;

if   var_identified_pattern_type_id is not null
then

replace INTO prediction_has_pattern.identified_has_pattern_type
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_pattern_type a
where a.has_id = var_has_id);


replace INTO prediction_has_pattern.identified_has_neckline_data
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_neckline_data a
where a.has_id = var_has_id);


replace INTO prediction_has_pattern.has_neckline_points
(select input_evaluation_run_id,a.* from engine_has_pattern.has_neckline_points a
where a.has_id = var_has_id);

end if;

end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `has_backtesting` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `has_backtesting`(
symbol_in varchar(45),
duration_days INT,
endDate date,
input_evaluation_run_id int,
VAR_BACKTESTING_DURATION_IN_YEARS float
)
BEGIN


SET @startDate = DATE_SUB(endDate,INTERVAL VAR_BACKTESTING_DURATION_IN_YEARS year) ;
caLL engine_has_pattern.find_has (symbol_in,duration_days,
                                  @startDate, endDate);

call engine_has_pattern.backtest_identify_all_has_pattern_type(duration_days);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prediction_for_rally_duration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prediction_for_rally_duration`(
duration_days int,
symbol_in varchar(45),
endDate date
)
BEGIN

call prediction_has_pattern.find_has_main(symbol_in,duration_days,endDate);


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

-- Dump completed on 2017-06-06 19:03:27
