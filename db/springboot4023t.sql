-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot4023t
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) NOT NULL COMMENT '班级名称',
  `banjirenshu` varchar(200) DEFAULT NULL COMMENT '班级人数',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054034453 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (41,'2021-03-18 07:04:16','班级名称1','班级人数1','备注1','工号1','教师姓名1'),(42,'2021-03-18 07:04:16','班级名称2','班级人数2','备注2','工号2','教师姓名2'),(43,'2021-03-18 07:04:16','班级名称3','班级人数3','备注3','工号3','教师姓名3'),(44,'2021-03-18 07:04:16','班级名称4','班级人数4','备注4','工号4','教师姓名4'),(45,'2021-03-18 07:04:16','班级名称5','班级人数5','备注5','工号5','教师姓名5'),(46,'2021-03-18 07:04:16','班级名称6','班级人数6','备注6','工号6','教师姓名6'),(1616054034452,'2021-03-18 07:53:54','小班','25','1111111','001','王老师');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipuxinxi`
--

DROP TABLE IF EXISTS `caipuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `shijian` varchar(200) NOT NULL COMMENT '时间',
  `caipinmingdan` longtext COMMENT '菜品名单',
  `yingyangfenxi` longtext COMMENT '营养分析',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='菜谱信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipuxinxi`
--

LOCK TABLES `caipuxinxi` WRITE;
/*!40000 ALTER TABLE `caipuxinxi` DISABLE KEYS */;
INSERT INTO `caipuxinxi` VALUES (151,'2021-03-18 07:04:16','1号菜谱单','2021-03-01','早餐','早餐 油条豆浆 ，其他','早上这样搭配营养好，有助于孩子的生长'),(152,'2021-03-18 07:04:16','名称2','2021-03-18','早餐','菜品名单2','营养分析2'),(153,'2021-03-18 07:04:16','名称3','2021-03-18','早餐','菜品名单3','营养分析3'),(154,'2021-03-18 07:04:16','名称4','2021-03-18','早餐','菜品名单4','营养分析4'),(155,'2021-03-18 07:04:16','名称5','2021-03-18','早餐','菜品名单5','营养分析5'),(156,'2021-03-18 07:04:16','名称6','2021-03-18','早餐','菜品名单6','营养分析6');
/*!40000 ALTER TABLE `caipuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot4023t/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot4023t/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot4023t/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daibanshixiang`
--

DROP TABLE IF EXISTS `daibanshixiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daibanshixiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `daibanneirong` longtext COMMENT '待办内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054093898 DEFAULT CHARSET=utf8 COMMENT='待办事项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daibanshixiang`
--

LOCK TABLES `daibanshixiang` WRITE;
/*!40000 ALTER TABLE `daibanshixiang` DISABLE KEYS */;
INSERT INTO `daibanshixiang` VALUES (71,'2021-03-18 07:04:16','名称1','待办内容1','2021-03-18','工号1','教师姓名1'),(72,'2021-03-18 07:04:16','名称2','待办内容2','2021-03-18','工号2','教师姓名2'),(73,'2021-03-18 07:04:16','名称3','待办内容3','2021-03-18','工号3','教师姓名3'),(74,'2021-03-18 07:04:16','名称4','待办内容4','2021-03-18','工号4','教师姓名4'),(75,'2021-03-18 07:04:16','名称5','待办内容5','2021-03-18','工号5','教师姓名5'),(76,'2021-03-18 07:04:16','名称6','待办内容6','2021-03-18','工号6','教师姓名6'),(1616054093897,'2021-03-18 07:54:53','明天要去进购书本','11111明天要记得去购书','2021-03-01','001','王老师');
/*!40000 ALTER TABLE `daibanshixiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (161,'2021-03-18 07:04:16','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/springboot4023t/upload/defaultuser_picture1.jpg','773890001@qq.com'),(162,'2021-03-18 07:04:16','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/springboot4023t/upload/defaultuser_picture2.jpg','773890002@qq.com'),(163,'2021-03-18 07:04:16','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/springboot4023t/upload/defaultuser_picture3.jpg','773890003@qq.com'),(164,'2021-03-18 07:04:16','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/springboot4023t/upload/defaultuser_picture4.jpg','773890004@qq.com'),(165,'2021-03-18 07:04:16','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/springboot4023t/upload/defaultuser_picture5.jpg','773890005@qq.com'),(166,'2021-03-18 07:04:16','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/springboot4023t/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ertongtijian`
--

DROP TABLE IF EXISTS `ertongtijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ertongtijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `youerxingming` varchar(200) DEFAULT NULL COMMENT '幼儿姓名',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `chengzhangguiji` longtext COMMENT '成长轨迹',
  `pingjia` longtext COMMENT '评价',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054176389 DEFAULT CHARSET=utf8 COMMENT='儿童体检';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ertongtijian`
--

LOCK TABLES `ertongtijian` WRITE;
/*!40000 ALTER TABLE `ertongtijian` DISABLE KEYS */;
INSERT INTO `ertongtijian` VALUES (121,'2021-03-18 07:04:16','名称1','用户名1','家长姓名1','幼儿姓名1','体重1','身高1','AB','健康','成长轨迹1','评价1','2021-03-18','工号1','教师姓名1'),(122,'2021-03-18 07:04:16','名称2','用户名2','家长姓名2','幼儿姓名2','体重2','身高2','AB','健康','成长轨迹2','评价2','2021-03-18','工号2','教师姓名2'),(123,'2021-03-18 07:04:16','名称3','用户名3','家长姓名3','幼儿姓名3','体重3','身高3','AB','健康','成长轨迹3','评价3','2021-03-18','工号3','教师姓名3'),(124,'2021-03-18 07:04:16','名称4','用户名4','家长姓名4','幼儿姓名4','体重4','身高4','AB','健康','成长轨迹4','评价4','2021-03-18','工号4','教师姓名4'),(125,'2021-03-18 07:04:16','名称5','用户名5','家长姓名5','幼儿姓名5','体重5','身高5','AB','健康','成长轨迹5','评价5','2021-03-18','工号5','教师姓名5'),(126,'2021-03-18 07:04:16','名称6','用户名6','家长姓名6','幼儿姓名6','体重6','身高6','AB','健康','成长轨迹6','评价6','2021-03-18','工号6','教师姓名6'),(1616054176388,'2021-03-18 07:56:16','体检信息','1','李希','李倩','25kg','120cm','A','健康','又长高了','非常乖巧的孩子','2021-03-01','001','王老师');
/*!40000 ALTER TABLE `ertongtijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuorizhi`
--

DROP TABLE IF EXISTS `gongzuorizhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuorizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054062169 DEFAULT CHARSET=utf8 COMMENT='工作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuorizhi`
--

LOCK TABLES `gongzuorizhi` WRITE;
/*!40000 ALTER TABLE `gongzuorizhi` DISABLE KEYS */;
INSERT INTO `gongzuorizhi` VALUES (51,'2021-03-18 07:04:16','标题1','类型1','工作内容1','2021-03-18','工号1','教师姓名1'),(52,'2021-03-18 07:04:16','标题2','类型2','工作内容2','2021-03-18','工号2','教师姓名2'),(53,'2021-03-18 07:04:16','标题3','类型3','工作内容3','2021-03-18','工号3','教师姓名3'),(54,'2021-03-18 07:04:16','标题4','类型4','工作内容4','2021-03-18','工号4','教师姓名4'),(55,'2021-03-18 07:04:16','标题5','类型5','工作内容5','2021-03-18','工号5','教师姓名5'),(56,'2021-03-18 07:04:16','标题6','类型6','工作内容6','2021-03-18','工号6','教师姓名6'),(1616054062168,'2021-03-18 07:54:21','111111','教学','1212这里看发布一些工作日志','2021-03-01','001','王老师');
/*!40000 ALTER TABLE `gongzuorizhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyijilu`
--

DROP TABLE IF EXISTS `huiyijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyimingcheng` varchar(200) NOT NULL COMMENT '会议名称',
  `huiyishijian` date DEFAULT NULL COMMENT '会议时间',
  `huiyineirong` longtext COMMENT '会议内容',
  `huiyixinde` longtext COMMENT '会议心得',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054072053 DEFAULT CHARSET=utf8 COMMENT='会议记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyijilu`
--

LOCK TABLES `huiyijilu` WRITE;
/*!40000 ALTER TABLE `huiyijilu` DISABLE KEYS */;
INSERT INTO `huiyijilu` VALUES (61,'2021-03-18 07:04:16','会议名称1','2021-03-18','会议内容1','会议心得1','工号1','教师姓名1'),(62,'2021-03-18 07:04:16','会议名称2','2021-03-18','会议内容2','会议心得2','工号2','教师姓名2'),(63,'2021-03-18 07:04:16','会议名称3','2021-03-18','会议内容3','会议心得3','工号3','教师姓名3'),(64,'2021-03-18 07:04:16','会议名称4','2021-03-18','会议内容4','会议心得4','工号4','教师姓名4'),(65,'2021-03-18 07:04:16','会议名称5','2021-03-18','会议内容5','会议心得5','工号5','教师姓名5'),(66,'2021-03-18 07:04:16','会议名称6','2021-03-18','会议内容6','会议心得6','工号6','教师姓名6'),(1616054072052,'2021-03-18 07:54:31','教学会议','2021-03-01','222222','2333333','001','王老师');
/*!40000 ALTER TABLE `huiyijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `jiaofeishijian` date DEFAULT NULL COMMENT '缴费时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `shubenfei` float NOT NULL COMMENT '书本费',
  `huoshifei` float NOT NULL COMMENT '伙食费',
  `jiaoxuefei` float NOT NULL COMMENT '教学费',
  `zongfeiyong` float DEFAULT NULL COMMENT '总费用',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054136961 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (101,'2021-03-18 07:04:16','名称1','2021-03-18','用户名1','家长姓名1',1,1,1,1,'工号1','教师姓名1','未支付'),(102,'2021-03-18 07:04:16','名称2','2021-03-18','用户名2','家长姓名2',2,2,2,2,'工号2','教师姓名2','未支付'),(103,'2021-03-18 07:04:16','名称3','2021-03-18','用户名3','家长姓名3',3,3,3,3,'工号3','教师姓名3','未支付'),(104,'2021-03-18 07:04:16','名称4','2021-03-18','用户名4','家长姓名4',4,4,4,4,'工号4','教师姓名4','未支付'),(105,'2021-03-18 07:04:16','名称5','2021-03-18','用户名5','家长姓名5',5,5,5,5,'工号5','教师姓名5','未支付'),(106,'2021-03-18 07:04:16','名称6','2021-03-18','用户名6','家长姓名6',6,6,6,6,'工号6','教师姓名6','未支付'),(1616054136960,'2021-03-18 07:55:36','上半学期缴费信息','2021-03-01','1','李希',200,200,150,550,'001','王老师','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-03-18 07:04:16','001','001','王老师','女','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang1.jpg','高级教师','13823888881'),(22,'2021-03-18 07:04:16','教师2','123456','教师姓名2','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang2.jpg','职称2','13823888882'),(23,'2021-03-18 07:04:16','教师3','123456','教师姓名3','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang3.jpg','职称3','13823888883'),(24,'2021-03-18 07:04:16','教师4','123456','教师姓名4','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang4.jpg','职称4','13823888884'),(25,'2021-03-18 07:04:16','教师5','123456','教师姓名5','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang5.jpg','职称5','13823888885'),(26,'2021-03-18 07:04:16','教师6','123456','教师姓名6','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang6.jpg','职称6','13823888886');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiaxinxi`
--

DROP TABLE IF EXISTS `qingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `qingjianeirong` longtext COMMENT '请假内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054110545 DEFAULT CHARSET=utf8 COMMENT='请假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiaxinxi`
--

LOCK TABLES `qingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `qingjiaxinxi` DISABLE KEYS */;
INSERT INTO `qingjiaxinxi` VALUES (91,'2021-03-18 07:04:16','标题1','2021-03-18','请假天数1','请假内容1','工号1','教师姓名1','是',''),(92,'2021-03-18 07:04:16','标题2','2021-03-18','请假天数2','请假内容2','工号2','教师姓名2','是',''),(93,'2021-03-18 07:04:16','标题3','2021-03-18','请假天数3','请假内容3','工号3','教师姓名3','是',''),(94,'2021-03-18 07:04:16','标题4','2021-03-18','请假天数4','请假内容4','工号4','教师姓名4','是',''),(95,'2021-03-18 07:04:16','标题5','2021-03-18','请假天数5','请假内容5','工号5','教师姓名5','是',''),(96,'2021-03-18 07:04:16','标题6','2021-03-18','请假天数6','请假内容6','工号6','教师姓名6','是',''),(1616054110544,'2021-03-18 07:55:09','我要请假','2021-03-01','3天','家里有事','001','王老师','是','同意请假');
/*!40000 ALTER TABLE `qingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','p5c3tiwssk4gh15q8zd9oiwijv9c9ntw','2021-03-18 07:46:34','2021-03-18 08:58:26'),(2,11,'001','yonghu','用户','qzg3gn4o8x73d2ohfxi4ng4812mnfd1m','2021-03-18 07:46:49','2021-03-18 08:46:50'),(3,21,'001','jiaoshi','教师','4k8sflp84ik4qr4j5fkaxmvjdfa1j2id','2021-03-18 07:46:59','2021-03-18 08:59:29'),(4,1616053775151,'1','yonghu','用户','qaxug9d5u0c8zvakyb69xxlgiyhnz516','2021-03-18 07:56:39','2021-03-18 08:58:11');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-18 07:04:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `youerxingming` varchar(200) DEFAULT NULL COMMENT '幼儿姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616053775152 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-18 07:04:16','001','001','家长姓名1','幼儿姓名1','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-03-18 07:04:16','用户2','123456','家长姓名2','幼儿姓名2','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-03-18 07:04:16','用户3','123456','家长姓名3','幼儿姓名3','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-03-18 07:04:16','用户4','123456','家长姓名4','幼儿姓名4','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-03-18 07:04:16','用户5','123456','家长姓名5','幼儿姓名5','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-03-18 07:04:16','用户6','123456','家长姓名6','幼儿姓名6','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1616053775151,'2021-03-18 07:49:35','1','1','李希','李倩','女','http://localhost:8080/springboot4023t/upload/1616054209638.jpg','441214121412141211','15212121211');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youerqingjia`
--

DROP TABLE IF EXISTS `youerqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youerqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `qingjianeirong` longtext COMMENT '请假内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054247311 DEFAULT CHARSET=utf8 COMMENT='幼儿请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youerqingjia`
--

LOCK TABLES `youerqingjia` WRITE;
/*!40000 ALTER TABLE `youerqingjia` DISABLE KEYS */;
INSERT INTO `youerqingjia` VALUES (111,'2021-03-18 07:04:16','标题1','工号1','教师姓名1','2021-03-18','请假天数1','请假内容1','用户名1','家长姓名1','是',''),(112,'2021-03-18 07:04:16','标题2','工号2','教师姓名2','2021-03-18','请假天数2','请假内容2','用户名2','家长姓名2','是',''),(113,'2021-03-18 07:04:16','标题3','工号3','教师姓名3','2021-03-18','请假天数3','请假内容3','用户名3','家长姓名3','是',''),(114,'2021-03-18 07:04:16','标题4','工号4','教师姓名4','2021-03-18','请假天数4','请假内容4','用户名4','家长姓名4','是',''),(115,'2021-03-18 07:04:16','标题5','工号5','教师姓名5','2021-03-18','请假天数5','请假内容5','用户名5','家长姓名5','是',''),(116,'2021-03-18 07:04:16','标题6','工号6','教师姓名6','2021-03-18','请假天数6','请假内容6','用户名6','家长姓名6','是',''),(1616054247310,'2021-03-18 07:57:26','老师 我女儿要请假','001','王老师','2021-03-01','2','孩子生病了','1','李希','是','好的 孩子要注意身体');
/*!40000 ALTER TABLE `youerqingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youerxinxi`
--

DROP TABLE IF EXISTS `youerxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youerxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `youerxingming` varchar(200) NOT NULL COMMENT '幼儿姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054024132 DEFAULT CHARSET=utf8 COMMENT='幼儿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youerxinxi`
--

LOCK TABLES `youerxinxi` WRITE;
/*!40000 ALTER TABLE `youerxinxi` DISABLE KEYS */;
INSERT INTO `youerxinxi` VALUES (31,'2021-03-18 07:04:16','用户名1','家长姓名1','幼儿姓名1','男','13823888881','年龄1','班级名称1','备注1','工号1','教师姓名1'),(32,'2021-03-18 07:04:16','用户名2','家长姓名2','幼儿姓名2','男','13823888882','年龄2','班级名称2','备注2','工号2','教师姓名2'),(33,'2021-03-18 07:04:16','用户名3','家长姓名3','幼儿姓名3','男','13823888883','年龄3','班级名称3','备注3','工号3','教师姓名3'),(34,'2021-03-18 07:04:16','用户名4','家长姓名4','幼儿姓名4','男','13823888884','年龄4','班级名称4','备注4','工号4','教师姓名4'),(35,'2021-03-18 07:04:16','用户名5','家长姓名5','幼儿姓名5','男','13823888885','年龄5','班级名称5','备注5','工号5','教师姓名5'),(36,'2021-03-18 07:04:16','用户名6','家长姓名6','幼儿姓名6','男','13823888886','年龄6','班级名称6','备注6','工号6','教师姓名6'),(1616054024131,'2021-03-18 07:53:43','1','李希','李倩','女','15212121211','22','小班','11111','001','王老师');
/*!40000 ALTER TABLE `youerxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanliaoxinxi`
--

DROP TABLE IF EXISTS `yuanliaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaomingcheng` varchar(200) NOT NULL COMMENT '材料名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='原料信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanliaoxinxi`
--

LOCK TABLES `yuanliaoxinxi` WRITE;
/*!40000 ALTER TABLE `yuanliaoxinxi` DISABLE KEYS */;
INSERT INTO `yuanliaoxinxi` VALUES (141,'2021-03-18 07:04:16','XX材料','蔬菜','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian1.jpg',10,'详情1112212121221','2021-03-01'),(142,'2021-03-18 07:04:16','材料名称2','类型2','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian2.jpg',2,'详情2','2021-03-18'),(143,'2021-03-18 07:04:16','材料名称3','类型3','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian3.jpg',3,'详情3','2021-03-18'),(144,'2021-03-18 07:04:16','材料名称4','类型4','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian4.jpg',4,'详情4','2021-03-18'),(145,'2021-03-18 07:04:16','材料名称5','类型5','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian5.jpg',5,'详情5','2021-03-18'),(146,'2021-03-18 07:04:16','材料名称6','类型6','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian6.jpg',6,'详情6','2021-03-18');
/*!40000 ALTER TABLE `yuanliaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhigongkaohe`
--

DROP TABLE IF EXISTS `zhigongkaohe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhigongkaohe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kaoheneirong` longtext COMMENT '考核内容',
  `kaohechengji` varchar(200) NOT NULL COMMENT '考核成绩',
  `shifoutongguo` varchar(200) DEFAULT NULL COMMENT '是否通过',
  `kaoheriqi` date DEFAULT NULL COMMENT '考核日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616054330329 DEFAULT CHARSET=utf8 COMMENT='职工考核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhigongkaohe`
--

LOCK TABLES `zhigongkaohe` WRITE;
/*!40000 ALTER TABLE `zhigongkaohe` DISABLE KEYS */;
INSERT INTO `zhigongkaohe` VALUES (81,'2021-03-18 07:04:16','名称1','工号1','教师姓名1','考核内容1','考核成绩1','是','2021-03-18'),(82,'2021-03-18 07:04:16','名称2','工号2','教师姓名2','考核内容2','考核成绩2','是','2021-03-18'),(83,'2021-03-18 07:04:16','名称3','工号3','教师姓名3','考核内容3','考核成绩3','是','2021-03-18'),(84,'2021-03-18 07:04:16','名称4','工号4','教师姓名4','考核内容4','考核成绩4','是','2021-03-18'),(85,'2021-03-18 07:04:16','名称5','工号5','教师姓名5','考核内容5','考核成绩5','是','2021-03-18'),(86,'2021-03-18 07:04:16','名称6','工号6','教师姓名6','考核内容6','考核成绩6','是','2021-03-18'),(1616054330328,'2021-03-18 07:58:49','教学考核','001','王老师','对教学方式考核。。。','98','是','2021-03-01');
/*!40000 ALTER TABLE `zhigongkaohe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanxinxi`
--

DROP TABLE IF EXISTS `ziyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `ziyuanleixing` varchar(200) NOT NULL COMMENT '资源类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `ziyuanxiangqing` longtext COMMENT '资源详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='资源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanxinxi`
--

LOCK TABLES `ziyuanxinxi` WRITE;
/*!40000 ALTER TABLE `ziyuanxinxi` DISABLE KEYS */;
INSERT INTO `ziyuanxinxi` VALUES (131,'2021-03-18 07:04:16','XX设备','设备','http://localhost:8080/springboot4023t/upload/1616053896242.jpg',10,'2021-03-01','<p><img src=\"http://localhost:8080/springboot4023t/upload/1616053905386.jpg\"></p><p>这里可以发布一些详细内容</p><p>，可以图片文字结合描述的</p><p><br></p><p>资源详情1</p>'),(132,'2021-03-18 07:04:16','资源名称2','资源类型2','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian2.jpg',2,'2021-03-18','资源详情2'),(133,'2021-03-18 07:04:16','资源名称3','资源类型3','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian3.jpg',3,'2021-03-18','资源详情3'),(134,'2021-03-18 07:04:16','资源名称4','资源类型4','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian4.jpg',4,'2021-03-18','资源详情4'),(135,'2021-03-18 07:04:16','资源名称5','资源类型5','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian5.jpg',5,'2021-03-18','资源详情5'),(136,'2021-03-18 07:04:16','资源名称6','资源类型6','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian6.jpg',6,'2021-03-18','资源详情6');
/*!40000 ALTER TABLE `ziyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-18 17:17:03
