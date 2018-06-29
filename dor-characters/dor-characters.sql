/*
Navicat MySQL Data Transfer

Source Server         : warserver
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : dor-characters

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-01-25 22:30:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auctions`
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `auctions_ID` varchar(255) NOT NULL,
  `AuctionId` bigint(20) unsigned NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `SellerId` int(10) unsigned NOT NULL,
  `ItemId` int(10) unsigned NOT NULL,
  `SellPrice` int(10) unsigned NOT NULL,
  `StartTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`auctions_ID`),
  UNIQUE KEY `AuctionId` (`AuctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for `bug_report`
-- ----------------------------
DROP TABLE IF EXISTS `bug_report`;
CREATE TABLE `bug_report` (
  `bug_report_ID` varchar(255) NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `X` smallint(5) unsigned NOT NULL,
  `Y` smallint(5) unsigned NOT NULL,
  `Time` int(10) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `Category` tinyint(3) unsigned NOT NULL,
  `Message` text NOT NULL,
  `FieldSting` text NOT NULL,
  PRIMARY KEY (`bug_report_ID`),
  UNIQUE KEY `CharacterId` (`CharacterId`),
  UNIQUE KEY `ZoneId` (`ZoneId`),
  UNIQUE KEY `X` (`X`),
  UNIQUE KEY `Y` (`Y`),
  UNIQUE KEY `Time` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bug_report
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `characters_ID` varchar(255) NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `RealmId` int(11) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `SlotId` tinyint(3) unsigned NOT NULL,
  `ModelId` tinyint(3) unsigned NOT NULL,
  `Career` tinyint(3) unsigned NOT NULL,
  `CareerLine` tinyint(3) unsigned NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `HeldLeft` int(11) NOT NULL,
  `Race` tinyint(3) unsigned NOT NULL,
  `Traits` text NOT NULL,
  `Sex` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`characters_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_items`
-- ----------------------------
DROP TABLE IF EXISTS `characters_items`;
CREATE TABLE `characters_items` (
  `characters_items_ID` varchar(255) NOT NULL,
  `Guid` bigint(20) NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `Entry` int(10) unsigned NOT NULL,
  `SlotId` smallint(5) unsigned NOT NULL,
  `ModelId` int(10) unsigned NOT NULL,
  `Counts` smallint(5) unsigned NOT NULL,
  `Talismans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`characters_items_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_items
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_mails`
-- ----------------------------
DROP TABLE IF EXISTS `characters_mails`;
CREATE TABLE `characters_mails` (
  `Characters_mails_ID` text,
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `AuctionType` tinyint(3) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `CharacterIdSender` int(10) unsigned NOT NULL,
  `SenderName` varchar(255) NOT NULL,
  `ReceiverName` varchar(255) NOT NULL,
  `SendDate` int(10) unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Money` int(10) unsigned NOT NULL,
  `Cr` tinyint(3) unsigned NOT NULL,
  `Opened` tinyint(3) unsigned NOT NULL,
  `ItemsString` text NOT NULL,
  PRIMARY KEY (`Guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_mails
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_quests`
-- ----------------------------
DROP TABLE IF EXISTS `characters_quests`;
CREATE TABLE `characters_quests` (
  `characters_quests_ID` varchar(255) NOT NULL,
  `Objectives` text NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `QuestID` smallint(5) unsigned NOT NULL,
  `Done` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`characters_quests_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_quests
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_socials`
-- ----------------------------
DROP TABLE IF EXISTS `characters_socials`;
CREATE TABLE `characters_socials` (
  `characters_socials_ID` varchar(255) NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `DistCharacterId` int(10) unsigned NOT NULL,
  `DistName` varchar(255) NOT NULL,
  `Friend` tinyint(3) unsigned NOT NULL,
  `Ignore` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`characters_socials_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_socials
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_toks`
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks`;
CREATE TABLE `characters_toks` (
  `characters_Toks_ID` varchar(255) NOT NULL,
  `CharacterId` int(10) unsigned DEFAULT NULL,
  `TokEntry` smallint(5) unsigned DEFAULT NULL,
  `Count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`characters_Toks_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_toks
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_value`
-- ----------------------------
DROP TABLE IF EXISTS `characters_value`;
CREATE TABLE `characters_value` (
  `characters_value_ID` varchar(255) NOT NULL,
  `CharacterId` int(10) unsigned DEFAULT NULL,
  `Level` tinyint(3) unsigned NOT NULL,
  `Xp` int(10) unsigned NOT NULL,
  `XpMode` int(11) NOT NULL,
  `RestXp` int(11) NOT NULL,
  `Renown` int(10) unsigned NOT NULL,
  `RenownRank` tinyint(3) unsigned NOT NULL,
  `Money` int(10) unsigned NOT NULL,
  `Speed` int(11) NOT NULL,
  `RegionId` int(11) NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `RallyPoint` smallint(5) unsigned NOT NULL,
  `BagBuy` tinyint(3) unsigned NOT NULL,
  `Skills` int(10) unsigned NOT NULL,
  `Online` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`characters_value_ID`),
  UNIQUE KEY `CharacterId` (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_value
-- ----------------------------

-- ----------------------------
-- Table structure for `character_abilities`
-- ----------------------------
DROP TABLE IF EXISTS `character_abilities`;
CREATE TABLE `character_abilities` (
  `character_abilities_ID` varchar(255) NOT NULL,
  `CharacterID` int(11) DEFAULT NULL,
  `AbilityID` smallint(5) unsigned DEFAULT NULL,
  `LastCast` int(11) DEFAULT NULL,
  PRIMARY KEY (`character_abilities_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_abilities
-- ----------------------------

-- ----------------------------
-- Table structure for `character_influences`
-- ----------------------------
DROP TABLE IF EXISTS `character_influences`;
CREATE TABLE `character_influences` (
  `character_influences_ID` varchar(255) NOT NULL,
  `CharacterId` int(11) NOT NULL,
  `InfluenceId` smallint(5) unsigned NOT NULL,
  `InfluenceCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`character_influences_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_influences
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_info`
-- ----------------------------
DROP TABLE IF EXISTS `guild_info`;
CREATE TABLE `guild_info` (
  `guild_info_ID` varchar(255) NOT NULL,
  `GuildId` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Level` int(10) unsigned NOT NULL,
  `LeaderId` int(11) NOT NULL,
  `CreateDate` int(11) NOT NULL,
  `Motd` text NOT NULL,
  `AboutUs` text NOT NULL,
  PRIMARY KEY (`guild_info_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_logs`
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs` (
  `guild_logs_ID` varchar(255) NOT NULL,
  `GuildId` int(10) unsigned NOT NULL,
  `Time` int(10) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `Text` text NOT NULL,
  PRIMARY KEY (`guild_logs_ID`),
  UNIQUE KEY `Time` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_members`
-- ----------------------------
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE `guild_members` (
  `guild_members_ID` varchar(255) NOT NULL,
  `GuildId` int(10) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `RankId` int(10) unsigned NOT NULL,
  `MemberNote` text NOT NULL,
  `OfficerNote` text NOT NULL,
  PRIMARY KEY (`guild_members_ID`),
  UNIQUE KEY `CharacterId` (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_members
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks` (
  `guild_ranks_ID` varchar(255) NOT NULL,
  `GuildId` int(10) unsigned NOT NULL,
  `RankId` int(10) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Permissions` text NOT NULL,
  PRIMARY KEY (`guild_ranks_ID`),
  UNIQUE KEY `RankId` (`RankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_ranks
-- ----------------------------
