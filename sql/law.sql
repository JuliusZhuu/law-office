/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.123_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : 192.168.1.123:3306
 Source Schema         : law

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 10/01/2021 12:35:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for LawAssist
-- ----------------------------
DROP TABLE IF EXISTS `LawAssist`;
CREATE TABLE `LawAssist`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他信息',
  `lawCaseId` int(0) NULL DEFAULT NULL COMMENT '案件信息id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lawCaseId`(`lawCaseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '辅助人员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of LawAssist
-- ----------------------------
INSERT INTO `LawAssist` VALUES (2, '一个辅助人员', '3243543543', '其他信息', 16);
INSERT INTO `LawAssist` VALUES (3, '一个辅助人员', '3243543543', '其他信息', 17);
INSERT INTO `LawAssist` VALUES (4, '一个辅助人员', '3243543543', '其他信息', 18);
INSERT INTO `LawAssist` VALUES (5, '一个辅助人员', '3243543543', '其他信息', 19);
INSERT INTO `LawAssist` VALUES (6, '一个辅助人员', '3243543543', '其他信息', 20);
INSERT INTO `LawAssist` VALUES (7, '一个辅助人员', '3243543543', '其他信息', 21);
INSERT INTO `LawAssist` VALUES (8, '一个辅助人员', '3243543543', '其他信息', 22);
INSERT INTO `LawAssist` VALUES (9, '一个辅助人员', '3243543543', '其他信息', 23);
INSERT INTO `LawAssist` VALUES (10, '一个辅助人员', '3243543543', '其他信息', 24);
INSERT INTO `LawAssist` VALUES (11, '一个辅助人员', '3243543543', '其他信息', 25);
INSERT INTO `LawAssist` VALUES (12, '一个辅助人员', '3243543543', '其他信息', 26);
INSERT INTO `LawAssist` VALUES (13, '一个辅助人员', '3243543543', '其他信息', 27);
INSERT INTO `LawAssist` VALUES (14, '一个辅助人员', '3243543543', '其他信息', 28);
INSERT INTO `LawAssist` VALUES (15, '一个辅助人员', '3243543543', '其他信息', 29);
INSERT INTO `LawAssist` VALUES (16, '一个辅助人员', '3243543543', '其他信息', 30);
INSERT INTO `LawAssist` VALUES (17, '一个辅助人员', '3243543543', '其他信息', 31);
INSERT INTO `LawAssist` VALUES (18, '一个辅助人员', '3243543543', '其他信息', 32);
INSERT INTO `LawAssist` VALUES (19, '一个辅助人员', '3243543543', '其他信息', 33);
INSERT INTO `LawAssist` VALUES (20, '一个辅助人员', '3243543543', '其他信息', 34);
INSERT INTO `LawAssist` VALUES (21, '一个辅助人员', '3243543543', '其他信息', 35);
INSERT INTO `LawAssist` VALUES (22, '一个辅助人员', '3243543543', '其他信息', 36);
INSERT INTO `LawAssist` VALUES (23, '一个辅助人员', '3243543543', '其他信息', 37);
INSERT INTO `LawAssist` VALUES (24, '一个辅助人员', '3243543543', '其他信息', 38);
INSERT INTO `LawAssist` VALUES (25, '一个辅助人员', '3243543543', '其他信息', 39);
INSERT INTO `LawAssist` VALUES (26, '一个辅助人员', '3243543543', '其他信息', 40);
INSERT INTO `LawAssist` VALUES (27, '一个辅助人员', '3243543543', '其他信息', 41);
INSERT INTO `LawAssist` VALUES (28, '一个辅助人员', '3243543543', '其他信息', 42);
INSERT INTO `LawAssist` VALUES (29, '一个辅助人员', '3243543543', '其他信息', 43);
INSERT INTO `LawAssist` VALUES (30, '一个辅助人员', '3243543543', '其他信息', 44);
INSERT INTO `LawAssist` VALUES (31, '一个辅助人员', '3243543543', '其他信息', 45);
INSERT INTO `LawAssist` VALUES (32, '一个辅助人员', '3243543543', '其他信息', 46);
INSERT INTO `LawAssist` VALUES (33, '一个辅助人员', '3243543543', '其他信息', 47);
INSERT INTO `LawAssist` VALUES (34, '一个辅助人员', '3243543543', '其他信息', 48);
INSERT INTO `LawAssist` VALUES (35, '一个辅助人员', '3243543543', '其他信息', 49);
INSERT INTO `LawAssist` VALUES (36, '一个辅助人员', '3243543543', '其他信息', 50);
INSERT INTO `LawAssist` VALUES (37, '一个辅助人员', '3243543543', '其他信息', 51);
INSERT INTO `LawAssist` VALUES (38, '一个辅助人员', '3243543543', '其他信息', 52);
INSERT INTO `LawAssist` VALUES (39, '一个辅助人员', '3243543543', '其他信息', 53);
INSERT INTO `LawAssist` VALUES (40, '一个辅助人员', '3243543543', '其他信息', 54);
INSERT INTO `LawAssist` VALUES (41, '一个辅助人员', '3243543543', '其他信息', 55);
INSERT INTO `LawAssist` VALUES (42, '一个辅助人员', '3243543543', '其他信息', 56);
INSERT INTO `LawAssist` VALUES (43, '一个辅助人员', '3243543543', '其他信息', 57);
INSERT INTO `LawAssist` VALUES (44, '一个辅助人员', '3243543543', '其他信息', 58);
INSERT INTO `LawAssist` VALUES (45, '一个辅助人员', '3243543543', '其他信息', 59);
INSERT INTO `LawAssist` VALUES (46, '一个辅助人员', '3243543543', '其他信息', 60);
INSERT INTO `LawAssist` VALUES (47, '一个辅助人员', '3243543543', '其他信息', 61);
INSERT INTO `LawAssist` VALUES (48, '一个辅助人员', '3243543543', '其他信息', 62);
INSERT INTO `LawAssist` VALUES (49, '一个辅助人员', '3243543543', '其他信息', 63);
INSERT INTO `LawAssist` VALUES (50, '一个辅助人员', '3243543543', '其他信息', 64);
INSERT INTO `LawAssist` VALUES (51, '一个辅助人员', '3243543543', '其他信息', 65);
INSERT INTO `LawAssist` VALUES (52, '一个辅助人员', '3243543543', '其他信息', 66);
INSERT INTO `LawAssist` VALUES (53, '一个辅助人员', '3243543543', '其他信息', 67);

-- ----------------------------
-- Table structure for LawHear
-- ----------------------------
DROP TABLE IF EXISTS `LawHear`;
CREATE TABLE `LawHear`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他信息',
  `lawCaseId` int(0) NULL DEFAULT NULL COMMENT '案件信息id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lawCaseId`(`lawCaseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审理人员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of LawHear
-- ----------------------------
INSERT INTO `LawHear` VALUES (1, '一个审理人员', '24243543', '其他信息', 16);
INSERT INTO `LawHear` VALUES (2, '一个审理人员', '24243543', '其他信息', 17);
INSERT INTO `LawHear` VALUES (3, '一个审理人员', '24243543', '其他信息', 18);
INSERT INTO `LawHear` VALUES (4, '一个审理人员', '24243543', '其他信息', 19);
INSERT INTO `LawHear` VALUES (5, '一个审理人员', '24243543', '其他信息', 20);
INSERT INTO `LawHear` VALUES (6, '一个审理人员', '24243543', '其他信息', 21);
INSERT INTO `LawHear` VALUES (7, '一个审理人员', '24243543', '其他信息', 22);
INSERT INTO `LawHear` VALUES (8, '一个审理人员', '24243543', '其他信息', 23);
INSERT INTO `LawHear` VALUES (9, '一个审理人员', '24243543', '其他信息', 24);
INSERT INTO `LawHear` VALUES (10, '一个审理人员', '24243543', '其他信息', 25);
INSERT INTO `LawHear` VALUES (11, '一个审理人员', '24243543', '其他信息', 26);
INSERT INTO `LawHear` VALUES (12, '一个审理人员', '24243543', '其他信息', 27);
INSERT INTO `LawHear` VALUES (13, '一个审理人员', '24243543', '其他信息', 28);
INSERT INTO `LawHear` VALUES (14, '一个审理人员', '24243543', '其他信息', 29);
INSERT INTO `LawHear` VALUES (15, '一个审理人员', '24243543', '其他信息', 30);
INSERT INTO `LawHear` VALUES (16, '一个审理人员', '24243543', '其他信息', 31);
INSERT INTO `LawHear` VALUES (17, '一个审理人员', '24243543', '其他信息', 32);
INSERT INTO `LawHear` VALUES (18, '一个审理人员', '24243543', '其他信息', 33);
INSERT INTO `LawHear` VALUES (19, '一个审理人员', '24243543', '其他信息', 34);
INSERT INTO `LawHear` VALUES (20, '一个审理人员', '24243543', '其他信息', 35);
INSERT INTO `LawHear` VALUES (21, '一个审理人员', '24243543', '其他信息', 36);
INSERT INTO `LawHear` VALUES (22, '一个审理人员', '24243543', '其他信息', 37);
INSERT INTO `LawHear` VALUES (23, '一个审理人员', '24243543', '其他信息', 38);
INSERT INTO `LawHear` VALUES (24, '一个审理人员', '24243543', '其他信息', 39);
INSERT INTO `LawHear` VALUES (25, '一个审理人员', '24243543', '其他信息', 40);
INSERT INTO `LawHear` VALUES (26, '一个审理人员', '24243543', '其他信息', 41);
INSERT INTO `LawHear` VALUES (27, '一个审理人员', '24243543', '其他信息', 42);
INSERT INTO `LawHear` VALUES (28, '一个审理人员', '24243543', '其他信息', 43);
INSERT INTO `LawHear` VALUES (29, '一个审理人员', '24243543', '其他信息', 44);
INSERT INTO `LawHear` VALUES (30, '一个审理人员', '24243543', '其他信息', 45);
INSERT INTO `LawHear` VALUES (31, '一个审理人员', '24243543', '其他信息', 46);
INSERT INTO `LawHear` VALUES (32, '一个审理人员', '24243543', '其他信息', 47);
INSERT INTO `LawHear` VALUES (33, '一个审理人员', '24243543', '其他信息', 48);
INSERT INTO `LawHear` VALUES (34, '一个审理人员', '24243543', '其他信息', 49);
INSERT INTO `LawHear` VALUES (35, '一个审理人员', '24243543', '其他信息', 50);
INSERT INTO `LawHear` VALUES (36, '一个审理人员', '24243543', '其他信息', 51);
INSERT INTO `LawHear` VALUES (37, '一个审理人员', '24243543', '其他信息', 52);
INSERT INTO `LawHear` VALUES (38, '一个审理人员', '24243543', '其他信息', 53);
INSERT INTO `LawHear` VALUES (39, '一个审理人员', '24243543', '其他信息', 54);
INSERT INTO `LawHear` VALUES (40, '一个审理人员', '24243543', '其他信息', 55);
INSERT INTO `LawHear` VALUES (41, '一个审理人员', '24243543', '其他信息', 56);
INSERT INTO `LawHear` VALUES (42, '一个审理人员', '24243543', '其他信息', 57);
INSERT INTO `LawHear` VALUES (43, '一个审理人员', '24243543', '其他信息', 58);
INSERT INTO `LawHear` VALUES (44, '一个审理人员', '24243543', '其他信息', 59);
INSERT INTO `LawHear` VALUES (45, '一个审理人员', '24243543', '其他信息', 60);
INSERT INTO `LawHear` VALUES (46, '一个审理人员', '24243543', '其他信息', 61);
INSERT INTO `LawHear` VALUES (47, '一个审理人员', '24243543', '其他信息', 62);
INSERT INTO `LawHear` VALUES (48, '一个审理人员', '24243543', '其他信息', 63);
INSERT INTO `LawHear` VALUES (49, '一个审理人员', '24243543', '其他信息', 64);
INSERT INTO `LawHear` VALUES (50, '一个审理人员', '24243543', '其他信息', 65);
INSERT INTO `LawHear` VALUES (51, '一个审理人员', '24243543', '其他信息', 66);
INSERT INTO `LawHear` VALUES (52, '一个审理人员', '24243543', '其他信息', 67);

-- ----------------------------
-- Table structure for LawParties
-- ----------------------------
DROP TABLE IF EXISTS `LawParties`;
CREATE TABLE `LawParties`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他信息',
  `lawCaseId` int(0) NULL DEFAULT NULL COMMENT '案件信息id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lawCaseId`(`lawCaseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '当事人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of LawParties
-- ----------------------------
INSERT INTO `LawParties` VALUES (9, '一个当事人', NULL, NULL, 16);
INSERT INTO `LawParties` VALUES (10, '一个当事人', NULL, NULL, 17);
INSERT INTO `LawParties` VALUES (11, '一个当事人', NULL, NULL, 18);
INSERT INTO `LawParties` VALUES (12, '一个当事人', NULL, NULL, 19);
INSERT INTO `LawParties` VALUES (13, '一个当事人', NULL, NULL, 20);
INSERT INTO `LawParties` VALUES (14, '一个当事人', NULL, NULL, 21);
INSERT INTO `LawParties` VALUES (15, '一个当事人', NULL, NULL, 22);
INSERT INTO `LawParties` VALUES (16, '一个当事人', NULL, NULL, 23);
INSERT INTO `LawParties` VALUES (17, '一个当事人', NULL, NULL, 24);
INSERT INTO `LawParties` VALUES (18, '一个当事人', NULL, NULL, 25);
INSERT INTO `LawParties` VALUES (19, '一个当事人', NULL, NULL, 26);
INSERT INTO `LawParties` VALUES (20, '一个当事人', NULL, NULL, 27);
INSERT INTO `LawParties` VALUES (21, '一个当事人', NULL, NULL, 28);
INSERT INTO `LawParties` VALUES (22, '一个当事人', NULL, NULL, 29);
INSERT INTO `LawParties` VALUES (23, '一个当事人', NULL, NULL, 30);
INSERT INTO `LawParties` VALUES (24, '一个当事人', NULL, NULL, 31);
INSERT INTO `LawParties` VALUES (25, '一个当事人', NULL, NULL, 32);
INSERT INTO `LawParties` VALUES (26, '一个当事人', NULL, NULL, 33);
INSERT INTO `LawParties` VALUES (27, '一个当事人', NULL, NULL, 34);
INSERT INTO `LawParties` VALUES (28, '一个当事人', NULL, NULL, 35);
INSERT INTO `LawParties` VALUES (29, '一个当事人', NULL, NULL, 36);
INSERT INTO `LawParties` VALUES (30, '一个当事人', NULL, NULL, 37);
INSERT INTO `LawParties` VALUES (31, '一个当事人', NULL, NULL, 38);
INSERT INTO `LawParties` VALUES (32, '一个当事人', NULL, NULL, 39);
INSERT INTO `LawParties` VALUES (33, '一个当事人', NULL, NULL, 40);
INSERT INTO `LawParties` VALUES (34, '一个当事人', NULL, NULL, 41);
INSERT INTO `LawParties` VALUES (35, '一个当事人', NULL, NULL, 42);
INSERT INTO `LawParties` VALUES (36, '一个当事人', NULL, NULL, 43);
INSERT INTO `LawParties` VALUES (37, '一个当事人', NULL, NULL, 44);
INSERT INTO `LawParties` VALUES (38, '一个当事人', NULL, NULL, 45);
INSERT INTO `LawParties` VALUES (39, '一个当事人', NULL, NULL, 46);
INSERT INTO `LawParties` VALUES (40, '一个当事人', NULL, NULL, 47);
INSERT INTO `LawParties` VALUES (41, '一个当事人', NULL, NULL, 48);
INSERT INTO `LawParties` VALUES (42, '一个当事人', NULL, NULL, 49);
INSERT INTO `LawParties` VALUES (43, '一个当事人', NULL, NULL, 50);
INSERT INTO `LawParties` VALUES (44, '一个当事人', NULL, NULL, 51);
INSERT INTO `LawParties` VALUES (45, '一个当事人', NULL, NULL, 52);
INSERT INTO `LawParties` VALUES (46, '一个当事人', NULL, NULL, 53);
INSERT INTO `LawParties` VALUES (47, '一个当事人', NULL, NULL, 54);
INSERT INTO `LawParties` VALUES (48, '一个当事人', NULL, NULL, 55);
INSERT INTO `LawParties` VALUES (49, '一个当事人', NULL, NULL, 56);
INSERT INTO `LawParties` VALUES (50, '一个当事人', NULL, NULL, 57);
INSERT INTO `LawParties` VALUES (51, '一个当事人', NULL, NULL, 58);
INSERT INTO `LawParties` VALUES (52, '一个当事人', NULL, NULL, 59);
INSERT INTO `LawParties` VALUES (53, '一个当事人', NULL, NULL, 60);
INSERT INTO `LawParties` VALUES (54, '一个当事人', NULL, NULL, 61);
INSERT INTO `LawParties` VALUES (55, '一个当事人', NULL, NULL, 62);
INSERT INTO `LawParties` VALUES (56, '一个当事人', NULL, NULL, 63);
INSERT INTO `LawParties` VALUES (57, '一个当事人', NULL, NULL, 64);
INSERT INTO `LawParties` VALUES (58, '一个当事人', NULL, NULL, 65);
INSERT INTO `LawParties` VALUES (59, '一个当事人', NULL, NULL, 66);
INSERT INTO `LawParties` VALUES (60, '一个当事人', NULL, NULL, 67);

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `clientNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户编号',
  `identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户标识',
  `teamStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作状态',
  `startDate` datetime(0) NULL DEFAULT NULL COMMENT '合同开始时间',
  `endDate` datetime(0) NULL DEFAULT NULL COMMENT '合同结束时间',
  `followup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进人',
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户来源',
  `unitName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位名称',
  `importance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户重要性',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位地址',
  `representative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法定代表人',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `creditCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleteStatus` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除状态,0未删除1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, '123156', '个人', '签约', '2021-01-09 16:15:55', '2021-01-27 16:16:02', '小朱朱', NULL, NULL, '一般', NULL, '', NULL, NULL, NULL, '0');
INSERT INTO `client` VALUES (2, '123156', '个人', '签约', '2021-01-09 16:15:57', '2021-01-24 16:16:05', '小朱朱', NULL, NULL, '重要', NULL, '', NULL, NULL, NULL, '0');
INSERT INTO `client` VALUES (3, '123456', '个人', '签约', '2021-01-09 16:16:00', '2021-04-23 16:16:08', '小朱朱', NULL, NULL, '重要', NULL, '', NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for lawCase
-- ----------------------------
DROP TABLE IF EXISTS `lawCase`;
CREATE TABLE `lawCase`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案件添加人',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案件名称',
  `principal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案件负责人',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案件类型',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案件等级',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '案由',
  `program` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审理程序',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审理机构',
  `organization_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审理机构案号',
  `backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleteStatus` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除状态,0未删除1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '案件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lawCase
-- ----------------------------
INSERT INTO `lawCase` VALUES (17, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (18, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (19, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (20, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (21, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (22, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (23, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (24, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (25, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (26, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (27, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (28, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (29, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (30, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (31, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (32, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (33, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (34, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (35, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (36, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (37, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (38, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (39, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (40, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (41, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (42, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (43, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (44, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (45, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (46, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (47, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (48, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (49, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (50, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (51, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (52, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (53, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (54, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (55, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (56, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (57, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (58, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (59, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (60, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (61, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (62, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (63, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (64, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (65, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (66, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');
INSERT INTO `lawCase` VALUES (67, NULL, '测试标题', 'julius', '民事诉讼', '重要紧急', '案由', '审理程序', '审理机构', '机构案号12435435465', '备注内容', '0');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目类型',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目登记',
  `entrust` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '委托方',
  `principal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `entrustItem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '委托事项以及权限',
  `startDate` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `endDate` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `expenditure` decimal(11, 0) NULL DEFAULT NULL COMMENT '经费',
  `expendExplain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经费说明',
  `backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `createDate` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `deleteStatus` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:12:54', '0');
INSERT INTO `project` VALUES (2, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:12:55', '0');
INSERT INTO `project` VALUES (3, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:13:10', '0');
INSERT INTO `project` VALUES (4, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:13:11', '0');
INSERT INTO `project` VALUES (5, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (6, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (7, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:14:05', '0');
INSERT INTO `project` VALUES (8, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:14:05', '0');
INSERT INTO `project` VALUES (9, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (10, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (11, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (12, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (13, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (14, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (15, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (16, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (17, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-09 08:04:59', '0');
INSERT INTO `project` VALUES (18, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (19, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (20, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (21, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (22, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (23, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (24, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (25, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (26, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (27, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (28, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (29, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (30, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (31, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');
INSERT INTO `project` VALUES (32, '大开发项目', '常年顾问', '重要紧急', '委托方', 'julius', NULL, NULL, NULL, 20000, '经费说明', '备注', '2021-01-08 09:52:01', '0');

-- ----------------------------
-- Table structure for projectConcat
-- ----------------------------
DROP TABLE IF EXISTS `projectConcat`;
CREATE TABLE `projectConcat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `concatName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在机构',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `projectId` int(0) NULL DEFAULT NULL COMMENT '项目id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目信息联系人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projectConcat
-- ----------------------------
INSERT INTO `projectConcat` VALUES (1, '一个联系人', NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO `projectConcat` VALUES (2, '一个联系人', NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO `projectConcat` VALUES (3, '一个联系人1', NULL, NULL, NULL, NULL, NULL, 22);
INSERT INTO `projectConcat` VALUES (4, '一个联系人2', NULL, NULL, NULL, NULL, NULL, 22);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'julius', '123456', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
