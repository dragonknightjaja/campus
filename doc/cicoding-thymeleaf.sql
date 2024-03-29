CREATE database offcial_mg DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use offcial_mg;
/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cicoding-thymeleaf

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-19 09:39:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '1', '未分配');
INSERT INTO `dept` VALUES ('2', '2', '总公司');
INSERT INTO `dept` VALUES ('3', '3', '开发部');
INSERT INTO `dept` VALUES ('4', '4', '运营部');
INSERT INTO `dept` VALUES ('5', '5', '人事部');

-- ----------------------------
-- Table structure for leaves
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `patientname` varchar(255) DEFAULT NULL,
  `isfinish` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaves
-- ----------------------------
INSERT INTO `leaves` VALUES ('4', '事假', '2018-02-15 00:00:00', '2018-02-15 00:00:00', '事假', '2', 'ttt', '2', '2018-02-15 11:58:08');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('63', '登陆', '2', '2017-11-28 18:33:08', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('64', '登陆', '4', '2018-02-15 11:53:46', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('65', '退出', '4', '2018-02-15 11:54:31', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('66', '登陆失败', null, '2018-02-15 11:54:37', '成功', '用户名：ttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('67', '登陆失败', null, '2018-02-15 11:55:38', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('68', '登陆', '4', '2018-02-15 11:55:47', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('69', '退出', '4', '2018-02-15 11:57:24', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('70', '登陆', '4', '2018-02-15 11:57:28', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('71', '退出', '4', '2018-02-15 11:57:47', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('72', '登陆', '2', '2018-02-15 11:57:52', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('73', '登陆', '4', '2018-02-16 10:43:14', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('74', '登陆', '4', '2018-02-16 11:18:46', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('75', '退出', '4', '2018-02-16 11:22:21', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('76', '登陆失败', null, '2018-05-18 22:43:14', '成功', '用户名：system,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('77', '登陆', '4', '2018-05-18 22:43:24', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('78', '登陆', '4', '2018-05-18 22:44:41', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('79', '登陆失败', null, '2018-05-18 22:51:20', '成功', '用户名：system,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('80', '登陆', '4', '2018-05-18 22:51:29', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('81', '登陆', '4', '2018-05-19 08:27:07', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('82', '登陆', '4', '2018-05-19 08:30:02', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('83', '登陆', '4', '2018-05-19 08:42:13', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('84', '退出', '4', '2018-05-19 08:44:16', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('85', '登陆失败', null, '2018-05-19 08:44:21', '成功', '用户名：tttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('86', '登陆失败', null, '2018-05-19 08:44:39', '成功', '用户名：ttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('87', '登陆', '4', '2018-05-19 08:44:43', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('88', '退出', '4', '2018-05-19 08:45:29', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('89', '登陆', '2', '2018-05-19 08:45:32', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('90', '退出', '2', '2018-05-19 08:45:35', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('91', '登陆', '4', '2018-05-19 08:45:36', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('92', '登陆', '4', '2018-05-19 08:49:26', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('93', '登陆', '4', '2018-05-19 08:52:01', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('94', '退出', '4', '2018-05-19 08:53:37', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('95', '登陆失败', null, '2018-05-19 08:53:40', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('96', '登陆失败', null, '2018-05-19 08:53:45', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('97', '登陆失败', null, '2018-05-19 08:53:49', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('98', '登陆失败', null, '2018-05-19 08:53:52', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('99', '登陆失败', null, '2018-05-19 08:53:55', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('100', '登陆失败', null, '2018-05-19 08:54:02', '成功', '用户名：admin,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('101', '登陆', '4', '2018-05-19 08:54:37', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('102', '登陆', '4', '2018-05-19 09:10:34', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('103', '登陆', '4', '2018-05-19 09:11:41', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('104', '登陆', '4', '2018-05-19 09:31:37', '成功', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memo
-- ----------------------------
INSERT INTO `memo` VALUES ('15', '明天要做的事', '1.早上骑行\n2.中午需要去公司拿材料', '2017/11/14 下午5:10:25', '2');
INSERT INTO `memo` VALUES ('16', '测试', '测试', '2018/2/15 上午11:58:53', '2');
INSERT INTO `memo` VALUES ('17', '测试', '测试', '2018/5/19 上午8:52:22', '4');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `parentid` int(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, null, '用户管理', 'fa-columns', '/userpage', null, '1', null);
INSERT INTO `menu` VALUES ('2', null, null, '部门管理', 'fa-clone', '/deptpage', null, '1', null);
INSERT INTO `menu` VALUES ('3', '', null, '角色管理', 'fa-tags', '/rolepage', null, '1', '');
INSERT INTO `menu` VALUES ('4', '', null, '我的便签', 'fa-sticky-note', '/memopage', null, '1', '');
INSERT INTO `menu` VALUES ('5', null, null, '发送通知', 'fa-share', '/noticepage', null, '1', null);
INSERT INTO `menu` VALUES ('6', null, null, '登陆日志', 'fa-tags', '/loginlogpage', null, '2', null);
INSERT INTO `menu` VALUES ('8', null, null, '操作日志', 'fa-tags', '/operationlogpage', null, '2', null);
INSERT INTO `menu` VALUES ('9', null, null, '请假', 'fa-calendar-plus-o', '/leavepage', null, '1', '');
INSERT INTO `menu` VALUES ('10', null, null, '请假审核', 'fa-calendar-plus-o', '/operationleavepage', null, '1', null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `senduserid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `recivedeptid` int(11) DEFAULT NULL,
  `reciveuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', null, '欢迎使用cicoding！                    (●\'◡\'●) ', null, '2', '系统通知', '2017-09-28 11:52:23', null, null);

-- ----------------------------
-- Table structure for operation_leave_user
-- ----------------------------
DROP TABLE IF EXISTS `operation_leave_user`;
CREATE TABLE `operation_leave_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaveid` int(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `patientname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_leave_user
-- ----------------------------

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(255) DEFAULT NULL,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('47', '业务日志', '清除日志', '4', 'com.cicoding.controller.LogController', 'clearLoginLog', '2018-05-19 09:38:38', '成功', 'admin');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('2', 'ROLE_USER', '用户');
INSERT INTO `role` VALUES ('18', 'ROLE_BUZHANG', '部长');

-- ----------------------------
-- Table structure for role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_relation`;
CREATE TABLE `role_menu_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu_relation
-- ----------------------------
INSERT INTO `role_menu_relation` VALUES ('85', '2', '4');
INSERT INTO `role_menu_relation` VALUES ('86', '2', '9');
INSERT INTO `role_menu_relation` VALUES ('87', '18', '1');
INSERT INTO `role_menu_relation` VALUES ('88', '18', '2');
INSERT INTO `role_menu_relation` VALUES ('89', '18', '3');
INSERT INTO `role_menu_relation` VALUES ('108', '1', '1');
INSERT INTO `role_menu_relation` VALUES ('109', '1', '2');
INSERT INTO `role_menu_relation` VALUES ('110', '1', '3');
INSERT INTO `role_menu_relation` VALUES ('111', '1', '4');
INSERT INTO `role_menu_relation` VALUES ('112', '1', '5');
INSERT INTO `role_menu_relation` VALUES ('113', '1', '6');
INSERT INTO `role_menu_relation` VALUES ('114', '1', '8');
INSERT INTO `role_menu_relation` VALUES ('115', '1', '9');
INSERT INTO `role_menu_relation` VALUES ('116', '1', '10');

-- ----------------------------
-- Table structure for thing
-- ----------------------------
DROP TABLE IF EXISTS `thing`;
CREATE TABLE `thing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thing
-- ----------------------------
INSERT INTO `thing` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `thing` VALUES ('2', '2', '2', '2', '2', '2', '2');
INSERT INTO `thing` VALUES ('3', '4', '3', '3', '3', '3', '3');
INSERT INTO `thing` VALUES ('4', '4', '4', '4', '4', '4', '4');
INSERT INTO `thing` VALUES ('5', '5', '5', '5', '5', '5', '5');
INSERT INTO `thing` VALUES ('6', '6', '6', '6', '6', '6', '6');
INSERT INTO `thing` VALUES ('7', '7', '7', '7', '7', '7', '7');
INSERT INTO `thing` VALUES ('8', '8', '8', '8', '8', '8', '8');
INSERT INTO `thing` VALUES ('9', '9', '9', '9', '9', '9', '9');
INSERT INTO `thing` VALUES ('10', '10', '10', '10', '10', '10', '10');
INSERT INTO `thing` VALUES ('11', 'aaa', 'fds', 'fds', 'fd', 'fds', 'fdas');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `deptid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'ttt', '96e79218965eb72c92a549dd5a330112', '2', '1', '1', '1');
INSERT INTO `user` VALUES ('4', 'admin', '96e79218965eb72c92a549dd5a330112', '4', '0', '2', '1');
