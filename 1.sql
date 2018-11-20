/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.20-log : Database - userm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`userm` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `userm`;

/*Table structure for table `t_diary` */

CREATE TABLE `t_diary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `adminer` varchar(20) DEFAULT NULL,
  `day` varbinary(20) DEFAULT NULL,
  `ndiary` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

/*Data for the table `t_diary` */

insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (1,'admin','admin','20180706','你的树苗已经成功种植在撒哈拉沙漠了，如果没死你就可以继续更新查看了，死了就拜拜了');
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (2,'root','admin','20180707','新的一天你的树苗又成长了');
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (3,'qwe','admin','20180708','hello');
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (4,'asd','admin','20180708',NULL);
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (5,'zxc','admin','20180706',NULL);
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (6,'admin','admin','20180709',NULL);
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (7,'admin','admin','20180708',NULL);
insert  into `t_diary`(`id`,`name`,`adminer`,`day`,`ndiary`) values (8,'admin','admin','20180707','新的一天你的树苗又成长了很多');

/*Table structure for table `t_information` */

CREATE TABLE `t_information` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `kind_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

/*Data for the table `t_information` */

insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (5,'张三','男',28,'13111111211','2018-06-29','俊俊树','id5');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (6,'李四','男',20,'13111111171','2018-07-05','白杨树','id1');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (7,'王五','男',22,'13111111511','2018-07-05','松柏','id2');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (8,'小明','男',25,'13111111161','2018-07-05','白杨树','id1');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (9,'小王','女',29,'13111121111','2018-07-05','白杨树','id1');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (10,'小青','女',22,'13111111191','2018-07-05','沙柳','id3');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (11,'小强','男',23,'13111118111','2018-07-05','白杨树','id1');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (12,'小月','女',27,'13111111161','2018-07-05','小灌木','id4');
insert  into `t_information`(`id`,`uname`,`gender`,`age`,`phone`,`time`,`pname`,`kind_id`) values (13,'小华','男',28,'13111111131','2018-07-05','俊俊树','id5');

/*Table structure for table `t_kind` */

CREATE TABLE `t_kind` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kind_id` varchar(20) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `env` varchar(20) DEFAULT NULL,
  `plantkind` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

/*Data for the table `t_kind` */

insert  into `t_kind`(`id`,`kind_id`,`length`,`env`,`plantkind`) values (2,'id1','1.0m',NULL,'落叶乔木');
insert  into `t_kind`(`id`,`kind_id`,`length`,`env`,`plantkind`) values (3,'id2','1.2m',NULL,'常绿乔木');
insert  into `t_kind`(`id`,`kind_id`,`length`,`env`,`plantkind`) values (4,'id3','1.5m',NULL,'沙生灌木');
insert  into `t_kind`(`id`,`kind_id`,`length`,`env`,`plantkind`) values (5,'id4','1.1m',NULL,'灌木');
insert  into `t_kind`(`id`,`kind_id`,`length`,`env`,`plantkind`) values (6,'id5','1.0m',NULL,'小乔木');

/*Table structure for table `t_user` */

CREATE TABLE `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`name`,`password`,`email`,`city`,`phone`) values (7,'admin','123','3333@qq.com','北京','13135691111');
insert  into `t_user`(`id`,`name`,`password`,`email`,`city`,`phone`) values (11,'root','123','3333@qq.com','上海','13135691111');
insert  into `t_user`(`id`,`name`,`password`,`email`,`city`,`phone`) values (12,'qwe','123','3333@qq.com','深圳','13135691111');
insert  into `t_user`(`id`,`name`,`password`,`email`,`city`,`phone`) values (13,'asd','123','3333@qq.com','武汉','13135691111');
insert  into `t_user`(`id`,`name`,`password`,`email`,`city`,`phone`) values (14,'zxc','123','3333@qq.com','武汉','13135691111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
