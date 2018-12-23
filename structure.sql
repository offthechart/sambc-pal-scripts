CREATE DATABASE  IF NOT EXISTS `samdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `samdb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: samdb
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `parentID` int(11) NOT NULL default '0',
  `levelindex` tinyint(4) NOT NULL default '0',
  `itemindex` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventtime`
--

DROP TABLE IF EXISTS `eventtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventtime` (
  `ID` int(11) NOT NULL auto_increment,
  `eventID` int(11) NOT NULL default '0',
  `eventtime` time NOT NULL default '00:00:00',
  `eventdate` date NOT NULL default '0000-00-00',
  `eventday` varchar(20) NOT NULL default 'day',
  `recurring` enum('No','Yes') NOT NULL default 'Yes',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=597 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historylist`
--

DROP TABLE IF EXISTS `historylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historylist` (
  `ID` int(11) NOT NULL auto_increment,
  `songID` int(11) NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `date_played` datetime NOT NULL default '0000-00-00 00:00:00',
  `duration` mediumint(15) NOT NULL default '0',
  `artist` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `album` varchar(255) NOT NULL default '',
  `albumyear` varchar(4) NOT NULL default '',
  `website` varchar(255) NOT NULL default '',
  `buycd` varchar(255) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `listeners` mediumint(9) NOT NULL default '0',
  `label` varchar(100) NOT NULL default '',
  `pline` varchar(50) NOT NULL default '',
  `trackno` smallint(6) NOT NULL default '0',
  `composer` varchar(100) NOT NULL default '',
  `ISRC` varchar(50) NOT NULL default '',
  `catalog` varchar(50) NOT NULL default '',
  `UPC` varchar(50) NOT NULL default '',
  `feeagency` varchar(20) NOT NULL default '',
  `songtype` char(1) NOT NULL default '',
  `requestID` int(11) NOT NULL default '0',
  `overlay` enum('yes','no') NOT NULL default 'no',
  `songrights` set('broadcast','download','on-demand','royaltyfree') NOT NULL default 'broadcast',
  PRIMARY KEY  (`ID`),
  KEY `date_played` (`date_played`)
) ENGINE=MyISAM AUTO_INCREMENT=345146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requestlist`
--

DROP TABLE IF EXISTS `requestlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requestlist` (
  `ID` int(11) NOT NULL auto_increment,
  `songID` int(11) NOT NULL default '0',
  `t_stamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `host` varchar(255) NOT NULL default '',
  `msg` text,
  `name` varchar(255) NOT NULL default '',
  `code` mediumint(9) NOT NULL default '0',
  `ETA` datetime NOT NULL default '0000-00-00 00:00:00',
  `status` enum('played','ignored','pending','new') NOT NULL default 'new',
  PRIMARY KEY  (`ID`),
  KEY `t_stamp` (`t_stamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otcinstants`
--

DROP TABLE IF EXISTS `otcinstants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otcinstants` (
  `index` int(11) NOT NULL auto_increment,
  `eventtype` varchar(20) NOT NULL default '',
  `arg1` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=2921 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queuelist`
--

DROP TABLE IF EXISTS `queuelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuelist` (
  `ID` int(11) NOT NULL auto_increment,
  `songID` int(11) NOT NULL default '0',
  `sortID` float NOT NULL default '0',
  `requests` int(11) NOT NULL default '0',
  `requestID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=156388 DEFAULT CHARSET=latin1 COMMENT='11';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otcevents`
--

DROP TABLE IF EXISTS `otcevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otcevents` (
  `ind` int(11) NOT NULL auto_increment,
  `execdatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `eventtype` varchar(20) NOT NULL default '',
  `arg1` varchar(100) NOT NULL default '',
  `arg2` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`ind`)
) ENGINE=MyISAM AUTO_INCREMENT=287125 DEFAULT CHARSET=latin1 COMMENT='table for all OTC events, imported from site schedule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disk`
--

DROP TABLE IF EXISTS `disk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disk` (
  `ID` int(11) NOT NULL default '0',
  `serial` varchar(100) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0',
  `t_stamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorylist`
--

DROP TABLE IF EXISTS `categorylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorylist` (
  `ID` int(11) NOT NULL auto_increment,
  `songID` int(11) NOT NULL default '0',
  `categoryID` int(11) NOT NULL default '0',
  `sortID` float NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `categoryID` (`categoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4679 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `eventaction` varchar(50) NOT NULL default '',
  `data` text,
  `extra` text,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otcoutput`
--

DROP TABLE IF EXISTS `otcoutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otcoutput` (
  `status` varchar(10) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='output data inc handover helper status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `songlist`
--

DROP TABLE IF EXISTS `songlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songlist` (
  `ID` int(11) NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL default '',
  `diskID` int(11) NOT NULL default '0',
  `flags` varchar(10) NOT NULL default 'NNNNNNNNNN',
  `songtype` char(1) NOT NULL default 'S',
  `status` tinyint(4) NOT NULL default '0',
  `weight` float NOT NULL default '50',
  `balance` float NOT NULL default '0',
  `date_added` datetime default NULL,
  `date_played` datetime default NULL,
  `date_artist_played` datetime default '2002-01-01 00:00:01',
  `date_album_played` datetime default '2002-01-01 00:00:01',
  `date_title_played` datetime default '2002-01-01 00:00:01',
  `duration` mediumint(15) NOT NULL default '0',
  `artist` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `album` varchar(255) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `pline` varchar(50) NOT NULL default '',
  `trackno` smallint(6) NOT NULL default '0',
  `composer` varchar(100) NOT NULL default '',
  `ISRC` varchar(50) NOT NULL default '',
  `catalog` varchar(50) NOT NULL default '',
  `UPC` varchar(50) NOT NULL default '',
  `feeagency` varchar(20) NOT NULL default '',
  `albumyear` varchar(4) NOT NULL default '0',
  `genre` varchar(20) NOT NULL default '',
  `website` varchar(255) NOT NULL default '',
  `buycd` varchar(255) NOT NULL default '',
  `info` text,
  `lyrics` text,
  `picture` varchar(255) NOT NULL default '',
  `count_played` mediumint(9) NOT NULL default '0',
  `count_requested` mediumint(9) NOT NULL default '0',
  `last_requested` datetime NOT NULL default '2002-01-01 00:00:01',
  `count_performances` int(11) NOT NULL default '0',
  `xfade` varchar(50) NOT NULL default '',
  `bpm` mediumint(9) NOT NULL default '0',
  `mood` varchar(50) NOT NULL default '',
  `rating` mediumint(9) NOT NULL default '0',
  `overlay` enum('yes','no') NOT NULL default 'no',
  `playlimit_count` int(11) NOT NULL default '0',
  `playlimit_action` enum('none','remove','erase') NOT NULL default 'none',
  `songrights` set('broadcast','download','on-demand','royaltyfree') NOT NULL default 'broadcast',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `filename` (`filename`),
  KEY `date_played` (`date_played`),
  KEY `date_artist_played` (`date_artist_played`),
  KEY `date_album_played` (`date_album_played`)
) ENGINE=MyISAM AUTO_INCREMENT=6845 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-27 18:00:25
