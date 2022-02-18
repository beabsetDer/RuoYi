/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : ry-fork
Target Host     : localhost:3306
Target Database : ry-fork
Date: 2022-02-19 03:34:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('2', 'ks_goods', '運送貨品資訊', '', null, 'KsGoods', 'crud', 'com.ruoyi.kaisheng', 'ks', 'goods', '運送貨物表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-10 09:04:24', '', '2022-02-19 03:07:08', '');
INSERT INTO `gen_table` VALUES ('3', 'ks_employee', '員工資訊', '', null, 'KsEmployee', 'crud', 'com.ruoyi.kaisheng', 'ks', 'employee', '員工表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-10 09:37:25', '', '2022-02-19 02:59:15', '');
INSERT INTO `gen_table` VALUES ('4', 'ks_oil_order', '加油單資訊', '', null, 'KsOilOrder', 'crud', 'com.ruoyi.kaisheng', 'ks', 'oil', '加油單表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-10 18:13:33', '', '2022-02-19 03:05:03', '');
INSERT INTO `gen_table` VALUES ('5', 'ks_downbound', '南下單資訊', '', null, 'KsDownbound', 'crud', 'com.ruoyi.kaisheng', 'ks', 'downbound', '南下表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-11 16:33:44', '', '2022-02-19 02:53:53', '');
INSERT INTO `gen_table` VALUES ('6', 'ks_car', '車輛資訊', '', null, 'KsCar', 'crud', 'com.ruoyi.kaisheng', 'ks', 'car', '車輛表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-11 22:17:37', '', '2022-02-19 03:08:14', '');
INSERT INTO `gen_table` VALUES ('7', 'ks_gonorth', '北上單資訊', '', null, 'KsGonorth', 'crud', 'com.ruoyi.kaisheng', 'ks', 'gonorth', '北上表單', 'Sheng', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"凱基系統\",\"treeCode\":\"\"}', 'admin', '2022-02-12 15:40:33', '', '2022-02-19 03:02:42', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('15', '2', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-10 09:04:24', null, '2022-02-19 03:07:08');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'goods_id', '品項編號', 'varchar(10)', 'String', 'goodsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-10 09:04:24', null, '2022-02-19 03:07:08');
INSERT INTO `gen_table_column` VALUES ('17', '2', 'goods_name', '品項名稱', 'varchar(10)', 'String', 'goodsName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-02-10 09:04:24', null, '2022-02-19 03:07:08');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'employee_id', '員工編號', 'varchar(10)', 'String', 'employeeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'name', '員工姓名', 'varchar(255)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'aka', '綽號', 'varchar(255)', 'String', 'aka', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'phone_number', '手機', 'varchar(12)', 'String', 'phoneNumber', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'id_card', '身分證', 'varchar(10)', 'String', 'idCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'sex', '姓別', 'varchar(2)', 'String', 'sex', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'select', '', '7', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'home_telephone_number', '家電', 'varchar(20)', 'String', 'homeTelephoneNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'address', '住址', 'varchar(255)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '9', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'company', '隸屬公司', 'varchar(255)', 'String', 'company', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '10', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('28', '3', 'staff_positions', '職稱', 'varchar(255)', 'String', 'staffPositions', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '11', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('29', '3', 'entry_date', '入職日期', 'datetime', 'Date', 'entryDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '12', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('30', '3', 'resignation_date', '離職日期', 'datetime', 'Date', 'resignationDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '13', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('31', '3', 'reason_for_leaving', '離職原因', 'varchar(255)', 'String', 'reasonForLeaving', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2022-02-10 09:37:25', null, '2022-02-19 02:59:15');
INSERT INTO `gen_table_column` VALUES ('32', '4', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('33', '4', 'oil_order_id', '油單編號', 'varchar(20)', 'String', 'oilOrderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('34', '4', 'oid_date', '加油日期', 'datetime', 'Date', 'oidDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '3', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('35', '4', 'oil_driver', '機司名稱', 'varchar(10)', 'String', 'oilDriver', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('36', '4', 'oil_license_plate_number', '油加車牌', 'varchar(10)', 'String', 'oilLicensePlateNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('37', '4', 'oil_type', '油的種類', 'varchar(10)', 'String', 'oilType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('38', '4', 'oil_price', '油的價格', 'double(4,2)', 'BigDecimal', 'oilPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('39', '4', 'oil_liters', '加油公升', 'double(5,2)', 'BigDecimal', 'oilLiters', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('40', '4', 'oil_total', '油單總價格', 'double(7,2)', 'BigDecimal', 'oilTotal', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('41', '4', 'gas_station', '加油站名稱', 'varchar(20)', 'String', 'gasStation', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-02-10 18:13:33', null, '2022-02-19 03:05:03');
INSERT INTO `gen_table_column` VALUES ('42', '5', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('43', '5', 'downbound_id', '南下單編號', 'varchar(20)', 'String', 'downboundId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('44', '5', 'downbound_date', '日期(南下單)', 'datetime', 'Date', 'downboundDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '3', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('45', '5', 'downbound_driver', '司機名稱', 'varchar(5)', 'String', 'downboundDriver', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('46', '5', 'downbound_license_plate_number', '車牌號碼', 'varchar(10)', 'String', 'downboundLicensePlateNumber', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('47', '5', 'downbound_company', '公司名稱', 'varchar(20)', 'String', 'downboundCompany', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('48', '5', 'downbound_outset', '起點', 'varchar(20)', 'String', 'downboundOutset', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '7', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('49', '5', 'downbound_yard', '堆場', 'varchar(20)', 'String', 'downboundYard', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '8', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('50', '5', 'downbound_cash', '現金', 'varchar(4)', 'String', 'downboundCash', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('51', '5', 'downbound_goods', '貨物名稱', 'varchar(10)', 'String', 'downboundGoods', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('52', '5', 'downbound_goods_mt', '貨物噸數', 'double(4,2)', 'BigDecimal', 'downboundGoodsMt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('53', '5', 'downbound_goods_price', '貨物單價', 'double(6,2)', 'BigDecimal', 'downboundGoodsPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('54', '5', 'downbound_total', '此趟運費', 'double(8,2)', 'BigDecimal', 'downboundTotal', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('55', '5', 'downbound_driver_pay', '此趟薪資', 'double(10,2)', 'BigDecimal', 'downboundDriverPay', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2022-02-11 16:33:44', null, '2022-02-19 02:53:53');
INSERT INTO `gen_table_column` VALUES ('56', '6', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('57', '6', 'license_plate_number', '車牌', 'varchar(255)', 'String', 'licensePlateNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('58', '6', 'car_purchase_date', '購車日期', 'datetime', 'Date', 'carPurchaseDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('59', '6', 'car_loan', '貸款狀態', 'varchar(10)', 'String', 'carLoan', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('60', '6', 'car_maintenance_date', '保養日期', 'datetime', 'Date', 'carMaintenanceDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('61', '6', 'next_maintenance_date', '下次保養日期', 'datetime', 'Date', 'nextMaintenanceDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('62', '6', 'car_maintenance', '保養狀態', 'varchar(10)', 'String', 'carMaintenance', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-02-11 22:17:37', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('63', '6', 'car_idle', '車輛狀況', 'varchar(10)', 'String', 'carIdle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ks_car_idle', '3', '', '2022-02-11 22:19:38', null, '2022-02-19 03:08:14');
INSERT INTO `gen_table_column` VALUES ('64', '7', 'id', '流水號', 'int(10)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('65', '7', 'gonorth_id', '南下單編號', 'varchar(20)', 'String', 'gonorthId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('66', '7', 'gonorth_date', '日期(南下單)', 'datetime', 'Date', 'gonorthDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '3', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('67', '7', 'gonorth_driver', '司機名稱', 'varchar(5)', 'String', 'gonorthDriver', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('68', '7', 'gonorth_license_plate_number', '車牌號碼', 'varchar(10)', 'String', 'gonorthLicensePlateNumber', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('69', '7', 'gonorth_company', '公司名稱', 'varchar(20)', 'String', 'gonorthCompany', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('70', '7', 'gonorth_outset', '起點', 'varchar(20)', 'String', 'gonorthOutset', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('71', '7', 'gonorth_yard', '堆場', 'varchar(20)', 'String', 'gonorthYard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('72', '7', 'gonorth_cash', '是否收現金', 'varchar(4)', 'String', 'gonorthCash', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('73', '7', 'gonorth_goods', '貨物名稱', 'varchar(10)', 'String', 'gonorthGoods', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('74', '7', 'gonorth_goods_mt', '貨物噸數', 'double(4,2)', 'BigDecimal', 'gonorthGoodsMt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('75', '7', 'gonorth_goods_price_company', '公司單價', 'double(6,2)', 'BigDecimal', 'gonorthGoodsPriceCompany', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('76', '7', 'gonorth_goods_price_driver', '司機單價', 'double(6,2)', 'BigDecimal', 'gonorthGoodsPriceDriver', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('77', '7', 'gonorth_total', '公司運費', 'double(8,2)', 'BigDecimal', 'gonorthTotal', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('78', '7', 'gonorth_bill_total', '扣發票金額', 'double(8,2)', 'BigDecimal', 'gonorthBillTotal', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');
INSERT INTO `gen_table_column` VALUES ('79', '7', 'gonorth_driver_pay', '此趟薪資', 'double(10,2)', 'BigDecimal', 'gonorthDriverPay', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '16', 'admin', '2022-02-12 15:40:33', null, '2022-02-19 03:02:42');

-- ----------------------------
-- Table structure for ks_car
-- ----------------------------
DROP TABLE IF EXISTS `ks_car`;
CREATE TABLE `ks_car` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `license_plate_number` varchar(255) NOT NULL COMMENT '車牌',
  `car_idle` varchar(10) NOT NULL DEFAULT '正常運行' COMMENT '車輛狀況',
  `car_purchase_date` datetime DEFAULT NULL COMMENT '購車日期',
  `car_loan` varchar(10) DEFAULT '已還款' COMMENT '貸款狀態',
  `car_maintenance_date` datetime DEFAULT NULL COMMENT '保養日期',
  `next_maintenance_date` datetime DEFAULT NULL COMMENT '下次保養日期',
  `car_maintenance` varchar(10) DEFAULT '已保養' COMMENT '保養狀態',
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plate_number` (`license_plate_number`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_car
-- ----------------------------
INSERT INTO `ks_car` VALUES ('1', 'KSC-0803', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('2', 'KSC-0805', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('3', 'KSC-0832', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('4', 'KSC-0958', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('5', 'KSD-0990', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('6', 'KSZ-1356', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('7', 'KSD-1629', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('8', 'KSZ-1698', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('9', 'KSZ-1699', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('10', 'KSZ-2038', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('11', 'KSZ-2039', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('12', 'KSZ-2637', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('13', 'KSZ-2739', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('14', 'KSZ-2769', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('15', 'KXD-3506', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('16', 'KXC-3769', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('17', 'KXD-3907', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('18', 'KXC-5391', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('19', 'KXC-5392', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('20', 'KXC-5680', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('21', 'KXA-6799', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('22', 'KSZ-6979', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('23', 'KXA-7366', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('24', 'KSD-8136', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('25', 'KSD-8196', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('26', 'KSD-8295', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('27', 'KXC-5681', '正常運行', null, '已還款', null, null, '已保養');
INSERT INTO `ks_car` VALUES ('28', 'KXC-3617', '正常運行', null, '已還款', null, null, '已保養');

-- ----------------------------
-- Table structure for ks_downbound
-- ----------------------------
DROP TABLE IF EXISTS `ks_downbound`;
CREATE TABLE `ks_downbound` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `downbound_id` varchar(20) NOT NULL COMMENT '南下單編號',
  `downbound_date` datetime NOT NULL COMMENT '日期(南下單)',
  `downbound_driver` varchar(5) NOT NULL COMMENT '司機名稱',
  `downbound_license_plate_number` varchar(10) NOT NULL COMMENT '車牌號碼',
  `downbound_company` varchar(20) NOT NULL DEFAULT '無' COMMENT '公司名稱',
  `downbound_outset` varchar(20) NOT NULL DEFAULT '無' COMMENT '起點',
  `downbound_yard` varchar(20) NOT NULL DEFAULT '無' COMMENT '堆場',
  `downbound_cash` varchar(4) DEFAULT NULL,
  `downbound_goods` varchar(10) DEFAULT NULL COMMENT '貨物名稱',
  `downbound_goods_mt` double(4,2) NOT NULL DEFAULT '0.00' COMMENT '貨物噸數',
  `downbound_goods_price` double(6,2) NOT NULL DEFAULT '0.00' COMMENT '貨物單價',
  `downbound_total` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '此趟運費',
  `downbound_driver_pay` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '此趟薪資',
  PRIMARY KEY (`id`),
  UNIQUE KEY `downbound_id` (`downbound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_downbound
-- ----------------------------
INSERT INTO `ks_downbound` VALUES ('1', '20202020', '2022-02-11 00:00:00', '黃振凱', 'AKA-878', 'ZZ', 'GG', 'XX', '無', 'WWW', '36.50', '850.00', '31025.00', '7135.75');

-- ----------------------------
-- Table structure for ks_employee
-- ----------------------------
DROP TABLE IF EXISTS `ks_employee`;
CREATE TABLE `ks_employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `employee_id` varchar(10) NOT NULL COMMENT '員工編號',
  `name` varchar(255) DEFAULT NULL COMMENT '員工姓名',
  `aka` varchar(255) DEFAULT NULL COMMENT '綽號',
  `phone_number` varchar(12) DEFAULT NULL COMMENT '手機',
  `id_card` varchar(10) DEFAULT NULL COMMENT '身分證',
  `sex` varchar(2) DEFAULT '男' COMMENT '姓別',
  `home_telephone_number` varchar(20) DEFAULT NULL COMMENT '家電',
  `address` varchar(255) DEFAULT NULL COMMENT '住址',
  `company` varchar(255) DEFAULT NULL COMMENT '隸屬公司',
  `staff_positions` varchar(255) DEFAULT NULL COMMENT '職稱',
  `entry_date` datetime DEFAULT NULL COMMENT '入職日期',
  `resignation_date` datetime DEFAULT NULL COMMENT '離職日期',
  `reason_for_leaving` varchar(255) DEFAULT '無' COMMENT '離職原因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_employee
-- ----------------------------
INSERT INTO `ks_employee` VALUES ('1', 'ks-01', '黃智凱', '', '0960-182124', 'A100537101', '男', '', '新北市泰山區中華街9號', '凱基股份有限公司', '負責人', '2015-05-01 00:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('2', 'ks-02', '錢志杰', '', '0922-283442', 'A180353903', '男', '', '新北市雙溪區新基北街7號', '凱基股份有限公司', '司機', '2021-04-06 00:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('3', 'ks-03', '連懿辛', null, '0954-314630', 'A155254353', '男', null, '高雄市楠梓區楠梓加工出口區內環南22號', '凱基股份有限公司', '司機', '2021-12-01 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('4', 'ks-04', '李政儒', '', '0926-830527', 'A142535161', '男', '', '彰化縣大城鄉褔建路9號', '凱基股份有限公司', '司機', '2022-01-01 00:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('5', 'ks-05', '彭映強', '屁哥', '0923-501428', 'A164317121', '男', null, '高雄市小港區松華路19號', '凱基股份有限公司', '司機', '2019-07-24 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('6', 'ks-06', '謝鴻韻', '哥吉拉', '0972-895582', 'A154618826', '男', null, '宜蘭縣冬山鄉大興路24號', '凱基股份有限公司', '司機', '2021-03-21 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('7', 'ks-07', '張政添', '小邱', '0926-592909', 'J172925288', '男', null, '臺中市東區旱溪三街10號', '凱基股份有限公司', '司機', '2020-07-28 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('8', 'ks-08', '黃冠中', null, '0933-819367', 'J137726229', '男', null, '桃園市平鎮區新光路20號', '凱基股份有限公司', '司機', '2021-03-31 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('9', 'ks-09', '楊柏毅', null, '0961-761825', 'J113599917', '男', null, '苗栗縣後龍鎮庄南街4號', '凱基股份有限公司', '司機', '2021-11-11 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('10', 'ks-10', '吳維哲', null, '0923-847414', 'J198503264', '男', null, '雲林縣北港鎮東興街27號', '凱基股份有限公司', '司機', '2021-11-22 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('11', 'ks-11', '彭成治', '阿誠', '0970-756281', 'V130129348', '男', null, '臺北市松山區東寧路22號', '凱基股份有限公司', '司機', '2020-07-27 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('12', 'ks-12', '王國維', '志豪', '0970-360800', 'V152296197', '男', null, '新竹市東區平和街20號', '凱基股份有限公司', '司機', '2019-06-29 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('13', 'ks-13', '張凱屏', '玉米', '0970-836881', 'V118687449', '男', null, '桃園市觀音區富源六路12號', '凱基股份有限公司', '司機', '2020-06-10 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('14', 'ks-14', '洪忠真', '山豬', '0972-062521', 'V185799792', '男', null, '嘉義縣大林鎮下潭底34號', '凱基股份有限公司', '司機', '2019-07-14 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('15', 'ks-15', '楊建州', '', '0932-439833', 'V192585897', '男', '', '彰化縣和美鎮西美路9號', '凱基股份有限公司', '司機', null, '2022-02-08 00:00:00', '無');
INSERT INTO `ks_employee` VALUES ('16', 'ks-16', '李怡芳', '', '0922-317112', 'A256938743', '女', '', '花蓮縣富里鄉四維29號', '凱基股份有限公司', '司機', '2021-09-14 00:00:00', '2022-01-20 00:00:00', '表弟酒駕');
INSERT INTO `ks_employee` VALUES ('17', 'ks-17', '游仁杰', '阿達', '0913-029907', 'D182593597', '男', null, '高雄市鳥松區澄新一街5號', '凱基股份有限公司', '司機', '2021-04-28 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('18', 'ks-18', '張世榮', '無缺', '0932-645186', 'L103422473', '男', null, '花蓮縣鳳林鎮仁愛街33號', '凱基股份有限公司', '司機', null, null, '無');
INSERT INTO `ks_employee` VALUES ('19', 'ks-19', '張東雨', '戰將', '0929-432287', 'L120468491', '男', null, '臺中市北屯區和祥二街30號', '凱基股份有限公司', '司機', '2021-10-26 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('20', 'ks-20', '林君亮', '養樂多', '0952-303820', 'L195901054', '男', '', '桃園市蘆竹區新南路21號', '凱基股份有限公司', '司機', null, null, '無');
INSERT INTO `ks_employee` VALUES ('21', 'ks-21', '劉彥君', null, '0936-387086', 'Q161917346', '男', null, '桃園市蘆竹區南福街5號', '凱基股份有限公司', '司機', '2021-11-11 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('22', 'ks-22', '劉志賢', null, '0987-002907', 'Q105924661', '男', null, '桃園市中壢區新中二街19號', '凱基股份有限公司', '司機', null, null, '無');
INSERT INTO `ks_employee` VALUES ('23', 'ks-23', '戴貴麟', null, '0955-587849', 'Q134448992', '男', null, '高雄市小港區義興街18號', '凱基股份有限公司', '司機', '2020-09-08 08:00:00', null, '無');
INSERT INTO `ks_employee` VALUES ('24', 'ks-24', '陳建伯', '藍寶', '0971-915302', 'K157692289', '男', null, '臺中市北屯區遼陽四街23號', '凱基股份有限公司', '司機', '2021-04-28 08:00:00', null, '無');

-- ----------------------------
-- Table structure for ks_gonorth
-- ----------------------------
DROP TABLE IF EXISTS `ks_gonorth`;
CREATE TABLE `ks_gonorth` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `gonorth_id` varchar(20) NOT NULL COMMENT '南下單編號',
  `gonorth_date` datetime NOT NULL COMMENT '日期(南下單)',
  `gonorth_driver` varchar(5) NOT NULL COMMENT '司機名稱',
  `gonorth_license_plate_number` varchar(10) NOT NULL COMMENT '車牌號碼',
  `gonorth_company` varchar(20) NOT NULL DEFAULT '無' COMMENT '公司名稱',
  `gonorth_outset` varchar(20) NOT NULL DEFAULT '無' COMMENT '起點',
  `gonorth_yard` varchar(20) NOT NULL DEFAULT '無' COMMENT '堆場',
  `gonorth_cash` varchar(4) DEFAULT NULL,
  `gonorth_goods` varchar(10) DEFAULT NULL COMMENT '貨物名稱',
  `gonorth_goods_mt` double(4,2) NOT NULL DEFAULT '0.00' COMMENT '貨物噸數',
  `gonorth_goods_price_company` double(6,2) NOT NULL DEFAULT '0.00' COMMENT '公司單價',
  `gonorth_goods_price_driver` double(6,2) DEFAULT NULL,
  `gonorth_total` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '公司此趟運費',
  `gonorth_bill_total` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '扣發票金額',
  `gonorth_driver_pay` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '此趟薪資',
  PRIMARY KEY (`id`),
  UNIQUE KEY `downbound_id` (`gonorth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_gonorth
-- ----------------------------
INSERT INTO `ks_gonorth` VALUES ('1', '20202020', '2022-02-11 00:00:00', '黃振凱', 'AKA-878', 'ZZ', 'GG', 'XX', '無', 'EE', '36.50', '850.00', null, '31025.00', '0.00', '7135.75');

-- ----------------------------
-- Table structure for ks_goods
-- ----------------------------
DROP TABLE IF EXISTS `ks_goods`;
CREATE TABLE `ks_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `goods_id` varchar(10) NOT NULL COMMENT '品項編號',
  `goods_name` varchar(10) DEFAULT NULL COMMENT '品項名稱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_goods
-- ----------------------------
INSERT INTO `ks_goods` VALUES ('1', 'goods-01', '土');
INSERT INTO `ks_goods` VALUES ('2', 'goods-02', '土餅');
INSERT INTO `ks_goods` VALUES ('3', 'goods-03', '煤');
INSERT INTO `ks_goods` VALUES ('4', 'goods-04', '砂');
INSERT INTO `ks_goods` VALUES ('5', 'goods-05', '石膏');
INSERT INTO `ks_goods` VALUES ('6', 'goods-06', '鐵');
INSERT INTO `ks_goods` VALUES ('7', 'goods-07', '爐石');
INSERT INTO `ks_goods` VALUES ('8', 'goods-08', '磚');
INSERT INTO `ks_goods` VALUES ('9', 'goods-09', '大石');
INSERT INTO `ks_goods` VALUES ('10', 'goods-10', '中石');
INSERT INTO `ks_goods` VALUES ('11', 'goods-11', '鉀鹽');

-- ----------------------------
-- Table structure for ks_oil_order
-- ----------------------------
DROP TABLE IF EXISTS `ks_oil_order`;
CREATE TABLE `ks_oil_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `oil_order_id` varchar(20) NOT NULL COMMENT '油單編號',
  `oid_date` datetime DEFAULT NULL COMMENT '加油日期',
  `oil_driver` varchar(10) NOT NULL DEFAULT '其他' COMMENT '機司名稱',
  `oil_license_plate_number` varchar(10) NOT NULL COMMENT '油加車牌',
  `oil_type` varchar(10) NOT NULL COMMENT '油的種類',
  `oil_price` double(4,2) NOT NULL DEFAULT '0.00' COMMENT '油的價格',
  `oil_liters` double(5,2) NOT NULL DEFAULT '0.00' COMMENT '加油公升',
  `oil_total` double(7,2) NOT NULL DEFAULT '0.00' COMMENT '油單總價格',
  `gas_station` varchar(20) DEFAULT '其他' COMMENT '加油站名稱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oil_order_id` (`oil_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ks_oil_order
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Taipei');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Taipei');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Taipei');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017ED7B04AD078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017ED7B04AD078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017ED7B04AD078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'work1645211421284', '1645212848379', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1645211430000', '-1', '5', 'PAUSED', 'CRON', '1645211421000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1645211430000', '-1', '5', 'PAUSED', 'CRON', '1645211421000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1645211440000', '-1', '5', 'PAUSED', 'CRON', '1645211421000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES ('10', '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-02-08 12:56:02', '', null, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-08 12:56:01', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '男', 'sys_user_sex', '', 'success', 'Y', '0', 'admin', '2022-02-08 12:56:02', 'admin', '2022-02-08 21:57:35', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '女', 'sys_user_sex', '', 'info', 'N', '0', 'admin', '2022-02-08 12:56:02', 'admin', '2022-02-08 21:57:28', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-02-08 12:56:02', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-02-08 12:56:02', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '貸款中', '貸款中', 'ks_car_loan', '', 'warning', 'Y', '0', 'admin', '2022-02-11 22:15:32', 'admin', '2022-02-11 22:15:40', '');
INSERT INTO `sys_dict_data` VALUES ('101', '1', '已還款', '已還款', 'ks_car_loan', '', 'primary', 'Y', '0', 'admin', '2022-02-11 22:15:55', 'admin', '2022-02-11 22:17:22', '');
INSERT INTO `sys_dict_data` VALUES ('102', '1', '閒置中', '閒置中', 'ks_car_idle', '', 'danger', 'Y', '0', 'admin', '2022-02-11 22:16:26', 'admin', '2022-02-11 22:46:05', '');
INSERT INTO `sys_dict_data` VALUES ('103', '2', '維修中', '維修中', 'ks_car_idle', '', 'warning', 'Y', '0', 'admin', '2022-02-11 22:16:43', 'admin', '2022-02-11 22:46:15', '');
INSERT INTO `sys_dict_data` VALUES ('104', '0', '正常運行', '正常運行', 'ks_car_idle', '', 'primary', 'Y', '0', 'admin', '2022-02-11 22:16:59', 'admin', '2022-02-11 22:46:09', '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-02-08 12:56:02', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-02-08 12:56:02', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-02-08 12:56:02', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-02-08 12:56:02', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-02-08 12:56:02', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-02-08 12:56:02', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-02-08 12:56:02', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-02-08 12:56:02', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-02-08 12:56:02', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-02-08 12:56:02', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '車輛貸款狀態', 'ks_car_loan', '0', 'admin', '2022-02-11 22:14:11', 'admin', '2022-02-11 22:15:02', '車輛貸款列表');
INSERT INTO `sys_dict_type` VALUES ('101', '車輛閒置狀態', 'ks_car_idle', '0', 'admin', '2022-02-11 22:14:37', 'admin', '2022-02-11 22:14:56', '車輛閒置列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-02-08 12:56:02', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-02-08 12:56:02', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-02-08 12:56:02', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 12:58:36');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 12:59:16');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 13:01:24');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 15:30:56');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 20:16:05');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 20:28:23');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 20:37:34');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 20:43:33');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 20:50:59');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 21:02:52');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 21:34:43');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 21:44:31');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:19:55');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:20:33');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-08 22:24:29');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:24:30');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:31:52');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-08 22:33:11');
INSERT INTO `sys_logininfor` VALUES ('118', 'fatboy', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-02-08 22:33:17');
INSERT INTO `sys_logininfor` VALUES ('119', 'fatboy', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:33:21');
INSERT INTO `sys_logininfor` VALUES ('120', 'fatboy', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-08 22:34:22');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:34:23');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 22:37:48');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 23:17:27');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 23:17:46');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 23:18:39');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 23:21:07');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-08 23:21:44');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-08 23:21:46');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-09 12:10:15');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:04:09');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:09:42');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:25:38');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:29:54');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:30:22');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:32:24');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:32:50');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:35:21');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:42:57');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 09:53:01');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 16:18:38');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 18:11:47');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 18:17:56');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 18:22:36');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 21:39:29');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 22:51:51');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-10 23:51:01');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-11 00:55:31');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 00:55:33');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 02:12:50');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 02:51:16');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:08:38');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:24:13');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:25:18');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:26:26');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:26:53');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 12:27:35');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 14:12:35');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 16:33:02');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 16:48:15');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 17:17:29');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 17:19:54');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 17:58:41');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 18:24:12');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 21:19:42');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 22:13:16');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 22:33:27');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 22:40:00');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 22:55:51');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-11 22:56:44');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 00:52:09');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 00:55:43');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 13:33:36');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 15:40:25');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 15:45:18');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 19:26:30');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 20:09:13');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-12 20:09:21');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-12 20:09:27');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-13 17:52:56');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-14 14:56:28');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-15 15:52:59');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-15 22:58:56');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 19:16:13');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 19:20:07');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 19:20:08');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 19:41:32');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 20:13:39');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 23:30:23');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 23:43:22');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 23:47:08');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 23:49:50');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 00:37:15');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 00:45:42');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 00:48:00');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 00:51:27');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 00:52:04');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 01:59:43');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-18 00:22:32');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-18 00:37:21');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-18 18:23:17');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-18 18:23:20');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 02:51:00');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 02:57:00');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-19 03:00:25');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 03:00:28');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 03:03:47');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 03:05:57');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-19 03:07:58');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 03:08:02');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-19 03:10:31');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2099 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-02-08 12:56:01', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-02-08 12:56:01', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-02-08 12:56:01', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2022-02-08 12:56:01', 'admin', '2022-02-08 22:21:02', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-02-08 12:56:01', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-02-08 12:56:01', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-02-08 12:56:01', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-02-08 12:56:01', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-02-08 12:56:01', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-02-08 12:56:01', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-02-08 12:56:01', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2022-02-08 12:56:01', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-02-08 12:56:01', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-02-08 12:56:01', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-02-08 12:56:01', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2022-02-08 12:56:01', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-02-08 12:56:01', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-02-08 12:56:01', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-02-08 12:56:01', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-02-08 12:56:01', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2022-02-08 12:56:01', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-02-08 12:56:01', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-02-08 12:56:01', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '凱基系統', '0', '0', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-automobile', 'admin', '2022-02-08 22:25:50', 'admin', '2022-02-19 03:24:25', '');
INSERT INTO `sys_menu` VALUES ('2063', '南下表單', '2006', '1', '/ks/downbound', '', 'C', '0', '1', 'ks:downbound:view', '#', 'admin', '2022-02-19 02:53:38', '', null, '南下表單菜单');
INSERT INTO `sys_menu` VALUES ('2064', '南下表單查询', '2063', '1', '#', '', 'F', '0', '1', 'ks:downbound:list', '#', 'admin', '2022-02-19 02:53:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '南下表單新增', '2063', '2', '#', '', 'F', '0', '1', 'ks:downbound:add', '#', 'admin', '2022-02-19 02:53:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '南下表單修改', '2063', '3', '#', '', 'F', '0', '1', 'ks:downbound:edit', '#', 'admin', '2022-02-19 02:53:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '南下表單删除', '2063', '4', '#', '', 'F', '0', '1', 'ks:downbound:remove', '#', 'admin', '2022-02-19 02:53:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '南下表單导出', '2063', '5', '#', '', 'F', '0', '1', 'ks:downbound:export', '#', 'admin', '2022-02-19 02:53:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2069', '員工表單', '2006', '1', '/ks/employee', '', 'C', '0', '1', 'ks:employee:view', '#', 'admin', '2022-02-19 02:59:35', '', null, '員工表單菜单');
INSERT INTO `sys_menu` VALUES ('2070', '員工表單查询', '2069', '1', '#', '', 'F', '0', '1', 'ks:employee:list', '#', 'admin', '2022-02-19 02:59:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '員工表單新增', '2069', '2', '#', '', 'F', '0', '1', 'ks:employee:add', '#', 'admin', '2022-02-19 02:59:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '員工表單修改', '2069', '3', '#', '', 'F', '0', '1', 'ks:employee:edit', '#', 'admin', '2022-02-19 02:59:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '員工表單删除', '2069', '4', '#', '', 'F', '0', '1', 'ks:employee:remove', '#', 'admin', '2022-02-19 02:59:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '員工表單导出', '2069', '5', '#', '', 'F', '0', '1', 'ks:employee:export', '#', 'admin', '2022-02-19 02:59:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2075', '北上表單', '2006', '1', '/ks/gonorth', '', 'C', '0', '1', 'ks:gonorth:view', '#', 'admin', '2022-02-19 03:03:05', '', null, '北上表單菜单');
INSERT INTO `sys_menu` VALUES ('2076', '北上表單查询', '2075', '1', '#', '', 'F', '0', '1', 'ks:gonorth:list', '#', 'admin', '2022-02-19 03:03:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '北上表單新增', '2075', '2', '#', '', 'F', '0', '1', 'ks:gonorth:add', '#', 'admin', '2022-02-19 03:03:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '北上表單修改', '2075', '3', '#', '', 'F', '0', '1', 'ks:gonorth:edit', '#', 'admin', '2022-02-19 03:03:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '北上表單删除', '2075', '4', '#', '', 'F', '0', '1', 'ks:gonorth:remove', '#', 'admin', '2022-02-19 03:03:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '北上表單导出', '2075', '5', '#', '', 'F', '0', '1', 'ks:gonorth:export', '#', 'admin', '2022-02-19 03:03:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', '加油單表單', '2006', '1', '/ks/oil', '', 'C', '0', '1', 'ks:oil:view', '#', 'admin', '2022-02-19 03:05:25', '', null, '加油單表單菜单');
INSERT INTO `sys_menu` VALUES ('2082', '加油單表單查询', '2081', '1', '#', '', 'F', '0', '1', 'ks:oil:list', '#', 'admin', '2022-02-19 03:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '加油單表單新增', '2081', '2', '#', '', 'F', '0', '1', 'ks:oil:add', '#', 'admin', '2022-02-19 03:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '加油單表單修改', '2081', '3', '#', '', 'F', '0', '1', 'ks:oil:edit', '#', 'admin', '2022-02-19 03:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '加油單表單删除', '2081', '4', '#', '', 'F', '0', '1', 'ks:oil:remove', '#', 'admin', '2022-02-19 03:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '加油單表單导出', '2081', '5', '#', '', 'F', '0', '1', 'ks:oil:export', '#', 'admin', '2022-02-19 03:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '運送貨物表單', '2006', '1', '/ks/goods', '', 'C', '0', '1', 'ks:goods:view', '#', 'admin', '2022-02-19 03:07:25', '', null, '運送貨物表單菜单');
INSERT INTO `sys_menu` VALUES ('2088', '運送貨物表單查询', '2087', '1', '#', '', 'F', '0', '1', 'ks:goods:list', '#', 'admin', '2022-02-19 03:07:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '運送貨物表單新增', '2087', '2', '#', '', 'F', '0', '1', 'ks:goods:add', '#', 'admin', '2022-02-19 03:07:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '運送貨物表單修改', '2087', '3', '#', '', 'F', '0', '1', 'ks:goods:edit', '#', 'admin', '2022-02-19 03:07:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2091', '運送貨物表單删除', '2087', '4', '#', '', 'F', '0', '1', 'ks:goods:remove', '#', 'admin', '2022-02-19 03:07:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2092', '運送貨物表單导出', '2087', '5', '#', '', 'F', '0', '1', 'ks:goods:export', '#', 'admin', '2022-02-19 03:07:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2093', '車輛表單', '2006', '1', '/ks/car', '', 'C', '0', '1', 'ks:car:view', '#', 'admin', '2022-02-19 03:08:34', '', null, '車輛表單菜单');
INSERT INTO `sys_menu` VALUES ('2094', '車輛表單查询', '2093', '1', '#', '', 'F', '0', '1', 'ks:car:list', '#', 'admin', '2022-02-19 03:08:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2095', '車輛表單新增', '2093', '2', '#', '', 'F', '0', '1', 'ks:car:add', '#', 'admin', '2022-02-19 03:08:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2096', '車輛表單修改', '2093', '3', '#', '', 'F', '0', '1', 'ks:car:edit', '#', 'admin', '2022-02-19 03:08:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2097', '車輛表單删除', '2093', '4', '#', '', 'F', '0', '1', 'ks:car:remove', '#', 'admin', '2022-02-19 03:08:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2098', '車輛表單导出', '2093', '5', '#', '', 'F', '0', '1', 'ks:car:export', '#', 'admin', '2022-02-19 03:08:34', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-02-08 12:56:02', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-02-08 12:56:02', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_employee\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 20:28:35');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sex\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 20:31:02');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sex\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 20:31:12');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-08 20:32:32');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sex\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 20:38:23');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-08 20:43:44');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sex\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 20:51:21');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-08 20:51:25');
INSERT INTO `sys_oper_log` VALUES ('108', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"employeeId\":[\"ks-01\"],\"name\":[\"黃振凱\"],\"aka\":[\"\"],\"phoneNumber\":[\"0909-331138\"],\"idCard\":[\"K122682542\"],\"sex\":[\"0\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"負責人\"],\"entryDate\":[\"\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:06:05');
INSERT INTO `sys_oper_log` VALUES ('109', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"employeeId\":[\"ks-02\"],\"name\":[\"黃俊傭\"],\"aka\":[\"\"],\"phoneNumber\":[\"0977-550282\"],\"idCard\":[\"L122746336\"],\"sex\":[\"0\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"苗栗縣苑裡鎮田心里田心57之26號\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"司機\"],\"entryDate\":[\"2021-04-06\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:06:09');
INSERT INTO `sys_oper_log` VALUES ('110', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"1\"],\"dictLabel\":[\"男\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"性别男\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:15:15');
INSERT INTO `sys_oper_log` VALUES ('111', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"2\"],\"dictLabel\":[\"女\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别女\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:15:20');
INSERT INTO `sys_oper_log` VALUES ('112', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"2\"],\"dictLabel\":[\"女\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别女\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:15:24');
INSERT INTO `sys_oper_log` VALUES ('113', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"2\"],\"dictLabel\":[\"女\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别女\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:15:28');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"se', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:35:17');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"se', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:36:10');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"se', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:36:27');
INSERT INTO `sys_oper_log` VALUES ('117', '員工表單', '5', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.export()', 'POST', '1', 'admin', '研发部门', '/employee/employee/export', '127.0.0.1', '内网IP', '{\"name\":[\"黃\"],\"aka\":[\"\"],\"phoneNumber\":[\"\"],\"idCard\":[\"\"],\"sex\":[\"\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"\"],\"company\":[\"\"],\"staffPositions\":[\"\"],\"entryDate\":[\"\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"edaa3e25-c164-4ec5-97d1-0df9499b680f_員工表單数据.xlsx\",\"code\":0}', '0', null, '2022-02-08 21:55:24');
INSERT INTO `sys_oper_log` VALUES ('118', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"2\"],\"dictLabel\":[\"女\"],\"dictValue\":[\"女\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别女\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:57:28');
INSERT INTO `sys_oper_log` VALUES ('119', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"1\"],\"dictLabel\":[\"男\"],\"dictValue\":[\"男\"],\"dictType\":[\"sys_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"性别男\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 21:57:35');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:04:57');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:05:18');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:05:33');
INSERT INTO `sys_oper_log` VALUES ('123', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"員工編號\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"employeeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工暱稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"aka\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"員工家電\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phoneNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"台灣身分證號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idCard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓別\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"se', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:06:46');
INSERT INTO `sys_oper_log` VALUES ('124', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:15:25');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"1\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"2\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"3\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"4\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"5\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCard\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:15:58');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:21:02');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"凱盛系統\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-automobile\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:25:50');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"凱盛系統\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-automobile\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:26:05');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"員工表單\"],\"url\":[\"/employee/employee\"],\"target\":[\"menuItem\"],\"perms\":[\"employee:employee:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:26:35');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2006\"],\"menuType\":[\"M\"],\"menuName\":[\"員工表單\"],\"url\":[\"/employee/employee\"],\"target\":[\"menuItem\"],\"perms\":[\"employee:employee:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:27:09');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"員工表單\"],\"url\":[\"/employee/employee\"],\"target\":[\"menuItem\"],\"perms\":[\"employee:employee:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:27:53');
INSERT INTO `sys_oper_log` VALUES ('132', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"阿忠\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"fatboy\"],\"sex\":[\"男\"],\"role\":[\"2\"],\"remark\":[\"低能兒\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-08 22:33:04');
INSERT INTO `sys_oper_log` VALUES ('133', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_goods\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:04:24');
INSERT INTO `sys_oper_log` VALUES ('134', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"ks_goods\"],\"tableComment\":[\"運送貨品資訊\"],\"className\":[\"KsGoods\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"15\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"16\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"品項編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"goodsId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"17\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品項名稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"goodsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.kaisheng\"],\"moduleName\":[\"goods\"],\"businessName\":[\"goods\"],\"functionName\":[\"運送貨物表單\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"凱盛系統\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:06:10');
INSERT INTO `sys_oper_log` VALUES ('135', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_goods', '127.0.0.1', '内网IP', '\"ks_goods\"', null, '0', null, '2022-02-10 09:06:34');
INSERT INTO `sys_oper_log` VALUES ('136', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-10 09:25:59');
INSERT INTO `sys_oper_log` VALUES ('137', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"1\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"2\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"3\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"4\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"5\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCard\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:26:14');
INSERT INTO `sys_oper_log` VALUES ('138', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-10 09:26:20');
INSERT INTO `sys_oper_log` VALUES ('139', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:33:32');
INSERT INTO `sys_oper_log` VALUES ('140', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:34:20');
INSERT INTO `sys_oper_log` VALUES ('141', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:35:32');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"1\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"2\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"3\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"4\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"5\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCard\"],', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:36:03');
INSERT INTO `sys_oper_log` VALUES ('143', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:37:20');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_employee\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:37:25');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"23\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCa', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 09:38:31');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-10 09:38:39');
INSERT INTO `sys_oper_log` VALUES ('147', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"employeeId\":[\"ks-02\"],\"name\":[\"黃振凱\"],\"aka\":[\"\"],\"phoneNumber\":[\"0909-331138\"],\"idCard\":[\"K122682542\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"負責人\"],\"entryDate\":[\"\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'ks-02\' for key \'employee_id\'\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\employee\\KsEmployeeMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsEmployeeMapper.updateKsEmployee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update ks_employee          SET employee_id = ?,             name = ?,             aka = ?,             phone_number = ?,             id_card = ?,                          home_telephone_number = ?,             address = ?,             company = ?,             staff_positions = ?,                                       reason_for_leaving = ?          where id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'ks-02\' for key \'employee_id\'\n; Duplicate entry \'ks-02\' for key \'employee_id\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'ks-02\' for key \'employee_id\'', '2022-02-10 09:43:15');
INSERT INTO `sys_oper_log` VALUES ('148', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"20\"],\"employeeId\":[\"ks-20\"],\"name\":[\"巫文輝\"],\"aka\":[\"養樂多\"],\"phoneNumber\":[\"0985-988848\"],\"idCard\":[\"U120869932\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"花蓮縣萬榮鄉紅葉村007鄰紅葉126號之4\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"司機\"],\"entryDate\":[\"\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 16:20:30');
INSERT INTO `sys_oper_log` VALUES ('149', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"employeeId\":[\"ks-16\"],\"name\":[\"朱維君\"],\"aka\":[\"\"],\"phoneNumber\":[\"0936-800399\"],\"idCard\":[\"T222218603\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"屏東縣獅子鄉草埔村草埔七項24號\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"司機\"],\"entryDate\":[\"2021-09-14\"],\"resignationDate\":[\"2022-01-20\"],\"reasonForLeaving\":[\"表弟酒駕\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 16:21:07');
INSERT INTO `sys_oper_log` VALUES ('150', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"employeeId\":[\"ks-15\"],\"name\":[\"江忠益\"],\"aka\":[\"\"],\"phoneNumber\":[\"0902-180080\"],\"idCard\":[\"M121612485\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"南投縣南投市仁和里民生街35巷4號\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"司機\"],\"entryDate\":[\"\"],\"resignationDate\":[\"2022-02-08\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 16:21:45');
INSERT INTO `sys_oper_log` VALUES ('151', '員工表單', '2', 'com.ruoyi.web.controller.kaisheng.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/employee/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"employeeId\":[\"ks-04\"],\"name\":[\"陳進國\"],\"aka\":[\"\"],\"phoneNumber\":[\"0912135920\"],\"idCard\":[\"E120028170\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"高雄市鹽埕區沙地里必忠街31巷6號\"],\"company\":[\"凱盛通運\"],\"staffPositions\":[\"司機\"],\"entryDate\":[\"2022-01-01\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 16:40:00');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_oil_order\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:13:33');
INSERT INTO `sys_oper_log` VALUES ('153', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"ks_oil_order\"],\"tableComment\":[\"加油單資訊\"],\"className\":[\"KsOilOrder\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"油單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"oilOrderId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"加油日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"oidDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"機司名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"oilDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"油加車牌\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"oilLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:15:13');
INSERT INTO `sys_oper_log` VALUES ('154', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"ks_oil_order\"],\"tableComment\":[\"加油單資訊\"],\"className\":[\"KsOilOrder\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"油單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"oilOrderId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"加油日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"oidDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"機司名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"oilDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"油加車牌\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"oilLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:15:41');
INSERT INTO `sys_oper_log` VALUES ('155', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_oil_order', '127.0.0.1', '内网IP', '\"ks_oil_order\"', null, '0', null, '2022-02-10 18:15:48');
INSERT INTO `sys_oper_log` VALUES ('156', '加油單表單', '1', 'com.ruoyi.web.controller.kaisheng.KsOilOrderController.addSave()', 'POST', '1', 'admin', '研发部门', '/oil/oil/add', '127.0.0.1', '内网IP', '{\"oilOrderId\":[\"oil-22021001\"],\"oidDate\":[\"2022-02-10\"],\"oilDriver\":[\"黃振凱\"],\"oilLicensePlateNumber\":[\"AKA-878\"],\"oilPrice\":[\"26\"],\"oilLiters\":[\"150.5\"],\"oilTotal\":[\"3913\"],\"gasStation\":[\"建興\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\oil\\KsOilOrderMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsOilOrderMapper.insertKsOilOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_oil_order          ( oil_order_id,             oid_date,             oil_driver,             oil_license_plate_number,                          oil_price,             oil_liters,             oil_total,             gas_station )           values ( ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value\n; Field \'oil_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value', '2022-02-10 18:19:01');
INSERT INTO `sys_oper_log` VALUES ('157', '加油單表單', '1', 'com.ruoyi.web.controller.kaisheng.KsOilOrderController.addSave()', 'POST', '1', 'admin', '研发部门', '/oil/oil/add', '127.0.0.1', '内网IP', '{\"oilOrderId\":[\"oil-22021001\"],\"oidDate\":[\"2022-02-10\"],\"oilDriver\":[\"黃振凱\"],\"oilLicensePlateNumber\":[\"AKA-878\"],\"oilPrice\":[\"26\"],\"oilLiters\":[\"150.5\"],\"oilTotal\":[\"3913\"],\"gasStation\":[\"建興\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\oil\\KsOilOrderMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsOilOrderMapper.insertKsOilOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_oil_order          ( oil_order_id,             oid_date,             oil_driver,             oil_license_plate_number,                          oil_price,             oil_liters,             oil_total,             gas_station )           values ( ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value\n; Field \'oil_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'oil_type\' doesn\'t have a default value', '2022-02-10 18:19:09');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_oil_order', '127.0.0.1', '内网IP', '\"ks_oil_order\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:20:35');
INSERT INTO `sys_oper_log` VALUES ('159', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_oil_order', '127.0.0.1', '内网IP', '\"ks_oil_order\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:20:55');
INSERT INTO `sys_oper_log` VALUES ('160', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"ks_oil_order\"],\"tableComment\":[\"加油單資訊\"],\"className\":[\"KsOilOrder\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"油單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"oilOrderId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"加油日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"oidDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"機司名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"oilDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"油加車牌\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"oilLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-10 18:21:15');
INSERT INTO `sys_oper_log` VALUES ('161', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_oil_order', '127.0.0.1', '内网IP', '\"ks_oil_order\"', null, '0', null, '2022-02-10 18:21:34');
INSERT INTO `sys_oper_log` VALUES ('162', '加油單表單', '1', 'com.ruoyi.web.controller.kaisheng.KsOilOrderController.addSave()', 'POST', '1', 'admin', '研发部门', '/oil/oil/add', '127.0.0.1', '内网IP', '{\"oilOrderId\":[\"23232323\"],\"oidDate\":[\"2022-02-11\"],\"oilDriver\":[\"黃振凱\"],\"oilLicensePlateNumber\":[\"AKA-887\"],\"oilType\":[\"超級柴油\"],\"oilPrice\":[\"30\"],\"oilLiters\":[\"30000\"],\"oilTotal\":[\"900000\"],\"gasStation\":[\"建興加油站\"]}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'oil_liters\' at row 1\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\oil\\KsOilOrderMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsOilOrderMapper.insertKsOilOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_oil_order          ( oil_order_id,             oid_date,             oil_driver,             oil_license_plate_number,             oil_type,             oil_price,             oil_liters,             oil_total,             gas_station )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'oil_liters\' at row 1\n; Data truncation: Out of range value for column \'oil_liters\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'oil_liters\' at row 1', '2022-02-11 00:16:26');
INSERT INTO `sys_oper_log` VALUES ('163', '加油單表單', '1', 'com.ruoyi.web.controller.kaisheng.KsOilOrderController.addSave()', 'POST', '1', 'admin', '研发部门', '/oil/oil/add', '127.0.0.1', '内网IP', '{\"oilOrderId\":[\"23232323\"],\"oidDate\":[\"2022-02-11\"],\"oilDriver\":[\"黃振凱\"],\"oilLicensePlateNumber\":[\"AKA-887\"],\"oilType\":[\"超級柴油\"],\"oilPrice\":[\"30\"],\"oilLiters\":[\"50\"],\"oilTotal\":[\"1500\"],\"gasStation\":[\"建興加油站\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 00:16:35');
INSERT INTO `sys_oper_log` VALUES ('164', '加油單表單', '3', 'com.ruoyi.web.controller.kaisheng.KsOilOrderController.remove()', 'POST', '1', 'admin', '研发部门', '/oil/oil/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 00:19:47');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_downbound\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 16:33:44');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 16:42:50');
INSERT INTO `sys_oper_log` VALUES ('167', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 16:42:59');
INSERT INTO `sys_oper_log` VALUES ('168', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 16:44:16');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 16:44:33');
INSERT INTO `sys_oper_log` VALUES ('170', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_downbound', '127.0.0.1', '内网IP', '\"ks_downbound\"', null, '0', null, '2022-02-11 16:46:16');
INSERT INTO `sys_oper_log` VALUES ('171', '南下表單', '1', 'com.ruoyi.web.controller.kaisheng.KsDownboundController.addSave()', 'POST', '1', 'admin', '研发部门', '/downbound/downbound/add', '127.0.0.1', '内网IP', '{\"downboundId\":[\"202020\"],\"downboundDate\":[\"2022-02-11\"],\"oilDriver\":[\"黃振凱\"],\"downboundLicensePlateNumber\":[\"AKA878\"],\"downboundCompany\":[\"GY\"],\"downboundOutset\":[\"ZZ\"],\"downboundYard\":[\"BB\"],\"downboundCash\":[\"無\"],\"downboundGoods\":[\"\"],\"downboundGoodsMt\":[\"20.5\"],\"downboundGoodsPrice\":[\"200\"],\"downboundTotal\":[\"4100\"],\"downboundDriverPay\":[\"943\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\downbound\\KsDownboundMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsDownboundMapper.insertKsDownbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_downbound          ( downbound_id,             downbound_date,                          downbound_license_plate_number,             downbound_company,             downbound_outset,             downbound_yard,             downbound_cash,             downbound_goods,             downbound_goods_mt,             downbound_goods_price,             downbound_total,             downbound_driver_pay )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\n; Field \'downbound_driver\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value', '2022-02-11 18:18:50');
INSERT INTO `sys_oper_log` VALUES ('172', '南下表單', '1', 'com.ruoyi.web.controller.kaisheng.KsDownboundController.addSave()', 'POST', '1', 'admin', '研发部门', '/downbound/downbound/add', '127.0.0.1', '内网IP', '{\"downboundId\":[\"202020\"],\"downboundDate\":[\"2022-02-11\"],\"oilDriver\":[\"黃振凱\"],\"downboundLicensePlateNumber\":[\"AKA878\"],\"downboundCompany\":[\"GY\"],\"downboundOutset\":[\"ZZ\"],\"downboundYard\":[\"BB\"],\"downboundCash\":[\"無\"],\"downboundGoods\":[\"幹\"],\"downboundGoodsMt\":[\"20.5\"],\"downboundGoodsPrice\":[\"200\"],\"downboundTotal\":[\"4100\"],\"downboundDriverPay\":[\"943\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\downbound\\KsDownboundMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsDownboundMapper.insertKsDownbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_downbound          ( downbound_id,             downbound_date,                          downbound_license_plate_number,             downbound_company,             downbound_outset,             downbound_yard,             downbound_cash,             downbound_goods,             downbound_goods_mt,             downbound_goods_price,             downbound_total,             downbound_driver_pay )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\n; Field \'downbound_driver\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value', '2022-02-11 18:19:05');
INSERT INTO `sys_oper_log` VALUES ('173', '南下表單', '1', 'com.ruoyi.web.controller.kaisheng.KsDownboundController.addSave()', 'POST', '1', 'admin', '研发部门', '/downbound/downbound/add', '127.0.0.1', '内网IP', '{\"downboundId\":[\"20202020\"],\"downboundDate\":[\"2022-02-11\"],\"oilDriver\":[\"黃振凱\"],\"downboundLicensePlateNumber\":[\"AKA878\"],\"downboundCompany\":[\"ZZ\"],\"downboundOutset\":[\"FF\"],\"downboundYard\":[\"DD\"],\"downboundCash\":[\"無\"],\"downboundGoods\":[\"$$\"],\"downboundGoodsMt\":[\"20\"],\"downboundGoodsPrice\":[\"40\"],\"downboundTotal\":[\"800\"],\"downboundDriverPay\":[\"184\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\Faker\\git\\RuoYi\\ruoyi-kaisheng\\target\\classes\\mapper\\downbound\\KsDownboundMapper.xml]\r\n### The error may involve com.ruoyi.kaisheng.mapper.KsDownboundMapper.insertKsDownbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ks_downbound          ( downbound_id,             downbound_date,                          downbound_license_plate_number,             downbound_company,             downbound_outset,             downbound_yard,             downbound_cash,             downbound_goods,             downbound_goods_mt,             downbound_goods_price,             downbound_total,             downbound_driver_pay )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value\n; Field \'downbound_driver\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'downbound_driver\' doesn\'t have a default value', '2022-02-11 18:20:51');
INSERT INTO `sys_oper_log` VALUES ('174', '南下表單', '1', 'com.ruoyi.web.controller.kaisheng.KsDownboundController.addSave()', 'POST', '1', 'admin', '研发部门', '/downbound/downbound/add', '127.0.0.1', '内网IP', '{\"downboundId\":[\"20202020\"],\"downboundDate\":[\"2022-02-11\"],\"downboundDriver\":[\"黃振凱\"],\"downboundLicensePlateNumber\":[\"AKA-878\"],\"downboundCompany\":[\"ZZ\"],\"downboundOutset\":[\"GG\"],\"downboundYard\":[\"XX\"],\"downboundCash\":[\"無\"],\"downboundGoods\":[\"EE\"],\"downboundGoodsMt\":[\"36.5\"],\"downboundGoodsPrice\":[\"850\"],\"downboundTotal\":[\"31025\"],\"downboundDriverPay\":[\"7135.75\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 18:24:38');
INSERT INTO `sys_oper_log` VALUES ('175', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"車輛貸款狀態\"],\"dictType\":[\"ks_car_loan\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:14:11');
INSERT INTO `sys_oper_log` VALUES ('176', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"車輛閒置狀態\"],\"dictType\":[\"ks_car_idle\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:14:37');
INSERT INTO `sys_oper_log` VALUES ('177', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"100\"],\"dictName\":[\"車輛貸款狀態\"],\"dictType\":[\"ks_car_loan\"],\"status\":[\"0\"],\"remark\":[\"車輛是否貸款\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:14:46');
INSERT INTO `sys_oper_log` VALUES ('178', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"車輛閒置狀態\"],\"dictType\":[\"ks_car_idle\"],\"status\":[\"0\"],\"remark\":[\"車輛閒置列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:14:56');
INSERT INTO `sys_oper_log` VALUES ('179', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"100\"],\"dictName\":[\"車輛貸款狀態\"],\"dictType\":[\"ks_car_loan\"],\"status\":[\"0\"],\"remark\":[\"車輛貸款列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:15:02');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"貸款中\"],\"dictValue\":[\"貸款中\"],\"dictType\":[\"ks_car_loan\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:15:32');
INSERT INTO `sys_oper_log` VALUES ('181', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"貸款中\"],\"dictValue\":[\"貸款中\"],\"dictType\":[\"ks_car_loan\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:15:40');
INSERT INTO `sys_oper_log` VALUES ('182', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已還款\"],\"dictValue\":[\"已還款\"],\"dictType\":[\"ks_car_loan\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:15:55');
INSERT INTO `sys_oper_log` VALUES ('183', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"閒置中\"],\"dictValue\":[\"閒置中\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:16:26');
INSERT INTO `sys_oper_log` VALUES ('184', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"維修中\"],\"dictValue\":[\"維修中\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:16:43');
INSERT INTO `sys_oper_log` VALUES ('185', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"正常運行\"],\"dictValue\":[\"正常運行\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:16:59');
INSERT INTO `sys_oper_log` VALUES ('186', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"正常運行\"],\"dictValue\":[\"正常運行\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:17:07');
INSERT INTO `sys_oper_log` VALUES ('187', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"101\"],\"dictLabel\":[\"已還款\"],\"dictValue\":[\"已還款\"],\"dictType\":[\"ks_car_loan\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:17:22');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_car\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:17:37');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:19:38');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:21:57');
INSERT INTO `sys_oper_log` VALUES ('191', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:22:12');
INSERT INTO `sys_oper_log` VALUES ('192', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:22:16');
INSERT INTO `sys_oper_log` VALUES ('193', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"保養日期\"],\"columns[5].j', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:23:39');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', null, '0', null, '2022-02-11 22:23:43');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:33:35');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"保養日期\"],\"columns[5].ja', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:33:54');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', null, '0', null, '2022-02-11 22:33:58');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"保養日期\"],\"columns[5].j', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:42:13');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', null, '0', null, '2022-02-11 22:42:20');
INSERT INTO `sys_oper_log` VALUES ('200', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"102\"],\"dictLabel\":[\"閒置中\"],\"dictValue\":[\"閒置中\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:46:01');
INSERT INTO `sys_oper_log` VALUES ('201', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"102\"],\"dictLabel\":[\"閒置中\"],\"dictValue\":[\"閒置中\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:46:05');
INSERT INTO `sys_oper_log` VALUES ('202', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"正常運行\"],\"dictValue\":[\"正常運行\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:46:09');
INSERT INTO `sys_oper_log` VALUES ('203', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"103\"],\"dictLabel\":[\"維修中\"],\"dictValue\":[\"維修中\"],\"dictType\":[\"ks_car_idle\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:46:15');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"加油表單\"],\"url\":[\"/oil/oil\"],\"target\":[\"menuItem\"],\"perms\":[\"oil:oil:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:48:27');
INSERT INTO `sys_oper_log` VALUES ('205', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"運送貨物表單\"],\"url\":[\"/goods/goods\"],\"target\":[\"menuItem\"],\"perms\":[\"goods:goods:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-cube\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:48:51');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"員工表單\"],\"url\":[\"/employee/employee\"],\"target\":[\"menuItem\"],\"perms\":[\"employee:employee:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:49:01');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"加油表單\"],\"url\":[\"/oil/oil\"],\"target\":[\"menuItem\"],\"perms\":[\"oil:oil:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-tint\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:49:38');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"南下表單\"],\"url\":[\"/downbound/downbound\"],\"target\":[\"menuItem\"],\"perms\":[\"downbound:downbound:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-level-down\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:51:43');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2037\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"車輛表單\"],\"url\":[\"/car/car\"],\"target\":[\"menuItem\"],\"perms\":[\"car:car:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-truck\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:52:50');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"貨物表單\"],\"url\":[\"/goods/goods\"],\"target\":[\"menuItem\"],\"perms\":[\"goods:goods:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-cube\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 22:54:00');
INSERT INTO `sys_oper_log` VALUES ('211', '運送貨物表單', '3', 'com.ruoyi.web.controller.kaisheng.KsGoodsController.remove()', 'POST', '1', 'admin', '研发部门', '/goods/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-11 23:05:46');
INSERT INTO `sys_oper_log` VALUES ('212', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_gonorth\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:40:34');
INSERT INTO `sys_oper_log` VALUES ('213', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ks_gonorth\"],\"tableComment\":[\"北上單資訊\"],\"className\":[\"KsGonorth\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gonorthId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"gonorthDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gonorthDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"gonorthLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"69\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:41:27');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ks_gonorth\"],\"tableComment\":[\"北上單資訊\"],\"className\":[\"KsGonorth\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gonorthId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"gonorthDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gonorthDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"gonorthLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"69\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:42:02');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ks_gonorth\"],\"tableComment\":[\"北上單資訊\"],\"className\":[\"KsGonorth\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gonorthId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"gonorthDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gonorthDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"gonorthLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:43:25');
INSERT INTO `sys_oper_log` VALUES ('216', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ks_gonorth\"],\"tableComment\":[\"北上單資訊\"],\"className\":[\"KsGonorth\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gonorthId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"gonorthDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gonorthDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"gonorthLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:43:43');
INSERT INTO `sys_oper_log` VALUES ('217', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_gonorth', '127.0.0.1', '内网IP', '\"ks_gonorth\"', null, '0', null, '2022-02-12 15:43:52');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"北上表單\"],\"url\":[\"/gonorth/gonorth\"],\"target\":[\"menuItem\"],\"perms\":[\"gonorth:gonorth:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:46:07');
INSERT INTO `sys_oper_log` VALUES ('219', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"南下表單\"],\"url\":[\"/downbound/downbound\"],\"target\":[\"menuItem\"],\"perms\":[\"downbound:downbound:view\"],\"orderNum\":[\"101\"],\"icon\":[\"fa fa-level-down\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:46:23');
INSERT INTO `sys_oper_log` VALUES ('220', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"北上表單\"],\"url\":[\"/gonorth/gonorth\"],\"target\":[\"menuItem\"],\"perms\":[\"gonorth:gonorth:view\"],\"orderNum\":[\"102\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-12 15:46:30');
INSERT INTO `sys_oper_log` VALUES ('221', '北上表單', '5', 'com.ruoyi.web.controller.kaisheng.KsGonorthController.export()', 'POST', '1', 'admin', '研发部门', '/gonorth/gonorth/export', '127.0.0.1', '内网IP', '{\"gonorthId\":[\"\"],\"gonorthDate\":[\"\"],\"gonorthDriver\":[\"\"],\"gonorthLicensePlateNumber\":[\"\"],\"gonorthCompany\":[\"\"],\"gonorthOutset\":[\"\"],\"gonorthYard\":[\"\"],\"gonorthCash\":[\"\"],\"gonorthGoods\":[\"\"],\"gonorthGoodsMt\":[\"\"],\"gonorthGoodsPriceCompany\":[\"\"],\"gonorthGoodsPriceDriver\":[\"\"],\"gonorthTotal\":[\"\"],\"gonorthBillTotal\":[\"\"],\"gonorthDriverPay\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"44d3ae6e-4a56-4d2a-ac3f-a19ee3b48112_北上表單数据.xlsx\",\"code\":0}', '0', null, '2022-02-12 16:10:07');
INSERT INTO `sys_oper_log` VALUES ('222', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2006\"],\"menuType\":[\"M\"],\"menuName\":[\"數據總匯\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:16:59');
INSERT INTO `sys_oper_log` VALUES ('223', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"數據總匯\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"200\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:17:20');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"數據總匯\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"200\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:18:09');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"數據總匯\"],\"url\":[\"/report/report\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"200\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:18:36');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"萬用報表\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:19:08');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2050\"],\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"萬用報表\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:19:34');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2050\"],\"parentId\":[\"2049\"],\"menuType\":[\"C\"],\"menuName\":[\"萬用報表\"],\"url\":[\"report/report\"],\"target\":[\"menuItem\"],\"perms\":[\"report:report:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 19:23:50');
INSERT INTO `sys_oper_log` VALUES ('229', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ks_show_data\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 23:43:15');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"ks_show_data\"],\"tableComment\":[\"測試展示\"],\"className\":[\"KsShowData\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"80\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.kaisheng\"],\"moduleName\":[\"kaisheng\"],\"businessName\":[\"showdata\"],\"functionName\":[\"數據總匯\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"凱盛系統\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 23:44:45');
INSERT INTO `sys_oper_log` VALUES ('231', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '2049', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-02-16 23:45:11');
INSERT INTO `sys_oper_log` VALUES ('232', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2050', '127.0.0.1', '内网IP', '2050', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 23:45:19');
INSERT INTO `sys_oper_log` VALUES ('233', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '2049', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 23:45:24');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_show_data', '127.0.0.1', '内网IP', '\"ks_show_data\"', null, '0', null, '2022-02-16 23:45:32');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"ks_show_data\"],\"tableComment\":[\"測試展示\"],\"className\":[\"KsShowData\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"80\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.kaisheng\"],\"moduleName\":[\"showdata\"],\"businessName\":[\"showdata\"],\"functionName\":[\"數據總匯\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"凱盛系統\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-16 23:47:59');
INSERT INTO `sys_oper_log` VALUES ('236', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_show_data', '127.0.0.1', '内网IP', '\"ks_show_data\"', null, '0', null, '2022-02-16 23:48:04');
INSERT INTO `sys_oper_log` VALUES ('237', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 02:52:19');
INSERT INTO `sys_oper_log` VALUES ('238', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_downbound', '127.0.0.1', '内网IP', '\"ks_downbound\"', null, '0', null, '2022-02-19 02:52:25');
INSERT INTO `sys_oper_log` VALUES ('239', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"ks_downbound\"],\"tableComment\":[\"南下單資訊\"],\"className\":[\"KsDownbound\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"42\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"43\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"downboundId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"44\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"downboundDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"45\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"downboundDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"46\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"downboundLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 02:53:53');
INSERT INTO `sys_oper_log` VALUES ('240', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"23\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCa', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 02:59:05');
INSERT INTO `sys_oper_log` VALUES ('241', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"ks_employee\"],\"tableComment\":[\"員工資訊\"],\"className\":[\"KsEmployee\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"員工編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"employeeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"員工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"綽號\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"aka\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"手機\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"23\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身分證\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"idCa', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 02:59:15');
INSERT INTO `sys_oper_log` VALUES ('242', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_employee', '127.0.0.1', '内网IP', '\"ks_employee\"', null, '0', null, '2022-02-19 02:59:20');
INSERT INTO `sys_oper_log` VALUES ('243', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"ks_gonorth\"],\"tableComment\":[\"北上單資訊\"],\"className\":[\"KsGonorth\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"南下單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gonorthId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期(南下單)\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"gonorthDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"司機名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gonorthDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"車牌號碼\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"gonorthLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:02:42');
INSERT INTO `sys_oper_log` VALUES ('244', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_gonorth', '127.0.0.1', '内网IP', '\"ks_gonorth\"', null, '0', null, '2022-02-19 03:02:51');
INSERT INTO `sys_oper_log` VALUES ('245', '南下表單', '2', 'com.ruoyi.kaisheng.controller.KsDownboundController.editSave()', 'POST', '1', 'admin', '研发部门', '/ks/downbound/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"downboundId\":[\"20202020\"],\"downboundDate\":[\"2022-02-11\"],\"downboundDriver\":[\"黃振凱\"],\"downboundLicensePlateNumber\":[\"AKA-878\"],\"downboundCompany\":[\"ZZ\"],\"downboundOutset\":[\"GG\"],\"downboundYard\":[\"XX\"],\"downboundCash\":[\"無\"],\"downboundGoods\":[\"WWW\"],\"downboundGoodsMt\":[\"36.5\"],\"downboundGoodsPrice\":[\"850.0\"],\"downboundTotal\":[\"31025.0\"],\"downboundDriverPay\":[\"7135.75\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:04:17');
INSERT INTO `sys_oper_log` VALUES ('246', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"ks_oil_order\"],\"tableComment\":[\"加油單資訊\"],\"className\":[\"KsOilOrder\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"油單編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"oilOrderId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"加油日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"oidDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"機司名稱\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"oilDriver\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"油加車牌\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"oilLicensePlateNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:05:03');
INSERT INTO `sys_oper_log` VALUES ('247', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_oil_order', '127.0.0.1', '内网IP', '\"ks_oil_order\"', null, '0', null, '2022-02-19 03:05:11');
INSERT INTO `sys_oper_log` VALUES ('248', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"ks_goods\"],\"tableComment\":[\"運送貨品資訊\"],\"className\":[\"KsGoods\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"15\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"16\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"品項編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"goodsId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"17\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品項名稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"goodsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.kaisheng\"],\"moduleName\":[\"ks\"],\"businessName\":[\"goods\"],\"functionName\":[\"運送貨物表單\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"凱盛系統\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:06:57');
INSERT INTO `sys_oper_log` VALUES ('249', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"ks_goods\"],\"tableComment\":[\"運送貨品資訊\"],\"className\":[\"KsGoods\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"15\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"16\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"品項編號\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"goodsId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"17\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品項名稱\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"goodsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.kaisheng\"],\"moduleName\":[\"ks\"],\"businessName\":[\"goods\"],\"functionName\":[\"運送貨物表單\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"凱盛系統\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:07:08');
INSERT INTO `sys_oper_log` VALUES ('250', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_goods', '127.0.0.1', '内网IP', '\"ks_goods\"', null, '0', null, '2022-02-19 03:07:12');
INSERT INTO `sys_oper_log` VALUES ('251', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"ks_car\"],\"tableComment\":[\"車輛資訊\"],\"className\":[\"KsCar\"],\"functionAuthor\":[\"Sheng\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"流水號\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"車牌\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"licensePlateNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"車輛狀況\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"carIdle\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"ks_car_idle\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"購車日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"carPurchaseDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"59\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"貸款狀態\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"carLoan\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"60\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"保養日期\"],\"columns[5].j', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:08:14');
INSERT INTO `sys_oper_log` VALUES ('252', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/ks_car', '127.0.0.1', '内网IP', '\"ks_car\"', null, '0', null, '2022-02-19 03:08:20');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"凱基系統\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-automobile\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:24:25');
INSERT INTO `sys_oper_log` VALUES ('254', '員工表單', '2', 'com.ruoyi.kaisheng.controller.KsEmployeeController.editSave()', 'POST', '1', 'admin', '研发部门', '/ks/employee/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"employeeId\":[\"ks-01\"],\"name\":[\"黃智凱\"],\"aka\":[\"\"],\"phoneNumber\":[\"0960-182124\"],\"idCard\":[\"A100537101\"],\"homeTelephoneNumber\":[\"\"],\"address\":[\"新北市泰山區中華街9號\"],\"company\":[\"凱基股份有限公司\"],\"staffPositions\":[\"負責人\"],\"entryDate\":[\"2015-05-01\"],\"resignationDate\":[\"\"],\"reasonForLeaving\":[\"無\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-02-19 03:25:13');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2022-02-08 12:56:01', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2022-02-08 12:56:01', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2022-02-08 12:56:01', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2022-02-08 12:56:01', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-02-19 03:10:30', '2022-02-08 12:56:01', 'admin', '2022-02-08 12:56:01', '', '2022-02-19 03:10:30', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2022-02-08 12:56:01', '2022-02-08 12:56:01', 'admin', '2022-02-08 12:56:01', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('100', null, 'fatboy', '阿忠', '00', '', '', '男', '', 'e811eb46aebc66ccc5102a69b2d96864', '3d988f', '0', '0', '127.0.0.1', '2022-02-08 22:33:21', null, 'admin', '2022-02-08 22:33:04', '', '2022-02-08 22:33:21', '低能兒');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('abafaae4-df2b-46e8-afe7-459a2c51fb10', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-02-19 02:50:53', '2022-02-19 03:24:54', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('100', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '2');
