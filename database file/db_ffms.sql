/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_ffms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-25 16:30:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_database`
-- ----------------------------
DROP TABLE IF EXISTS `t_database`;
CREATE TABLE `t_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_database
-- ----------------------------
INSERT INTO `t_database` VALUES ('43', '1', '20170705171442.sql', '2017-07-05 17:14:42', 'E:\\SQLDB122\\20170705171442.sql', '1');

-- ----------------------------
-- Table structure for `t_datadic`
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datadicname` varchar(255) DEFAULT NULL,
  `datadicvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES ('1', '数据库管理', '备份');
INSERT INTO `t_datadic` VALUES ('2', '数据库管理', '恢复');
INSERT INTO `t_datadic` VALUES ('3', '数据库管理', '初始化');
INSERT INTO `t_datadic` VALUES ('4', '数据库管理', '数据整理');
INSERT INTO `t_datadic` VALUES ('6', '支出类型', '税收');
INSERT INTO `t_datadic` VALUES ('7', '支出类型', '衣食住行');
INSERT INTO `t_datadic` VALUES ('8', '支出类型', '医疗');
INSERT INTO `t_datadic` VALUES ('9', '支出类型', '其他');
INSERT INTO `t_datadic` VALUES ('10', '收入类型', '工资');
INSERT INTO `t_datadic` VALUES ('11', '收入类型', '股票');
INSERT INTO `t_datadic` VALUES ('12', '收入类型', '分红');
INSERT INTO `t_datadic` VALUES ('13', '收入类型', '奖金');
INSERT INTO `t_datadic` VALUES ('14', '证券流水账类型', '买入');
INSERT INTO `t_datadic` VALUES ('15', '证券流水账类型', '卖出');
INSERT INTO `t_datadic` VALUES ('16', '证券类型', '证据证券');
INSERT INTO `t_datadic` VALUES ('17', '证券类型', '凭证证券');
INSERT INTO `t_datadic` VALUES ('18', '证券类型', '有价证券');
INSERT INTO `t_datadic` VALUES ('19', '收入类型', '中彩票');

-- ----------------------------
-- Table structure for `t_income`
-- ----------------------------
DROP TABLE IF EXISTS `t_income`;
CREATE TABLE `t_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `incomer` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `incometime` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) NOT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_income
-- ----------------------------
INSERT INTO `t_income` VALUES ('40', '1', 'admin', '公司发工资', '50000', '10', '4月份工资。', '2018-04-01 14:24:47', '2018-05-25 14:25:02', null);
INSERT INTO `t_income` VALUES ('41', '1', 'admin', '公司发工资', '50000', '10', '五月份工资', '2018-05-01 14:25:25', '2018-05-25 14:25:33', null);
INSERT INTO `t_income` VALUES ('42', '1', '猿来入此', '公司发工资', '40000', '10', '五月份工资', '2018-05-01 14:25:50', '2018-05-25 14:25:59', '2018-05-25 15:21:25');
INSERT INTO `t_income` VALUES ('43', '1', 'admin', '公司奖金', '3000', '13', '公司发奖金', '2018-05-01 14:26:49', '2018-05-25 14:26:57', null);
INSERT INTO `t_income` VALUES ('44', '1', 'admin', '公司分红', '600000', '12', '公司分红', '2018-01-01 14:27:09', '2018-05-25 14:27:15', '2018-05-25 14:27:47');
INSERT INTO `t_income` VALUES ('45', '1', '猿来入此', '买彩票', '3000', '19', '买彩票中了三等奖。', '2018-05-10 15:20:20', '2018-05-25 15:20:31', null);
INSERT INTO `t_income` VALUES ('46', '1', '猿来入此', '股票大涨', '36890', '11', '股价大涨。', '2018-05-23 15:20:51', '2018-05-25 15:20:59', '2018-05-25 15:21:35');
INSERT INTO `t_income` VALUES ('47', '1', '猿来入此', '公司分红', '128000', '12', '公司分红。', '2018-04-04 15:22:40', '2018-05-25 15:22:52', null);
INSERT INTO `t_income` VALUES ('48', '1', '马云', '公司发工资', '60000', '10', '四月份工资。', '2018-04-01 15:24:16', '2018-05-25 15:24:30', null);
INSERT INTO `t_income` VALUES ('49', '1', '马云', '股票大涨', '450000', '11', '阿里巴巴股票大涨。', '2018-05-01 15:25:20', '2018-05-25 15:25:36', null);
INSERT INTO `t_income` VALUES ('50', '11', '猿来入此', '公司发工资', '6000', '10', '收入工资', '2018-05-03 16:23:55', '2018-05-25 16:24:03', null);
INSERT INTO `t_income` VALUES ('51', '11', '猿来入此', '中彩票', '50000', '19', '中彩票了', '2018-05-10 16:24:26', '2018-05-25 16:24:36', null);

-- ----------------------------
-- Table structure for `t_pay`
-- ----------------------------
DROP TABLE IF EXISTS `t_pay`;
CREATE TABLE `t_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `payer` varchar(255) DEFAULT NULL,
  `tword` varchar(255) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `paytime` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) NOT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay
-- ----------------------------
INSERT INTO `t_pay` VALUES ('6', '1', 'admin', '个人所得税', '3568', '6', '扣除个人所得税', '2018-05-01 14:34:55', '2018-05-25 14:35:07', null);
INSERT INTO `t_pay` VALUES ('7', '1', 'admin', '买车', '230000', '7', '买一辆奇骏。', '2018-05-17 14:35:22', '2018-05-25 14:35:38', null);
INSERT INTO `t_pay` VALUES ('8', '1', '猿来入此', '吃饭', '368', '7', '吃了西贝。', '2018-05-02 18:36:16', '2018-05-25 14:36:30', null);
INSERT INTO `t_pay` VALUES ('9', '11', '猿来入此', '吃饭', '588', '7', '吃饭。', '2018-05-10 16:25:42', '2018-05-25 16:25:48', null);
INSERT INTO `t_pay` VALUES ('10', '11', '猿来入此', '买车', '69999', '7', '买辆车', '2018-05-09 16:26:18', '2018-05-25 16:26:24', null);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员');
INSERT INTO `t_role` VALUES ('2', '普通用户');

-- ----------------------------
-- Table structure for `t_security`
-- ----------------------------
DROP TABLE IF EXISTS `t_security`;
CREATE TABLE `t_security` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `securityname` varchar(255) DEFAULT NULL,
  `securitypassward` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) NOT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_security
-- ----------------------------
INSERT INTO `t_security` VALUES ('3', '1', 'llq', '111111', '阿里巴巴', '16', '2018-05-01 14:55:36', '2019-05-31 14:55:42', '2018-05-25 14:56:01', '2018-05-25 14:56:13');
INSERT INTO `t_security` VALUES ('4', '1', 'llq', '111111', '百度', '17', '2014-05-01 14:56:32', '2022-05-31 14:56:37', '2018-05-25 14:56:41', null);
INSERT INTO `t_security` VALUES ('5', '11', 'yuanlairuci', '111111', '腾讯科技', '18', '2015-05-01 14:57:00', '2018-05-26 14:57:06', '2018-05-25 14:57:09', null);
INSERT INTO `t_security` VALUES ('6', '11', 'llqqxf', '123456', '巨人网络', '18', '2017-05-01 14:57:34', '2018-05-31 14:57:39', '2018-05-25 14:57:46', null);

-- ----------------------------
-- Table structure for `t_shares`
-- ----------------------------
DROP TABLE IF EXISTS `t_shares`;
CREATE TABLE `t_shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `securityid` int(11) NOT NULL,
  `sharesname` varchar(255) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) NOT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shares
-- ----------------------------
INSERT INTO `t_shares` VALUES ('4', '1', '3', '谷歌', 'admin', '2018-05-25 14:58:52', null);
INSERT INTO `t_shares` VALUES ('5', '1', '5', '苹果科技', '猿来入此', '2018-05-25 14:59:07', null);
INSERT INTO `t_shares` VALUES ('6', '1', '4', '百度', 'admin', '2018-05-25 14:59:18', null);

-- ----------------------------
-- Table structure for `t_trade`
-- ----------------------------
DROP TABLE IF EXISTS `t_trade`;
CREATE TABLE `t_trade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `sharesid` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_trade
-- ----------------------------
INSERT INTO `t_trade` VALUES ('1', null, null, '69999', '12', '839988', '14', '激活附', '2017-07-04 15:22:21', '2017-07-05 15:22:36', null);
INSERT INTO `t_trade` VALUES ('3', '1', '4', '126', '100', '12600', '14', '买入谷歌股票。', '2018-05-18 15:08:26', '2018-05-25 15:08:41', null);
INSERT INTO `t_trade` VALUES ('4', '1', '5', '169', '369', '62361', '14', '买入苹果股票', '2018-05-04 15:09:08', '2018-05-25 15:09:24', null);
INSERT INTO `t_trade` VALUES ('5', '1', '6', '122', '39', '4758', '14', '买入百度股票。', '2018-05-10 15:09:52', '2018-05-25 15:10:04', '2018-05-25 15:10:16');
INSERT INTO `t_trade` VALUES ('7', '1', '4', '198', '36', '7128', '15', '股价大涨，开始卖出。', '2018-05-17 15:17:41', '2018-05-25 15:17:54', null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` tinyint(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `isvalid` tinyint(2) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'YWRtaW4=', '管理员', 'llqqxf@163.com', '18888888888', '上海市浦东新区幻林东路', '1', '22', '父亲', '500000', '62158556522545825', '1', '2017-06-30 11:36:21', '2018-05-25 14:13:10');
INSERT INTO `t_user` VALUES ('2', 'Tom', 'MTIzNDU2', 'Tom', '424107420@qq.com', '22222', '秦皇岛市海港区燕大小区', '2', '35', '母亲', '9000', '623578956', '0', '2017-07-01 15:04:19', '2017-07-03 22:29:00');
INSERT INTO `t_user` VALUES ('3', '12455', 'MTIzNDU2', null, null, null, null, null, null, null, null, null, '0', '2017-07-06 15:13:09', null);
INSERT INTO `t_user` VALUES ('4', '12222', 'MTIzNDU2Nzg=', '2222', '424107420@qq.com', '222', '秦皇岛市海港区', '2', '22', '父亲', '5000111', '123456', '0', '2017-07-01 15:24:14', '2017-07-03 10:09:40');
INSERT INTO `t_user` VALUES ('5', '122', 'MTIzNDU2', '1', '1@qq.com', '1', '1', '1', '1', '1', '1', '1', '0', '2017-07-03 15:10:15', null);
INSERT INTO `t_user` VALUES ('6', '1', 'MQ==', '1', '1@qq.com', '1', '1', '1', '11', '1', '11', '1', '0', '2017-07-03 15:10:34', null);
INSERT INTO `t_user` VALUES ('7', '普通用户', 'MTIzNDU2', '王大爷', '18713598785@163.com', '123456789', '未知', '1', '60', '外祖父', '6000', '622234578', '0', '2017-07-03 22:24:20', '2017-07-03 22:30:44');
INSERT INTO `t_user` VALUES ('8', '田建璐', 'MTIzNDU2', null, null, null, null, null, null, null, null, null, '0', '2017-07-03 22:27:15', null);
INSERT INTO `t_user` VALUES ('9', 'lu', 'MTIz', null, null, null, null, null, null, null, null, null, '0', '2017-07-07 10:02:39', null);
INSERT INTO `t_user` VALUES ('10', '我是谁', 'MTIzNDU2', null, null, null, null, null, null, null, null, null, '0', '2017-07-08 15:36:04', null);
INSERT INTO `t_user` VALUES ('11', '猿来入此', 'MQ==', '猿来入此', 'llqqxf@163.com', '13565656888', '上海市浦东新区幻林东路', '1', '25', '丈夫', '50000', '2658555458552455', '1', '2018-05-25 14:12:25', null);
INSERT INTO `t_user` VALUES ('12', '马云', 'MQ==', '猿来入此', 'llqqxf@163.com', '13565656888', '上海市浦东新区幻林东路', '2', '25', '丈夫', '500000', '2658555458552455', '1', '2018-05-25 15:23:54', null);

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('4', '2', '2');
INSERT INTO `t_user_role` VALUES ('5', '3', '2');
INSERT INTO `t_user_role` VALUES ('6', '4', '2');
INSERT INTO `t_user_role` VALUES ('7', '5', '1');
INSERT INTO `t_user_role` VALUES ('8', '6', '1');
INSERT INTO `t_user_role` VALUES ('9', '7', '2');
INSERT INTO `t_user_role` VALUES ('10', '8', '2');
INSERT INTO `t_user_role` VALUES ('11', '9', '2');
INSERT INTO `t_user_role` VALUES ('12', '10', '2');
INSERT INTO `t_user_role` VALUES ('13', '11', '2');
INSERT INTO `t_user_role` VALUES ('14', '12', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
