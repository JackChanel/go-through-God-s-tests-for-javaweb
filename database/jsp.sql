/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : jsp

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/12/2020 15:45:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu`  (
  `Id` int(11) NOT NULL COMMENT '编号',
  `Lname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目名称',
  `Ldescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目描述',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES (1, '公司介绍', '公司介绍公司介绍');
INSERT INTO `lanmu` VALUES (2, '公司新闻', '公司新闻公司新闻');
INSERT INTO `lanmu` VALUES (3, '产品介绍', '产品介绍产品介绍');
INSERT INTO `lanmu` VALUES (4, '技术服务', '技术服务技术服务');
INSERT INTO `lanmu` VALUES (5, '商业伙伴', '商业伙伴商业伙伴');
INSERT INTO `lanmu` VALUES (6, '交流招聘', '交流招聘交流招聘');
INSERT INTO `lanmu` VALUES (7, '合作频道', '合作频道合作频道');
INSERT INTO `lanmu` VALUES (8, '联系我们', '联系我们联系我们');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ntitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '标题',
  `ncontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `father` int(11) NULL DEFAULT NULL COMMENT '所属栏目',
  `nurl` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片路径',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '上海医疗企业改革', '上海医疗企业改革内容上海医疗企业改革内容', 2, NULL);
INSERT INTO `news` VALUES (2, '国家出台医疗器械使用规范', '国家出台医疗器械使用规范内容国家出台医疗器械使用规范内容', 2, NULL);
INSERT INTO `news` VALUES (3, '外贸企业越来越多进入国内市场', '外贸企业越来越多进入国内市场内容外贸企业越来越多进入国内市场内容', 2, NULL);
INSERT INTO `news` VALUES (4, '碳水化合物饮食对身体的危害', '碳水化合物饮食对身体的危害内容碳水化合物饮食对身体的危害内容', 2, NULL);
INSERT INTO `news` VALUES (5, '世界卫生组织新标准', '世界卫生组织新标准内容世界卫生组织新标准内容', 2, NULL);
INSERT INTO `news` VALUES (6, '如何科学饮食', '如何科学饮食内容如何科学饮食内容', 4, NULL);
INSERT INTO `news` VALUES (7, '学生与医疗体制', '学生与医疗体制内容学生与医疗体制内容', 4, NULL);
INSERT INTO `news` VALUES (8, '医疗就业前景分析', '医疗就业前景分析内容医疗就业前景分析内容', 4, NULL);
INSERT INTO `news` VALUES (9, '注射体液对身体的作用', '注射体液对身体的作用内容注射体液对身体的作用内容', 4, NULL);
INSERT INTO `news` VALUES (10, '产品1', '产品1内容产品1内容', 3, 'product/index_01.png');
INSERT INTO `news` VALUES (11, '产品2', '产品2内容产品2内容', 3, 'product/index_01.png');
INSERT INTO `news` VALUES (12, '产品3', '产品3内容产品3内容', 3, 'product/index_01.png');
INSERT INTO `news` VALUES (13, '产品4', '产品4内容产品4内容', 3, 'product/index_01.png');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `Id` int(11) NOT NULL COMMENT '编号',
  `username` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户名',
  `pwd` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '密码',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Zhangsan', '123456');
INSERT INTO `users` VALUES (2, 'Lisi', '123456');
INSERT INTO `users` VALUES (3, 'Wangwu', '123456');

SET FOREIGN_KEY_CHECKS = 1;
