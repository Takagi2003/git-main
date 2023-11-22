/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : xscj

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 06/11/2023 16:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 学生表
-- ----------------------------
DROP TABLE IF EXISTS `学生表`;
CREATE TABLE `学生表`  (
  `学号` char(8) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `姓名` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `性别` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `出生日期` date NOT NULL,
  `民族` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `政治面貌` char(8) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `专业名称` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `家庭住址` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `联系方式` char(11) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `总学分` int(0) NOT NULL,
  `照片` blob NULL,
  `备注` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL,
  PRIMARY KEY (`学号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 学生表
-- ----------------------------
INSERT INTO `学生表` VALUES ('20220101', '王琳', '1', '2003-02-10', '汉族', '中共党员', '计算机应用技术', '湖南省长沙市', '13300000001', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220102', '程明明', '0', '2003-02-01', '汉族', '共青团员', '计算机应用技术', '湖南省湘潭市', '13300000002', 24, NULL, '有一门功课不及格，待补考');
INSERT INTO `学生表` VALUES ('20220103', '王艳', '0', '2003-10-06', '汉族', '共青团员', '计算机应用技术', '北京市', '13300000003', 27, NULL, '优秀班干部');
INSERT INTO `学生表` VALUES ('20220104', '韦小亮', '1', '2002-08-26', '汉族', '中共党员', '计算机应用技术', '上海市', '13300000004', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220105', '李刚', '1', '2002-11-20', '汉族', '共青团员', '计算机应用技术', '河南省开封市', '13300000005', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220201', '李明', '1', '2003-05-01', '汉族', '中共预备党员', '软件技术', '湖北省武汉市', '13300000006', 23, NULL, '有一门功课不及格，待补考');
INSERT INTO `学生表` VALUES ('20220202', '罗旺巴珠', '1', '2003-08-05', '藏族', '中共党员', '软件技术', '新疆乌鲁木齐市', '13300000007', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220203', '张天柱', '1', '2002-08-11', '汉族', '共青团员', '软件技术', '湖南省岳阳市', '13300000008', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220204', '张婷', '0', '2002-07-22', '汉族', '共青团员', '软件技术', '浙江省温州市', '13300000009', 27, NULL, '校级三好学生');
INSERT INTO `学生表` VALUES ('20220205', '赵美丽', '0', '2003-03-18', '汉族', '中共预备党员', '软件技术', '河北省石家庄市', '13300000010', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220301', '严薇', '0', '2002-08-11', '汉族', '共青团员', '计算机网络技术', '江苏省南京市', '13300000011', 22, NULL, '有两门功课不及格，待补考');
INSERT INTO `学生表` VALUES ('20220302', '王倩', '1', '2003-06-10', '汉族', '共青团员', '计算机网络技术', '广东省深圳市', '13300000012', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220303', '王晴晴', '1', '2003-01-29', '汉族', '中共预备党员', '计算机网络技术', '湖南省永州市', '13300000013', 27, NULL, '建档立卡');
INSERT INTO `学生表` VALUES ('20220304', '王宏伟', '1', '2002-03-26', '汉族', '中共党员', '计算机网络技术', '湖南省株洲市', '13300000014', 27, NULL, NULL);
INSERT INTO `学生表` VALUES ('20220305', '阿卜杜克尤木麦麦提', '0', '2003-02-10', '维吾尔族', '共青团员', '计算机网络技术', '新疆石河子市', '13300000015', 27, NULL, NULL);

-- ----------------------------
-- Table structure for 成绩表
-- ----------------------------
DROP TABLE IF EXISTS `成绩表`;
CREATE TABLE `成绩表`  (
  `学号` char(8) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `课程号` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `成绩` float(5, 2) NULL DEFAULT NULL,
  `学分` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`学号`, `课程号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 成绩表
-- ----------------------------
INSERT INTO `成绩表` VALUES ('20220101', '101', 80.00, 3);
INSERT INTO `成绩表` VALUES ('20220101', '102', 87.00, 2);
INSERT INTO `成绩表` VALUES ('20220101', '103', 90.00, 2);
INSERT INTO `成绩表` VALUES ('20220101', '201', 65.00, 4);
INSERT INTO `成绩表` VALUES ('20220101', '202', 70.00, 4);
INSERT INTO `成绩表` VALUES ('20220101', '301', 88.00, 4);
INSERT INTO `成绩表` VALUES ('20220101', '306', 76.00, 4);
INSERT INTO `成绩表` VALUES ('20220101', '307', 89.00, 4);
INSERT INTO `成绩表` VALUES ('20220102', '101', 50.00, 3);
INSERT INTO `成绩表` VALUES ('20220102', '102', 80.00, 2);
INSERT INTO `成绩表` VALUES ('20220102', '103', 70.00, 2);
INSERT INTO `成绩表` VALUES ('20220102', '201', 89.00, 4);
INSERT INTO `成绩表` VALUES ('20220102', '202', 90.00, 4);
INSERT INTO `成绩表` VALUES ('20220102', '301', 89.00, 4);
INSERT INTO `成绩表` VALUES ('20220102', '306', 88.00, 4);
INSERT INTO `成绩表` VALUES ('20220102', '307', 76.00, 4);

-- ----------------------------
-- Table structure for 课程表
-- ----------------------------
DROP TABLE IF EXISTS `课程表`;
CREATE TABLE `课程表`  (
  `课程号` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `课程名` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `开课学期` tinyint(1) NOT NULL DEFAULT 1 COMMENT '只能为1-6',
  `学时` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `学分` int(0) NOT NULL,
  PRIMARY KEY (`课程号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 课程表
-- ----------------------------
INSERT INTO `课程表` VALUES ('101', '思想道德修养与法律基础', 1, '48', 3);
INSERT INTO `课程表` VALUES ('102', '大学语文', 2, '32', 2);
INSERT INTO `课程表` VALUES ('103', '实用英语', 2, '32', 2);
INSERT INTO `课程表` VALUES ('201', '高级程序语言基础', 1, '64', 4);
INSERT INTO `课程表` VALUES ('202', '计算机应用技术基础', 1, '64', 4);
INSERT INTO `课程表` VALUES ('301', '数据库管理与应用', 3, '64', 4);
INSERT INTO `课程表` VALUES ('302', 'Web前端开发基础', 3, '64', 4);
INSERT INTO `课程表` VALUES ('303', '计算机网络技术基础', 3, '64', 4);
INSERT INTO `课程表` VALUES ('304', '计算机网络', 4, '64', 4);
INSERT INTO `课程表` VALUES ('305', '软件工程', 4, '64', 4);
INSERT INTO `课程表` VALUES ('306', 'PHP程序设计', 4, '64', 4);
INSERT INTO `课程表` VALUES ('307', 'web应用开发', 5, '64', 4);
INSERT INTO `课程表` VALUES ('308', 'Java项目开发', 5, '64', 4);
INSERT INTO `课程表` VALUES ('309', '网络攻防技术与实践', 5, '64', 4);

SET FOREIGN_KEY_CHECKS = 1;
