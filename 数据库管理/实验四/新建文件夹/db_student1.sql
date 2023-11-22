/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : db_student1

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 25/07/2023 16:18:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `cno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ccredit` float NULL DEFAULT NULL,
  PRIMARY KEY (`cno`) USING BTREE,
  UNIQUE INDEX `cname`(`cname`) USING BTREE,
  INDEX `cpno`(`cpno`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`cpno`) REFERENCES `course` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('001', 'C语言', NULL, 2.5);
INSERT INTO `course` VALUES ('002', '数据结构', '001', 4);
INSERT INTO `course` VALUES ('003', '数据库原理应用', '002', 3.5);
INSERT INTO `course` VALUES ('004', '计算机网络', NULL, 3);
INSERT INTO `course` VALUES ('005', '网络编程', '004', 3);
INSERT INTO `course` VALUES ('006', '人工智能', NULL, 2.5);
INSERT INTO `course` VALUES ('007', '面向对象程序设计', '002', 3);
INSERT INTO `course` VALUES ('008', '多媒体技术', NULL, 2.5);
INSERT INTO `course` VALUES ('009', 'DB_Design', '003', 2);
INSERT INTO `course` VALUES ('010', 'DB oracle design', '003', 1.5);

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `sno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` float NULL DEFAULT NULL,
  PRIMARY KEY (`sno`, `cno`) USING BTREE,
  INDEX `cno`(`cno`) USING BTREE,
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('04001', '002', 81);
INSERT INTO `sc` VALUES ('04001', '004', 87);
INSERT INTO `sc` VALUES ('04001', '005', 99);
INSERT INTO `sc` VALUES ('04001', '007', 74);
INSERT INTO `sc` VALUES ('04002', '003', 94);
INSERT INTO `sc` VALUES ('04002', '004', 93);
INSERT INTO `sc` VALUES ('04002', '005', 98);
INSERT INTO `sc` VALUES ('04002', '006', 90);
INSERT INTO `sc` VALUES ('04003', '002', 96);
INSERT INTO `sc` VALUES ('04003', '003', 55);
INSERT INTO `sc` VALUES ('04003', '004', 87);
INSERT INTO `sc` VALUES ('04003', '005', 75);
INSERT INTO `sc` VALUES ('04003', '006', 88);
INSERT INTO `sc` VALUES ('04003', '007', 85);
INSERT INTO `sc` VALUES ('04003', '008', 96);
INSERT INTO `sc` VALUES ('04003', '009', 91);
INSERT INTO `sc` VALUES ('04004', '005', 94);
INSERT INTO `sc` VALUES ('04005', '005', 65);
INSERT INTO `sc` VALUES ('04007', '001', 23);
INSERT INTO `sc` VALUES ('04007', '007', 66);
INSERT INTO `sc` VALUES ('04008', '009', 96);
INSERT INTO `sc` VALUES ('04009', '008', 89);
INSERT INTO `sc` VALUES ('04010', '001', 77);
INSERT INTO `sc` VALUES ('04010', '009', 80);
INSERT INTO `sc` VALUES ('04012', '003', 100);
INSERT INTO `sc` VALUES ('04014', '001', 91);
INSERT INTO `sc` VALUES ('04014', '003', 70);
INSERT INTO `sc` VALUES ('04014', '005', 45);
INSERT INTO `sc` VALUES ('04015', '007', 77);
INSERT INTO `sc` VALUES ('04016', '001', NULL);
INSERT INTO `sc` VALUES ('04016', '007', 61);
INSERT INTO `sc` VALUES ('04017', '008', 60);
INSERT INTO `sc` VALUES ('04018', '009', 77);
INSERT INTO `sc` VALUES ('04023', '001', 71);
INSERT INTO `sc` VALUES ('04023', '002', 87);
INSERT INTO `sc` VALUES ('04023', '003', 65);
INSERT INTO `sc` VALUES ('04023', '004', 88);
INSERT INTO `sc` VALUES ('04023', '005', 100);
INSERT INTO `sc` VALUES ('04025', '001', 83);
INSERT INTO `sc` VALUES ('04025', '007', 89);
INSERT INTO `sc` VALUES ('04026', '008', 81);
INSERT INTO `sc` VALUES ('04027', '001', 69);
INSERT INTO `sc` VALUES ('04027', '002', 77);
INSERT INTO `sc` VALUES ('04027', '003', 98);
INSERT INTO `sc` VALUES ('04027', '004', 97);
INSERT INTO `sc` VALUES ('04027', '005', 91);
INSERT INTO `sc` VALUES ('04027', '006', 93);
INSERT INTO `sc` VALUES ('04027', '007', 95);
INSERT INTO `sc` VALUES ('04027', '008', 96);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sno` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ssex` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sbirth` date NULL DEFAULT NULL,
  `scollege` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smajor` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('04001', '董顺', '男', '1995-09-29', '人文', '英语');
INSERT INTO `student` VALUES ('04002', '覃祥', '男', '1995-08-23', '人文', '英语');
INSERT INTO `student` VALUES ('04003', '陈旭', '男', '1994-12-12', '人文', '英语');
INSERT INTO `student` VALUES ('04004', '王钦', '男', '1995-05-04', '人文', '动画');
INSERT INTO `student` VALUES ('04005', '韩振兴', '男', '1995-04-04', '人文', '动画');
INSERT INTO `student` VALUES ('04006', '田野', '男', '1995-09-01', '人文', '法学');
INSERT INTO `student` VALUES ('04007', '赵永亮', '男', '1994-07-23', '人文', '法学');
INSERT INTO `student` VALUES ('04008', '侯玉珏', '男', '1995-05-15', '管理', '财务管理');
INSERT INTO `student` VALUES ('04009', '宋传奎', '男', '1995-04-16', '管理', '财务管理');
INSERT INTO `student` VALUES ('04010', '白晓鹏', '男', '1994-03-08', '管理', '财务管理');
INSERT INTO `student` VALUES ('04011', '刘阳阳', '男', '1995-02-01', '管理', '财务管理');
INSERT INTO `student` VALUES ('04012', '冯帅', '男', '1994-05-09', '管理', '财务管理');
INSERT INTO `student` VALUES ('04013', '马慧刚', '男', '1992-07-07', '管理', '会计学');
INSERT INTO `student` VALUES ('04014', '李阳', '男', '1991-01-15', '管理', '会计学');
INSERT INTO `student` VALUES ('04015', '刘锦运', '男', '1990-10-14', '管理', '会计学');
INSERT INTO `student` VALUES ('04016', '陈永直', '男', '1991-07-10', '管理', '会计学');
INSERT INTO `student` VALUES ('04017', '茹磊', '男', '1992-01-17', '管理', '会计学');
INSERT INTO `student` VALUES ('04018', '张言宁', '女', '1992-02-12', '管理', '会计学');
INSERT INTO `student` VALUES ('04019', '白晓霞', '女', '1991-10-02', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04020', '夏源苑', '女', '1991-09-08', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04021', '陈琳', '女', '1993-01-04', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04022', '欧阳雪', '女', '1991-09-01', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04023', '段希飞', '女', '1991-03-15', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04024', '欧阳丽', '女', '1990-03-01', '统计与信息', '计算机科学与技术');
INSERT INTO `student` VALUES ('04025', '黄霞', '女', '1990-10-01', '统计与信息', '信息管理与信息系统');
INSERT INTO `student` VALUES ('04026', '李翠', '女', '1989-08-22', '统计与信息', '信息管理与信息系统');
INSERT INTO `student` VALUES ('04027', '姜玉新', '女', '1992-06-05', '统计与信息', '信息管理与信息系统');
INSERT INTO `student` VALUES ('04028', '张明', '男', '1991-07-08', '统计与信息', '信息管理与信息系统');
INSERT INTO `student` VALUES ('04029', '许景', '男', '1997-05-08', '统计与信息', '信息管理与信息系统');
INSERT INTO `student` VALUES ('04030', '李威', '男', '1996-03-14', '统计与信息', '信息管理与信息系统');

SET FOREIGN_KEY_CHECKS = 1;
