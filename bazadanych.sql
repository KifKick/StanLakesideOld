/*
Navicat MySQL Data Transfer

Source Server         : ArmaLife
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : life2

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-01-11 21:41:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access`
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
`accessID`  int(11) NOT NULL AUTO_INCREMENT ,
`date_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`address`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`failed`  int(11) NOT NULL ,
PRIMARY KEY (`accessID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Table structure for `actionlog`
-- ----------------------------
DROP TABLE IF EXISTS `actionlog`;
CREATE TABLE `actionlog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`onPlayerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`onPlayerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`amount`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=32124

;

-- ----------------------------
-- Table structure for `bans`
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`banuid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`adminuid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`isperm`  int(11) NOT NULL DEFAULT 0 ,
`added`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`time`  int(11) NOT NULL DEFAULT 0 ,
`reason`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `buyselllog`
-- ----------------------------
DROP TABLE IF EXISTS `buyselllog`;
CREATE TABLE `buyselllog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`thing`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`count`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`amount`  int(100) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=70302

;

-- ----------------------------
-- Table structure for `coplog`
-- ----------------------------
DROP TABLE IF EXISTS `coplog`;
CREATE TABLE `coplog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`onPlayerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`onPlayerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`amount`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=4116

;

-- ----------------------------
-- Table structure for `deathlog`
-- ----------------------------
DROP TABLE IF EXISTS `deathlog`;
CREATE TABLE `deathlog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`byPlayerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`byPlayerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`weapon`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`distance`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=6395

;

-- ----------------------------
-- Table structure for `gangs`
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`owner`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`name`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`members`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`maxmembers`  int(2) NULL DEFAULT 8 ,
`bank`  int(100) NULL DEFAULT 0 ,
`active`  tinyint(4) NULL DEFAULT 1 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pid`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`pos`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`inventory`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`containers`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`owned`  tinyint(4) NULL DEFAULT 0 ,
`shared1`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`shared2`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`shared3`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`shared4`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`shared5`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
PRIMARY KEY (`id`, `pid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=550

;

-- ----------------------------
-- Table structure for `launcher`
-- ----------------------------
DROP TABLE IF EXISTS `launcher`;
CREATE TABLE `launcher` (
`server_ip`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`launcher_path`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ts3_plugin_path`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`mod_path`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ftp_userid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ftp_pass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`hashes_path`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`servers_path`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
`logid`  int(11) NOT NULL AUTO_INCREMENT ,
`date_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`user`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`action`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`level`  int(11) NOT NULL ,
PRIMARY KEY (`logid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=128

;

-- ----------------------------
-- Table structure for `moneylog`
-- ----------------------------
DROP TABLE IF EXISTS `moneylog`;
CREATE TABLE `moneylog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`toPlayerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`toPlayerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`amount`  int(100) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=33437

;

-- ----------------------------
-- Table structure for `notes`
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
`note_id`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing note_id of each user, unique index' ,
`uid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`staff_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`note_text`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`warning`  enum('1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`note_updated`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`note_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `panellog`
-- ----------------------------
DROP TABLE IF EXISTS `panellog`;
CREATE TABLE `panellog` (
`uid`  int(12) NOT NULL AUTO_INCREMENT ,
`date`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`author`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`pname`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`pid`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`bankacc`  int(100) NOT NULL DEFAULT 0 ,
`cash`  int(100) NOT NULL DEFAULT 0 ,
`obankacc`  int(100) NOT NULL DEFAULT 0 ,
`ocash`  int(100) NOT NULL DEFAULT 0 ,
`coplevel`  enum('0','1','2','3','4','5','6','7') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0' ,
`mediclevel`  enum('0','1','2','3','4','5') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `players`
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
`uid`  int(12) NOT NULL AUTO_INCREMENT ,
`name`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerid`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`cash`  int(100) NOT NULL DEFAULT 0 ,
`bankacc`  int(100) NOT NULL DEFAULT 0 ,
`coplevel`  enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0' ,
`cop_licenses`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`civ_licenses`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`med_licenses`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`cop_gear`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`mediclevel`  enum('0','1','2','3','4','5') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`arrested`  tinyint(1) NOT NULL DEFAULT 0 ,
`aliases`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`adminlevel`  enum('0','1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`donatorlvl`  int(100) NOT NULL DEFAULT 0 ,
`civ_gear`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`blacklist`  tinyint(1) NOT NULL DEFAULT 0 ,
`admin_user`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`admin_pass`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`timeupdated`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`timejoined`  datetime NULL DEFAULT NULL ,
`med_gear`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`issupport`  enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`jailtime`  int(11) NOT NULL DEFAULT 0 ,
`arrestreason`  varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`streamSaftey`  tinyint(1) NOT NULL DEFAULT 0 ,
`hunger`  int(11) NOT NULL DEFAULT 100 ,
`thirst`  int(11) NOT NULL DEFAULT 100 ,
`health`  varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`injuries`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[0,0,0,0,0,0,0,0,0,0,0]' ,
`battery`  int(11) NOT NULL DEFAULT 80 ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2572

;

-- ----------------------------
-- Table structure for `reimbursement_log`
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement_log`;
CREATE TABLE `reimbursement_log` (
`reimbursement_id`  int(11) NOT NULL AUTO_INCREMENT ,
`playerid`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`comp`  int(100) NOT NULL DEFAULT 0 ,
`reason`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`staff_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`timestamp`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`reimbursement_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`ID`  mediumint(9) NOT NULL AUTO_INCREMENT ,
`username`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`permissions`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Table structure for `vehiclelog`
-- ----------------------------
DROP TABLE IF EXISTS `vehiclelog`;
CREATE TABLE `vehiclelog` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`playerID`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`vehicleClass`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`vehicleName`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`amount`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=30056

;

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`side`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`classname`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`pid`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`alive`  tinyint(1) NOT NULL DEFAULT 1 ,
`active`  tinyint(1) NOT NULL DEFAULT 0 ,
`plate`  int(20) NOT NULL ,
`color`  int(20) NOT NULL ,
`inventory`  varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`damage`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`fuel`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=25767

;

-- ----------------------------
-- Table structure for `wantedlist`
-- ----------------------------
DROP TABLE IF EXISTS `wantedlist`;
CREATE TABLE `wantedlist` (
`id`  int(12) NOT NULL AUTO_INCREMENT ,
`name`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`playerid`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`commitedcrime`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Table structure for `whitelist`
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`date_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`user`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`guid`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`uid`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Procedure structure for `deleteDeadVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
    DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldHouses`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetLifeVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
    UPDATE vehicles SET `active`= 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Indexes structure for table access
-- ----------------------------
CREATE UNIQUE INDEX `accessID` ON `access`(`accessID`) USING BTREE ;
CREATE INDEX `accessID_1` ON `access`(`accessID`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `access`
-- ----------------------------
ALTER TABLE `access` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for `actionlog`
-- ----------------------------
ALTER TABLE `actionlog` AUTO_INCREMENT=32124;

-- ----------------------------
-- Indexes structure for table bans
-- ----------------------------
CREATE UNIQUE INDEX `id` ON `bans`(`id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `bans`
-- ----------------------------
ALTER TABLE `bans` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `buyselllog`
-- ----------------------------
ALTER TABLE `buyselllog` AUTO_INCREMENT=70302;

-- ----------------------------
-- Auto increment value for `coplog`
-- ----------------------------
ALTER TABLE `coplog` AUTO_INCREMENT=4116;

-- ----------------------------
-- Auto increment value for `deathlog`
-- ----------------------------
ALTER TABLE `deathlog` AUTO_INCREMENT=6395;

-- ----------------------------
-- Indexes structure for table gangs
-- ----------------------------
CREATE UNIQUE INDEX `name_UNIQUE` ON `gangs`(`name`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `gangs`
-- ----------------------------
ALTER TABLE `gangs` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `houses`
-- ----------------------------
ALTER TABLE `houses` AUTO_INCREMENT=550;

-- ----------------------------
-- Indexes structure for table log
-- ----------------------------
CREATE UNIQUE INDEX `logid` ON `log`(`logid`) USING BTREE ;
CREATE INDEX `logid_2` ON `log`(`logid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `log`
-- ----------------------------
ALTER TABLE `log` AUTO_INCREMENT=128;

-- ----------------------------
-- Auto increment value for `moneylog`
-- ----------------------------
ALTER TABLE `moneylog` AUTO_INCREMENT=33437;

-- ----------------------------
-- Indexes structure for table notes
-- ----------------------------
CREATE UNIQUE INDEX `note_id` ON `notes`(`note_id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `notes`
-- ----------------------------
ALTER TABLE `notes` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table panellog
-- ----------------------------
CREATE INDEX `pname` ON `panellog`(`pname`) USING BTREE ;
CREATE INDEX `author` ON `panellog`(`author`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `panellog`
-- ----------------------------
ALTER TABLE `panellog` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table players
-- ----------------------------
CREATE UNIQUE INDEX `playerid` ON `players`(`playerid`) USING BTREE ;
CREATE INDEX `name` ON `players`(`name`) USING BTREE ;
CREATE INDEX `blacklist` ON `players`(`blacklist`) USING BTREE ;
DROP TRIGGER IF EXISTS `player_create`;
DELIMITER ;;
CREATE TRIGGER `player_create` BEFORE INSERT ON `players` FOR EACH ROW SET NEW.timejoined = NOW()
;;
DELIMITER ;

-- ----------------------------
-- Auto increment value for `players`
-- ----------------------------
ALTER TABLE `players` AUTO_INCREMENT=2572;

-- ----------------------------
-- Indexes structure for table reimbursement_log
-- ----------------------------
CREATE UNIQUE INDEX `reimbursement_id` ON `reimbursement_log`(`reimbursement_id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `reimbursement_log`
-- ----------------------------
ALTER TABLE `reimbursement_log` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `users`
-- ----------------------------
ALTER TABLE `users` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `vehiclelog`
-- ----------------------------
ALTER TABLE `vehiclelog` AUTO_INCREMENT=30056;

-- ----------------------------
-- Indexes structure for table vehicles
-- ----------------------------
CREATE INDEX `side` ON `vehicles`(`side`) USING BTREE ;
CREATE INDEX `pid` ON `vehicles`(`pid`) USING BTREE ;
CREATE INDEX `type` ON `vehicles`(`type`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `vehicles`
-- ----------------------------
ALTER TABLE `vehicles` AUTO_INCREMENT=25767;

-- ----------------------------
-- Auto increment value for `wantedlist`
-- ----------------------------
ALTER TABLE `wantedlist` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `whitelist`
-- ----------------------------
ALTER TABLE `whitelist` AUTO_INCREMENT=1;
