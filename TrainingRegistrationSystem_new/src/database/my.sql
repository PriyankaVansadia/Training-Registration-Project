/*
SQLyog Community v12.2.6 (64 bit)
MySQL - 5.7.15-log : Database - firstdatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`firstdatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `firstdatabase`;

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `Topic` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `TNID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `TNID` (`TNID`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`TNID`) REFERENCES `trainer` (`TNID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `schedule` */

insert  into `schedule`(`SID`,`Topic`,`Date`,`TNID`) values 
(1,'Java','2017-02-01',1),
(2,'DBMS','2017-02-02',2);

/*Table structure for table `trainee` */

DROP TABLE IF EXISTS `trainee`;

CREATE TABLE `trainee` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Field` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `trainee` */

insert  into `trainee`(`TID`,`Name`,`Field`) values 
(1,'KAUSHAL','JAVA DEVELOPER'),
(2,'SAWAN','JAVA Developer'),
(3,'Samip','Database developer');

/*Table structure for table `trainer` */

DROP TABLE IF EXISTS `trainer`;

CREATE TABLE `trainer` (
  `TNID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Specialization` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`TNID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `trainer` */

insert  into `trainer`(`TNID`,`Name`,`Specialization`) values 
(1,'Priyanka','JAVA'),
(2,'Payal','SQL');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
