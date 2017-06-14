-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_ea
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
-- Table structure for table `equity_data_daily_temporary`
--

DROP TABLE IF EXISTS `equity_data_daily_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_daily_temporary` (
  `SYMBOL` varchar(45) NOT NULL,
  `SERIES` varchar(45) NOT NULL,
  `OPEN_PRICE` float DEFAULT NULL,
  `HIGH_PRICE` float DEFAULT NULL,
  `LOW_PRICE` float DEFAULT NULL,
  `CLOSE_PRICE` float DEFAULT NULL,
  `LAST_PRICE` float DEFAULT NULL,
  `PREV_CLOSE` float DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float DEFAULT NULL,
  `TURNOVER` double DEFAULT NULL,
  `CURR_DATE` date NOT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `ISIN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SYMBOL`,`CURR_DATE`,`SERIES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_intermediate`
--

DROP TABLE IF EXISTS `equity_data_intermediate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_intermediate` (
  `SYMBOL` varchar(45) DEFAULT NULL,
  `SERIES` varchar(45) DEFAULT NULL,
  `CURR_DATE` varchar(100) DEFAULT NULL,
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
  `PERCENT_DELIVERABLE_QTY` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_main`
--

DROP TABLE IF EXISTS `equity_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_main` (
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
  PRIMARY KEY (`SYMBOL`,`CURR_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `expiry_master`
--

DROP TABLE IF EXISTS `expiry_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expiry_master` (
  `EXPIRY_DATE` date NOT NULL,
  `DAYS_TO_EXPIRY` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPIRY_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_holidays`
--

DROP TABLE IF EXISTS `market_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_holidays` (
  `SR NO` int(11) DEFAULT NULL,
  `HOLIDAY_DATE` date NOT NULL,
  PRIMARY KEY (`HOLIDAY_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_sessions`
--

DROP TABLE IF EXISTS `market_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_sessions` (
  `SR_NO` int(11) NOT NULL,
  `SESSION_DATE` date NOT NULL,
  `IS_EXPIRY` tinyint(4) NOT NULL,
  `PREV_SESSION_DATE` date NOT NULL,
  PRIMARY KEY (`SESSION_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_20_equity`
--

DROP TABLE IF EXISTS `top_20_equity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_20_equity` (
  `symbol` varchar(45) NOT NULL,
  `count_symbol` int(11) DEFAULT NULL,
  `total_turnover` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'engine_ea'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculate_top_20_turnover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_top_20_turnover`(
startDate date,
endDate date
)
BEGIN

declare date_counter date;


set date_counter =  startDate;

delete from top_20_equity;


while  date_counter <=  endDate

do

call calculate_top_25_for_date(date_counter);

set date_counter = date_add(date_counter,interval 1 day);


end while;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_top_25_for_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_top_25_for_date`(
inputDate Date)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int DEFAULT 0;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_symbol VARCHAR(45) DEFAULT 0;

  DECLARE var_turnover double DEFAULT 0;

  DECLARE var_count_symbol int DEFAULT 0;

  DECLARE var_turnover_symbol double DEFAULT 0;



    DECLARE daily_top_turnover CURSOR FOR
    select distinct symbol,b.TURNOVER from equity_data_daily_temporary b
    where CURR_DATE = inputDate
    -- AND SYMBOL = 'TITAN'
    order by b.TURNOVER DESC
    limit 25;


  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;


OPEN daily_top_turnover;

 IF no_more_rows = 1 THEN
 close daily_top_turnover;
 END IF;

WHILE   no_more_rows = 0
DO


FETCH daily_top_turnover INTO var_symbol,var_turnover;

select count_symbol,total_turnover from  top_20_equity
where symbol =  var_symbol
into var_count_symbol,var_turnover_symbol;

replace into  top_20_equity
values (var_symbol,(var_count_symbol + 1),(var_turnover_symbol+var_turnover));





END WHILE;


CLOSE  daily_top_turnover;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `populate_market_sessions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `populate_market_sessions`(
NO_SESSIONS INT)
BEGIN


      DECLARE dayCounter INT Default 0 ;
      
      DECLARE srCounter INT Default 0 ;

      DECLARE maxSr INT Default 0 ;
      
      DECLARE currCounterDate DATE DEFAULT curdate();
      
	  DECLARE prevCounterDate DATE;

      
    DECLARE maxSessionDate DATE DEFAULT curdate();
      
    DECLARE isExpiryDate TINYINT DEFAULT 0;
      
	  DECLARE dayOfWeek INT DEFAULT 0;


   DECLARE countHolidayCheck INT DEFAULT 0;





	 SELECT max(sr_no) from market_sessions into maxSr;
      
   SELECT max(SESSION_DATE) from market_sessions into maxSessionDate;
      
	 SET prevCounterDate = maxSessionDate;


      
      simple_loop: LOOP
         
         SET dayCounter=dayCounter+1;
		
	 SET currCounterDate = DATE_ADD(maxSessionDate,INTERVAL dayCounter DAY);
     
    select DAYOFWEEK(currCounterDate) into dayOfWeek;
     
     IF(dayOfWeek = 1 OR dayOfWeek = 7) THEN
     
		ITERATE simple_loop;

        
	 END IF;

     	SELECT count(*) from market_holidays
      where HOLIDAY_DATE = currCounterDate into countHolidayCheck;

    IF(countHolidayCheck > 0) THEN
     
		ITERATE simple_loop;

   	 END IF;
          
   	  SELECT count(*) from expiry_master 
      where EXPIRY_DATE = currCounterDate into isExpiryDate;


  SET srCounter=srCounter+1;
     
	 REPLACE INTO market_sessions values(
	 maxSr+srCounter, currCounterDate, isExpiryDate,prevCounterDate);
    
    SET prevCounterDate = currCounterDate; 

         IF dayCounter=NO_SESSIONS THEN
            LEAVE simple_loop;
         END IF;
   END LOOP simple_loop;
   
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

-- Dump completed on 2017-06-14 14:27:16
