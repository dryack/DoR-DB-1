/*
Navicat MySQL Data Transfer

Source Server         : warserver
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : dor-accounts

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-01-25 22:30:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `accounts_ID` text,
  `AccountId` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Ip` varchar(255) DEFAULT NULL,
  `Token` varchar(255) DEFAULT NULL,
  `GmLevel` tinyint(4) NOT NULL,
  `Banned` int(11) NOT NULL,
  `CryptPassword` varchar(255) DEFAULT NULL,
  `InvalidPasswordCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AccountId`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_bans`
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans` (
  `ip_bans_ID` varchar(255) NOT NULL,
  `Ip` varchar(255) DEFAULT NULL,
  `Expire` int(11) NOT NULL,
  PRIMARY KEY (`ip_bans_ID`),
  UNIQUE KEY `Ip` (`Ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip_bans
-- ----------------------------

-- ----------------------------
-- Table structure for `realms`
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms` (
  `realms_ID` varchar(255) NOT NULL,
  `RealmId` tinyint(3) unsigned DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Port` int(11) NOT NULL,
  `AllowTrials` varchar(255) DEFAULT NULL,
  `CharfxerAvailable` varchar(255) DEFAULT NULL,
  `Legacy` varchar(255) DEFAULT NULL,
  `BonusDestruction` varchar(255) DEFAULT NULL,
  `BonusOrder` varchar(255) DEFAULT NULL,
  `Redirect` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Retired` varchar(255) DEFAULT NULL,
  `WaitingDestruction` varchar(255) DEFAULT NULL,
  `WaitingOrder` varchar(255) DEFAULT NULL,
  `DensityDestruction` varchar(255) DEFAULT NULL,
  `DensityOrder` varchar(255) DEFAULT NULL,
  `OpenRvr` varchar(255) DEFAULT NULL,
  `Rp` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Online` tinyint(3) unsigned NOT NULL,
  `OnlineDate` datetime DEFAULT NULL,
  `OnlinePlayers` int(10) unsigned DEFAULT NULL,
  `OrderCount` int(10) unsigned DEFAULT NULL,
  `DestructionCount` int(10) unsigned DEFAULT NULL,
  `MaxPlayers` int(10) unsigned DEFAULT NULL,
  `OrderCharacters` int(10) unsigned DEFAULT NULL,
  `DestruCharacters` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`realms_ID`),
  UNIQUE KEY `RealmId` (`RealmId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of realms
-- ----------------------------
INSERT INTO `realms` VALUES ('1', '1', 'Dor', 'EN', '127.0.0.1', '10622', '0', '1', '1', '0', '0', '0', 'STR_REGION_EUROPE', '0', '0', '0', '0', '0', '1', '0', '0', '1', '2016-02-21 19:59:43', '1', '0', '0', '100', '0', '0');
