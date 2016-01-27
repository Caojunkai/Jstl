/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : anymall

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-01-27 18:04:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `any_item`
-- ----------------------------
DROP TABLE IF EXISTS `any_item`;
CREATE TABLE `any_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `oprice` decimal(10,2) unsigned NOT NULL,
  `producer` varchar(255) NOT NULL,
  `product_place` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `utime` datetime NOT NULL,
  `cuid` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_item
-- ----------------------------
INSERT INTO `any_item` VALUES ('1', 'MacBookPro', '9868.60', '9898.30', 'Apple', 'China', '1', '', '4548-dsd8-865d-78sd', '2016-01-25 16:36:10', '2016-01-25 16:36:10', '1', '1', 'sdsdd', 'sadsadad');

-- ----------------------------
-- Table structure for `any_order`
-- ----------------------------
DROP TABLE IF EXISTS `any_order`;
CREATE TABLE `any_order` (
  `id` int(11) NOT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3bwfbjprpb4kntfrjyvserst1` (`uid`),
  CONSTRAINT `FK3bwfbjprpb4kntfrjyvserst1` FOREIGN KEY (`uid`) REFERENCES `any_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_order
-- ----------------------------
INSERT INTO `any_order` VALUES ('1', '2016-01-25 16:36:10', '2016-01-25 16:36:10', '5', '95845.56', '1');

-- ----------------------------
-- Table structure for `any_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `any_order_item`;
CREATE TABLE `any_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjt9b1r52350qfeqh6g5x6l9mx` (`iid`),
  KEY `FK8m63q23hl3c2hcbaoqfqm5tpw` (`oid`),
  CONSTRAINT `FK8m63q23hl3c2hcbaoqfqm5tpw` FOREIGN KEY (`oid`) REFERENCES `any_order` (`id`),
  CONSTRAINT `FKjt9b1r52350qfeqh6g5x6l9mx` FOREIGN KEY (`iid`) REFERENCES `any_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_order_item
-- ----------------------------
INSERT INTO `any_order_item` VALUES ('1', '1', '48787.4', '1', '1');

-- ----------------------------
-- Table structure for `any_profile`
-- ----------------------------
DROP TABLE IF EXISTS `any_profile`;
CREATE TABLE `any_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` datetime DEFAULT NULL,
  `picture` longblob,
  `postcode` varchar(255) DEFAULT '313',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_profile
-- ----------------------------
INSERT INTO `any_profile` VALUES ('1', '2016-01-21 15:13:45', null, '100000', '4646464664', '北京');
INSERT INTO `any_profile` VALUES ('2', '2016-01-23 12:20:08', null, '100000', '4646464664', '北京');

-- ----------------------------
-- Table structure for `any_user`
-- ----------------------------
DROP TABLE IF EXISTS `any_user`;
CREATE TABLE `any_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `face` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_user
-- ----------------------------
INSERT INTO `any_user` VALUES ('1', 'James Bond', '123456789', '1', '353290933@qq.com', '2016-01-25 16:36:10', '白月光');

-- ----------------------------
-- Table structure for `any_user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `any_user_copy`;
CREATE TABLE `any_user_copy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `face` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of any_user_copy
-- ----------------------------
INSERT INTO `any_user_copy` VALUES ('0', 'Ethan Hunt', '123456789', '1', '4545', '2016-01-26 15:41:25', '644');
INSERT INTO `any_user_copy` VALUES ('1', 'James Bond', '123456789', '1', '353290933@qq.com', '2016-01-25 16:36:10', '白月光');
