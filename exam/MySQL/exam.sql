/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80023
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 80023
File Encoding         : 65001

Date: 2022-06-21 17:18:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice` (
  `cid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `answer` bit(1) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qid` bigint DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `FKcaq6r76cswke5b9fk6fyx3y5w` (`qid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES ('1', '\0', '2013', '1');
INSERT INTO `choice` VALUES ('2', '', '2014', '1');
INSERT INTO `choice` VALUES ('3', '\0', '2015', '1');
INSERT INTO `choice` VALUES ('4', '\0', '2016', '1');
INSERT INTO `choice` VALUES ('5', '\0', '成交下定，信息对接，交车回访', '2');
INSERT INTO `choice` VALUES ('6', '\0', '信息对接，合同签署，交车回访', '2');
INSERT INTO `choice` VALUES ('7', '\0', '成交下定，交车回访，信息对接', '2');
INSERT INTO `choice` VALUES ('8', '\0', '合同签署，信息对接，交车回访', '2');
INSERT INTO `choice` VALUES ('9', '\0', '小鹏汽车P7', '3');
INSERT INTO `choice` VALUES ('10', '\0', '小鹏汽车P5', '3');
INSERT INTO `choice` VALUES ('11', '\0', '小鹏汽车G5', '3');
INSERT INTO `choice` VALUES ('12', '\0', '小鹏汽车G3', '3');
INSERT INTO `choice` VALUES ('13', '\0', 'Leads Capture', '4');
INSERT INTO `choice` VALUES ('14', '\0', 'Pre-Drive', '4');
INSERT INTO `choice` VALUES ('15', '\0', 'Test Drive', '4');
INSERT INTO `choice` VALUES ('16', '\0', 'Close Order', '4');
INSERT INTO `choice` VALUES ('17', '\0', 'Delivery', '4');
INSERT INTO `choice` VALUES ('18', '\0', '首次通过垂直网站，总部下发，线上投放采买等途径与门店发生接触的有效联系信息的客户', '5');
INSERT INTO `choice` VALUES ('19', '\0', '通过市场活动，外展接待途径留下的有效客户信息属于线下线索', '5');
INSERT INTO `choice` VALUES ('20', '\0', '客户电话错号或者空号属于无线线索', '5');
INSERT INTO `choice` VALUES ('21', '\0', '客户表示不购买小鹏汽车或近期已经购买其他品牌属于暂败线索', '5');
INSERT INTO `choice` VALUES ('22', '\0', '品牌顾虑', '6');
INSERT INTO `choice` VALUES ('23', '\0', '续航焦虑', '6');
INSERT INTO `choice` VALUES ('24', '\0', '品质顾虑', '6');
INSERT INTO `choice` VALUES ('25', '\0', '充电焦虑', '6');
INSERT INTO `choice` VALUES ('26', '', '2014', '1');

-- ----------------------------
-- Table structure for exampaper
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper` (
  `pid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES ('1', '陪练训练', '陪练题目');

-- ----------------------------
-- Table structure for papergrade
-- ----------------------------
DROP TABLE IF EXISTS `papergrade`;
CREATE TABLE `papergrade` (
  `rid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `intelligibility` int(255) DEFAULT NULL,
  `integrity` int(255) DEFAULT NULL,
  `logicality` int(255) DEFAULT NULL,
  `accuracy` int(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `pid` bigint DEFAULT NULL,
  `uid` bigint DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE,
  KEY `FKmblvyjlk9x7rrm7mvqtbedycc` (`pid`) USING BTREE,
  KEY `FKsfc96jri4p4ukkdaitjt5rk13` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of papergrade
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', '小鹏汽车成立于（）年', '单选', '2');
INSERT INTO `question` VALUES ('2', '1', '交付对接正确的流程是', '单选', '2');
INSERT INTO `question` VALUES ('3', '1', '小鹏汽车目前有那几款车？', '单选', '2');
INSERT INTO `question` VALUES ('4', '1', '小鹏汽车新零售销售流程有哪些？', '单选', '2');
INSERT INTO `question` VALUES ('5', '1', '下面描述正确的是', '单选', '2');
INSERT INTO `question` VALUES ('6', '1', '下列哪些是属于客户的一级顾虑', '单选', '2');
INSERT INTO `question` VALUES ('7', '1', '小鹏汽车的智能系统是', '问答', '小鹏汽车智能系统以中控大屏为核心，它除了是一个互联网的入口和终端外，更多的是一个智能化的平台。中控大屏取代了传统中控实体按钮，而代之以一系列的虚拟按钮。小鹏汽车的智能控制系统专注于对车本身的智能控制，而非简单的互联网娱乐。通过中控大屏，可以方便的控制方向盘位置、座椅位置、车灯开关、车窗升降、空调设定等，还可以进行驾驶风格的选择、底盘刚度的调节、制动能量回收强度等的调节等等。');
INSERT INTO `question` VALUES ('236', '1', '小鹏汽车目前有那几款车？', '单选', '2');
INSERT INTO `question` VALUES ('237', '1', '小鹏汽车目前有那几款车？', '单选', '2');
INSERT INTO `question` VALUES ('238', '1', '小鹏汽车目前有那几款车？', '单选', '2');
INSERT INTO `question` VALUES ('239', '1', '小鹏汽车目前有那几款车？', '单选', '2');
INSERT INTO `question` VALUES ('240', '1', '小鹏汽车目前有那几款车？', '单选', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '测试1', '123456', null);

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('300', '1', '小鹏汽车好吗', '问答', '好');
INSERT INTO `question` VALUES ('301', '1', '小鹏汽车帅吗', '问答', '帅');
INSERT INTO `question` VALUES ('302', '1', '小鹏汽车有多好', '问答', '非常好');
INSERT INTO `question` VALUES ('303', '1', '小鹏汽车有多快', '问答', '非常快');
INSERT INTO `question` VALUES ('304', '1', '小鹏汽车能充电吗', '问答', '能');
INSERT INTO `question` VALUES ('305', '1', '小鹏汽车强吗', '问答', '强');
INSERT INTO `question` VALUES ('306', '1', '喜欢小鹏汽车吗', '问答', '喜欢');
INSERT INTO `question` VALUES ('307', '1', '小鹏汽车怎么样', '问答', '很好');
INSERT INTO `question` VALUES ('308', '1', '小鹏汽车好玩吗', '问答', '好玩');
INSERT INTO `question` VALUES ('309', '1', '小鹏汽车便宜吗', '问答', '便宜');
INSERT INTO `question` VALUES ('310', '1', '小鹏汽车多少钱', '问答', '100元');
INSERT INTO `question` VALUES ('311', '1', '小鹏汽车贵吗', '问答', '不贵');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
                           `aid` bigint unsigned NOT NULL AUTO_INCREMENT,
                           `pid` int DEFAULT NULL,
                           `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           PRIMARY KEY (`aid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `article` VALUES ('150', '1', '小鹏P7', '小鹏汽车智能系统以中控大屏为核心，它除了是一个互联网的入口和终端外，更多的是一个智能化的平台。中控大屏取代了传统中控实体按钮，而代之以一系列的虚拟按钮。小鹏汽车的智能控制系统专注于对车本身的智能控制，而非简单的互联网娱乐。通过中控大屏，可以方便的控制方向盘位置、座椅位置、车灯开关、车窗升降、空调设定等，还可以进行驾驶风格的选择、底盘刚度的调节、制动能量回收强度等的调节等等。', '汽车');
INSERT INTO `article` VALUES ('151', '1', '如何问答', '应该这样问答！', '问答教程');
