/*
Navicat MySQL Data Transfer

Source Server         : yang
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : studentscore

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2018-06-21 22:22:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` longtext,
  `userPw` longtext,
  `role` longtext,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '111111', '1');
INSERT INTO `t_admin` VALUES ('2', '001', '111111', '3');
INSERT INTO `t_admin` VALUES ('3', '003', '111111', '3');
INSERT INTO `t_admin` VALUES ('4', '002', '111111', '3');
INSERT INTO `t_admin` VALUES ('5', '001', '111111', '2');
INSERT INTO `t_admin` VALUES ('6', '002', '111111', '2');
INSERT INTO `t_admin` VALUES ('7', '003', '111111', '2');
INSERT INTO `t_admin` VALUES ('8', '004', '111111', '2');
INSERT INTO `t_admin` VALUES ('9', '004', '111111', '3');
INSERT INTO `t_admin` VALUES ('10', '008', '111111', '2');
INSERT INTO `t_admin` VALUES ('11', '005', '111111', '3');
INSERT INTO `t_admin` VALUES ('12', '070', '070', '3');

-- ----------------------------
-- Table structure for t_classes
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `specialty_id` int(11) DEFAULT NULL,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES ('1', '计算机专业一班13', '4', 'no                                                ');
INSERT INTO `t_classes` VALUES ('2', '计算机专业二班', '2', 'no                                                ');
INSERT INTO `t_classes` VALUES ('3', '计算机专业三班', '2', 'no                                                ');
INSERT INTO `t_classes` VALUES ('4', '计算机专业四班 ', '2', 'no                                                ');
INSERT INTO `t_classes` VALUES ('5', '计算机五班', '2', 'no');
INSERT INTO `t_classes` VALUES ('6', '11', '10', 'yes');
INSERT INTO `t_classes` VALUES ('7', '英语五班', '11', 'no');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `jieshao` longtext,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '大学英语', '大学英语1', 'no                                                ');
INSERT INTO `t_course` VALUES ('2', '线性代数', '线性代数', 'no                                                ');
INSERT INTO `t_course` VALUES ('3', '马克思理论', '马克思理论', 'no                                                ');
INSERT INTO `t_course` VALUES ('4', '计算机基础', '计算机基础', 'no                                                ');
INSERT INTO `t_course` VALUES ('5', '法语', '法语', 'no                                                ');
INSERT INTO `t_course` VALUES ('6', 'java', 'java', 'no                                                ');
INSERT INTO `t_course` VALUES ('7', 'c++', 'c++', 'no                                                ');
INSERT INTO `t_course` VALUES ('8', '大学经济', '请输入内容', 'no');

-- ----------------------------
-- Table structure for t_grades
-- ----------------------------
DROP TABLE IF EXISTS `t_grades`;
CREATE TABLE `t_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `grades` int(11) DEFAULT NULL,
  `xuenian` longtext,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grades
-- ----------------------------
INSERT INTO `t_grades` VALUES ('4', '5', '1', '33', '2017期末', 'no                                                ');
INSERT INTO `t_grades` VALUES ('5', '5', '2', '33', '2017期末', 'no                                                ');
INSERT INTO `t_grades` VALUES ('6', '5', '3', '44', '2017期末', 'no                                                ');
INSERT INTO `t_grades` VALUES ('7', '5', '4', '100', '2017期末', 'no');
INSERT INTO `t_grades` VALUES ('8', '5', '5', '80', '2017期末', 'no');
INSERT INTO `t_grades` VALUES ('9', '5', '6', '100', '2017期末', 'no');
INSERT INTO `t_grades` VALUES ('10', '5', '7', '90', '2017期末', 'no');
INSERT INTO `t_grades` VALUES ('11', '6', '1', '50', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('12', '6', '2', '70', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('13', '6', '3', '90', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('14', '6', '4', '85', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('15', '6', '5', '43', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('16', '6', '6', '54', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('17', '6', '7', '66', '2018期末', 'no');
INSERT INTO `t_grades` VALUES ('18', '5', '1', '87', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('19', '5', '2', '67', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('20', '5', '3', '78', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('21', '5', '4', '99', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('22', '5', '5', '34', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('23', '5', '6', '43', '2016期末', 'no');
INSERT INTO `t_grades` VALUES ('26', '10', '7', '100', '第一学期', 'yes');

-- ----------------------------
-- Table structure for t_specialty
-- ----------------------------
DROP TABLE IF EXISTS `t_specialty`;
CREATE TABLE `t_specialty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `jieshao` longtext,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_specialty
-- ----------------------------
INSERT INTO `t_specialty` VALUES ('2', '计算机', '计算机', 'no                                                ');
INSERT INTO `t_specialty` VALUES ('3', '法学', '法学', 'no                                                ');
INSERT INTO `t_specialty` VALUES ('4', '心理学', '心理学', 'no                                                ');
INSERT INTO `t_specialty` VALUES ('5', '政治学', '政治学', 'no                                                ');
INSERT INTO `t_specialty` VALUES ('8', '计算机', '计算机d', 'yes                                               ');
INSERT INTO `t_specialty` VALUES ('9', '计算机e', '计算机', 'yes                                               ');
INSERT INTO `t_specialty` VALUES ('10', '1', '请输入内容1', 'yes');
INSERT INTO `t_specialty` VALUES ('11', '国际英语', '请输入内容', 'no');
INSERT INTO `t_specialty` VALUES ('12', '1', '请输入内容1', 'yes');

-- ----------------------------
-- Table structure for t_stu
-- ----------------------------
DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` longtext,
  `name1` longtext,
  `sex` longtext,
  `age` longtext,
  `classes_id` longtext,
  `indate` longtext,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stu
-- ----------------------------
INSERT INTO `t_stu` VALUES ('5', '001', '张三', '男', '22', '1', '-02-24', 'no                                                ');
INSERT INTO `t_stu` VALUES ('6', '003', '刘光强', '男', '22', '1', '2018-03-08', 'no                                                ');
INSERT INTO `t_stu` VALUES ('7', '002', '李四川', '男', '33', '2', '2018-03-24', 'no                                                ');
INSERT INTO `t_stu` VALUES ('8', '004', '李四川', '男', '20', '7', '2018-04-27', 'no');
INSERT INTO `t_stu` VALUES ('9', '005', '李五', '男', '19', '3', '2018-04-27', 'no');
INSERT INTO `t_stu` VALUES ('10', '070', '杨文铎', '男', '23', '2', '2018-07-10', 'no');

-- ----------------------------
-- Table structure for t_stu_course
-- ----------------------------
DROP TABLE IF EXISTS `t_stu_course`;
CREATE TABLE `t_stu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stu_course
-- ----------------------------
INSERT INTO `t_stu_course` VALUES ('10', '5', '1');
INSERT INTO `t_stu_course` VALUES ('11', '5', '2');
INSERT INTO `t_stu_course` VALUES ('16', '6', '1');
INSERT INTO `t_stu_course` VALUES ('17', '6', '2');
INSERT INTO `t_stu_course` VALUES ('18', '6', '3');
INSERT INTO `t_stu_course` VALUES ('19', '5', '5');
INSERT INTO `t_stu_course` VALUES ('20', '5', '6');
INSERT INTO `t_stu_course` VALUES ('21', '5', '7');
INSERT INTO `t_stu_course` VALUES ('23', '6', '5');
INSERT INTO `t_stu_course` VALUES ('24', '6', '7');
INSERT INTO `t_stu_course` VALUES ('25', '8', '1');
INSERT INTO `t_stu_course` VALUES ('26', '8', '2');
INSERT INTO `t_stu_course` VALUES ('28', '9', '2');
INSERT INTO `t_stu_course` VALUES ('29', '10', '8');
INSERT INTO `t_stu_course` VALUES ('30', '10', '7');
INSERT INTO `t_stu_course` VALUES ('31', '10', '4');

-- ----------------------------
-- Table structure for t_tea
-- ----------------------------
DROP TABLE IF EXISTS `t_tea`;
CREATE TABLE `t_tea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teanumb` longtext,
  `name` longtext,
  `sex` longtext,
  `age` int(11) DEFAULT NULL,
  `del` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tea
-- ----------------------------
INSERT INTO `t_tea` VALUES ('2', '001', '刘老师', '男', '55', 'no                                                ');
INSERT INTO `t_tea` VALUES ('3', '002', '王老师3', '男', '52', 'no                                                ');
INSERT INTO `t_tea` VALUES ('4', '003', '订单', '男', '11', 'yes');
INSERT INTO `t_tea` VALUES ('5', '004', '李三', '男', '18', 'no');
INSERT INTO `t_tea` VALUES ('6', '008', '李四', '男', '19', 'no');
