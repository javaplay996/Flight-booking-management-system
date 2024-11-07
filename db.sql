/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - hangbandingpiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hangbandingpiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hangbandingpiao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'飞机轮播图1','http://localhost:8080/hangbandingpiao/upload/1618625472032.jpg'),(2,'飞机轮播图2','http://localhost:8080/hangbandingpiao/upload/1618625513651.png'),(3,'飞机轮播图3','http://localhost:8080/hangbandingpiao/upload/1618887997269.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-16 21:39:48'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-16 21:39:48'),(3,'feiji_types','飞机名称',1,'飞机1',NULL,'2021-04-16 21:39:49'),(4,'feiji_types','飞机名称',2,'飞机2',NULL,'2021-04-16 21:39:49'),(5,'feiji_types','飞机名称',3,'飞机3',NULL,'2021-04-16 21:39:49'),(6,'feiji_types','飞机名称',4,'飞机4',NULL,'2021-04-16 21:39:49'),(7,'feiji_leixing_types','飞机类型名称',1,'大型客机',NULL,'2021-04-16 21:39:49'),(8,'feiji_leixing_types','飞机类型名称',2,'中型客机',NULL,'2021-04-16 21:39:49'),(9,'feiji_leixing_types','飞机类型名称',3,'小型客机',NULL,'2021-04-16 21:39:49'),(10,'feiji_order_types','订单类型名称',3,'退款',NULL,'2021-04-16 21:39:49'),(11,'feiji_order_types','订单类型名称',2,'已支付',NULL,'2021-04-16 21:39:49'),(12,'feiji_order_types','订单类型名称',1,'未支付',NULL,'2021-04-16 21:39:49'),(13,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-16 21:39:49'),(14,'news_types','新闻类型名称',2,'航班新闻',NULL,'2021-04-16 21:39:49'),(15,'news_types','新闻类型名称',3,'紧急新闻',NULL,'2021-04-16 21:39:49');

/*Table structure for table `feiji` */

DROP TABLE IF EXISTS `feiji`;

CREATE TABLE `feiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feiji_name` varchar(200) DEFAULT NULL COMMENT '航班号  Search111 ',
  `feiji_types` int(11) DEFAULT NULL COMMENT '飞机 Search111 ',
  `feiji_leixing_types` int(11) DEFAULT NULL COMMENT '飞机类型',
  `feiji_start_time` varchar(200) DEFAULT NULL COMMENT '起飞时间',
  `feiji_start_address` varchar(200) DEFAULT NULL COMMENT '始发站 Search111 ',
  `feiji_end_address` varchar(200) DEFAULT NULL COMMENT '目的地 Search111 ',
  `feiji_new_money` decimal(10,4) DEFAULT NULL COMMENT '票价 Search111 ',
  `feiji_photo` varchar(200) DEFAULT NULL COMMENT '飞机图',
  `feiji_content` text COMMENT '飞机详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='航班';

/*Data for the table `feiji` */

insert  into `feiji`(`id`,`feiji_name`,`feiji_types`,`feiji_leixing_types`,`feiji_start_time`,`feiji_start_address`,`feiji_end_address`,`feiji_new_money`,`feiji_photo`,`feiji_content`,`create_time`) values (1,'k101',4,3,'05:00:00','北京','上海','42.5000','http://localhost:8080/hangbandingpiao/file/download?fileName=1618627253007.jfif','k101航班的飞机航班详情\r\n','2021-04-17 10:41:13'),(2,'k102',4,3,'14:00:00','北京','上海','100.8700','http://localhost:8080/hangbandingpiao/file/download?fileName=1618627314297.jfif','航班102的详情\r\n','2021-04-17 10:42:07'),(3,'k104',1,3,'10:00:00','北京','杭州','10.5600','http://localhost:8080/hangbandingpiao/file/download?fileName=1618627391012.jfif','k104的航班详情\r\n','2021-04-17 10:43:27'),(4,'k05',2,2,'12:00:00','南阳','杭州','115.4000','http://localhost:8080/hangbandingpiao/file/download?fileName=1618641959097.jpg','思思思思\r\n','2021-04-17 14:46:02'),(5,'k106',1,1,'03:00:00','北京','纽约','10.9000','http://localhost:8080/hangbandingpiao/file/download?fileName=1618888217608.jpg','k106的详情\r\n','2021-04-20 11:10:27');

/*Table structure for table `feiji_collection` */

DROP TABLE IF EXISTS `feiji_collection`;

CREATE TABLE `feiji_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feiji_id` int(11) DEFAULT NULL COMMENT '飞机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='飞机收藏';

/*Data for the table `feiji_collection` */

insert  into `feiji_collection`(`id`,`feiji_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,3,1,'2021-04-19 18:52:36','2021-04-19 18:52:36'),(2,1,2,'2021-04-20 11:15:19','2021-04-20 11:15:19');

/*Table structure for table `feiji_liuyan` */

DROP TABLE IF EXISTS `feiji_liuyan`;

CREATE TABLE `feiji_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feiji_id` int(11) DEFAULT NULL COMMENT '飞机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `feiji_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='飞机留言';

/*Data for the table `feiji_liuyan` */

insert  into `feiji_liuyan`(`id`,`feiji_id`,`yonghu_id`,`feiji_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,1,'留言1\r\n','很好\r\n','2021-04-19 18:45:24','2021-04-19 18:45:24'),(2,5,2,'最大行李箱尺寸\r\n','最大为10寸\r\n','2021-04-20 11:11:22','2021-04-20 11:11:22');

/*Table structure for table `feiji_order` */

DROP TABLE IF EXISTS `feiji_order`;

CREATE TABLE `feiji_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feiji_id` int(11) DEFAULT NULL COMMENT '飞机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `feiji_order_time` timestamp NULL DEFAULT NULL COMMENT '订票日期',
  `feiji_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='飞机订单';

/*Data for the table `feiji_order` */

insert  into `feiji_order`(`id`,`feiji_id`,`yonghu_id`,`feiji_order_time`,`feiji_order_types`,`insert_time`,`create_time`) values (1,3,1,'2021-04-21 00:00:00',2,'2021-04-20 11:02:02','2021-04-20 11:02:02'),(2,3,1,'2021-04-21 00:00:00',3,'2021-04-20 11:30:18','2021-04-20 11:30:18'),(3,3,1,'2021-04-21 00:00:00',3,'2021-04-20 11:03:14','2021-04-20 11:03:14'),(4,4,2,'2021-04-21 00:00:00',3,'2021-04-20 11:16:10','2021-04-20 11:16:10'),(5,4,2,'2021-04-21 00:00:00',3,'2021-04-20 11:16:49','2021-04-20 11:16:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'飞机新闻1',1,'http://localhost:8080/hangbandingpiao/file/download?fileName=1618625715674.jfif','2021-04-17 10:15:17','航空发动机是强国的象征、更是大国博弈的迫切需要，未来衍生产品战略价值大\r\n1） 三代军用发动机五大常任理事国标配，四代军用发动机仅中美俄竞技，商用大涵道 比发动机美英三寡头垄断。\r\n2） 百年未有之大变局下，发展航空发动机产业是大国崛起的必然选择，中短期着眼周边局势国防安全带来的需求增长；中长期高度关注航空发动机在国家产业升级中的 巨大经济带动效应、航空发动机衍生技术及工艺在其余领域的新应用。\r\n\r\n航发集团成立，自研先进型号覆盖各类型飞机，技术突破与时代需求高度耦合\r\n1） 中国航空发动机产业起步偏晚、道路曲折，长期以来先进型号依赖进口。航发集团 成立、两机专项实施，飞发分离、自主研制，目前在役及在研型号覆盖我国各类型 军、民用飞机需求。\r\n2） 先进军、民用发动机的技术突破与时代、国家的战略需求相契合，前后接力驱动我 国航空发动机全产业链迈上一个新台阶。\r\n\r\n未来十五年，我国航空发动机产业需求旺盛、确定性高，年均近 2000 亿市场规模\r\n1） 军用领域，我国军用飞机在数量、质量上均与美国存在较大差距，为保障国家安全、 支撑大国崛起，我们预测军用领域或催生年均 900 亿市场。从 2020~2027 建军百年 年均复合增长约 18%，2027 年后随规模增大、增速逐渐放缓至 2035 年的约 10%。\r\n2） 商用领域，C919 已收获上千架订单，国际商用航空 ABC 格局动力基础必须自主可 控，长江-1000A 研制紧锣密鼓，预计 2030 年商用发动机整机市场向国产航发打开 大门，逐鹿年均千亿市场。\r\n3） 综合军民市场，未来 15 年我国航发产业链整机市场年均规模超 1,000 亿、复合增速 超 15%，前 10 年军用放量、10 年后民机接力，行业发展走出一条“微笑曲线”。\r\n\r\n航空发动机产业链重点关注 4 大领域：整机、零部件、原材料、维修保障\r\n1） 整机领域：主机厂以其垄断地位享受航空装备放量带来的确定性增长。\r\n2） 零部件领域：航发控制与中国航发控制系统研究所“厂所结合”、垄断产业链中价值 占比 13%的控制系统，业绩增长确定性不输整机。压气机涡轮叶片、轮盘价值占比 40%、附加值高、市场化程度不断提升，蕴含投资机会。\r\n3） 原材料领域：高温合金、钛合金合计占比 70%；复合材料技术含量高、引领未来发 展方向。\r\n4） 维修保障：“全面聚焦备战打仗”背景下实战化训练损耗加剧，预计利润率更高的维 修保障环节将对相关公司带来较大利润增长，重点看好军用航发维修保障龙头航发 动力。\r\n','2021-04-17 10:15:17'),(2,'新冠疫情扩散 韩国全球旅游特别预警期再延长一个月',3,'http://localhost:8080/hangbandingpiao/file/download?fileName=1618626715556.jfif','2021-04-17 10:31:57','  据韩媒报道，韩国外交部16日表示，考虑到全球新冠疫情持续扩散，政府决定将面向韩国公民发布的全球旅游特别预警期限，从原先的4月16日延至5月16日。\r\n  韩国按旅游目的地的风险程度，由低到高发布蓝黄红黑四级预警。蓝色预警为注意安全、黄色预警为谨慎前往、红色预警为建议撤离、黑色预警为禁止旅游。旅游特别预警介于第二级黄色和第三级红色之间。\r\n  韩国外交部去年3月23日首次发布全球旅游特别预警，此后逐月延长期限。韩国外交部呼吁计划出国旅游的公民取消或推迟计划。\r\n\r\n','2021-04-17 10:31:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','4jytek6up8estip2geoi2wmb25bz280y','2021-04-17 09:34:08','2021-04-20 12:34:35'),(2,1,'a1','yonghu','用户','lm645kldvo038kzmdu0qo7u96d6f73ay','2021-04-17 14:46:14','2021-04-20 12:29:22'),(3,2,'a2','yonghu','用户','lnm4f0jzhps944jnfkf4mwqdkxl18ftg','2021-04-20 11:11:00','2021-04-20 12:11:00'),(4,4,'a4','yonghu','用户','6m2cyoz3q807zo8r2aca6zycwure60km','2021-04-20 11:29:06','2021-04-20 12:29:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `new_money` decimal(10,4) DEFAULT NULL COMMENT '余额',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`new_money`,`sex_types`,`yonghu_photo`,`create_time`) values (1,'a1','123456','张111','17703786901','410224199610232001','88.8800',2,'http://localhost:8080/hangbandingpiao/file/download?fileName=1618624580596.jpg','2021-04-17 09:56:23'),(2,'a2','123456','张2','17703786912','410224199610232002','1010.0000',2,'http://localhost:8080/hangbandingpiao/file/download?fileName=1618625227503.jpg','2021-04-17 10:07:08'),(3,'a3','123456','张三','17703786903','410224199610232003','0.0000',2,'http://localhost:8080/hangbandingpiao/file/download?fileName=1618888485643.jpg','2021-04-20 11:14:47'),(4,'a4','123456','张4','17703786904','410224199610120','0.0000',2,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
