/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : yoshopping

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-08-25 14:11:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brand_info`
-- ----------------------------
DROP TABLE IF EXISTS `brand_info`;
CREATE TABLE `brand_info` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌ID',
  `brand_name` varchar(50) NOT NULL COMMENT '品牌名称',
  `telephone` varchar(50) NOT NULL COMMENT '联系电话',
  `brand_web` varchar(100) DEFAULT NULL COMMENT '品牌网络',
  `brand_logo` varchar(100) DEFAULT NULL COMMENT '品牌logo URL',
  `brand_desc` varchar(150) DEFAULT NULL COMMENT '品牌描述',
  `brand_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '品牌状态,0禁用,1启用',
  `brand_order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌信息表';

-- ----------------------------
-- Records of brand_info
-- ----------------------------

-- ----------------------------
-- Table structure for `order_cart`
-- ----------------------------
DROP TABLE IF EXISTS `order_cart`;
CREATE TABLE `order_cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  `customer_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `product_amount` int(11) NOT NULL COMMENT '加入购物车商品数量',
  `price` decimal(8,2) NOT NULL COMMENT '商品价格',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入购物车时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of order_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单详情表ID',
  `order_id` int(10) unsigned NOT NULL COMMENT '订单表ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '订单商品ID',
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_cnt` int(11) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `product_price` decimal(8,2) NOT NULL COMMENT '购买商品单价',
  `average_cost` decimal(8,2) NOT NULL COMMENT '平均成本价格',
  `weight` float DEFAULT NULL COMMENT '商品重量',
  `fee_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠分摊金额',
  `w_id` int(10) unsigned NOT NULL COMMENT '仓库ID',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `order_master`
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号 yyyymmddnnnnnnnn',
  `customer_id` int(10) unsigned NOT NULL COMMENT '下单人ID',
  `shipping_user` varchar(10) NOT NULL COMMENT '收货人姓名',
  `province` smallint(6) NOT NULL COMMENT '省',
  `city` smallint(6) NOT NULL COMMENT '市',
  `district` smallint(6) NOT NULL COMMENT '区',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `payment_method` tinyint(4) NOT NULL COMMENT '支付方式：1现金，2余额，3网银，4支付宝，5微信',
  `order_money` decimal(8,2) NOT NULL COMMENT '订单金额',
  `district_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `shipping_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `payment_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `shipping_comp_name` varchar(10) DEFAULT NULL COMMENT '快递公司名称',
  `shipping_sn` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `shipping_time` datetime DEFAULT NULL COMMENT '发货时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `order_point` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单积分',
  `invoice_time` varchar(100) DEFAULT NULL COMMENT '发票抬头',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单主表';

-- ----------------------------
-- Records of order_master
-- ----------------------------

-- ----------------------------
-- Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `category_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(10) NOT NULL COMMENT '分类名称',
  `category_code` varchar(10) NOT NULL COMMENT '分类编码',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `category_level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '分类层级',
  `category_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '分类状态',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of product_category
-- ----------------------------

-- ----------------------------
-- Table structure for `product_comment`
-- ----------------------------
DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE `product_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `order_id` bigint(20) unsigned NOT NULL COMMENT '订单ID',
  `customer_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `title` varchar(50) NOT NULL COMMENT '评论标题',
  `content` varchar(300) NOT NULL COMMENT '评论内容',
  `audit_status` tinyint(4) NOT NULL COMMENT '审核状态：0未审核，1已审核',
  `audit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';

-- ----------------------------
-- Records of product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `product_info`
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `product_core` char(16) NOT NULL COMMENT '商品编码',
  `product_name` varchar(20) NOT NULL COMMENT '商品名称',
  `bar_code` varchar(50) NOT NULL COMMENT '国条码',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌表的ID',
  `one_category_id` smallint(5) unsigned NOT NULL COMMENT '一级分类ID',
  `two_category_id` smallint(5) unsigned NOT NULL COMMENT '二级分类ID',
  `three_category_id` smallint(5) unsigned NOT NULL COMMENT '三级分类ID',
  `supplier_id` int(10) unsigned NOT NULL COMMENT '商品的供应商ID',
  `price` decimal(8,2) NOT NULL COMMENT '商品销售价格',
  `average_cost` decimal(18,2) NOT NULL COMMENT '商品加权平均成本',
  `publish_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '上下架状态：0下架1上架',
  `audit_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：0未审核，1已审核',
  `weight` float DEFAULT NULL COMMENT '商品重量',
  `length` float DEFAULT NULL COMMENT '商品长度',
  `height` float DEFAULT NULL COMMENT '商品高度',
  `width` float DEFAULT NULL COMMENT '商品宽度',
  `color_type` enum('红','黄','蓝','黑') DEFAULT NULL,
  `production_date` datetime NOT NULL COMMENT '生产日期',
  `shelf_life` int(11) NOT NULL COMMENT '商品有效期',
  `descript` text NOT NULL COMMENT '商品描述',
  `indate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品录入时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of product_info
-- ----------------------------

-- ----------------------------
-- Table structure for `product_pic_info`
-- ----------------------------
DROP TABLE IF EXISTS `product_pic_info`;
CREATE TABLE `product_pic_info` (
  `product_pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品图片ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `pic_desc` varchar(50) DEFAULT NULL COMMENT '图片描述',
  `pic_url` varchar(200) NOT NULL COMMENT '图片URL',
  `is_master` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否主图：0.非主图1.主图',
  `pic_order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '图片排序',
  `pic_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '图片是否有效：0无效 1有效',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`product_pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片信息表';

-- ----------------------------
-- Records of product_pic_info
-- ----------------------------

-- ----------------------------
-- Table structure for `shipping_info`
-- ----------------------------
DROP TABLE IF EXISTS `shipping_info`;
CREATE TABLE `shipping_info` (
  `ship_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ship_name` varchar(20) NOT NULL COMMENT '物流公司名称',
  `ship_contact` varchar(20) NOT NULL COMMENT '物流公司联系人',
  `telephone` varchar(20) NOT NULL COMMENT '物流公司联系电话',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '配送价格',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物流公司信息表';

-- ----------------------------
-- Records of shipping_info
-- ----------------------------

-- ----------------------------
-- Table structure for `supplier_info`
-- ----------------------------
DROP TABLE IF EXISTS `supplier_info`;
CREATE TABLE `supplier_info` (
  `supplier_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `supplier_code` char(8) NOT NULL COMMENT '供应商编码',
  `supplier_name` char(50) NOT NULL COMMENT '供应商名称',
  `supplier_type` tinyint(4) NOT NULL COMMENT '供应商类型：1.自营，2.平台',
  `link_man` varchar(10) NOT NULL COMMENT '供应商联系人',
  `phone_number` varchar(50) NOT NULL COMMENT '联系电话',
  `bank_name` varchar(50) NOT NULL COMMENT '供应商开户银行名称',
  `bank_account` varchar(50) NOT NULL COMMENT '银行账号',
  `address` varchar(200) NOT NULL COMMENT '供应商地址',
  `supplier_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0禁止，1启用',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商信息表';

-- ----------------------------
-- Records of supplier_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_addr`
-- ----------------------------
DROP TABLE IF EXISTS `user_addr`;
CREATE TABLE `user_addr` (
  `user_addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `user_login_id` int(10) unsigned NOT NULL COMMENT 'user_login表的自增ID',
  `user_addr_zip` smallint(6) NOT NULL COMMENT '邮编',
  `user_addr_province` smallint(6) NOT NULL COMMENT '地区表中省份的ID',
  `user_addr_city` smallint(6) NOT NULL COMMENT '地区表中城市的ID',
  `user_addr_district` smallint(6) NOT NULL COMMENT '地区表中的区ID',
  `user_addr_address` varchar(200) NOT NULL COMMENT '具体的地址门牌号',
  `user_addr_is_default` tinyint(4) NOT NULL COMMENT '是否默认',
  `user_addr_modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`user_addr_id`,`user_login_id`),
  KEY `addr_login_user_login_id` (`user_login_id`),
  CONSTRAINT `addr_login_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`user_login_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户地址表';

-- ----------------------------
-- Records of user_addr
-- ----------------------------

-- ----------------------------
-- Table structure for `user_balance_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_balance_log`;
CREATE TABLE `user_balance_log` (
  `user_balance_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '余额日志ID',
  `user_login_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `user_balance_log_source` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '记录来源：1订单，2退货单',
  `user_balance_log_source_sn` int(10) unsigned NOT NULL COMMENT '相关单据ID',
  `user_balance_log_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录生成时间',
  `user_balance_log_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '变动金额',
  PRIMARY KEY (`user_balance_log_id`),
  KEY `balance_login_user_login_id` (`user_login_id`),
  CONSTRAINT `balance_login_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`user_login_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户余额变动表';

-- ----------------------------
-- Records of user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for `user_inf`
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `user_inf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户信息表id',
  `user_login_id` int(11) unsigned NOT NULL COMMENT '用户登陆表的id',
  `user_inf_name` varchar(255) NOT NULL COMMENT '用户真实姓名',
  `user_inf_identity_card_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '证件类型：1 身份证，2 军官证，3 护照,默认身份证',
  `user_inf_identity_card_no` varchar(255) NOT NULL COMMENT '用户证件号码',
  `user_inf_phone` varchar(255) NOT NULL COMMENT '用户手机号',
  `user_inf_email` varchar(255) NOT NULL COMMENT '用户电子邮箱',
  `user_inf_registertime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '用户注册时间',
  `user_inf_point` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_inf_money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '用户余额',
  PRIMARY KEY (`user_inf_id`),
  KEY `inf_login_user_login_id` (`user_login_id`),
  CONSTRAINT `inf_login_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`user_login_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `user_login_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户登陆表id（用户在整个数据库中的唯一id）',
  `user_login_name` varchar(255) NOT NULL COMMENT '用户登录名（不一定为用户真实名字）',
  `user_login_password` varchar(255) NOT NULL COMMENT '用户登陆密码',
  PRIMARY KEY (`user_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'Armon', 'Ilovelm417520');

-- ----------------------------
-- Table structure for `user_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log` (
  `user_login_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '登陆日志ID',
  `user_login_id` int(10) unsigned NOT NULL COMMENT '登陆用户ID',
  `user_login_log_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户登陆时间',
  `user_login_log_login_ip` int(10) unsigned NOT NULL COMMENT '登陆IP',
  `user_login_log_login_type` tinyint(4) NOT NULL COMMENT '登陆类型：0未成功，1成功',
  PRIMARY KEY (`user_login_log_id`),
  KEY `login_log_login_user_login_id` (`user_login_id`),
  CONSTRAINT `login_log_login_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`user_login_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登陆日志表';

-- ----------------------------
-- Records of user_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `user_point_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_point_log`;
CREATE TABLE `user_point_log` (
  `user_point_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '积分日志ID',
  `user_login_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `user_point_log_source` tinyint(3) unsigned NOT NULL COMMENT '积分来源：0订单，1登陆，2活动',
  `user_point_log_refer_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分来源相关编号',
  `user_point_log_change_point` smallint(6) NOT NULL DEFAULT '0' COMMENT '变更积分数',
  `user_point_log_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '积分日志生成时间',
  PRIMARY KEY (`user_point_log_id`),
  KEY `point_login_user_login_id` (`user_login_id`),
  CONSTRAINT `point_login_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`user_login_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户积分日志表';

-- ----------------------------
-- Records of user_point_log
-- ----------------------------

-- ----------------------------
-- Table structure for `warehouse_info`
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_info`;
CREATE TABLE `warehouse_info` (
  `w_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
  `warehouse_sn` char(5) NOT NULL COMMENT '仓库编码',
  `warehoust_name` varchar(10) NOT NULL COMMENT '仓库名称',
  `warehouse_phone` varchar(20) NOT NULL COMMENT '仓库电话',
  `contact` varchar(10) NOT NULL COMMENT '仓库联系人',
  `province` smallint(6) NOT NULL COMMENT '省',
  `city` smallint(6) NOT NULL COMMENT '市',
  `distrct` smallint(6) NOT NULL COMMENT '区',
  `address` varchar(100) NOT NULL COMMENT '仓库地址',
  `warehouse_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '仓库状态：0禁用，1启用',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库信息表';

-- ----------------------------
-- Records of warehouse_info
-- ----------------------------

-- ----------------------------
-- Table structure for `warehouse_product`
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_product`;
CREATE TABLE `warehouse_product` (
  `wp_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品库存ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `w_id` smallint(5) unsigned NOT NULL COMMENT '仓库ID',
  `current_cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前商品数量',
  `lock_cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前占用数据',
  `in_transit_cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '在途数据',
  `average_cost` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '移动加权成本',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`wp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品库存表';

-- ----------------------------
-- Records of warehouse_product
-- ----------------------------
