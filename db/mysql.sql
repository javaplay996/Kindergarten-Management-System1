DROP DATABASE IF EXISTS springboot4023t;

CREATE DATABASE springboot4023t default character set utf8mb4 collate utf8mb4_general_ci;

USE springboot4023t;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiazhangxingming` varchar(200)    COMMENT '家长姓名',
	`youerxingming` varchar(200)    COMMENT '幼儿姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(11,'用户1','123456','家长姓名1','幼儿姓名1','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881');
INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(12,'用户2','123456','家长姓名2','幼儿姓名2','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882');
INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(13,'用户3','123456','家长姓名3','幼儿姓名3','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883');
INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(14,'用户4','123456','家长姓名4','幼儿姓名4','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884');
INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(15,'用户5','123456','家长姓名5','幼儿姓名5','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885');
INSERT INTO yonghu(id,yonghuming,mima,jiazhangxingming,youerxingming,xingbie,touxiang,shenfenzheng,shouji) VALUES(16,'用户6','123456','家长姓名6','幼儿姓名6','男','http://localhost:8080/springboot4023t/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`zhicheng` varchar(200)    COMMENT '职称',
	`dianhua` varchar(200)    COMMENT '电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(21,'教师1','123456','教师姓名1','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang1.jpg','职称1','13823888881');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(22,'教师2','123456','教师姓名2','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang2.jpg','职称2','13823888882');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(23,'教师3','123456','教师姓名3','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang3.jpg','职称3','13823888883');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(24,'教师4','123456','教师姓名4','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang4.jpg','职称4','13823888884');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(25,'教师5','123456','教师姓名5','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang5.jpg','职称5','13823888885');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,zhicheng,dianhua) VALUES(26,'教师6','123456','教师姓名6','男','http://localhost:8080/springboot4023t/upload/jiaoshi_touxiang6.jpg','职称6','13823888886');

DROP TABLE IF EXISTS `youerxinxi`;

CREATE TABLE `youerxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`jiazhangxingming` varchar(200)    COMMENT '家长姓名',
	`youerxingming` varchar(200) NOT NULL   COMMENT '幼儿姓名',
	`xingbie` varchar(200) NOT NULL   COMMENT '性别',
	`shouji` varchar(200)    COMMENT '手机',
	`nianling` varchar(200)    COMMENT '年龄',
	`banjimingcheng` varchar(200)    COMMENT '班级名称',
	`beizhu` longtext    COMMENT '备注',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幼儿信息';

INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(31,'用户名1','家长姓名1','幼儿姓名1','男','13823888881','年龄1','班级名称1','备注1','工号1','教师姓名1');
INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(32,'用户名2','家长姓名2','幼儿姓名2','男','13823888882','年龄2','班级名称2','备注2','工号2','教师姓名2');
INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(33,'用户名3','家长姓名3','幼儿姓名3','男','13823888883','年龄3','班级名称3','备注3','工号3','教师姓名3');
INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(34,'用户名4','家长姓名4','幼儿姓名4','男','13823888884','年龄4','班级名称4','备注4','工号4','教师姓名4');
INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(35,'用户名5','家长姓名5','幼儿姓名5','男','13823888885','年龄5','班级名称5','备注5','工号5','教师姓名5');
INSERT INTO youerxinxi(id,yonghuming,jiazhangxingming,youerxingming,xingbie,shouji,nianling,banjimingcheng,beizhu,gonghao,jiaoshixingming) VALUES(36,'用户名6','家长姓名6','幼儿姓名6','男','13823888886','年龄6','班级名称6','备注6','工号6','教师姓名6');

DROP TABLE IF EXISTS `banjixinxi`;

CREATE TABLE `banjixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`banjimingcheng` varchar(200) NOT NULL   COMMENT '班级名称',
	`banjirenshu` varchar(200)    COMMENT '班级人数',
	`beizhu` longtext    COMMENT '备注',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200) NOT NULL   COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级信息';

INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(41,'班级名称1','班级人数1','备注1','工号1','教师姓名1');
INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(42,'班级名称2','班级人数2','备注2','工号2','教师姓名2');
INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(43,'班级名称3','班级人数3','备注3','工号3','教师姓名3');
INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(44,'班级名称4','班级人数4','备注4','工号4','教师姓名4');
INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(45,'班级名称5','班级人数5','备注5','工号5','教师姓名5');
INSERT INTO banjixinxi(id,banjimingcheng,banjirenshu,beizhu,gonghao,jiaoshixingming) VALUES(46,'班级名称6','班级人数6','备注6','工号6','教师姓名6');

DROP TABLE IF EXISTS `gongzuorizhi`;

CREATE TABLE `gongzuorizhi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`gongzuoneirong` longtext    COMMENT '工作内容',
	`riqi` date    COMMENT '日期',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作日志';

INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(51,'标题1','类型1','工作内容1',CURRENT_TIMESTAMP,'工号1','教师姓名1');
INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(52,'标题2','类型2','工作内容2',CURRENT_TIMESTAMP,'工号2','教师姓名2');
INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(53,'标题3','类型3','工作内容3',CURRENT_TIMESTAMP,'工号3','教师姓名3');
INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(54,'标题4','类型4','工作内容4',CURRENT_TIMESTAMP,'工号4','教师姓名4');
INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(55,'标题5','类型5','工作内容5',CURRENT_TIMESTAMP,'工号5','教师姓名5');
INSERT INTO gongzuorizhi(id,biaoti,leixing,gongzuoneirong,riqi,gonghao,jiaoshixingming) VALUES(56,'标题6','类型6','工作内容6',CURRENT_TIMESTAMP,'工号6','教师姓名6');

DROP TABLE IF EXISTS `huiyijilu`;

CREATE TABLE `huiyijilu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`huiyimingcheng` varchar(200) NOT NULL   COMMENT '会议名称',
	`huiyishijian` date    COMMENT '会议时间',
	`huiyineirong` longtext    COMMENT '会议内容',
	`huiyixinde` longtext    COMMENT '会议心得',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议记录';

INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(61,'会议名称1',CURRENT_TIMESTAMP,'会议内容1','会议心得1','工号1','教师姓名1');
INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(62,'会议名称2',CURRENT_TIMESTAMP,'会议内容2','会议心得2','工号2','教师姓名2');
INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(63,'会议名称3',CURRENT_TIMESTAMP,'会议内容3','会议心得3','工号3','教师姓名3');
INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(64,'会议名称4',CURRENT_TIMESTAMP,'会议内容4','会议心得4','工号4','教师姓名4');
INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(65,'会议名称5',CURRENT_TIMESTAMP,'会议内容5','会议心得5','工号5','教师姓名5');
INSERT INTO huiyijilu(id,huiyimingcheng,huiyishijian,huiyineirong,huiyixinde,gonghao,jiaoshixingming) VALUES(66,'会议名称6',CURRENT_TIMESTAMP,'会议内容6','会议心得6','工号6','教师姓名6');

DROP TABLE IF EXISTS `daibanshixiang`;

CREATE TABLE `daibanshixiang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`daibanneirong` longtext    COMMENT '待办内容',
	`riqi` date    COMMENT '日期',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待办事项';

INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(71,'名称1','待办内容1',CURRENT_TIMESTAMP,'工号1','教师姓名1');
INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(72,'名称2','待办内容2',CURRENT_TIMESTAMP,'工号2','教师姓名2');
INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(73,'名称3','待办内容3',CURRENT_TIMESTAMP,'工号3','教师姓名3');
INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(74,'名称4','待办内容4',CURRENT_TIMESTAMP,'工号4','教师姓名4');
INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(75,'名称5','待办内容5',CURRENT_TIMESTAMP,'工号5','教师姓名5');
INSERT INTO daibanshixiang(id,mingcheng,daibanneirong,riqi,gonghao,jiaoshixingming) VALUES(76,'名称6','待办内容6',CURRENT_TIMESTAMP,'工号6','教师姓名6');

DROP TABLE IF EXISTS `zhigongkaohe`;

CREATE TABLE `zhigongkaohe` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`kaoheneirong` longtext    COMMENT '考核内容',
	`kaohechengji` varchar(200) NOT NULL   COMMENT '考核成绩',
	`shifoutongguo` varchar(200)    COMMENT '是否通过',
	`kaoheriqi` date    COMMENT '考核日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职工考核';

INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(81,'名称1','工号1','教师姓名1','考核内容1','考核成绩1','是',CURRENT_TIMESTAMP);
INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(82,'名称2','工号2','教师姓名2','考核内容2','考核成绩2','是',CURRENT_TIMESTAMP);
INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(83,'名称3','工号3','教师姓名3','考核内容3','考核成绩3','是',CURRENT_TIMESTAMP);
INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(84,'名称4','工号4','教师姓名4','考核内容4','考核成绩4','是',CURRENT_TIMESTAMP);
INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(85,'名称5','工号5','教师姓名5','考核内容5','考核成绩5','是',CURRENT_TIMESTAMP);
INSERT INTO zhigongkaohe(id,mingcheng,gonghao,jiaoshixingming,kaoheneirong,kaohechengji,shifoutongguo,kaoheriqi) VALUES(86,'名称6','工号6','教师姓名6','考核内容6','考核成绩6','是',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `qingjiaxinxi`;

CREATE TABLE `qingjiaxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`qingjiariqi` date    COMMENT '请假日期',
	`qingjiatianshu` varchar(200)    COMMENT '请假天数',
	`qingjianeirong` longtext    COMMENT '请假内容',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假信息';

INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(91,'标题1',CURRENT_TIMESTAMP,'请假天数1','请假内容1','工号1','教师姓名1','是','');
INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(92,'标题2',CURRENT_TIMESTAMP,'请假天数2','请假内容2','工号2','教师姓名2','是','');
INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(93,'标题3',CURRENT_TIMESTAMP,'请假天数3','请假内容3','工号3','教师姓名3','是','');
INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(94,'标题4',CURRENT_TIMESTAMP,'请假天数4','请假内容4','工号4','教师姓名4','是','');
INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(95,'标题5',CURRENT_TIMESTAMP,'请假天数5','请假内容5','工号5','教师姓名5','是','');
INSERT INTO qingjiaxinxi(id,biaoti,qingjiariqi,qingjiatianshu,qingjianeirong,gonghao,jiaoshixingming,sfsh,shhf) VALUES(96,'标题6',CURRENT_TIMESTAMP,'请假天数6','请假内容6','工号6','教师姓名6','是','');

DROP TABLE IF EXISTS `jiaofeixinxi`;

CREATE TABLE `jiaofeixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`jiaofeishijian` date    COMMENT '缴费时间',
	`yonghuming` varchar(200) NOT NULL   COMMENT '用户名',
	`jiazhangxingming` varchar(200)    COMMENT '家长姓名',
	`shubenfei` float NOT NULL   COMMENT '书本费',
	`huoshifei` float NOT NULL   COMMENT '伙食费',
	`jiaoxuefei` float NOT NULL   COMMENT '教学费',
	`zongfeiyong` float    COMMENT '总费用',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费信息';

INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(101,'名称1',CURRENT_TIMESTAMP,'用户名1','家长姓名1',1,1,1,1,'工号1','教师姓名1','未支付');
INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(102,'名称2',CURRENT_TIMESTAMP,'用户名2','家长姓名2',2,2,2,2,'工号2','教师姓名2','未支付');
INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(103,'名称3',CURRENT_TIMESTAMP,'用户名3','家长姓名3',3,3,3,3,'工号3','教师姓名3','未支付');
INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(104,'名称4',CURRENT_TIMESTAMP,'用户名4','家长姓名4',4,4,4,4,'工号4','教师姓名4','未支付');
INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(105,'名称5',CURRENT_TIMESTAMP,'用户名5','家长姓名5',5,5,5,5,'工号5','教师姓名5','未支付');
INSERT INTO jiaofeixinxi(id,mingcheng,jiaofeishijian,yonghuming,jiazhangxingming,shubenfei,huoshifei,jiaoxuefei,zongfeiyong,gonghao,jiaoshixingming,ispay) VALUES(106,'名称6',CURRENT_TIMESTAMP,'用户名6','家长姓名6',6,6,6,6,'工号6','教师姓名6','未支付');

DROP TABLE IF EXISTS `youerqingjia`;

CREATE TABLE `youerqingjia` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`qingjiariqi` date    COMMENT '请假日期',
	`qingjiatianshu` varchar(200)    COMMENT '请假天数',
	`qingjianeirong` longtext    COMMENT '请假内容',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`jiazhangxingming` varchar(200)    COMMENT '家长姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幼儿请假';

INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(111,'标题1','工号1','教师姓名1',CURRENT_TIMESTAMP,'请假天数1','请假内容1','用户名1','家长姓名1','是','');
INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(112,'标题2','工号2','教师姓名2',CURRENT_TIMESTAMP,'请假天数2','请假内容2','用户名2','家长姓名2','是','');
INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(113,'标题3','工号3','教师姓名3',CURRENT_TIMESTAMP,'请假天数3','请假内容3','用户名3','家长姓名3','是','');
INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(114,'标题4','工号4','教师姓名4',CURRENT_TIMESTAMP,'请假天数4','请假内容4','用户名4','家长姓名4','是','');
INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(115,'标题5','工号5','教师姓名5',CURRENT_TIMESTAMP,'请假天数5','请假内容5','用户名5','家长姓名5','是','');
INSERT INTO youerqingjia(id,biaoti,gonghao,jiaoshixingming,qingjiariqi,qingjiatianshu,qingjianeirong,yonghuming,jiazhangxingming,sfsh,shhf) VALUES(116,'标题6','工号6','教师姓名6',CURRENT_TIMESTAMP,'请假天数6','请假内容6','用户名6','家长姓名6','是','');

DROP TABLE IF EXISTS `ertongtijian`;

CREATE TABLE `ertongtijian` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`jiazhangxingming` varchar(200)    COMMENT '家长姓名',
	`youerxingming` varchar(200)    COMMENT '幼儿姓名',
	`tizhong` varchar(200)    COMMENT '体重',
	`shengao` varchar(200)    COMMENT '身高',
	`xuexing` varchar(200)    COMMENT '血型',
	`jiankangzhuangkuang` varchar(200)    COMMENT '健康状况',
	`chengzhangguiji` longtext    COMMENT '成长轨迹',
	`pingjia` longtext    COMMENT '评价',
	`riqi` date    COMMENT '日期',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='儿童体检';

INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(121,'名称1','用户名1','家长姓名1','幼儿姓名1','体重1','身高1','AB','健康','成长轨迹1','评价1',CURRENT_TIMESTAMP,'工号1','教师姓名1');
INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(122,'名称2','用户名2','家长姓名2','幼儿姓名2','体重2','身高2','AB','健康','成长轨迹2','评价2',CURRENT_TIMESTAMP,'工号2','教师姓名2');
INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(123,'名称3','用户名3','家长姓名3','幼儿姓名3','体重3','身高3','AB','健康','成长轨迹3','评价3',CURRENT_TIMESTAMP,'工号3','教师姓名3');
INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(124,'名称4','用户名4','家长姓名4','幼儿姓名4','体重4','身高4','AB','健康','成长轨迹4','评价4',CURRENT_TIMESTAMP,'工号4','教师姓名4');
INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(125,'名称5','用户名5','家长姓名5','幼儿姓名5','体重5','身高5','AB','健康','成长轨迹5','评价5',CURRENT_TIMESTAMP,'工号5','教师姓名5');
INSERT INTO ertongtijian(id,mingcheng,yonghuming,jiazhangxingming,youerxingming,tizhong,shengao,xuexing,jiankangzhuangkuang,chengzhangguiji,pingjia,riqi,gonghao,jiaoshixingming) VALUES(126,'名称6','用户名6','家长姓名6','幼儿姓名6','体重6','身高6','AB','健康','成长轨迹6','评价6',CURRENT_TIMESTAMP,'工号6','教师姓名6');

DROP TABLE IF EXISTS `ziyuanxinxi`;

CREATE TABLE `ziyuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`ziyuanmingcheng` varchar(200) NOT NULL   COMMENT '资源名称',
	`ziyuanleixing` varchar(200) NOT NULL   COMMENT '资源类型',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int NOT NULL   COMMENT '数量',
	`dengjiriqi` date    COMMENT '登记日期',
	`ziyuanxiangqing` longtext    COMMENT '资源详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源信息';

INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(131,'资源名称1','资源类型1','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian1.jpg',1,CURRENT_TIMESTAMP,'资源详情1');
INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(132,'资源名称2','资源类型2','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian2.jpg',2,CURRENT_TIMESTAMP,'资源详情2');
INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(133,'资源名称3','资源类型3','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian3.jpg',3,CURRENT_TIMESTAMP,'资源详情3');
INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(134,'资源名称4','资源类型4','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian4.jpg',4,CURRENT_TIMESTAMP,'资源详情4');
INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(135,'资源名称5','资源类型5','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian5.jpg',5,CURRENT_TIMESTAMP,'资源详情5');
INSERT INTO ziyuanxinxi(id,ziyuanmingcheng,ziyuanleixing,tupian,shuliang,dengjiriqi,ziyuanxiangqing) VALUES(136,'资源名称6','资源类型6','http://localhost:8080/springboot4023t/upload/ziyuanxinxi_tupian6.jpg',6,CURRENT_TIMESTAMP,'资源详情6');

DROP TABLE IF EXISTS `yuanliaoxinxi`;

CREATE TABLE `yuanliaoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cailiaomingcheng` varchar(200) NOT NULL   COMMENT '材料名称',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int NOT NULL   COMMENT '数量',
	`xiangqing` longtext    COMMENT '详情',
	`riqi` date    COMMENT '日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='原料信息';

INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(141,'材料名称1','类型1','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian1.jpg',1,'详情1',CURRENT_TIMESTAMP);
INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(142,'材料名称2','类型2','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian2.jpg',2,'详情2',CURRENT_TIMESTAMP);
INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(143,'材料名称3','类型3','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian3.jpg',3,'详情3',CURRENT_TIMESTAMP);
INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(144,'材料名称4','类型4','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian4.jpg',4,'详情4',CURRENT_TIMESTAMP);
INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(145,'材料名称5','类型5','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian5.jpg',5,'详情5',CURRENT_TIMESTAMP);
INSERT INTO yuanliaoxinxi(id,cailiaomingcheng,leixing,tupian,shuliang,xiangqing,riqi) VALUES(146,'材料名称6','类型6','http://localhost:8080/springboot4023t/upload/yuanliaoxinxi_tupian6.jpg',6,'详情6',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `caipuxinxi`;

CREATE TABLE `caipuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`riqi` date    COMMENT '日期',
	`shijian` varchar(200) NOT NULL   COMMENT '时间',
	`caipinmingdan` longtext    COMMENT '菜品名单',
	`yingyangfenxi` longtext    COMMENT '营养分析',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜谱信息';

INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(151,'名称1',CURRENT_TIMESTAMP,'早餐','菜品名单1','营养分析1');
INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(152,'名称2',CURRENT_TIMESTAMP,'早餐','菜品名单2','营养分析2');
INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(153,'名称3',CURRENT_TIMESTAMP,'早餐','菜品名单3','营养分析3');
INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(154,'名称4',CURRENT_TIMESTAMP,'早餐','菜品名单4','营养分析4');
INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(155,'名称5',CURRENT_TIMESTAMP,'早餐','菜品名单5','营养分析5');
INSERT INTO caipuxinxi(id,mingcheng,riqi,shijian,caipinmingdan,yingyangfenxi) VALUES(156,'名称6',CURRENT_TIMESTAMP,'早餐','菜品名单6','营养分析6');

DROP TABLE IF EXISTS `defaultuser`;

CREATE TABLE `defaultuser` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`username` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`name` varchar(200)    COMMENT '姓名',
	`sex` varchar(200)    COMMENT '性别',
	`age` int    COMMENT '年龄',
	`phone` varchar(200)    COMMENT '电话',
	`picture` varchar(200)    COMMENT '照片',
	`email` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='注册用户';

INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(161,'用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/springboot4023t/upload/defaultuser_picture1.jpg','773890001@qq.com');
INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(162,'用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/springboot4023t/upload/defaultuser_picture2.jpg','773890002@qq.com');
INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(163,'用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/springboot4023t/upload/defaultuser_picture3.jpg','773890003@qq.com');
INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(164,'用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/springboot4023t/upload/defaultuser_picture4.jpg','773890004@qq.com');
INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(165,'用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/springboot4023t/upload/defaultuser_picture5.jpg','773890005@qq.com');
INSERT INTO defaultuser(id,username,mima,name,sex,age,phone,picture,email) VALUES(166,'用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/springboot4023t/upload/defaultuser_picture6.jpg','773890006@qq.com');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springboot4023t/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springboot4023t/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springboot4023t/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

