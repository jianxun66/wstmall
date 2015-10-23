/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : wstmall

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-09-03 12:48:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wst_goods_cats`
-- ----------------------------
DROP TABLE IF EXISTS `wst_goods_cats`;
CREATE TABLE `wst_goods_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `catName` varchar(20) NOT NULL,
  `priceSection` text,
  `catSort` int(11) NOT NULL DEFAULT '0',
  `catFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`catId`),
  KEY `parentId` (`parentId`,`isShow`,`catFlag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wst_goods_cats
-- ----------------------------
INSERT INTO `wst_goods_cats` VALUES ('47', '0', '1', '时蔬水果、网上菜场', '100', '1', '1'),
 ('48', '0', '1', '厨卫清洁、纸制用品', '111', '2', '1'),
 ('49', '0', '1', '酒水饮料、茶叶冲饮', '11', '3', '1'),
 ('50', '0', '1', '粮油食品、南北干货', 'we', '4', '1'),
 ('51', '0', '1', '美容护理、洗浴用品', 'd', '5', '1'),
 ('52', '0', '1', '休闲食品、进口食品', 'asd', '6', '1'),
 ('53', '0', '1', '营养保健、调理用品', 'sd', '7', '1'),
 ('54', '0', '1', '家居家电、厨具卫浴', 'sd', '8', '1'),
 ('55', '0', '1', '床上用品、玩具乐器', 'sd', '9', '1'),
 ('56', '0', '1', '虚拟服务、优惠票券', 'sd', '10', '1'),
 ('57', '0', '1', '母婴、玩具乐器', 'sd', '11', '-1'),
 ('58', '0', '1', '食品饮料、酒类、生鲜', 'sad', '12', '-1'),
 ('59', '0', '1', '营养保健', 'sd', '13', '-1'),
 ('60', '0', '1', '彩票、旅行、充值、票务', 'sd', '14', '-1'),
 ('61', '47', '1', '进口水果', '100', '0', '1'),
 ('62', '47', '1', '新鲜蔬菜', '100', '0', '1'),
 ('63', '47', '1', '美食净菜', '100', '0', '1'),
 ('64', '47', '1', '肉类蛋禽', '100', '0', '1'),
 ('65', '47', '1', '海鲜水产', '100', '0', '1'),
 ('66', '47', '1', '速冻食品', '100', '0', '1'),
 ('67', '47', '1', '生活', '100', '0', '-1'),
 ('68', '47', '1', '科技', '100', '0', '-1'),
 ('69', '47', '1', '少儿', '100', '0', '-1'),
 ('70', '47', '1', '教育', '100', '0', '-1'),
 ('71', '47', '1', '其它', '100', '0', '1'),
 ('72', '61', '1', '橙柚', '100', '0', '1'),
 ('73', '61', '1', '苹果', '100', '0', '1'),
 ('74', '48', '1', '纸制品', '0-100,100-200', '1', '1'),
 ('75', '74', '1', '软包抽纸', '0-100,100-200', '1', '1'),
 ('76', '61', '1', '凤梨', '100', '1', '1'),
 ('77', '61', '1', '火龙果', '100', '4', '1'),
 ('78', '49', '1', '酒水', null, '2', '1'),
 ('79', '49', '1', '咖啡', null, '3', '1'),
 ('80', '49', '1', '茶叶', null, '1', '1'),
 ('81', '49', '1', '饮料饮品', null, '4', '1'),
 ('82', '49', '1', '成人奶粉', null, '5', '1'),
 ('83', '49', '1', '养生茶', null, '6', '-1'),
 ('84', '56', '1', '通讯充值', null, '1', '1'),
 ('85', '56', '1', '本地生活', null, '2', '1'),
 ('86', '56', '1', '演出票务', null, '3', '1'),
 ('87', '56', '1', '教育培训', null, '4', '1'),
 ('88', '87', '1', '早教幼教', null, '1', '1'),
 ('89', '87', '1', '艺术培训', null, '3', '1'),
 ('90', '87', '1', '语言培训', null, '4', '1'),
 ('91', '87', '1', '网络课程', null, '5', '1'),
 ('92', '87', '1', '学习培训', null, '6', '1'),
 ('93', '86', '1', '电影选座', null, '1', '1'),
 ('94', '86', '1', '演唱会', null, '2', '1'),
 ('95', '86', '1', '音乐会', null, '3', '1'),
 ('96', '86', '1', '体育赛事', null, '4', '1'),
 ('97', '85', '1', '外卖订座', null, '2', '1'),
 ('98', '85', '1', '生活缴费', null, '3', '1'),
 ('99', '85', '1', '汽车养护', null, '5', '1'),
 ('100', '84', '1', '移动话费充值', null, '1', '1'),
 ('101', '84', '1', '电信话费充值', null, '2', '1'),
 ('102', '84', '1', '联通话费充值', null, '3', '1'),
 ('103', '55', '1', '儿童玩具', null, '2', '1'),
 ('104', '103', '1', '毛绒玩具', null, '1', '1'),
 ('105', '103', '1', '电动车', null, '2', '1'),
 ('106', '103', '1', '积木拼插', null, '3', '1'),
 ('107', '103', '1', '滑板车', null, '7', '1'),
 ('108', '55', '1', '婴幼家纺', null, '3', '1'),
 ('109', '55', '1', '床上用品', null, '7', '1'),
 ('110', '108', '1', '婴儿枕', null, '1', '1'),
 ('111', '108', '1', '冬抱被', null, '2', '1'),
 ('112', '108', '1', '床垫', null, '3', '1'),
 ('113', '109', '1', '记忆枕', null, '1', '1'),
 ('114', '109', '1', '电热毯', null, '2', '1'),
 ('115', '109', '1', '床单床笠', null, '3', '1'),
 ('116', '108', '1', '床品套件', null, '4', '1'),
 ('117', '109', '1', '全棉四件套', null, '5', '1'),
 ('118', '54', '1', '厨具锅具', null, '1', '1'),
 ('119', '54', '1', '厨房电器', null, '2', '1'),
 ('120', '54', '1', '电器附件', null, '3', '1'),
 ('121', '54', '1', '日常电器', null, '4', '1'),
 ('122', '118', '1', '压力锅', null, '1', '1'),
 ('123', '118', '1', '平底锅', null, '2', '1'),
 ('124', '118', '1', '铲勺', null, '3', '1'),
 ('125', '118', '1', '烘焙工具', null, '4', '1'),
 ('126', '119', '1', '电饭煲', null, '1', '1'),
 ('127', '119', '1', '电磁炉', null, '2', '1'),
 ('128', '119', '1', '电炖锅', null, '3', '1'),
 ('129', '120', '1', '万能遥控器', null, '1', '1'),
 ('130', '120', '1', '电池', null, '2', '1'),
 ('131', '120', '1', '电视挂架', null, '4', '1'),
 ('132', '120', '1', '插头', null, '3', '1'),
 ('133', '121', '1', '理发器', null, '1', '1'),
 ('134', '121', '1', '电吹风', null, '2', '1'),
 ('135', '121', '1', '脱毛器', null, '3', '1'),
 ('136', '121', '1', '美发器', null, '4', '1'),
 ('137', '53', '1', '日常用药', null, '1', '1'),
 ('138', '53', '1', '营养健康', null, '2', '1'),
 ('139', '53', '1', '调理用药', null, '3', '1'),
 ('140', '53', '1', '传统滋补', null, '4', '1'),
 ('141', '53', '1', '营养成分', null, '5', '1'),
 ('142', '137', '1', '感冒发热', null, '1', '1'),
 ('143', '137', '1', '咽喉肿痛', null, '2', '1'),
 ('144', '137', '1', '止咳化痰', null, '3', '1'),
 ('145', '137', '1', '牙龈肿痛', null, '4', '1'),
 ('146', '137', '1', '跌打损伤', null, '5', '1'),
 ('147', '138', '1', '增强免疫', null, '1', '1'),
 ('148', '138', '1', '改善睡眠', null, '2', '1'),
 ('149', '138', '1', '补肾健体', null, '3', '1'),
 ('150', '138', '1', '延缓衰老', null, '4', '1'),
 ('151', '138', '1', '美白养颜', null, '5', '1'),
 ('152', '139', '1', '补脑安神', null, '1', '1'),
 ('153', '139', '1', '减肥瘦身', null, '2', '1'),
 ('154', '139', '1', '健脾消食', null, '3', '1'),
 ('155', '139', '1', '养肝护胆', null, '4', '1'),
 ('156', '140', '1', '蜂蜜/蜂产品', null, '1', '1'),
 ('157', '140', '1', '阿胶', null, '2', '1'),
 ('158', '140', '1', '燕窝', null, '3', '1'),
 ('159', '141', '1', '鱼油', null, '1', '1'),
 ('160', '141', '1', '螺旋藻', null, '2', '1'),
 ('161', '141', '1', '海狗/海豹油', null, '3', '1'),
 ('162', '141', '1', '蛋白质/氨基酸', null, '4', '1'),
 ('163', '141', '1', '葡萄糖', null, '5', '1'),
 ('164', '51', '1', '洗浴用品', null, '1', '1'),
 ('165', '51', '1', '进口美护', null, '2', '1'),
 ('166', '51', '1', '女性护理', null, '3', '1'),
 ('167', '51', '1', '缤纷彩妆', null, '2', '1'),
 ('168', '164', '1', '沐浴露', null, '1', '1'),
 ('169', '164', '1', '舒肤佳', null, '2', '1'),
 ('170', '164', '1', '浴球/浴擦', null, '3', '1'),
 ('171', '164', '1', '威露士', null, '4', '1'),
 ('172', '165', '1', '进口护肤品', null, '1', '1'),
 ('173', '165', '1', '进口男士护理', null, '2', '1'),
 ('174', '165', '1', '进口沐浴', null, '3', '1'),
 ('175', '165', '1', '进口美妆', null, '4', '1'),
 ('176', '166', '1', '日用卫生巾', null, '1', '1'),
 ('177', '166', '1', '夜用卫生巾', null, '2', '1'),
 ('178', '166', '1', '护垫', null, '3', '1'),
 ('179', '166', '1', '卫生棉条', null, '4', '1'),
 ('180', '167', '1', '润唇膏', null, '1', '1'),
 ('181', '167', '1', '眼线笔', null, '2', '1'),
 ('182', '167', '1', '粉底', null, '3', '1'),
 ('183', '167', '1', '眼影', null, '4', '1'),
 ('184', '164', '1', '沐浴套装', null, '5', '1'),
 ('185', '164', '1', '滴露', null, '6', '1'),
 ('186', '164', '1', '女性洗液', null, '7', '1'),
 ('187', '164', '1', '香皂', null, '8', '1'),
 ('188', '167', '1', '指甲油', null, '8', '1'),
 ('189', '52', '1', '坚果/蜜饯', null, '1', '1'),
 ('190', '52', '1', '休闲零食', null, '0', '1'),
 ('191', '52', '1', '进口速食调料', null, '3', '1'),
 ('192', '52', '1', '进口休闲零食', null, '4', '1'),
 ('193', '52', '1', '进口饼干/糕点', null, '5', '1'),
 ('194', '193', '1', '进口曲奇', null, '1', '1'),
 ('195', '193', '1', '进口蛋卷', null, '2', '1'),
 ('196', '193', '1', '进口西式糕点', null, '3', '1'),
 ('197', '193', '1', '进口夹心饼干', null, '4', '1'),
 ('198', '193', '1', '进口威化', null, '5', '1'),
 ('199', '189', '1', '坚果', null, '1', '1'),
 ('200', '189', '1', '核桃', null, '2', '1'),
 ('201', '189', '1', '夏威夷果', null, '3', '1'),
 ('202', '189', '1', '开心果', null, '4', '1'),
 ('203', '189', '1', '百草味', null, '5', '1'),
 ('204', '190', '1', '薯片', null, '1', '1'),
 ('205', '190', '1', '牛肉干', null, '2', '1'),
 ('206', '190', '1', '鱼豆腐', null, '3', '1'),
 ('207', '190', '1', '鱼干', null, '4', '1'),
 ('208', '190', '1', '凤爪鸡翅', null, '5', '1'),
 ('209', '191', '1', '进口意面酱', null, '1', '1'),
 ('210', '191', '1', '进口调味油', null, '2', '1'),
 ('211', '191', '1', '进口肉罐头', null, '3', '1'),
 ('212', '191', '1', '进口水果罐头', null, '4', '1'),
 ('213', '191', '1', '进口咖喱', null, '5', '1'),
 ('214', '192', '1', '进口薯片', null, '1', '1'),
 ('215', '192', '1', '进口玉米片', null, '2', '1'),
 ('216', '192', '1', '进口果冻', null, '3', '1'),
 ('217', '192', '1', '进口海苔', null, '4', '1'),
 ('218', '192', '1', '进口海鲜零食', null, '5', '1'),
 ('219', '50', '1', '南北干货', null, '1', '1'),
 ('220', '50', '1', '食用油', null, '2', '1'),
 ('221', '50', '1', '大米面粉', null, '3', '1'),
 ('222', '50', '1', '健康杂粮', null, '4', '1'),
 ('223', '50', '1', '方便速食', null, '5', '1'),
 ('224', '219', '1', '枸杞', null, '2', '1'),
 ('225', '219', '1', '桂圆/龙眼干', null, '1', '1'),
 ('226', '219', '1', '莲子/枣子', null, '3', '1'),
 ('227', '219', '1', '腌干水产品', null, '4', '1'),
 ('228', '219', '1', '猴头菇', null, '5', '1'),
 ('229', '221', '1', '大米', null, '1', '1'),
 ('230', '221', '1', '面粉', null, '2', '1'),
 ('231', '221', '1', '豆类', null, '3', '1'),
 ('232', '223', '1', '方便面', null, '1', '1'),
 ('233', '223', '1', '方便粉丝', null, '2', '1'),
 ('234', '223', '1', '蛋制品', null, '3', '1'),
 ('235', '223', '1', '八宝粥', null, '4', '1'),
 ('236', '223', '1', '罐头食品', null, '5', '1'),
 ('237', '222', '1', '小米', null, '1', '1'),
 ('238', '222', '1', '糙米', null, '2', '1'),
 ('239', '222', '1', '玉米', null, '3', '1'),
 ('240', '222', '1', '杂粮', null, '4', '1'),
 ('241', '222', '1', '薏仁米', null, '5', '1'),
 ('242', '220', '1', '调和油', null, '1', '1'),
 ('243', '220', '1', '葵花籽油', null, '2', '1'),
 ('244', '220', '1', '玉米油', null, '3', '1'),
 ('245', '220', '1', '花生油', null, '4', '1'),
 ('246', '220', '1', '橄榄油', null, '5', '1'),
 ('247', '221', '1', '粗粮', null, '4', '1'),
 ('248', '82', '1', '脱脂', null, '1', '1'),
 ('249', '61', '1', '梨', null, '6', '1'),
 ('250', '61', '1', '芒果', null, '8', '1'),
 ('251', '61', '1', '蓝莓', null, '12', '1'),
 ('252', '62', '1', '茄果类', null, '1', '1'),
 ('253', '62', '1', '农场菜', null, '2', '1'),
 ('254', '62', '1', '叶菜类', null, '3', '1'),
 ('255', '62', '1', '营养菜', null, '4', '1'),
 ('256', '62', '1', '根茎类', null, '5', '1'),
 ('257', '62', '1', '豆角类', null, '6', '1'),
 ('258', '48', '1', '厨卫清洁', null, '3', '1'),
 ('259', '48', '1', '居室清洁', null, '4', '1'),
 ('260', '48', '1', '整理收纳', null, '5', '1'),
 ('261', '48', '1', '一次性用品', null, '7', '1'),
 ('262', '74', '1', '卷筒纸', null, '2', '1'),
 ('263', '74', '1', '手帕纸', null, '3', '1'),
 ('264', '74', '1', '平板纸', null, '4', '1'),
 ('265', '74', '1', '湿巾纸', null, '5', '1'),
 ('266', '74', '1', '商务卫生纸', null, '6', '1'),
 ('267', '258', '1', '洗洁精', null, '1', '1'),
 ('268', '261', '1', '垃圾袋', null, '1', '1'),
 ('269', '261', '1', '保鲜袋', null, '2', '1'),
 ('270', '261', '1', '保鲜膜', null, '3', '1'),
 ('271', '261', '1', '牙签', null, '4', '1'),
 ('272', '261', '1', '一次性鞋套', null, '5', '1'),
 ('273', '258', '1', '油污净', null, '2', '1'),
 ('274', '258', '1', '洁厕剂', null, '3', '1'),
 ('275', '258', '1', '浴室清洁', null, '4', '1'),
 ('276', '258', '1', '管道疏通', null, '5', '1'),
 ('277', '261', '1', '一次性手套', null, '6', '1'),
 ('278', '259', '1', '地板清洁', null, '1', '1'),
 ('279', '259', '1', '灭蟑驱虫 ', null, '2', '1'),
 ('280', '259', '1', '空气清新', null, '3', '1'),
 ('281', '259', '1', '家具清洁', null, '4', '1'),
 ('282', '259', '1', '玻璃清洁', null, '5', '1'),
 ('283', '260', '1', '挂钩/粘钩', null, '1', '1'),
 ('284', '260', '1', '收纳盒', null, '2', '1'),
 ('285', '260', '1', '防尘罩', null, '3', '1'),
 ('286', '260', '1', '整理架', null, '4', '1'),
 ('287', '260', '1', '压缩袋', null, '5', '1'),
 ('288', '65', '1', '海鲜', null, '2', '1'),
 ('289', '65', '1', '贝类', null, '3', '1'),
 ('290', '65', '1', '蟹类', null, '4', '1'),
 ('291', '65', '1', '虾类', null, '6', '1'),
 ('292', '65', '1', '加工水产', null, '8', '1'),
 ('293', '78', '1', '白酒', null, '1', '1'),
 ('294', '78', '1', '葡萄酒', null, '2', '1'),
 ('295', '78', '1', '黄酒', null, '3', '1'),
 ('296', '78', '1', '啤酒', null, '4', '1'),
 ('297', '78', '1', '起泡酒', null, '5', '1'),
 ('298', '79', '1', '速溶咖啡', null, '1', '1'),
 ('299', '79', '1', '白咖啡', null, '2', '1'),
 ('300', '82', '1', '低脂', null, '2', '1'),
 ('301', '82', '1', '全脂', null, '3', '1'),
 ('302', '79', '1', '咖啡伴侣', null, '3', '1'),
 ('303', '80', '1', '乌龙茶', null, '1', '1'),
 ('304', '81', '1', '果蔬汁', null, '1', '1'),
 ('305', '82', '1', '甜奶粉', null, '4', '1'),
 ('306', '82', '1', '高钙', null, '5', '1'),
 ('307', '80', '1', '红茶', null, '2', '1'),
 ('308', '79', '1', '雀巢咖啡', null, '4', '1'),
 ('309', '80', '1', '花草茶', null, '3', '1'),
 ('310', '79', '1', '咖啡豆', null, '5', '1'),
 ('311', '80', '1', '绿茶', null, '4', '1'),
 ('312', '80', '1', '水果茶', null, '5', '1'),
 ('313', '81', '1', '功能饮料', null, '2', '1'),
 ('314', '81', '1', '凉茶', null, '3', '1'),
 ('315', '81', '1', '椰汁', null, '4', '1'),
 ('316', '81', '1', '碳酸饮料', null, '5', '1'),
 ('317', '64', '1', '新鲜鸡蛋', null, '1', '1'),
 ('318', '63', '1', '凉菜', null, '1', '1'),
 ('319', '66', '1', '冰冻鸡翅', null, '1', '1'),
 ('320', '71', '1', '其他蔬果', null, '1', '1'),
 ('321', '63', '1', '乳肉', null, '2', '1'),
 ('322', '64', '1', '新鲜鸭蛋', null, '2', '1'),
 ('323', '66', '1', '冰冻鸭', null, '2', '1'),
 ('324', '66', '1', '冰激凌', null, '3', '1'),
 ('325', '61', '1', 'dddd', null, '0', '-1'),
 ('326', '64', '1', '肉类', null, '0', '1'),
 ('327', '64', '1', '骨头', null, '0', '1'),
 ('328', '64', '1', '牛肉', null, '0', '1'),
 ('329', '258', '1', '洗衣粉', null, '10', '1'),
 ('330', '223', '1', '火腿肠', null, '5', '1'),
 ('331', '167', '1', '化妆品套装', null, '10', '1'),
 ('332', '66', '1', '冰冻海鲜', null, '0', '1'),
 ('333', '223', '1', '其他', null, '20', '1');
