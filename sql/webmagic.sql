/*
Navicat MySQL Data Transfer

Source Server         : LH_MySQL
Source Server Version : 50551
Source Host           : localhost:3306
Source Database       : webmagic

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2016-11-08 09:09:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cnnvd
-- ----------------------------
DROP TABLE IF EXISTS `cnnvd`;
CREATE TABLE `cnnvd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnnvdid` varchar(255) DEFAULT NULL COMMENT 'cnvd编号',
  `cnnvdname` varchar(255) DEFAULT NULL COMMENT 'cnvd名称',
  `publishdate` varchar(255) DEFAULT NULL COMMENT '发布日期',
  `updatetime` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `harmlevel` varchar(255) DEFAULT NULL COMMENT '危害等级',
  `bugtype` varchar(255) DEFAULT NULL COMMENT '漏洞类型',
  `menacetype` varchar(255) DEFAULT NULL COMMENT '威胁类型',
  `cveid` varchar(255) DEFAULT NULL COMMENT 'CVE编号',
  `bugsynopsis` text COMMENT '漏洞简介',
  `bugnotice` text COMMENT '漏洞公告',
  `referenceurl` text COMMENT '参考网址',
  `patches` text COMMENT '补丁',
  `effectentity` varchar(255) DEFAULT NULL COMMENT '影响实体',
  `timedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据库入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87342 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cnvd
-- ----------------------------
DROP TABLE IF EXISTS `cnvd`;
CREATE TABLE `cnvd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnvdid` varchar(255) NOT NULL,
  `cnvdtitle` varchar(255) DEFAULT NULL,
  `bugsubmitter` varchar(255) DEFAULT NULL,
  `publishdate` varchar(255) DEFAULT NULL,
  `harmlevel` varchar(255) DEFAULT NULL,
  `harmdescribe` varchar(255) DEFAULT NULL,
  `bugscore` varchar(255) DEFAULT NULL,
  `effectproduct` varchar(255) DEFAULT NULL,
  `bugtraqid` varchar(255) DEFAULT NULL,
  `cveid` varchar(255) DEFAULT NULL,
  `bugdescribe` text,
  `referencelink` varchar(255) DEFAULT NULL,
  `bugsolutions` varchar(255) DEFAULT NULL,
  `bugfinder` varchar(255) DEFAULT NULL,
  `vendorpatches` varchar(255) DEFAULT NULL,
  `validateinfo` varchar(255) DEFAULT NULL,
  `submittdate` varchar(255) DEFAULT NULL,
  `includeddate` varchar(255) DEFAULT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  `bugaccessory` varchar(255) DEFAULT NULL,
  `timedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for seebug
-- ----------------------------
DROP TABLE IF EXISTS `seebug`;
CREATE TABLE `seebug` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bugid` varchar(255) NOT NULL,
  `bugname` varchar(255) DEFAULT NULL,
  `bugfinddate` varchar(255) DEFAULT NULL,
  `bugsubmitdate` varchar(255) DEFAULT NULL,
  `buglevel` int(11) DEFAULT NULL,
  `bugtype` varchar(255) DEFAULT NULL,
  `cveid` varchar(255) DEFAULT NULL,
  `cnnvdid` varchar(255) DEFAULT NULL,
  `cnvdid` varchar(255) DEFAULT NULL,
  `bugauthor` varchar(255) DEFAULT NULL,
  `bugsubmitter` varchar(255) DEFAULT NULL,
  `bugoutline` text,
  `zoomeyedork` varchar(255) DEFAULT NULL,
  `affectscomponent` varchar(255) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5175 DEFAULT CHARSET=utf8;
