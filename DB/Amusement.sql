/*
SQLyog Ultimate v8.82 
MySQL - 5.1.50-community : Database - amusementpark
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`amusementpark` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `amusementpark`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `adminlogin` */ 

insert  into `adminlogin`(`UserName`,`Password`) values ('admin','admin');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `BookingID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `BookingDate` varchar(15) DEFAULT NULL,
  `Total` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `booking` */

insert  into `booking`(`BookingID`,`Name`,`Phone`,`Email`,`adults`,`children`,`BookingDate`,`Total`) values ('Bid-00000aaa','inshaal','121','sjdcnknc',3,2,'12-12-2019','2100');

/*Table structure for table `emplogin` */

DROP TABLE IF EXISTS `emplogin`;

CREATE TABLE `emplogin` (
  `Eid` varchar(15) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emplogin` */

insert  into `emplogin`(`Eid`,`Username`,`Password`) values ('Eid-00000aaa','inshu','8962');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `Eid` varchar(15) NOT NULL,
  `AadharID` varchar(13) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Address` varchar(250) NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`Eid`,`AadharID`,`Name`,`Phone`,`Email`,`Address`) values ('Eid-00000aaa','34234234','efnlerfn','234234','kvlefmvler','lekvelk elr elr vlek v');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Bookingid` varchar(15) NOT NULL,
  `Amount` varchar(10) DEFAULT NULL,
  `cardType` varchar(20) DEFAULT NULL,
  `CardNo` varchar(20) DEFAULT NULL,
  `ExpDate` varchar(15) DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `TicketNo` varchar(20) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

insert  into `payment`(`Bookingid`,`Amount`,`cardType`,`CardNo`,`ExpDate`,`cvv`,`status`,`TicketNo`,`PaymentMode`) values ('Bid-00000aaa','2100',NULL,NULL,NULL,NULL,'Paid','1230','Cash'),('Bid-00000aaa','2100',NULL,NULL,NULL,NULL,'Paid','1231','Cash'),('1','2','2','2','1','4','Paid','1','Card'),('Bid-00000aaa','2100','Credit','324234','12-12-1212','121','Paid','1232','Card');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `Bookingid` varchar(20) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Review` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review` */

insert  into `review`(`Bookingid`,`Name`,`Review`) values ('Bid-00000aaa','inshaal','d cvfv fev ef vefjv efl efl ');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `TicketNo` varchar(20) NOT NULL,
  `Bookingid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TicketNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ticket` */

insert  into `ticket`(`TicketNo`,`Bookingid`) values ('1232','Bid-00000aaa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
