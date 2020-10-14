/*
Navicat MySQL Data Transfer

Source Server         : jin
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : yoho

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-10-14 08:48:30
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
  `sub_title` varchar(400) NOT NULL,
  `price` float(11,2) NOT NULL,
  `piclisturl` varchar(800) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80', 'a02 潮流休闲风字母印花扎染短袖T恤', 'a02', '178.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('2', 'https://img13.static.yhbimg.com/goodsimg/2020/06/18/17/02417bde0dc2362d282cda79483e9d2f1e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 恶搞图案刺绣短袖T恤', 'Eight Guys ', '89.00', 'https://img12.static.yhbimg.com/goodsimg/2020/06/18/17/02417bde0dc2362d282cda79483e9d2f1e.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/06/18/17/0208b31506c6fc2ef9042b88bea00410ec.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('3', 'https://img10.static.yhbimg.com/goodsimg/2020/05/29/14/01d3ca83900b0b78fa0770c93fe0dc2c8d.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性图案印花短袖T恤', 'Eight Guys ', '99.00', 'https://img11.static.yhbimg.com/goodsimg/2020/05/29/14/01d3ca83900b0b78fa0770c93fe0dc2c8d.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/05/29/14/0238485c73568253f71b3b86760e7de0fd.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('4', 'https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/019676d1d605691246d2e65bfdee75f598.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 字母刺绣休闲短裤', 'Eight Guys ', '79.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/019676d1d605691246d2e65bfdee75f598.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/01a52bebc4ea05c3177f76765ca6f27694.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/0231a546f39b210f3224b8189e1fa9d73d.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('5', 'https://img11.static.yhbimg.com/goodsimg/2020/06/30/09/010bf12bd6fea8cbd9e040c755ca5efbe3.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 图案印花休闲短裤', 'Eight Guys ', '109.00', 'https://img11.static.yhbimg.com/goodsimg/2020/06/30/09/010bf12bd6fea8cbd9e040c755ca5efbe3.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img13.static.yhbimg.com/goodsimg/2020/06/30/09/028f315c4690cbe3a4b73793e414d1c241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('6', 'https://img10.static.yhbimg.com/goodsimg/2020/06/28/10/01452bd26877d81858593b5876ecd9d146.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 针织牛仔短裤', 'Eight Guys ', '219.00', 'https://img11.static.yhbimg.com/goodsimg/2020/06/28/10/01452bd26877d81858593b5876ecd9d146.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img11.static.yhbimg.com/goodsimg/2020/06/28/10/01baf2198ae7d07068ddd146e6e66a618c.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img11.static.yhbimg.com/goodsimg/2020/06/28/10/01ffaadfaf6497d622513494ae576ad678.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('7', 'https://img10.static.yhbimg.com/goodsimg/2020/06/19/11/01e4a24805201dc5ee3a3ad84be3ee51ba.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 迷彩多袋休闲短裤', 'Eight Guys ', '119.00', 'https://img11.static.yhbimg.com/goodsimg/2020/06/19/11/01e4a24805201dc5ee3a3ad84be3ee51ba.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/06/19/11/018ab932b3001384e37f918e9ac61f4407.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/06/19/11/0134d073951d07670bc41846e08140c3f8.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('8', 'https://img12.static.yhbimg.com/goodsimg/2020/06/19/10/027f6735fd58fdb6fdbd45345b04684a20.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 灯芯绒休闲短裤', 'Eight Guys ', '79.00', 'https://img12.static.yhbimg.com/goodsimg/2020/06/19/10/027f6735fd58fdb6fdbd45345b04684a20.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80,https://img13.static.yhbimg.com/goodsimg/2020/06/19/10/02d39f97df766de7ccedd3e954bdbfe315.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/06/19/10/02925c4af7fc053c4b4c49c253dc2d2ad7.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('9', 'https://img13.static.yhbimg.com/goodsimg/2020/06/18/17/02dc713f310c3a70880700fa605233705d.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 满印图案休闲短裤', 'Eight Guys ', '119.00', 'https://img12.static.yhbimg.com/goodsimg/2020/06/18/17/02dc713f310c3a70880700fa605233705d.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img13.static.yhbimg.com/goodsimg/2020/06/18/17/0216583a2713696dbeeae1e6300037fa9d.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('10', 'https://img11.static.yhbimg.com/goodsimg/2020/06/15/16/0157069e434be6c5ec0f65be2d2f196809.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 多袋牛仔短裤', 'Eight Guys ', '169.00', 'https://img11.static.yhbimg.com/goodsimg/2020/06/15/16/0157069e434be6c5ec0f65be2d2f196809.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/06/15/16/0213950afa8408ca00494473a52a6aeb2f.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/06/15/16/01030bbedf2df40a1a0800813a060aa6b4.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img11.static.yhbimg.com/goodsimg/2020/06/15/16/011cf6c5f5ba69617e1b1cf0c9420015c9.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('11', 'https://img13.static.yhbimg.com/goodsimg/2020/06/16/11/02c81e44bd6b434bfd0a1e307cc51f2aaf.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 恶搞图案刺绣短袖T恤', 'Eight Guys ', '169.00', 'https://img13.static.yhbimg.com/goodsimg/2020/06/16/11/02c81e44bd6b434bfd0a1e307cc51f2aaf.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80,https://img13.static.yhbimg.com/goodsimg/2020/06/16/11/02290e2710bb3222f93d9b5f273506d7c7.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img13.static.yhbimg.com/goodsimg/2020/06/16/11/028d5970b06b3ad59b2d510fb08d061732.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('12', 'https://img12.static.yhbimg.com/goodsimg/2018/07/02/18/0288050cec60dfb4dfa5b217c69d0553cb.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花图案短袖T恤', 'Eight Guys ', '59.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('13', 'https://img11.static.yhbimg.com/goodsimg/2018/07/02/17/01d9957865da0e6aff6f89b348a632885e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 地图印花短袖T恤', 'Eight Guys ', '59.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('14', 'https://img13.static.yhbimg.com/goodsimg/2018/06/26/11/0291275cd134d134fdf0b4ab773e0487ae.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 水洗磨白牛仔短裤', 'Eight Guys ', '119.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('15', 'https://img10.static.yhbimg.com/goodsimg/2018/06/25/17/012c6d9842fb0c46881e3c35ad03834530.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花图案短袖T恤', 'Eight Guys ', '59.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('16', 'https://img11.static.yhbimg.com/goodsimg/2018/06/19/17/01f49de46b2842b835ee5455e741484793.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 鱼印花短袖T恤', 'Eight Guys ', '69.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('17', 'https://img11.static.yhbimg.com/goodsimg/2019/02/15/17/013ad886e2b8fa7e85e664fc8a6a2bcc74.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 简约拼接休闲九分裤', 'Eight Guys ', '169.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('18', 'https://img10.static.yhbimg.com/goodsimg/2019/05/09/16/01cf71e957ad442b17176247701295077e.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys LOGO字母休闲九分裤', 'Eight Guys ', '139.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('19', 'https://img10.static.yhbimg.com/goodsimg/2019/09/29/16/012a273cbef9623c11485ea979c496af05.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 阔腿休闲九分裤', 'Eight Guys ', '159.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('20', 'https://img11.static.yhbimg.com/goodsimg/2019/09/29/16/012a73af2b233d21661faec35a3a6c23d3.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 口袋拼接休闲裤', 'Eight Guys ', '169.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('21', 'https://img10.static.yhbimg.com/goodsimg/2019/02/15/17/015fa38887e3b202a8a1c31dfa7c7e9802.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲牛仔长袖衬衫', 'Eight Guys ', '179.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('22', 'https://img13.static.yhbimg.com/goodsimg/2018/11/27/11/024cefe119587a7d1a4b7d6b1539b36e69.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲破洞牛仔裤', 'Eight Guys ', '209.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('23', 'https://img13.static.yhbimg.com/goodsimg/2019/09/29/16/0259b0136ba51d0b73e4580f72da7d1a20.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 格纹拼接长袖衬衫', 'Eight Guys ', '139.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('24', 'https://img13.static.yhbimg.com/goodsimg/2019/02/15/17/02cf73ea0a6b2c2617672ad26e4723ccb6.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 迷彩图案休闲裤', 'Eight Guys ', '159.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('25', 'https://img12.static.yhbimg.com/goodsimg/2019/09/29/16/025836efd6ffbdac7ba9a6bec2060799ac.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 简约连帽卫衣', 'Eight Guys ', '159.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('26', 'https://img10.static.yhbimg.com/goodsimg/2018/11/27/11/013ab479ad9c56c229b4b12f7e960c2e97.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 休闲水洗牛仔夹克', 'Eight Guys ', '339.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('27', 'https://img10.static.yhbimg.com/goodsimg/2019/09/29/16/011a93d752193ecf29d57ec0379ffc7fbf.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 毛织拼接连帽棉衣', 'Eight Guys ', '189.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('28', 'https://img12.static.yhbimg.com/goodsimg/2019/03/25/11/02d33e5d99d6b964769c4ec872a766fcd8.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'Eight Guys 个性印花V领卫衣', 'Eight Guys ', '139.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('29', 'https://img12.static.yhbimg.com/goodsimg/2020/09/08/13/02feba97e85204f43764a83b9c678363dd.jpg?imageMogr2/thumbnail/280x382/background/d2hpdGU=/position/center/quality/80', 'THETHING 立领拼贴羊羔毛夹克', 'THETHING', '509.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');
INSERT INTO `goodlist` VALUES ('32', 'https://img12.static.yhbimg.com/goodsimg/2020/06/18/17/0280b7477d623dc8f333586191fff50056.jpg?imageMogr2/thumbnail/420x560/background/d2hpdGU=/position/center/quality/80', 'SMG LOGO短袖T恤', 'SMG', '399.00', 'https://img11.static.yhbimg.com/goodsimg/2020/07/21/14/016648c88341692cde5a970529fab338bf.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img10.static.yhbimg.com/goodsimg/2020/07/21/14/010a6e9f7852451e0b05d61b06a69fab84.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80,https://img12.static.yhbimg.com/goodsimg/2020/07/21/14/025006e69616a75daaa5d3166300c18241.jpg?imageMogr2/thumbnail/75x100/background/d2hpdGU=/position/center/quality/80');

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
-- Table structure for `indexlist_fo`
-- ----------------------------
DROP TABLE IF EXISTS `indexlist_fo`;
CREATE TABLE `indexlist_fo` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist_fo
-- ----------------------------
INSERT INTO `indexlist_fo` VALUES ('1', 'https://img11.static.yhbimg.com/yhb-img01/2020/09/17/15/012f629609ed95ac3cc4ba4afdeaf7be95.jpg?imageView2/2/w/222/h/298');
INSERT INTO `indexlist_fo` VALUES ('2', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/01a056dcc75183db758e26bce139025c1f.jpg?imageView2/2/w/222/h/298');
INSERT INTO `indexlist_fo` VALUES ('3', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/01c4b4108b6c090f92f352c32ed8494cf1.jpg?imageView2/2/w/222/h/298');
INSERT INTO `indexlist_fo` VALUES ('4', 'https://img11.static.yhbimg.com/yhb-img01/2020/09/17/15/01e06d70fa91687464472c6ba54e2fc735.jpg?imageView2/2/w/222/h/298');
INSERT INTO `indexlist_fo` VALUES ('5', 'https://img11.static.yhbimg.com/yhb-img01/2020/09/17/15/0135217f404c9c5d8c0ea0f91267f72183.jpg?imageView2/2/w/222/h/298');

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
-- Table structure for `indexlist_t`
-- ----------------------------
DROP TABLE IF EXISTS `indexlist_t`;
CREATE TABLE `indexlist_t` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist_t
-- ----------------------------
INSERT INTO `indexlist_t` VALUES ('1', 'https://img11.static.yhbimg.com/yhb-img01/2019/03/25/11/017be7cc88b521b7ebbcd6a71f4349eb7b.jpg?imageView2/2/w/185/h/152');
INSERT INTO `indexlist_t` VALUES ('2', 'https://img11.static.yhbimg.com/yhb-img01/2020/08/13/15/011817efc3b7df3af034bdd3e341cc0411.jpg?imageView2/2/w/185/h/152');
INSERT INTO `indexlist_t` VALUES ('3', 'https://img11.static.yhbimg.com/yhb-img01/2020/09/17/14/01782bdb5d805a74477ae2327e9b8c1b79.jpg?imageView2/2/w/378/h/248');
INSERT INTO `indexlist_t` VALUES ('4', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/01ba856188e5e98c05a2125e507c9f6520.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_t` VALUES ('5', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/01a42759cf1767e046e1f482a63c02b688.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_t` VALUES ('6', 'https://img10.static.yhbimg.com/yhb-img01/2020/09/17/15/0198af91c7b065b3224865e96c2407749a.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_t` VALUES ('7', 'https://img11.static.yhbimg.com/yhb-img01/2020/03/03/13/01e4df7a7de86c3448d1c23cc34ecc3d7c.jpg?imageView2/2/w/378/h/248');
INSERT INTO `indexlist_t` VALUES ('8', 'https://img10.static.yhbimg.com/yhb-img01/2020/04/29/11/01d04299b229b61d08a891df1de766495f.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_t` VALUES ('9', 'https://img11.static.yhbimg.com/yhb-img01/2020/07/23/10/0163c96fae4ba21802764c24da9d4a51ef.jpg?imageView2/2/w/185/h/248');
INSERT INTO `indexlist_t` VALUES ('10', 'https://img10.static.yhbimg.com/yhb-img01/2020/07/23/10/017e7ed16044306f9e4df1616bc7205005.jpg?imageView2/2/w/185/h/248');

-- ----------------------------
-- Table structure for `registry`
-- ----------------------------
DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` varchar(255) NOT NULL,
  `phone` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry
-- ----------------------------
INSERT INTO `registry` VALUES ('20', '123123', 'b14fde150b6c47f7ed186cd001883cf8ff6ba522', 'jin8645@foxmail.com', '2020-10-13 21:42:01', '13282831335');
INSERT INTO `registry` VALUES ('27', '111111', 'e8f0e29b3877500a208fdcc5f4da39104e26b18b', 'jin8645@foxmail.com', '2020-10-13 22:00:43', '13738403911');
