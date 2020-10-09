/*
Navicat MySQL Data Transfer

Source Server         : jin
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : yoho

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-10-09 09:28:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goodlist`
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) NOT NULL,
  `title` varchar(400) NOT NULL,
  `price` float(11,2) NOT NULL,
  `sellnumber` varchar(400) NOT NULL,
  `piclisturl` varchar(400) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'https://img13.static.yhbimg.com/goodsimg/2019/05/09/15/02b3ac20ad35536be95373e8fea18b846d.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 地图印花短袖T恤', '69.00', '123', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('2', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 恶搞图案刺绣短袖T恤', '69.00', '112', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('3', 'https://img11.static.yhbimg.com/goodsimg/2018/06/14/16/0100c8ec34cf4c54805d0b3b2464e07e3e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性图案印花短袖T恤', '69.00', '234', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('4', 'https://img12.static.yhbimg.com/goodsimg/2018/06/06/10/02b8bf64b80ebc4a8efac9e7ed21b5ad37.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 字母刺绣休闲短裤', '69.00', '643', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('5', 'https://img10.static.yhbimg.com/goodsimg/2018/06/07/09/013af29aecce8868a15b693d62a16d6539.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 图案印花休闲短裤', '99.00', '1244', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('6', 'https://img11.static.yhbimg.com/goodsimg/2019/04/17/16/01dba19e86131ea3421aa6db8fe80c3eca.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 针织牛仔短裤', '99.00', '522', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('7', 'https://img11.static.yhbimg.com/goodsimg/2018/06/07/09/01640426c15b573edb48a7b1994f0225a0.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 迷彩多袋休闲短裤', '119.00', '842', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('8', 'https://img11.static.yhbimg.com/goodsimg/2018/05/24/17/01403a1ee23e0dc7aae27958b4b4d795f7.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 灯芯绒休闲短裤', '79.00', '541', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('9', 'https://img10.static.yhbimg.com/goodsimg/2019/05/09/16/013a73fdf42923a2d6b5f348d928bb942e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 满印图案休闲短裤', '119.00', '21', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('10', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/16/02c0e3098057cb66dad070e857a0699848.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 多袋牛仔短裤', '169.00', '455', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('11', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02b1b9a63cea60093309bb2b15f25e151a.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 恶搞图案刺绣短袖T恤', '169.00', '554', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('12', 'https://img12.static.yhbimg.com/goodsimg/2018/07/02/18/0288050cec60dfb4dfa5b217c69d0553cb.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花图案短袖T恤', '59.00', '4552', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('13', 'https://img11.static.yhbimg.com/goodsimg/2018/07/02/17/01d9957865da0e6aff6f89b348a632885e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 地图印花短袖T恤', '59.00', '298', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('14', 'https://img13.static.yhbimg.com/goodsimg/2018/06/26/11/0291275cd134d134fdf0b4ab773e0487ae.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 水洗磨白牛仔短裤', '119.00', '311', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('15', 'https://img10.static.yhbimg.com/goodsimg/2018/06/25/17/012c6d9842fb0c46881e3c35ad03834530.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花图案短袖T恤', '59.00', '4551', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('16', 'https://img11.static.yhbimg.com/goodsimg/2018/06/19/17/01f49de46b2842b835ee5455e741484793.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 鱼印花短袖T恤', '69.00', '2321', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('17', 'https://img11.static.yhbimg.com/goodsimg/2019/02/15/17/013ad886e2b8fa7e85e664fc8a6a2bcc74.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 简约拼接休闲九分裤', '169.00', '443', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('18', 'https://img10.static.yhbimg.com/goodsimg/2019/05/09/16/01cf71e957ad442b17176247701295077e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys LOGO字母休闲九分裤', '139.00', '222', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('19', 'https://img10.static.yhbimg.com/goodsimg/2019/09/29/16/012a273cbef9623c11485ea979c496af05.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 阔腿休闲九分裤', '159.00', '654', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('20', 'https://img11.static.yhbimg.com/goodsimg/2019/09/29/16/012a73af2b233d21661faec35a3a6c23d3.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 口袋拼接休闲裤', '169.00', '523', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('21', 'https://img10.static.yhbimg.com/goodsimg/2019/02/15/17/015fa38887e3b202a8a1c31dfa7c7e9802.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲牛仔长袖衬衫', '179.00', '23', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('22', 'https://img13.static.yhbimg.com/goodsimg/2018/11/27/11/024cefe119587a7d1a4b7d6b1539b36e69.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲破洞牛仔裤', '209.00', '555', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('23', 'https://img13.static.yhbimg.com/goodsimg/2019/09/29/16/0259b0136ba51d0b73e4580f72da7d1a20.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 格纹拼接长袖衬衫', '139.00', '642', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('24', 'https://img13.static.yhbimg.com/goodsimg/2019/02/15/17/02cf73ea0a6b2c2617672ad26e4723ccb6.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 迷彩图案休闲裤', '159.00', '663', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('25', 'https://img12.static.yhbimg.com/goodsimg/2019/09/29/16/025836efd6ffbdac7ba9a6bec2060799ac.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 简约连帽卫衣', '159.00', '787', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('26', 'https://img10.static.yhbimg.com/goodsimg/2018/11/27/11/013ab479ad9c56c229b4b12f7e960c2e97.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲水洗牛仔夹克', '339.00', '399', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('27', 'https://img10.static.yhbimg.com/goodsimg/2019/09/29/16/011a93d752193ecf29d57ec0379ffc7fbf.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 毛织拼接连帽棉衣', '189.00', '324', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('28', 'https://img12.static.yhbimg.com/goodsimg/2019/03/25/11/02d33e5d99d6b964769c4ec872a766fcd8.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花V领卫衣', '139.00', '233', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('29', 'https://img11.static.yhbimg.com/goodsimg/2019/03/25/13/0152394fe174ac72c1b7838e5228f681ea.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 图案印花连帽卫衣', '139.00', '512', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');
INSERT INTO `goodlist` VALUES ('30', 'https://img12.static.yhbimg.com/goodsimg/2020/09/08/13/02feba97e85204f43764a83b9c678363dd.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'THETHING 立领拼贴羊羔毛夹克', '509.00', '23', 'https://img12.static.yhbimg.com/goodsimg/2019/05/09/15/02aca87e540608113ff85ecdb60b4795a4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2019/03/22/09/02d3a4bdd8df14f16acc98c5f25b7993fa.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2019/03/22/09/015db89');

-- ----------------------------
-- Table structure for `indexlist_f`
-- ----------------------------
DROP TABLE IF EXISTS `indexlist_f`;
CREATE TABLE `indexlist_f` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist_f
-- ----------------------------
INSERT INTO `indexlist_f` VALUES ('1', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/013ec6ba6c4f1859b7a35b94db32288d89.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('2', 'https://img10.static.yhbimg.com/yhb-img01/2020/08/13/15/0190c3c7d66846f1da88035b7b166b9654.jpg?imageView2/2/w/378/h/248');
INSERT INTO `indexlist_f` VALUES ('3', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/0187e6bff0589d47be8927297861b5b06e.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('4', 'https://img11.static.yhbimg.com/yhb-img01/2020/09/17/15/01ba129add4fce6ed7d55b2ae9de660891.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('5', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/14/17/017ab69a5aa583027bea627cb521665183.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('6', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/01916a3885be241dee330f5e813b15a421.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('7', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/02/18/01d916ad10bea95bbf2130b2c44025bdee.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('8', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/23/10/012eaa1ceb8772d28e214330dfb5e041b0.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('9', 'https://img10.static.yhbimg.com/yhb-img01/2020/06/01/14/01f50572bf142d5f4b29d728f353a95b76.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_f` VALUES ('10', 'https://img10.static.yhbimg.com/yhb-img01/2020/08/13/15/0169431db00fc5d117778b977d136e4dde.jpg?imageView2/2/w/378/h/248');

-- ----------------------------
-- Table structure for `indexlist_s`
-- ----------------------------
DROP TABLE IF EXISTS `indexlist_s`;
CREATE TABLE `indexlist_s` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist_s
-- ----------------------------
INSERT INTO `indexlist_s` VALUES ('1', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/019fd25794d5c567a2f377eee87044b4c4.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('2', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/02/18/0182f674a8dae717f1fde05a1633dc85bf.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('3', 'https://img11.static.yhbimg.com/yhb-img01/2019/11/20/14/01142c35cd3c415c6dd2d443ddb7c36f22.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('4', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/16/10/01619a091bf36f6afeb001ce13cb7713a1.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('5', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/09/18/0157bcfefcaaf62beea22eea266a039821.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('6', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/01b000e04fd482b828fcf84a14459d4791.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('7', 'https://img11.static.yhbimg.com/yhb-img01/2020/03/03/14/013b7247a2afdf08af2f388d861569fba8.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('8', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/01bdd6408033ea7a6c8c2c780d11c454ec.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('9', 'https://img11.static.yhbimg.com/yhb-img01/2019/10/23/13/01479c16a1ce7a8bb77cdf581054ad2855.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('10', 'https://img11.static.yhbimg.com/yhb-img01/2020/03/31/14/01d5e422f98fc155916f04b6e00b721d23.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('11', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/28/11/01fc4a27006b7f64e94620787aa74a5a07.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('12', 'https://img10.static.yhbimg.com/yhb-img01/2020/04/29/11/019a2e8718103c4b1bcf97d4bad5f2a1d1.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('13', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/0197b17f67a2d130a01382fbab1ff95722.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('14', 'https://img10.static.yhbimg.com/yhb-img01/2020/04/29/11/0181fbaf4e74b9a8bb6b20bbd4f9f0c661.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('15', 'https://img10.static.yhbimg.com/yhb-img01/2020/04/29/11/012d2c2119a4a7dac2458a89f219cab498.jpg?imageView2/2/w/185/h/86/q/90');
INSERT INTO `indexlist_s` VALUES ('16', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/01fba16894f880946df17b5ebba242e85c.jpg?imageView2/2/w/185/h/86/q/90');

-- ----------------------------
-- Table structure for `indexlist_stap`
-- ----------------------------
DROP TABLE IF EXISTS `indexlist_stap`;
CREATE TABLE `indexlist_stap` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist_stap
-- ----------------------------
INSERT INTO `indexlist_stap` VALUES ('1', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/07/10/01ae3e7bccba709ad3e06c4cfc7ab7ef5f.jpg?imageView2/2/w/378/h/175');
INSERT INTO `indexlist_stap` VALUES ('2', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/01a9a9b84e46555c5344d1503dad60ab07.jpg?imageView2/2/w/378/h/175');
INSERT INTO `indexlist_stap` VALUES ('3', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/02/18/019716657763c7d01a45f6208ca52329a7.jpg?imageView2/2/w/378/h/175');
INSERT INTO `indexlist_stap` VALUES ('4', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/02/18/01c38b68bd717ee7cd3448ba909c45c48e.jpg?imageView2/2/w/378/h/175');
INSERT INTO `indexlist_stap` VALUES ('5', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/02/18/01848a3e86061e9a1fa45ca1387ff639a9.jpg?imageView2/2/w/378/h/175');
INSERT INTO `indexlist_stap` VALUES ('6', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/23/10/01f79a88e1226204d97d92a81676ca3b6a.jpg?imageView2/2/w/378/h/175');
