/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.26 : Database - db_lingshi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_lingshi` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_lingshi`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adno` varchar(255) DEFAULT NULL,
  `adpsw` varchar(255) DEFAULT NULL,
  `belong` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `admin` */

insert  into `admin`(`adno`,`adpsw`,`belong`) values ('1','123456','学校'),('2','123456','信息工程学院');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pubdate` datetime DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `news` */

insert  into `news`(`nid`,`title`,`url`,`pubdate`) values (1,'123','123','2018-05-05 21:36:53');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sno` varchar(255) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `ssex` varchar(255) DEFAULT NULL,
  `sage` int DEFAULT NULL,
  `sclass` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `sdept` varchar(255) DEFAULT NULL,
  `sphone` varchar(255) DEFAULT NULL,
  `spsw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `student` */

insert  into `student`(`sno`,`sname`,`ssex`,`sage`,`sclass`,`specialty`,`sdept`,`sphone`,`spsw`) values ('1','张小花',NULL,21,'1班','java开发','信息工程学院','13111221100','123456');

/*Table structure for table `stupunchin` */

DROP TABLE IF EXISTS `stupunchin`;

CREATE TABLE `stupunchin` (
  `sno` varchar(255) NOT NULL,
  `sispunch` varchar(255) DEFAULT NULL,
  `spunchdate` datetime DEFAULT NULL,
  `spunchtime` varchar(255) DEFAULT NULL,
  `sishot` varchar(255) DEFAULT NULL,
  `siscough` varchar(255) DEFAULT NULL,
  `sisseem` varchar(255) DEFAULT NULL,
  `sisdiagnose` varchar(255) DEFAULT NULL,
  `sstatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `stupunchin` */

insert  into `stupunchin`(`sno`,`sispunch`,`spunchdate`,`spunchtime`,`sishot`,`siscough`,`sisseem`,`sisdiagnose`,`sstatus`) values ('1','否','2021-05-11 00:00:00','11:36','否','否','否','否','正常');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tno` varchar(255) NOT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `tsex` varchar(255) DEFAULT NULL,
  `tage` int DEFAULT NULL,
  `tdept` varchar(255) DEFAULT NULL,
  `tphone` varchar(255) DEFAULT NULL,
  `tpsw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `teacher` */

insert  into `teacher`(`tno`,`tname`,`tsex`,`tage`,`tdept`,`tphone`,`tpsw`) values ('1','王晶晶','男',32,'信息工程学院','16611445511','123456');

/*Table structure for table `teapunchin` */

DROP TABLE IF EXISTS `teapunchin`;

CREATE TABLE `teapunchin` (
  `tno` varchar(255) DEFAULT NULL,
  `tispunch` varchar(255) DEFAULT NULL,
  `tpunchdate` datetime DEFAULT NULL,
  `tpunchtime` varchar(255) DEFAULT NULL,
  `tishot` varchar(255) DEFAULT NULL,
  `tiscough` varchar(255) DEFAULT NULL,
  `tisseem` varchar(255) DEFAULT NULL,
  `tisdiagnose` varchar(255) DEFAULT NULL,
  `tstatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `teapunchin` */

insert  into `teapunchin`(`tno`,`tispunch`,`tpunchdate`,`tpunchtime`,`tishot`,`tiscough`,`tisseem`,`tisdiagnose`,`tstatus`) values ('1','是','2021-05-11 00:00:00','22:34','否','否','否','否','正常');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
