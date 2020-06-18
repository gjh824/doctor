/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : doctor

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 18/06/2020 21:11:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addreport
-- ----------------------------
DROP TABLE IF EXISTS `addreport`;
CREATE TABLE `addreport`  (
  `report_id` int(125) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `division` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diagnosis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `examinat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathology` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `immune` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consequence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addreport
-- ----------------------------
INSERT INTO `addreport` VALUES (1, '张某', '男', 23, '外科', '复诊', '不见看不见看不空间', '头、肝肾', '住院', '无', '等待', '无', NULL, '2020-06-16');
INSERT INTO `addreport` VALUES (2, '都私发', '男', 23, '外科', '复诊', '古典风格', '是对', '会放手发动', '和规范化是', '黄飞鸿', '还是发挥', NULL, '2020-06-10');
INSERT INTO `addreport` VALUES (3, '孙某', '男', 23, '外科', '复诊', '合肥更好', '黄飞鸿', '环境会', '发的回复的', '警方根据房', '突然有人同意', NULL, '2020-06-11');
INSERT INTO `addreport` VALUES (4, '孙蒙召', '男', 33, '外科', '复诊', '发给对方', '的风格的风格', '没喝过', '结果发多少个', '广泛的好地方', '警方根据房', NULL, '2020-06-09');
INSERT INTO `addreport` VALUES (5, '孙蒙召', '男', 33, '外科', '复诊', '发给对方', '的风格的风格', '没喝过', '结果发多少个', '广泛的好地方', '警方根据房', NULL, '2020-06-04');
INSERT INTO `addreport` VALUES (6, '孙蒙召', '男', 33, '外科', '复诊', '发给对方', '的风格的风格', '没喝过', '结果发多少个', '广泛的好地方', '警方根据房', NULL, '2020-06-04');
INSERT INTO `addreport` VALUES (7, '孙蒙召', '男', 33, '外科', '复诊', '发给对方', '的风格的风格', '没喝过', '结果发多少个', '广泛的好地方', '警方根据房', NULL, '2020-06-04');
INSERT INTO `addreport` VALUES (8, '孙某', '男', 23, '外科', '复诊', '方式的', '个地方', '阿达啊', '更多覆盖', '话费话费', '二而我二是', NULL, '2020-06-22');
INSERT INTO `addreport` VALUES (9, '多少', '男', 34, '外科', '复诊', '柔肤水方式', ' 反对过分的事', '很过分的话', '风水大师', '规范化', '太感人的歌', NULL, '2020-06-11');
INSERT INTO `addreport` VALUES (10, '多少', '男', 34, '外科', '复诊', '柔肤水方式', ' 反对过分的事', '很过分的话', '风水大师', '规范化', '太感人的歌', NULL, '2020-06-12');
INSERT INTO `addreport` VALUES (11, '很反感', '男', 54, '外科', '复诊', '广东省给', '范德萨是', '啊发生的', ' 否但是但是', '广东省给', '啊发生的', NULL, '2020-06-13');
INSERT INTO `addreport` VALUES (12, '范德萨', '男', 23, '外科', '复诊', '发生地方', '地方是', '咕咚咕咚', '根深蒂固', '阿达', '各个地方', NULL, '2020-06-06');

-- ----------------------------
-- Table structure for cfgl
-- ----------------------------
DROP TABLE IF EXISTS `cfgl`;
CREATE TABLE `cfgl`  (
  `pre_id` int(123) NOT NULL AUTO_INCREMENT,
  `zyh` int(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` int(255) NULL DEFAULT NULL,
  `bch` int(255) NULL DEFAULT NULL,
  `hs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rq` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pre_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfgl
-- ----------------------------
INSERT INTO `cfgl` VALUES (1, 001, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (2, 002, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '但是看了估计肯定是来看； ');
INSERT INTO `cfgl` VALUES (3, 003, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '放松放松---葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (4, 004, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '厉害--葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (5, 005, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '副书记的风景---葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (6, 006, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (7, 007, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (8, 008, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (9, 009, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (10, 010, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');
INSERT INTO `cfgl` VALUES (11, 011, '刘德华', '男', 50, 3028, '华佗', '外科', '2018-12-04', '葡萄糖注射，阿莫西林分散片、注射用利巴韦林，安眠药一瓶，头孢陪酒来点，安乐死，在怼两拼84');

-- ----------------------------
-- Table structure for cygl
-- ----------------------------
DROP TABLE IF EXISTS `cygl`;
CREATE TABLE `cygl`  (
  `out_id` int(12) NOT NULL AUTO_INCREMENT,
  `zyh` int(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` int(255) NULL DEFAULT NULL,
  `bch` int(255) NULL DEFAULT NULL,
  `zzys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rysj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cysj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`out_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cygl
-- ----------------------------
INSERT INTO `cygl` VALUES (1, 001, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (2, 002, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (3, 003, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (4, 004, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (5, 005, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (6, 006, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (7, 007, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (8, 008, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (9, 009, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (10, 010, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');
INSERT INTO `cygl` VALUES (11, 011, '刘德华', '男', 50, 3028, '华佗', '华佗', '2018-12-04', '外科', '已准核', '2019-02-10');

-- ----------------------------
-- Table structure for dzbl
-- ----------------------------
DROP TABLE IF EXISTS `dzbl`;
CREATE TABLE `dzbl`  (
  `xh` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` int(255) NULL DEFAULT NULL,
  `jzks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sheng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zdlx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jzsj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dzbl
-- ----------------------------
INSERT INTO `dzbl` VALUES (001, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (002, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (003, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (004, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (005, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (006, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (007, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (008, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (009, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (010, '刘德华', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2018-12-04');
INSERT INTO `dzbl` VALUES (011, '梁朝伟', '男', 50, '外科', '河南', '郑州', '检查/诊断', '2020-06-15');

-- ----------------------------
-- Table structure for grxx
-- ----------------------------
DROP TABLE IF EXISTS `grxx`;
CREATE TABLE `grxx`  (
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `month` int(255) NOT NULL,
  `tl` int(255) NOT NULL,
  `predictdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hospitalte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hospsitepro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hospsitecity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deppartment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hospsite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `docinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workexp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `relevant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grxx
-- ----------------------------
INSERT INTO `grxx` VALUES ('黄河', '0', '2019', 11, 1233454567, '2345657', '1234', '34', '河南', '郑州', '外科', '去A发生过的哈伦裤', '哇富商大贾', '三顿饭各个环节', NULL);

-- ----------------------------
-- Table structure for jzzx
-- ----------------------------
DROP TABLE IF EXISTS `jzzx`;
CREATE TABLE `jzzx`  (
  `att_id` int(12) NOT NULL AUTO_INCREMENT,
  `xh` int(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` int(255) NULL DEFAULT NULL,
  `rq` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wtms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zyzz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `syyw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jzzx
-- ----------------------------
INSERT INTO `jzzx` VALUES (1, 001, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '的股份调虎离山计');
INSERT INTO `jzzx` VALUES (2, 002, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (3, 003, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '会hiU好');
INSERT INTO `jzzx` VALUES (4, 004, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '开发的结果了附近逛逛');
INSERT INTO `jzzx` VALUES (5, 005, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (6, 006, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '可根据的价格斤斤计较');
INSERT INTO `jzzx` VALUES (7, 007, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (8, 008, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (9, 009, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (10, 010, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');
INSERT INTO `jzzx` VALUES (11, 011, '刘德华', '男', 50, '2018-12-04', '感冒发烧流鼻涕', '头疼，恶心，食欲不振', '红霉素，左氧氟沙星');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `report_id` int(11) NOT NULL,
  `report_xh` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(255) NULL DEFAULT NULL,
  `division` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `times` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `examinat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_xh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (1, 001, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (2, 002, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (3, 003, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (4, 004, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (5, 005, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (6, 006, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (7, 007, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (8, 008, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (9, 009, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (10, 010, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (11, 011, '张某', '男', 23, '外科', '复诊', '2020-06-03', '头、肝肾');
INSERT INTO `report` VALUES (9, 012, '多少', '男', 34, '外科', '复诊', '2020-06-16', ' 反对过分的事');
INSERT INTO `report` VALUES (10, 013, '多少', '男', 34, '外科', '复诊', '2020-06-16', ' 反对过分的事');
INSERT INTO `report` VALUES (11, 014, '很反感', '男', 54, '外科', '复诊', '2020-06-16', '范德萨是');
INSERT INTO `report` VALUES (12, 015, '范德萨', '男', 23, '外科', '复诊', '2020-06-16', '地方是');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ggh', '123');
INSERT INTO `user` VALUES (2, 'ggh2', '123');

-- ----------------------------
-- Table structure for wdbr
-- ----------------------------
DROP TABLE IF EXISTS `wdbr`;
CREATE TABLE `wdbr`  (
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xh` int(3) UNSIGNED ZEROFILL NOT NULL,
  `tel` int(255) NOT NULL AUTO_INCREMENT,
  `imgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wdbr
-- ----------------------------
INSERT INTO `wdbr` VALUES ('孙策', '男', '34', 001, 1, '/images/people.png');
INSERT INTO `wdbr` VALUES ('刘备', '男', '34', 006, 6, '/images/people.png');
INSERT INTO `wdbr` VALUES ('孙尚香', '女', '30', 007, 7, '/images/people.png');
INSERT INTO `wdbr` VALUES ('周瑜', '男', '34', 008, 8, '/images/people.png');
INSERT INTO `wdbr` VALUES ('小乔', '女', '30', 009, 9, '/images/people.png');
INSERT INTO `wdbr` VALUES ('诸葛亮', '男', '34', 010, 10, '/images/people.png');
INSERT INTO `wdbr` VALUES ('黄月英', '女', '30', 011, 11, '/images/people.png');
INSERT INTO `wdbr` VALUES ('赵云', '男', '34', 012, 12, '/images/people.png');
INSERT INTO `wdbr` VALUES ('马云禄', '女', '30', 013, 13, '/images/people.png');
INSERT INTO `wdbr` VALUES ('孙权', '男', '34', 014, 14, '/images/people.png');
INSERT INTO `wdbr` VALUES ('谢夫人', '女', '30', 015, 15, '/images/people.png');
INSERT INTO `wdbr` VALUES ('徐夫人', '女', '30', 016, 16, '/images/people.png');
INSERT INTO `wdbr` VALUES ('步夫人', '女', '30', 019, 19, '/images/people.png');
INSERT INTO `wdbr` VALUES ('潘皇后', '女', '30', 020, 20, '/images/people.png');
INSERT INTO `wdbr` VALUES ('李白', '男', '42', 005, 21, '/images/people.png');
INSERT INTO `wdbr` VALUES ('安琪拉', '女', '19', 004, 22, '/images/people.png');
INSERT INTO `wdbr` VALUES ('李元芳', '男', '33', 021, 23, '/images/people.png');

-- ----------------------------
-- Table structure for zygl
-- ----------------------------
DROP TABLE IF EXISTS `zygl`;
CREATE TABLE `zygl`  (
  `inh_id` int(23) NOT NULL AUTO_INCREMENT,
  `zyh` int(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nl` int(255) NULL DEFAULT NULL,
  `bch` int(255) NULL DEFAULT NULL,
  `zzys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zyzt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rysj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zdqk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cysj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inh_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zygl
-- ----------------------------
INSERT INTO `zygl` VALUES (1, 001, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (2, 002, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (3, 003, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (4, 004, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (5, 005, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (6, 006, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (7, 007, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (8, 008, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (9, 009, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (10, 010, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');
INSERT INTO `zygl` VALUES (11, 011, '小明', '男', 22, 3028, '张医生', '小美', '已住院', '2020-06-09', '心脏搭桥', '2020-06-28');

SET FOREIGN_KEY_CHECKS = 1;
