/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : wstmall

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-09-03 12:48:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wst_goods_cat_brands`
-- ----------------------------
DROP TABLE IF EXISTS `wst_goods_cat_brands`;
CREATE TABLE `wst_goods_cat_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wst_goods_cat_brands
-- ----------------------------
INSERT INTO `wst_goods_cat_brands` VALUES ('1', '47', '19'),
 ('2', '47', '20'),
 ('3', '47', '21'),
 ('4', '47', '22'),
 ('5', '47', '23'),
 ('6', '47', '24'),
 ('7', '48', '25'),
 ('8', '48', '26'),
 ('9', '48', '27'),
 ('10', '48', '28'),
 ('11', '49', '29'),
 ('12', '49', '30'),
 ('13', '49', '31'),
 ('14', '49', '32'),
 ('15', '49', '33'),
 ('16', '49', '34'),
 ('17', '49', '35'),
 ('18', '49', '36'),
 ('19', '49', '37'),
 ('20', '49', '38'),
 ('21', '49', '39'),
 ('22', '49', '40'),
 ('23', '50', '41'),
 ('24', '50', '42'),
 ('25', '50', '43'),
 ('26', '50', '44'),
 ('27', '50', '45'),
 ('28', '50', '46'),
 ('29', '50', '47'),
 ('30', '51', '48'),
 ('31', '51', '49'),
 ('32', '51', '50'),
 ('33', '51', '51'),
 ('34', '51', '52'),
 ('36', '51', '53'),
 ('37', '51', '54'),
 ('38', '51', '55'),
 ('39', '51', '56'),
 ('40', '51', '57'),
 ('41', '51', '58'),
 ('42', '51', '59');
