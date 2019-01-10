/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : django

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-09 17:37:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户表', '6', 'add_user');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户表', '6', 'change_user');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户表', '6', 'delete_user');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户表', '6', 'view_user');

-- ----------------------------
-- Table structure for `ceshi`
-- ----------------------------
DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE `ceshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ceshi
-- ----------------------------
INSERT INTO `ceshi` VALUES ('1', '2019-01-09 16:05:49');
INSERT INTO `ceshi` VALUES ('2', '2019-01-09 16:06:05');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_dp_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_dp_users_id` FOREIGN KEY (`user_id`) REFERENCES `dp_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'vedioapp', 'user');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-01-09 01:35:35.087671');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-01-09 01:35:35.967673');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-01-09 01:35:39.176682');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-01-09 01:35:39.777684');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-01-09 01:35:39.817684');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-01-09 01:35:39.837684');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-01-09 01:35:39.867684');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-01-09 01:35:39.887684');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-01-09 01:35:39.917684');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-01-09 01:35:39.987684');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-01-09 01:35:40.017684');
INSERT INTO `django_migrations` VALUES ('12', 'vedioapp', '0001_initial', '2019-01-09 01:35:43.285695');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2019-01-09 01:35:44.903701');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2019-01-09 01:35:44.933701');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2019-01-09 01:35:44.973701');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-01-09 01:35:45.333701');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('nqd6n9yb98p8srrojdjdj254i1kc7sz7', 'MDE0NDM1M2MyZjhjMmQxMjIxMzY1MDI3ZmRkNGE3NjFjOGY5OGZkZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidmVkaW9hcHAuYmFja2VuZHMuY3VzdG9tYmFja2VuZC5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDQ3ZjQ5MDhjNGExYWVkNDViOTZlM2M0ZmNmMTcwOTg5Nzk5Nzg4ZiJ9', '2019-01-23 09:15:20.175155');

-- ----------------------------
-- Table structure for `dp_admin_access`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_access`;
CREATE TABLE `dp_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of dp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_action`;
CREATE TABLE `dp_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of dp_admin_action
-- ----------------------------
INSERT INTO `dp_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `dp_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `dp_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `dp_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `dp_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `dp_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `dp_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `dp_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `dp_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `dp_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `dp_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `dp_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `dp_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `dp_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `dp_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `dp_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `dp_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `dp_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `dp_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `dp_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `dp_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `dp_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `dp_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `dp_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `dp_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `dp_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `dp_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `dp_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `dp_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `dp_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `dp_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `dp_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `dp_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `dp_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `dp_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `dp_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `dp_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `dp_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `dp_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `dp_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `dp_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `dp_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');
INSERT INTO `dp_admin_action` VALUES ('43', 'book', 'book_add', '添加图书', '添加图书', '', '[user|get_nickname] 添加了图书：[details]', '1', '1542026640', '1542026670');
INSERT INTO `dp_admin_action` VALUES ('44', 'book', 'catgory_edit', '图书分类编辑', '管理员编辑图书分类', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1542271177', '1542271177');
INSERT INTO `dp_admin_action` VALUES ('45', 'book', 'category_add', '图书分类添加', '管理员新增了图书分类', '', '[user|get_nickname] 新增了节点：[details]', '1', '1542271234', '1542271234');
INSERT INTO `dp_admin_action` VALUES ('46', 'book', 'audio_add', '添加音频', '管理员添加音频', '', '[user|get_nickname] 添加了音频文件：[details]', '1', '1542331493', '1542331493');

-- ----------------------------
-- Table structure for `dp_admin_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_attachment`;
CREATE TABLE `dp_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` varchar(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `width` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=940 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of dp_admin_attachment
-- ----------------------------
INSERT INTO `dp_admin_attachment` VALUES ('1', '1', '13_170221152026_1.jpg', 'book', 'uploads/images/20181112/22b836b5b78ec5535462fcb993099901.jpg', '', '', 'image/jpeg', 'jpg', '2371', '77bc844af01e40a99f8ed8a2aae212c3', 'e48042f8de9a65f989b4c4a7be00862415740988', 'local', '0', '1542033396', '1542033396', '100', '1', '87', '87');
INSERT INTO `dp_admin_attachment` VALUES ('2', '1', '成语故事大全.jpg', 'book', 'uploads/images/20181116/2f4dbb3182ee4a92f9713deeb1fd9357.jpg', '', '', 'image/jpeg', 'jpg', '5198', '271f722f7becc40a20237d4d5d4ccb51', '378b806fcd38ec68a7daf21d53711da65a56d6c1', 'local', '0', '1542334809', '1542334809', '100', '1', '135', '88');
INSERT INTO `dp_admin_attachment` VALUES ('3', '1', ' 按图索骥.mp3', 'book', 'uploads/files/20181116/5f16897c9e9e276d40309262c33df08f.mp3', '', '', 'audio/mp3', 'mp3', '1620453', 'c58cbc632fbfdb0862393c6f8f48b705', '18f34c0565270a07d7973bbc0c6f17f7edfe105f', 'local', '0', '1542335051', '1542335051', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('4', '1', '10002990.mp3', 'book', 'uploads/files/20181116/d8144c6b3a2377945054d6deee6661c8.mp3', '', '', 'audio/mp3', 'mp3', '909111', '258f8cd10ddb362f64479264265394dd', 'f72c8e24453fa7522f961292cee6ecba345b5b68', 'local', '0', '1542335450', '1542335450', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('5', '1', '10002987.mp3', 'book', 'uploads/files/20181116/9af6e86321f23c44d164a70551f08775.mp3', '', '', 'audio/mp3', 'mp3', '1362596', 'de23f5df0a3c2e1719023c8790fc1ccb', '270b4900cf9ae24d17dab663800ca62f737a9d5b', 'local', '0', '1542352751', '1542352751', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('6', '1', '10002992.mp3', 'book', 'uploads/files/20181116/7a16443e10730189c2402d6556fe0220.mp3', '', '', 'audio/mp3', 'mp3', '653738', 'bf354f2a0e2c96304754260c663527bd', 'd5de9fc4826e8d4bd8249e5063c94535344b379e', 'local', '0', '1542352836', '1542352836', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('7', '1', '1341891530529.jpg', 'book', 'uploads/images/20181117/6d7f2fe590cc838c3139ed852474dd0b.jpg', '', '', 'image/jpeg', 'jpg', '9644', 'ad4aaa399cf6df85530c27e8b5fe7e3b', '3f390bb5ac61e000ffe53530af41b29f6f773874', 'local', '0', '1542457747', '1542457747', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('8', '1', '13418070617455.mp3', 'book', 'uploads/files/20181117/8e0bbbec5b0229a5ba65f7fe4a64213a.mp3', '', '', 'audio/mp3', 'mp3', '6554886', 'b326fea64e6b18f7252ac3d9097e7a70', '909b3a5ad96041bc51ab41f7815f1f6b05149c3e', 'local', '0', '1542460226', '1542460226', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('9', '1', '13418071131048.mp3', 'book', 'uploads/files/20181117/61e34f798dddceb7e8bcbf9da223fed9.mp3', '', '', 'audio/mp3', 'mp3', '5320026', '1fb72a30a05e305f8e24e0fffc25e9c1', 'cb9d4374a4e3c6cb1eb56772ba921b1ac308fbd7', 'local', '0', '1542460309', '1542460309', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('10', '1', '1341891400744.jpg', 'book', 'uploads/images/20181117/54dd49bf15ef1548f5c5a4499bb2e09e.jpg', '', '', 'image/jpeg', 'jpg', '6991', '6044cc17b01e8a5988ddbd6138cc8496', '3d1e1a88e9902a26bd36662bbdd7f0eeb08f7168', 'local', '0', '1542460366', '1542460366', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('11', '1', '134180706730980.mp3', 'book', 'uploads/files/20181117/452eaa09efa6d63af5195b4cd754d206.mp3', '', '', 'audio/mp3', 'mp3', '5411977', '7f396bff75b17581b44fd02ce176fcbd', 'd50869c89add0b1459f39b9eedaeb52bdcc3c61e', 'local', '0', '1542460513', '1542460513', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('12', '1', '1341891483401.jpg', 'book', 'uploads/images/20181117/5cacf384249b0d539b2d6949b86a2b92.jpg', '', '', 'image/jpeg', 'jpg', '10099', 'e4b33bb9993462ad38dbfa77a9b09586', '51cc3e7c0b9d3810adc8d84d59790288df2ca138', 'local', '0', '1542460636', '1542460636', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('13', '1', '134180706327707.mp3', 'book', 'uploads/files/20181117/40dedca6e81e1c1831540ae8830e26aa.mp3', '', '', 'audio/mp3', 'mp3', '5916454', '185f710ebc8823faa89dba3981275193', '3dcc1e3e7091e0801b841ffbd640663f127b1a2a', 'local', '0', '1542461773', '1542461773', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('14', '1', '5c0234e6ec5e0f003852b116.png', 'admin', 'uploads/images/20181201/6526a1519f4395b28448e428ca77826f.png', '', '', 'image/png', 'png', '9660', '435d668ed18df925eb59cdfde42f330b', 'c14c59747a4e9d61eb7f750b3ec9a953f7f4c636', 'local', '0', '1543648830', '1543648830', '100', '1', '300', '300');
INSERT INTO `dp_admin_attachment` VALUES ('15', '1', '儿童2.png', 'admin', 'uploads/images/20181201/82e10d3677c54d63959e4fd6d80c1132.png', '', '', 'image/png', 'png', '41773', '2b8c2ce17bdfab18c108d5849a0865f6', '618f3d371a489cbf540135a0f39f5577428390f8', 'local', '0', '1543672889', '1543672889', '100', '1', '864', '540');
INSERT INTO `dp_admin_attachment` VALUES ('16', '1', '儿童datu.png', 'admin', 'uploads/images/20181202/a0c8883676d5bb15a7e721838318ac0c.png', '', '', 'image/png', 'png', '208325', 'aef17637314ef3fa2af5aa2ad1c7db91', '90b1ffc2343c173fc1db9b8c345871632202bd00', 'local', '0', '1543735782', '1543735782', '100', '1', '629', '674');
INSERT INTO `dp_admin_attachment` VALUES ('17', '1', 'tubiao.png', 'admin', 'uploads/images/20181202/93e65c9880711b6583bee59d04287fc2.png', '', '', 'image/png', 'png', '20350', '96ed2dc2b75eb990aeaacf2a514fdbc6', '92e73edf8cb5a218b94f88044608f849cb30e804', 'local', '0', '1543737351', '1543737351', '100', '1', '127', '56');
INSERT INTO `dp_admin_attachment` VALUES ('18', '1', '白色背景图标32x32.png', 'admin', 'uploads/images/20181202/c1a674a320b3f54ba4e55b0e228407d6.png', '', '', 'image/png', 'png', '4797', '6083bc9afcf00d4a17d86a8da4dc0d77', 'cce10be77837b5dd8807b1308723fedf793af95c', 'local', '0', '1543738783', '1543738783', '100', '1', '32', '32');
INSERT INTO `dp_admin_attachment` VALUES ('19', '1', '文字白色背景217x59.png', 'admin', 'uploads/images/20181202/c58595abd7baa051fef6f1361c7a43fe.png', '', '', 'image/png', 'png', '11184', '82cc28352743623e63b41eafca2fc05f', 'df6533d669cded962608ebe340836626a5886760', 'local', '0', '1543738797', '1543738797', '100', '1', '127', '56');
INSERT INTO `dp_admin_attachment` VALUES ('20', '1', '文字.png', 'admin', 'uploads/images/20181202/6a1250b330ca17f760ec0500f8b859eb.png', '', '', 'image/png', 'png', '320277', '9a1b469d5b45a80f2411df06ae73f40c', '3a2a58833579e66a34c542d839d5818e0caf6b5a', 'local', '0', '1543738860', '1543738860', '100', '1', '1151', '508');
INSERT INTO `dp_admin_attachment` VALUES ('21', '1', '文字.png', 'admin', 'uploads/images/20181202/e1c7ae0a4a12cb0c9b00e6e540300959.png', '', '', 'image/png', 'png', '149757', '62e16c3065c289c95dc17b3a69dfb1f8', '87e047a1693753f692915572e7adc3664c4198ed', 'local', '0', '1543739216', '1543739216', '100', '1', '1151', '508');
INSERT INTO `dp_admin_attachment` VALUES ('22', '1', '图标图片.png', 'admin', 'uploads/images/20181203/9cb171b6c5169eb1948e642cb2d30880.png', '', '', 'image/png', 'png', '173438', 'e7a921f0aa88dfde62bd14033ffdb710', '50d6e5f0313ce937a38954ee815cc85d5b5bda2b', 'local', '0', '1543850653', '1543850653', '100', '1', '480', '480');
INSERT INTO `dp_admin_attachment` VALUES ('23', '1', '文字最新最清楚.png', 'admin', 'uploads/images/20181203/35d9531a2b06d16ae74e0874b3813686.png', '', '', 'image/png', 'png', '51098', 'd3ce6cdfa204e9c592b1c86445368a7d', 'f0f150a0cd6028196f1c81c56a7d7274757e32cd', 'local', '0', '1543850659', '1543850659', '100', '1', '480', '241');
INSERT INTO `dp_admin_attachment` VALUES ('24', '1', '1341919959322.jpg', 'book', 'uploads/images/20181205/a57ab0f4bffa3b44cef9dd368a4c35a2.jpg', '', '', 'image/jpeg', 'jpg', '7996', 'a54e0c570942adca2e11384fb5e010eb', '8bb5f60147d62c26407832d9ffb3341a37941510', 'local', '0', '1544013941', '1544013941', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('25', '1', '1348201912638.jpg', 'book', 'uploads/images/20181205/cd217f5656159549e57cea5aec0b8aec.jpg', '', '', 'image/jpeg', 'jpg', '10509', 'f579ddb639920545446b007297c58480', '5cf98fcf421197634b13d93595068423f9aa029c', 'local', '0', '1544014482', '1544014482', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('26', '1', '1376275409394.jpg', 'book', 'uploads/images/20181205/8f0f18a0401bdcbde3a6d1afeed48129.jpg', '', '', 'image/jpeg', 'jpg', '12472', 'd25d09aa747e1e8752517d873ede90a8', '4eabbef8373155ab23047ecdd34181a3049851ac', 'local', '0', '1544014889', '1544014889', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('27', '1', '1342149847709.jpg', 'book', 'uploads/images/20181205/3b0dcf9e75cecdd46caa48ebf854036a.jpg', '', '', 'image/jpeg', 'jpg', '10102', '0ac249a2c0c16455e4ff8e2c15dd7a5d', '22db910e7a1e560d7e28c577126b70222a6de29c', 'local', '0', '1544014934', '1544014934', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('28', '1', '1341920322141.jpg', 'book', 'uploads/images/20181205/52cf459d3f81d4a4764b2bae3f3d02c4.jpg', '', '', 'image/jpeg', 'jpg', '8178', 'b82f65cea5684f1eb185b6aee6843c8e', '2f87a1f75f1af58b81abb42511f4db5b50636e08', 'local', '0', '1544014968', '1544014968', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('29', '1', '1341890697115.jpg', 'book', 'uploads/images/20181205/04402f8b9f9f29de9bfa8c122a5af350.jpg', '', '', 'image/jpeg', 'jpg', '7294', '3069261f2499398d5b868154ca2e5eeb', '50306c8e6b524fca6f5ee325f193c42ad775e233', 'local', '0', '1544014994', '1544014994', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('30', '1', '1343123692272.jpg', 'book', 'uploads/images/20181205/3a92d88e4e7511dda6b049c719c12594.jpg', '', '', 'image/jpeg', 'jpg', '9321', '70c67865ff5aba7779f1b15571ecb9d2', 'f868aad6a8ddda62acc4b9589183fb12b49fbaef', 'local', '0', '1544015020', '1544015020', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('31', '1', '1344313192631.jpg', 'book', 'uploads/images/20181205/f030372abc57b6d8a1d86c08b04282ba.jpg', '', '', 'image/jpeg', 'jpg', '8318', '23facfc40c398d874dc6cefc06a6da81', '74825a558e0bb9349459bcb3bc247d7ba7a327e9', 'local', '0', '1544015056', '1544015056', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('32', '1', '国学.png', 'book', 'uploads/images/20181213/2e7295e9bcffc7bad39d6075fc16215b.png', '', '', 'image/png', 'png', '3055', '0e855572ae365cbfc159a2146b55afa4', 'ce19f822c341af318d13b579234ccf4290c1609d', 'local', '0', '1544684073', '1544684073', '100', '1', '200', '200');
INSERT INTO `dp_admin_attachment` VALUES ('33', '1', 'icon_英语.png', 'book', 'uploads/images/20181213/690158c97660021a8f7960b2a33823b6.png', '', '', 'image/png', 'png', '3785', '43353555fc41a60c92c5bd76d02638cd', '3fbd9808573afb45f9b63fa0a90a94f805961e7e', 'local', '0', '1544684274', '1544684274', '100', '1', '234', '200');
INSERT INTO `dp_admin_attachment` VALUES ('34', '1', '音乐.png', 'book', 'uploads/images/20181213/bb08d57ab0b4ae2411e7dc20037cec59.png', '', '', 'image/png', 'png', '7268', '6721a232ecf7139506e37a3d1abb44c5', '8322b18f76724ec64ea7afb1d5185aeef9e004c4', 'local', '0', '1544684300', '1544684300', '100', '1', '204', '200');
INSERT INTO `dp_admin_attachment` VALUES ('35', '1', '音乐 (1).png', 'book', 'uploads/images/20181213/d0c040ef4885059db95fbeb82db74dad.png', '', '', 'image/png', 'png', '4953', 'd37b1c5c92a9893d597502cfd8b07135', 'ea70e60c1b69f0b34d346f53f102340581994cfe', 'local', '0', '1544684748', '1544684748', '100', '1', '200', '200');
INSERT INTO `dp_admin_attachment` VALUES ('36', '1', '故事.png', 'book', 'uploads/images/20181213/1561d292126d96b299359efb31ca83bd.png', '', '', 'image/png', 'png', '9295', '45308d27a44f837863ca83e7037f012b', '0182544b999085a69058c29c8537c5f829756371', 'local', '0', '1544684763', '1544684763', '100', '1', '200', '200');
INSERT INTO `dp_admin_attachment` VALUES ('37', '1', '英语.png', 'book', 'uploads/images/20181213/71a66581bcf527def57b4b173768ee79.png', '', '', 'image/png', 'png', '8025', '80c635609804de99db824d65a0956784', 'be2b45d21b344c3d2fb90ee69c2a549ce199a814', 'local', '0', '1544684774', '1544684774', '100', '1', '200', '200');
INSERT INTO `dp_admin_attachment` VALUES ('38', '1', '170.png', 'book', 'uploads/images/20181213/fb71b9a9c16b477499ebf28a7f1666e5.png', '', '', 'image/png', 'png', '5361', '588294500a14eb577920b547e6ecbd0d', '7bf93e3ff200e84fede701a6d80bdd73fb3caf41', 'local', '0', '1544685737', '1544685737', '100', '1', '64', '64');
INSERT INTO `dp_admin_attachment` VALUES ('39', '1', 'yinle3.png', 'book', 'uploads/images/20181213/40ebc9c734f132407715933fcea510e2.png', '', '', 'image/png', 'png', '2573', '6506502c3a2a30e6cf72c0be149864c4', 'b9f9db63ae350f9d26735a06435a14c556c5017c', 'local', '0', '1544685835', '1544685835', '100', '1', '64', '64');
INSERT INTO `dp_admin_attachment` VALUES ('40', '1', 'yingyu1.png', 'book', 'uploads/images/20181213/8117dadc066b21a0c1e6afeffc7d333c.png', '', '', 'image/png', 'png', '4613', '94be2b3461b0296c3a7e88a4d8dd07b4', 'c946704fce1cf36d857358d0cc0af8e0caffd6f0', 'local', '0', '1544685847', '1544685847', '100', '1', '64', '64');
INSERT INTO `dp_admin_attachment` VALUES ('41', '1', 'guoxuewenhualei.png', 'book', 'uploads/images/20181213/fe292476594c62b01e3e749b3e768d4d.png', '', '', 'image/png', 'png', '1556', 'feeb27832725e91de005e24121fd7c5b', '84b8a8afb65083313d966c0604527d90bd89ef19', 'local', '0', '1544685859', '1544685859', '100', '1', '64', '64');
INSERT INTO `dp_admin_attachment` VALUES ('42', '1', '1363246954670.jpg', 'book', 'uploads/images/20181213/3f7b5216e151d18361fe3db4adade5f0.jpg', '', '', 'image/jpeg', 'jpg', '4839', '3ee5d78c2322ea4a0bb4bd3a3b0849bb', '5d47b3e61f1e6e4f54a1caf298d0d7a11f760ffa', 'local', '0', '1544712812', '1544712812', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('43', '1', '1403577542705.jpg', 'book', 'uploads/images/20181213/c7b5049e6cc545a828008eed8e5eeaf4.jpg', '', '', 'image/jpeg', 'jpg', '7472', 'b4269cfc38fd3f981a0d0828c2217960', '59d42fe4e58772178112d2ec4ec3b3df1374cb2c', 'local', '0', '1544712853', '1544712853', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('44', '1', '1397791072821.jpg', 'book', 'uploads/images/20181213/914c8fd0a3b1cddb2b09cfc618f69e8f.jpg', '', '', 'image/jpeg', 'jpg', '5760', '4137f110bcfefd3e629e7ff70fd7256a', 'bcf2a593e2bc3742efb264b1a5a7c66f6665adc1', 'local', '0', '1544712885', '1544712885', '100', '1', '176', '126');
INSERT INTO `dp_admin_attachment` VALUES ('45', '1', '1362644721.mp3', 'book', 'uploads/files/20181213/30510d0094631aa75ced4bfd7dcb642b.mp3', '', '', 'audio/mp3', 'mp3', '2023007', '48744fc014703c3860306746270a7936', '811c7978edee995f894663086ae252ca2013cfb7', 'local', '0', '1544713104', '1544713104', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('46', '1', '1362644722.mp3', 'book', 'uploads/files/20181213/8e2c7a70ff12a2d886eedbe0df267812.mp3', '', '', 'audio/mp3', 'mp3', '2274618', '86d776bd5601219c56c314f0dca18fb6', 'a2485d6fa2cedd597b6160d482bbff59ccda78e1', 'local', '0', '1544713262', '1544713262', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('47', '1', '1362644723.mp3', 'book', 'uploads/files/20181213/bef4ddee5161cae13fcd69a4b35ef4b9.mp3', '', '', 'audio/mp3', 'mp3', '2698847', 'cbb7871daff9edb000509510ab6cdb3d', 'ecd81c540f9359b52bb19d94d16687537e5522f5', 'local', '0', '1544713314', '1544713314', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('48', '0', 'AU_zhubajiechixigua.MP3', 'book', 'uploads/mp3/beva/bd0b46e15fb19ce9f164ab3268791157/AU_zhubajiechixigua.MP3', '', 'http://story.beva.com/audio/download/10118/1', 'audio/mp3', 'mp3', '1979425', '1cd0276b680f31e815ab5a80e382055b', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('49', '0', 'AU_XiaoXiongMaiTangGuo.mp3', 'book', 'uploads/mp3/beva/c7f696489e2e113ea7b3208f064fe21b/AU_XiaoXiongMaiTangGuo.mp3', '', 'http://story.beva.com/audio/download/10275/1', 'audio/mp3', 'mp3', '1854742', 'd454cf7cab10f129ffe0f86b3d34e14d', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('50', '0', 'AU_xiaokedouzhaomam002.MP3', 'book', 'uploads/mp3/beva/7b1e9bfcbe04f58423d0718b86ded9c6/AU_xiaokedouzhaomam002.MP3', '', 'http://story.beva.com/audio/download/10186/1', 'audio/mp3', 'mp3', '1156609', 'c0369b17681969ae4ab3652eb4c75cf5', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('51', '0', 'AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', 'book', 'uploads/mp3/beva/7b1e9bfcbe04f58423d0718b86ded9c6/AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', '', 'http://story.beva.com/audio/download/10186/1', 'audio/mp3', 'mp3', '2276573', 'b3905a25154312eca3e1545fd6b88ffa', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('52', '0', 'AU_sanzhixiaozhu.mp3', 'book', 'uploads/mp3/beva/14b80dc0080d7d52efc0f0839c1de600/AU_sanzhixiaozhu.mp3', '', 'http://story.beva.com/audio/download/10222/1', 'audio/mp3', 'mp3', '1353610', '6e235eae4d56380919ec69ac6b79684a', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('53', '0', 'AU_dong-li-mao-de-xiao-tu-zi.mp3', 'book', 'uploads/mp3/beva/fc680ff7c3fa0545228d91a87665b4c2/AU_dong-li-mao-de-xiao-tu-zi.mp3', '', 'http://story.beva.com/audio/download/11618/1', 'audio/mp3', 'mp3', '717845', '7dae88ecf5eade50b8a2c982c31a601f', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('54', '0', 'AU_guitusaipao.MP3', 'book', 'uploads/mp3/beva/f6f9407e71e0c38217749d8d058b9a6c/AU_guitusaipao.MP3', '', 'http://story.beva.com/audio/download/10107/1', 'audio/mp3', 'mp3', '1598253', 'f499f3d02b72fb3348a7d26f16d52300', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('55', '0', 'AU_baluobo.MP3', 'book', 'uploads/mp3/beva/34f1bf25f478a17dbe1d1717f1f9f492/AU_baluobo.MP3', '', 'http://story.beva.com/audio/download/10101/1', 'audio/mp3', 'mp3', '1381675', '871a2635d7f8ef043873009580dbcd72', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('56', '0', 'AU_Lao-nai-nai-he-xiao-hua-mao.mp3', 'book', 'uploads/mp3/beva/68baf35621885bd729f9983265d68d9f/AU_Lao-nai-nai-he-xiao-hua-mao.mp3', '', 'http://story.beva.com/audio/download/11625/1', 'audio/mp3', 'mp3', '2005061', '7d39c12c345776930bc564a5913a9ade', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('57', '0', 'AU_xiaobihujieweiba.mp3', 'book', 'uploads/mp3/beva/aca0ce71ec69f3064f32211d65eb679b/AU_xiaobihujieweiba.mp3', '', 'http://story.beva.com/audio/download/11689/1', 'audio/mp3', 'mp3', '3888085', '3a0b62979759a5c36e426b3a0e91ae9d', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('58', '0', 'AU_xiaomaguohe.MP3', 'book', 'uploads/mp3/beva/573704d1e94a6c3f35e86164ad196317/AU_xiaomaguohe.MP3', '', 'http://story.beva.com/audio/download/10113/1', 'audio/mp3', 'mp3', '1469949', '7f21ed76778cde8a7cf64aa30112d346', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('59', '0', 'AU_Lao-Shu-Qu-Qin.mp3', 'book', 'uploads/mp3/beva/93f210d548871061d918a916a0b12b51/AU_Lao-Shu-Qu-Qin.mp3', '', 'http://story.beva.com/audio/download/11459/1', 'audio/mp3', 'mp3', '2353941', 'c31a5a5d62eb928784797480b7facb7d', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('60', '0', 'AU_BaoBaoXiZao.mp3', 'book', 'uploads/mp3/beva/e778ae475d61e6404dcf06e634b7e3fb/AU_BaoBaoXiZao.mp3', '', 'http://story.beva.com/audio/download/10514/1', 'audio/mp3', 'mp3', '279840', '99e0f62d42017947b9ff17a751aeb7a5', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('61', '0', 'AU_MaoMaoChong.mp3', 'book', 'uploads/mp3/beva/05405c119b2be446ac6ebe72b95e0cf3/AU_MaoMaoChong.mp3', '', 'http://story.beva.com/audio/download/10271/1', 'audio/mp3', 'mp3', '1172456', 'e43676f73327f0f5a76edec646e7f82e', '', 'local', '0', '1545802409', '1545802409', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('62', '0', 'AU_xiaogongjihexiaoyazi.MP3', 'book', 'uploads/mp3/beva/2eaa5b398c92ae2764dad1d02aa60f67/AU_xiaogongjihexiaoyazi.MP3', '', 'http://story.beva.com/audio/download/10108/1', 'audio/mp3', 'mp3', '536547', '700f9599f76da7b8a0c64d6c51f41649', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('63', '0', 'AU_Xiao-Ke-Dou-Hua-Hua-over.mp3', 'book', 'uploads/mp3/beva/3d8fa4acc048a38bcb0389c68a4fd227/AU_Xiao-Ke-Dou-Hua-Hua-over.mp3', '', 'http://story.beva.com/audio/download/11321/1', 'audio/mp3', 'mp3', '961461', '85cf129ee606959ec66eb7aa71d2ea0d', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('64', '0', 'AU_Xiao-Lao-Shu-De-Qiao-Qiao-Chang.mp3', 'book', 'uploads/mp3/beva/0cc3c075f09fe98ac650cb0ec3f5f745/AU_Xiao-Lao-Shu-De-Qiao-Qiao-Chang.mp3', '', 'http://story.beva.com/audio/download/11463/1', 'audio/mp3', 'mp3', '1386261', '9046145a67f35a3cc4edbecd235934ba', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('65', '0', 'AU_xiao-dan-ke-de-gu-shi.mp3', 'book', 'uploads/mp3/beva/871dd74880eea41168d79f5e50520ab6/AU_xiao-dan-ke-de-gu-shi.mp3', '', 'http://story.beva.com/audio/download/11641/1', 'audio/mp3', 'mp3', '1297445', '35cd126c8586139872fecc5899acb0df', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('66', '0', 'AU_Xiao-Zhu-Fa-Pi-Qi.mp3', 'book', 'uploads/mp3/beva/e452dc78bd02bc121f856344b34f12fb/AU_Xiao-Zhu-Fa-Pi-Qi.mp3', '', 'http://story.beva.com/audio/download/11080/1', 'audio/mp3', 'mp3', '976368', '3e45ccfeba03f55eb575fcfa57e23500', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('67', '0', 'AU_Xiao-Zhu-De-Li-Eu.mp3', 'book', 'uploads/mp3/beva/1a383d7bf4992b42df3fd4b0493e21d5/AU_Xiao-Zhu-De-Li-Eu.mp3', '', 'http://story.beva.com/audio/download/11082/1', 'audio/mp3', 'mp3', '1730640', 'a481836f0465b47e8d6b4068726d45c8', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('68', '0', 'AU_yanzifeihuilaile.MP3', 'book', 'uploads/mp3/beva/ee2dae3812480645b9f67f05cce88ea9/AU_yanzifeihuilaile.MP3', '', 'http://story.beva.com/audio/download/10114/1', 'audio/mp3', 'mp3', '666577', '8d2c9b55271b1e8949c169ccdc2f6d8d', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('69', '0', 'AU_xiaozhuzhaojiangzi.mp3', 'book', 'uploads/mp3/beva/acc73b3f958ae516bef3ff37e95c98f6/AU_xiaozhuzhaojiangzi.mp3', '', 'http://story.beva.com/audio/download/10214/1', 'audio/mp3', 'mp3', '1024139', '4e012203e1034b1b6cdc58396f3f281c', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('70', '0', 'AU_San-Ke-Xing-Xing.mp3', 'book', 'uploads/mp3/beva/552ccdaafac993230ee3eab0884b5db7/AU_San-Ke-Xing-Xing.mp3', '', 'http://story.beva.com/audio/download/10232/1', 'audio/mp3', 'mp3', '2168062', '2c3a013df7f9d0a5a38ea1c9af1c0cb0', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('71', '0', 'AU_baluobo.MP3', 'book', 'uploads/mp3/beva/ca4cf664aa5a7460fcb36d18b20c8c97/AU_baluobo.MP3', '', 'http://story.beva.com/audio/download/10103/1', 'audio/mp3', 'mp3', '1381243', '70a5d05938d89b2f16938065bfd387dd', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('72', '0', 'AU_shenbimaliang.MP3', 'book', 'uploads/mp3/beva/00a0e5d0e45f5c6505b54935392d6281/AU_shenbimaliang.MP3', '', 'http://story.beva.com/audio/download/10098/1', 'audio/mp3', 'mp3', '2270877', '626a523b8c327e206bd508402888100f', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('73', '0', 'AU_xiao-shi-de-shu-zhi.mp3', 'book', 'uploads/mp3/beva/4968fe23aa7fc17fd59d8d7273f6bd97/AU_xiao-shi-de-shu-zhi.mp3', '', 'http://story.beva.com/audio/download/11036/1', 'audio/mp3', 'mp3', '1310832', 'ff45b47821faf6f9dfabacd1fc0c7c0c', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('74', '0', 'AU_XiaoHouHeXiaoXiongDeZiXingChe.mp3', 'book', 'uploads/mp3/beva/88414703c92a339858b0cba0158c87d1/AU_XiaoHouHeXiaoXiongDeZiXingChe.mp3', '', 'http://story.beva.com/audio/download/10274/1', 'audio/mp3', 'mp3', '960070', '4214fc1821d9ae6edaef1d3926e06130', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('75', '0', 'AU_Yue-Liang-Po-Po-Zhi-Ye-Ban.mp3', 'book', 'uploads/mp3/beva/e5900ccce08816f20af9559b70f0fbda/AU_Yue-Liang-Po-Po-Zhi-Ye-Ban.mp3', '', 'http://story.beva.com/audio/download/11468/1', 'audio/mp3', 'mp3', '1565253', '7fcc0564d9173e04b77fd7c79618eb6a', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('76', '0', 'AU_xiao-ma-guo-he.MP3', 'book', 'uploads/mp3/beva/6f196b303431a30a616c9ea19ae96719/AU_xiao-ma-guo-he.MP3', '', 'http://story.beva.com/audio/download/11020/1', 'audio/mp3', 'mp3', '1491837', '2e54f65b61b26f10238ef37d6288fed6', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('77', '0', 'AU_Pao-pao-tang-fei-chuan.mp3', 'book', 'uploads/mp3/beva/011a6bd34b9b70b724d2a941fdf22601/AU_Pao-pao-tang-fei-chuan.mp3', '', 'http://story.beva.com/audio/download/11635/1', 'audio/mp3', 'mp3', '2357429', '264ce11a3f354c13801aed746d41a547', '', 'local', '0', '1545802410', '1545802410', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('78', '0', 'AU_san-zhi-xiao-zhu.mp3', 'book', 'uploads/mp3/beva/4e25d88844bc5777154c0bf1c3bfe4e0/AU_san-zhi-xiao-zhu.mp3', '', 'http://story.beva.com/audio/download/11034/1', 'audio/mp3', 'mp3', '1374778', 'e5997d13b44a951ff75fc1edc6ddb8a8', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('79', '0', 'AU_wuyaheshui-210.mp3', 'book', 'uploads/mp3/beva/85101f0b46d734b27ccc81d466471c05/AU_wuyaheshui-210.mp3', '', 'http://story.beva.com/audio/download/11692/1', 'audio/mp3', 'mp3', '3343672', 'f015397a3b21663605518d6081111687', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('80', '0', 'AU_changebanyue.MP3', 'book', 'uploads/mp3/beva/c6dcbde7f4174618cb655398420d3de0/AU_changebanyue.MP3', '', 'http://story.beva.com/audio/download/10089/1', 'audio/mp3', 'mp3', '1844061', '0f3078711c96c4d4080772b148abbacb', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('81', '0', 'AU_Hei-Xiong-Huan-Ji-Dan.mp3', 'book', 'uploads/mp3/beva/6de3877b3e823d3ce7290de71f25676e/AU_Hei-Xiong-Huan-Ji-Dan.mp3', '', 'http://story.beva.com/audio/download/10515/1', 'audio/mp3', 'mp3', '1861814', 'b2f75e8fe39b4a44b0dac504d4d1df1d', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('82', '0', 'AU_Dan-Da-De-Lao-Hu-over.mp3', 'book', 'uploads/mp3/beva/271b1310d8e5b1e461eb5cb2ea2690d9/AU_Dan-Da-De-Lao-Hu-over.mp3', '', 'http://story.beva.com/audio/download/11453/1', 'audio/mp3', 'mp3', '822501', 'e49acc0b64a063ec7d6c0172f9d4a75b', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('83', '0', 'AU_San-Zi-Jing-2.mp3', 'book', 'uploads/mp3/beva/27ebc40a278a4811b2032fc7fdc834cf/AU_San-Zi-Jing-2.mp3', '', 'http://story.beva.com/audio/download/11431/3', 'audio/mp3', 'mp3', '2578898', 'a698de4c5e485b37a66730145b640ed0', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('84', '0', 'AU_San-Zi-Jing-3.mp3', 'book', 'uploads/mp3/beva/27ebc40a278a4811b2032fc7fdc834cf/AU_San-Zi-Jing-3.mp3', '', 'http://story.beva.com/audio/download/11431/3', 'audio/mp3', 'mp3', '2132498', 'e4b128739248cf5a19249cd1e760802c', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('85', '0', 'AU_San-Zi-Jing-4.mp3', 'book', 'uploads/mp3/beva/27ebc40a278a4811b2032fc7fdc834cf/AU_San-Zi-Jing-4.mp3', '', 'http://story.beva.com/audio/download/11431/3', 'audio/mp3', 'mp3', '2780642', '973fd2e8089db690aad3fffed9bf1c23', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('86', '0', 'AU_San-Zi-Jing-5.mp3', 'book', 'uploads/mp3/beva/27ebc40a278a4811b2032fc7fdc834cf/AU_San-Zi-Jing-5.mp3', '', 'http://story.beva.com/audio/download/11431/3', 'audio/mp3', 'mp3', '2198882', '0aea2fdc6e3779d1fa05226ade747116', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('87', '0', 'AU_San-Zi-Jing-1.mp3', 'book', 'uploads/mp3/beva/27ebc40a278a4811b2032fc7fdc834cf/AU_San-Zi-Jing-1.mp3', '', 'http://story.beva.com/audio/download/11431/3', 'audio/mp3', 'mp3', '929090', '35eb8b7a3e2c217e5d63b9a9b4c15d09', '', 'local', '0', '1545802411', '1545802411', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('88', '0', 'AU_YaoXiaYuLe.mp3', 'book', 'uploads/mp3/beva/b17532528da4540a0dd5045a803828d7/AU_YaoXiaYuLe.mp3', '', 'http://story.beva.com/audio/download/10276/1', 'audio/mp3', 'mp3', '1007292', '98c6132b1393e4e7a6358be18f14bdf0', '', 'local', '0', '1545802412', '1545802412', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('89', '0', 'AU_YongGanDeXiaoCiWei.mp3', 'book', 'uploads/mp3/beva/37c3e7f26bdcbf643aaad87b62fa40f7/AU_YongGanDeXiaoCiWei.mp3', '', 'http://story.beva.com/audio/download/10277/1', 'audio/mp3', 'mp3', '1936104', 'f192b8600884df9b9969dbf162177a22', '', 'local', '0', '1545802412', '1545802412', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('90', '0', 'AU_baobaochifan.mp3', 'book', 'uploads/mp3/beva/4b2d570ce65cc307024ef1e50047d5f1/AU_baobaochifan.mp3', '', 'http://story.beva.com/audio/download/10224/1', 'audio/mp3', 'mp3', '1045450', 'a256bc309938a73f7ba8a5aef22c9791', '', 'local', '0', '1545802412', '1545802412', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('91', '0', 'AU_Xiao-Bai-Tu-He-Xiao-Bai-Tu.mp3', 'book', 'uploads/mp3/beva/36e3971ac973df86898c3f0921bdabb2/AU_Xiao-Bai-Tu-He-Xiao-Bai-Tu.mp3', '', 'http://story.beva.com/audio/download/11101/1', 'audio/mp3', 'mp3', '904656', '666fec8e0dfaa945eba5992c960e689a', '', 'local', '0', '1545802412', '1545802412', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('92', '0', 'AU_Hong-Hong-De-Ping-Guo-over.mp3', 'book', 'uploads/mp3/beva/34df2d91c4e7cd74d6541e677a8ddd83/AU_Hong-Hong-De-Ping-Guo-over.mp3', '', 'http://story.beva.com/audio/download/11301/1', 'audio/mp3', 'mp3', '2332773', '8bf5d0de09e20a7a8a27e51bcd473743', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('93', '0', 'AU_nong-fu-yu-she.mp3', 'book', 'uploads/mp3/beva/fe5fc34435e0e6f89731c23448cc5630/AU_nong-fu-yu-she.mp3', '', 'http://story.beva.com/audio/download/11506/1', 'audio/mp3', 'mp3', '431272', 'a79dc83bae867943040d7b92b0bd2e73', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('94', '0', 'AU_Ai-Da-Zhen-De-Xi-Xi.mp3', 'book', 'uploads/mp3/beva/fd3cac26664bdbc49a042ab4027fda3a/AU_Ai-Da-Zhen-De-Xi-Xi.mp3', '', 'http://story.beva.com/audio/download/10225/1', 'audio/mp3', 'mp3', '1524254', '0ac18cf9283c6c3055ed1e3eef74b4be', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('95', '0', 'AU_zui-hao-chi-de-dan-gao.mp3', 'book', 'uploads/mp3/beva/55443ec9d38403562fa62b8adebd402e/AU_zui-hao-chi-de-dan-gao.mp3', '', 'http://story.beva.com/audio/download/11511/1', 'audio/mp3', 'mp3', '1441557', '2edcf4c47c12ee45d3046455cdfa2ef1', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('96', '0', 'AU_Dui-Niu-Tan-Qin-over.mp3', 'book', 'uploads/mp3/beva/984cb3980a29a00f5f62f14dc5285561/AU_Dui-Niu-Tan-Qin-over.mp3', '', 'http://story.beva.com/audio/download/11353/1', 'audio/mp3', 'mp3', '1116981', 'b524a794de4a522ebc505570e4309fa5', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('97', '0', 'AU_Xiao-Xing-Xing-Xi-Zao.mp3', 'book', 'uploads/mp3/beva/43db6b0eaa3de39bb9c3f705f1a5a5ff/AU_Xiao-Xing-Xing-Xi-Zao.mp3', '', 'http://story.beva.com/audio/download/10517/1', 'audio/mp3', 'mp3', '1311878', 'd18f43b09b20a000114e8ab2fb4bbba2', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('98', '0', 'AU_shuimeiren.mp3', 'book', 'uploads/mp3/beva/5495c83355e9c7113615e66cf971a4cc/AU_shuimeiren.mp3', '', 'http://story.beva.com/audio/download/11195/1', 'audio/mp3', 'mp3', '4409518', 'f282f98c12a23934139b492f4dcb08b1', '', 'local', '0', '1545802413', '1545802413', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('99', '0', 'AU_qingwawangzi1.MP3', 'book', 'uploads/mp3/beva/95b3a9361d8b5cb18b2f1fea0e4f71fe/AU_qingwawangzi1.MP3', '', 'http://story.beva.com/audio/download/11530/3', 'audio/mp3', 'mp3', '1449079', 'c2bb456d3df74a3d46c4fdcee9d02bb0', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('100', '0', 'AU_qingwawangzi2.MP3', 'book', 'uploads/mp3/beva/95b3a9361d8b5cb18b2f1fea0e4f71fe/AU_qingwawangzi2.MP3', '', 'http://story.beva.com/audio/download/11530/3', 'audio/mp3', 'mp3', '1646069', '1b70ace6fa22c7aa4f6d26075c470f33', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('101', '0', 'AU_Xiao-Shui-Hu-Mi-Lu.mp3', 'book', 'uploads/mp3/beva/7090a43ad65e45d08566eabdfd8ce28c/AU_Xiao-Shui-Hu-Mi-Lu.mp3', '', 'http://story.beva.com/audio/download/11074/1', 'audio/mp3', 'mp3', '1158096', 'cb8466ab626eb3d79559fbe7731977e4', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('102', '0', 'AU_Shi-Er-Sheng-Xiao-De-Gu-Shi.mp3', 'book', 'uploads/mp3/beva/abae706fac4222acaafdcb6431b662c7/AU_Shi-Er-Sheng-Xiao-De-Gu-Shi.mp3', '', 'http://story.beva.com/audio/download/11065/1', 'audio/mp3', 'mp3', '1188336', 'c52bb9b6fb10a3cff27e894ff452ff38', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('103', '0', 'AU_YongGanDeXiaoCiWei.mp3', 'book', 'uploads/mp3/beva/c4632737f63cb723989e60bd406cedef/AU_YongGanDeXiaoCiWei.mp3', '', 'http://story.beva.com/audio/download/10278/1', 'audio/mp3', 'mp3', '1935384', '844b78a4606caf3625ebaee342cb656d', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('104', '0', 'AU_Xiao-Niao-He-Da-Xiong.mp3', 'book', 'uploads/mp3/beva/4270427b9d991dcc2c233cc312dfb1b1/AU_Xiao-Niao-He-Da-Xiong.mp3', '', 'http://story.beva.com/audio/download/11093/1', 'audio/mp3', 'mp3', '1557120', '88ddd984b40b34cd0befe18d4e2916ae', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('105', '0', 'AU_buaichifandebeibei.mp3', 'book', 'uploads/mp3/beva/a87d82f00879fa52a9bbb2001cfcbc46/AU_buaichifandebeibei.mp3', '', 'http://story.beva.com/audio/download/10226/1', 'audio/mp3', 'mp3', '563344', '4b3fa1a3aa5380b37b303749ef64de2a', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('106', '0', 'AU_Xiao-pang-xiong-ban-ye-li-xian-ji.mp3', 'book', 'uploads/mp3/beva/eac7c7097da26eeb2dc7276b800ea42b/AU_Xiao-pang-xiong-ban-ye-li-xian-ji.mp3', '', 'http://story.beva.com/audio/download/11649/1', 'audio/mp3', 'mp3', '813317', '98c416d5271c35e057acf665d8b79347', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('107', '0', 'AU_maihuochaidexiaonvhai001.MP3', 'book', 'uploads/mp3/beva/497f49a60a6e93cee2da1e0a1013e21d/AU_maihuochaidexiaonvhai001.MP3', '', 'http://story.beva.com/audio/download/10416/3', 'audio/mp3', 'mp3', '1425747', '398d6ad80f6f2dc96bcfdabfdd8009bb', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('108', '0', 'AU_maihuochaidexiaonvhai002.MP3', 'book', 'uploads/mp3/beva/497f49a60a6e93cee2da1e0a1013e21d/AU_maihuochaidexiaonvhai002.MP3', '', 'http://story.beva.com/audio/download/10416/3', 'audio/mp3', 'mp3', '1698915', '809ad1e56fe72ae5be07b869b6cc8b0a', '', 'local', '0', '1545802414', '1545802414', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('109', '0', 'AU_zhong-shu-de-lao-ye-ye.mp3', 'book', 'uploads/mp3/beva/7e0934912a829aa2426a4738410c16c2/AU_zhong-shu-de-lao-ye-ye.mp3', '', 'http://story.beva.com/audio/download/11657/1', 'audio/mp3', 'mp3', '573269', 'd659c578936ae873667f9de01a9b9504', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('110', '0', 'AU_San-Zi-Jing-1.mp3', 'book', 'uploads/mp3/beva/35785734913f039370dc361f46af16a3/AU_San-Zi-Jing-1.mp3', '', 'http://story.beva.com/audio/download/15354/3', 'audio/mp3', 'mp3', '929090', '4f5fba68ef6803af03bb819c7299063e', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('111', '0', 'AU_Tian-Kong-Jiang-Yao-Ta-Xia-Lai-Le-over.mp3', 'book', 'uploads/mp3/beva/bbdffe7b76036225fd641cafd1538991/AU_Tian-Kong-Jiang-Yao-Ta-Xia-Lai-Le-over.mp3', '', 'http://story.beva.com/audio/download/11375/1', 'audio/mp3', 'mp3', '1851093', 'df8160423be75736f72f294f83ac915c', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('112', '0', 'AU_XiaoHouHeXiaoXiongDeZiXingChe.mp3', 'book', 'uploads/mp3/beva/9e2f227350b6123a438256a59dbdc15e/AU_XiaoHouHeXiaoXiongDeZiXingChe.mp3', '', 'http://story.beva.com/audio/download/10273/1', 'audio/mp3', 'mp3', '960070', 'cc0504f26a103f4fc03db3514ef83cd0', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('113', '0', 'AU_Lao-Shu-Pai-Di-Yi.mp3', 'book', 'uploads/mp3/beva/40921cb13dddfb9bdb77c12c26991868/AU_Lao-Shu-Pai-Di-Yi.mp3', '', 'http://story.beva.com/audio/download/11057/1', 'audio/mp3', 'mp3', '1180560', '3b0a334a5f36e3ca50dc775250159da0', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('114', '0', 'AU_xiaohuagouyechuanxie.mp3', 'book', 'uploads/mp3/beva/58c2f5cd30f29c89bb46b37d84c797ee/AU_xiaohuagouyechuanxie.mp3', '', 'http://story.beva.com/audio/download/10213/1', 'audio/mp3', 'mp3', '812462', '71b95f9d0b73d25114f1ed9f3d339222', '', 'local', '0', '1545802415', '1545802415', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('115', '0', 'AU_Xiao-Yan-Zi-Ji-Ji.mp3', 'book', 'uploads/mp3/beva/4df89cad9ee76c96c34e9c7c1ea52fcb/AU_Xiao-Yan-Zi-Ji-Ji.mp3', '', 'http://story.beva.com/audio/download/11078/1', 'audio/mp3', 'mp3', '3182160', 'b25bada85f0476c8e1d5b1285029d0ab', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('116', '0', 'AU_hou-yi-she-ri.mp3', 'book', 'uploads/mp3/beva/2693961f00386d35fd519c9cf2000478/AU_hou-yi-she-ri.mp3', '', 'http://story.beva.com/audio/download/10762/1', 'audio/mp3', 'mp3', '1278530', 'cfc6cad4b9d602d2090650ce4cb2706c', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('117', '0', 'AU_San-Ge-Da-Ma-Ha.mp3', 'book', 'uploads/mp3/beva/ce3c7a2d3b8632372afacae8905bb171/AU_San-Ge-Da-Ma-Ha.mp3', '', 'http://story.beva.com/audio/download/11064/1', 'audio/mp3', 'mp3', '973200', '0156dd3be8ea5270d7ae7fa39ef17bc8', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('118', '0', 'AU_shizitangfa.mp3', 'book', 'uploads/mp3/beva/48bdef57ebd57fb1ad3ac9be169020cc/AU_shizitangfa.mp3', '', 'http://story.beva.com/audio/download/10212/1', 'audio/mp3', 'mp3', '1233370', '956d35916c0ee69c07dc570fc78e7598', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('119', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/99edfe1f08af8d58f8326970d9770d69/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10444/1', 'audio/mp3', 'mp3', '1133002', '08cebbb0c63571ac09a7af6732525fa9', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('120', '0', 'AU_Xiao-Pang-Zhu-Ku-Le-over.mp3', 'book', 'uploads/mp3/beva/1a41a6962f946dc2363950eb9c98816f/AU_Xiao-Pang-Zhu-Ku-Le-over.mp3', '', 'http://story.beva.com/audio/download/11323/1', 'audio/mp3', 'mp3', '1912869', 'bebe222c3882d62bb102837501d14411', '', 'local', '0', '1545802416', '1545802416', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('121', '0', 'AU_Wo-Niu-De-Xiao-Deng-Long-over.mp3', 'book', 'uploads/mp3/beva/987a88cc76dc5840017ea96728d92c84/AU_Wo-Niu-De-Xiao-Deng-Long-over.mp3', '', 'http://story.beva.com/audio/download/11318/1', 'audio/mp3', 'mp3', '906885', '58cf0e66a7a782a2ec38a97889e8f50f', '', 'local', '0', '1545802417', '1545802417', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('122', '0', 'AU_wenjiqiwu-210.mp3', 'book', 'uploads/mp3/beva/54a5dc722792c603af120a81d9772102/AU_wenjiqiwu-210.mp3', '', 'http://story.beva.com/audio/download/11691/1', 'audio/mp3', 'mp3', '2566495', 'd44aa01ffb635b75ac937029f4c318c8', '', 'local', '0', '1545802417', '1545802417', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('123', '0', 'AU_Ying-Huo-Chong-Zhao-Peng-You.mp3', 'book', 'uploads/mp3/beva/1e63b5c2a7c2599cb960eaaee54b3878/AU_Ying-Huo-Chong-Zhao-Peng-You.mp3', '', 'http://story.beva.com/audio/download/11091/1', 'audio/mp3', 'mp3', '1401600', 'd139057c7cb1f328a29b456ea871ca41', '', 'local', '0', '1545802417', '1545802417', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('124', '0', 'AU_shuimeiren.mp3', 'book', 'uploads/mp3/beva/922284f21706d8ab9fd8505d61cc7b1b/AU_shuimeiren.mp3', '', 'http://story.beva.com/audio/download/11200/1', 'audio/mp3', 'mp3', '1652826', 'daddd6461e9dffe24e764094fb76739b', '', 'local', '0', '1545802417', '1545802417', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('125', '0', 'AU_ji-zhi-de-ji.mp3', 'book', 'uploads/mp3/beva/c8b10db9ad68df41aa9e72674026b51b/AU_ji-zhi-de-ji.mp3', '', 'http://story.beva.com/audio/download/11624/1', 'audio/mp3', 'mp3', '444821', 'fab9b4b78eeac73342e2a991f0802b7a', '', 'local', '0', '1545802946', '1545802946', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('126', '0', 'AU_yamiaozhuzhang.mp3', 'book', 'uploads/mp3/beva/125573c084f367a19665732f4658979b/AU_yamiaozhuzhang.mp3', '', 'http://story.beva.com/audio/download/10058/1', 'audio/mp3', 'mp3', '742462', '2f71a4fcda8364fa329026616423da71', '', 'local', '0', '1545802946', '1545802946', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('127', '0', 'AU_daduzideguoguo.mp3', 'book', 'uploads/mp3/beva/596279b2a41b00c28039f9e1a4645aec/AU_daduzideguoguo.mp3', '', 'http://story.beva.com/audio/download/10210/1', 'audio/mp3', 'mp3', '1488396', 'b8b9255c919d36b19df27e7d3193595f', '', 'local', '0', '1545802948', '1545802948', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('128', '0', 'AU_bai-feng-chao-niao.mp3', 'book', 'uploads/mp3/beva/261c97001f4cb5bdbdcf86044cdc2cce/AU_bai-feng-chao-niao.mp3', '', 'http://story.beva.com/audio/download/11480/1', 'audio/mp3', 'mp3', '759461', '7cd7c93377104a1886857030577071c0', '', 'local', '0', '1545803183', '1545803183', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('129', '0', 'AU_jingweitianhai.MP3', 'book', 'uploads/mp3/beva/11b2da048e7ccb8c711abf82886966f7/AU_jingweitianhai.MP3', '', 'http://story.beva.com/audio/download/10095/1', 'audio/mp3', 'mp3', '682989', 'ba83c0eab0f9d1063c7780fd3437e453', '', 'local', '0', '1545803183', '1545803183', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('130', '0', 'AU_xiaohouzixiashan.MP3', 'book', 'uploads/mp3/beva/ed9ba7cb5724c60bb7d7b1572b7fb412/AU_xiaohouzixiashan.MP3', '', 'http://story.beva.com/audio/download/10110/1', 'audio/mp3', 'mp3', '561023', '328c35bd7c09153ba004b6bf1c2fc6b9', '', 'local', '0', '1545803308', '1545803308', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('131', '0', '5a6d9e307ff4a2007b3fec36da663600d78237e1.jpg', 'book', 'uploads/images/beva/full/5a6d9e307ff4a2007b3fec36da663600d78237e1.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_mrgs.png', 'image/jpeg', 'jpeg', '10204', 'dfaa77f46b602664c1454b1812e6fa48', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('132', '0', '3956e343d7bd299c6a08b3c30426d6ade6079994.jpg', 'book', 'uploads/images/beva/full/3956e343d7bd299c6a08b3c30426d6ade6079994.jpg', '', 'https://3w.beva.cn/story/images/res/10655/ST_xiao-ke-dou-zhao-ma-ma-205-213.png', 'image/jpeg', 'jpeg', '13436', 'd7bf85b974333972e88ce82489ce0329', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('133', '0', '05a99186b267e4bc53db1321ff9ac76ce0a29937.jpg', 'book', 'uploads/images/beva/full/05a99186b267e4bc53db1321ff9ac76ce0a29937.jpg', '', 'https://3w.beva.cn/story/images/res/10661/ST_296-205-sh-zbjcxg.jpg', 'image/jpeg', 'jpeg', '15861', '9a487ba18b2e016ca39c4f608c842951', '', 'local', '0', '1545803510', '1545803510', '100', '1', '296', '205');
INSERT INTO `dp_admin_attachment` VALUES ('134', '0', 'e59f47a901fa843b26507608070dc2c913474669.jpg', 'book', 'uploads/images/beva/full/e59f47a901fa843b26507608070dc2c913474669.jpg', '', 'https://3w.beva.cn/story/images/res/10391/ST_sanzhixiaozhu205.jpg', 'image/jpeg', 'jpeg', '11722', '3c90794e426584c15ce902730c880c08', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('135', '0', '80d1721c56da6df54407c3bc8bc18133cbe4121a.jpg', 'book', 'uploads/images/beva/full/80d1721c56da6df54407c3bc8bc18133cbe4121a.jpg', '', 'https://3w.beva.cn/story/images/res/10245/ST_xiaoxiongmaitangguo205213-19.jpg', 'image/jpeg', 'jpeg', '12082', 'e7c42303358229c34a5bebfec221c403', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('136', '0', 'cf85f6ab2b029cdaad48545b763aa1224a81d444.jpg', 'book', 'uploads/images/beva/full/cf85f6ab2b029cdaad48545b763aa1224a81d444.jpg', '', 'https://3w.beva.cn/story/images/res/10263/ST_baluobo205213-4.jpg', 'image/jpeg', 'jpeg', '13386', 'e766613009aea46608bfe1ca1ac22e2d', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('137', '0', '0a39c1dcbe1f2e6490cf8fb5ea93248c29524356.jpg', 'book', 'uploads/images/beva/full/0a39c1dcbe1f2e6490cf8fb5ea93248c29524356.jpg', '', 'https://3w.beva.cn/story/images/res/13641/ST_donglimaodexiaotu205213.png', 'image/jpeg', 'jpeg', '10843', '7c9a46e65dc61f26e0556d25ac1f9809', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('138', '0', '99e113f95d99fb54a2a36f12cb279e39b24862e0.jpg', 'book', 'uploads/images/beva/full/99e113f95d99fb54a2a36f12cb279e39b24862e0.jpg', '', 'https://3w.beva.cn/story/images/res/10178/ST_guitusaipao205.jpg', 'image/jpeg', 'jpeg', '13457', '6c7a0c924a0c8a7e12e1755e8dd51ced', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('139', '0', '4d0d11688448d8293f6075d9cd2370d205c48091.jpg', 'book', 'uploads/images/beva/full/4d0d11688448d8293f6075d9cd2370d205c48091.jpg', '', 'https://3w.beva.cn/story/images/res/11611/ST_原创封面205213-26.png', 'image/jpeg', 'jpeg', '12426', '2b38d4dad5c135e2ea3402411dd95f67', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('140', '0', 'b309651fea9c8f628a1caa7ff29132435441af60.jpg', 'book', 'uploads/images/beva/full/b309651fea9c8f628a1caa7ff29132435441af60.jpg', '', 'https://3w.beva.cn/story/images/res/10193/ST_xiaomaodiaoyu205.jpg', 'image/jpeg', 'jpeg', '9425', '07fbd8682edaed1600afc6af1f76d674', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('141', '0', 'db6b1fb025a9139192486148bced39c3c4f79f27.jpg', 'book', 'uploads/images/beva/full/db6b1fb025a9139192486148bced39c3c4f79f27.jpg', '', 'https://3w.beva.cn/story/images/res/10301/ST_laoshuquqin205213.png', 'image/jpeg', 'jpeg', '12040', '793412b71f2cbb89a8f52c886e13af7f', '', 'local', '0', '1545803510', '1545803510', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('142', '0', 'c8117a8cc1a6d4ceb364350c4747fdef32db5e9d.jpg', 'book', 'uploads/images/beva/full/c8117a8cc1a6d4ceb364350c4747fdef32db5e9d.jpg', '', 'https://3w.beva.cn/story/images/res/11614/ST_baobaoxizao205213-6.jpg', 'image/jpeg', 'jpeg', '11424', 'a2752c1a04b2b14376f95e52384c4744', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('143', '0', '79445ab0cfd0ef6b8ee33c879ebbfefafa9a5c0e.jpg', 'book', 'uploads/images/beva/full/79445ab0cfd0ef6b8ee33c879ebbfefafa9a5c0e.jpg', '', 'https://3w.beva.cn/story/images/res/13625/ST_laonainaihexiaohua205213.png', 'image/jpeg', 'jpeg', '12500', '648a5d73eb4ae6c4b186f1b9ab49c7e1', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('144', '0', 'cd20928b8776402b93f3d8b68be0a3ac81f1b6ce.jpg', 'book', 'uploads/images/beva/full/cd20928b8776402b93f3d8b68be0a3ac81f1b6ce.jpg', '', 'https://3w.beva.cn/story/images/res/43870/ST_xiaobihujieweiba.jpg', 'image/jpeg', 'jpeg', '14763', 'b262611172f2a7d2164dbd37729c28c0', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('145', '0', 'dbfdf9d19798995e07038dfbe003625051c968d6.jpg', 'book', 'uploads/images/beva/full/dbfdf9d19798995e07038dfbe003625051c968d6.jpg', '', 'https://3w.beva.cn/story/images/res/10171/ST_xiaomaguohe.jpg', 'image/jpeg', 'jpeg', '9856', '91330d39c529fdbf7a435c04eacd4545', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('146', '0', '3dcea917e63b2ccd2391056ef42a49a324455c22.jpg', 'book', 'uploads/images/beva/full/3dcea917e63b2ccd2391056ef42a49a324455c22.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_sqgs.png', 'image/jpeg', 'jpeg', '9681', '7459b40d082529a2af35150aa4c3c98b', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('147', '0', 'fc0cdb735f396b87aca38837c011a93e9db4d715.jpg', 'book', 'uploads/images/beva/full/fc0cdb735f396b87aca38837c011a93e9db4d715.jpg', '', 'https://3w.beva.cn/story/images/res/10550/ST_sangehaopengyou205213-25.jpg', 'image/jpeg', 'jpeg', '13861', 'b0948e257a3836f0961e2ec9ee3d3987', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('148', '0', 'a000a21583e3b0945d8237ec5f3fbf9c7624c2e7.jpg', 'book', 'uploads/images/beva/full/a000a21583e3b0945d8237ec5f3fbf9c7624c2e7.jpg', '', 'https://3w.beva.cn/story/images/res/11613/ST_buaixizaodexiaozhu205213-20.jpg', 'image/jpeg', 'jpeg', '13093', '7e95546f8ef9045fd21f681cf0e4e8f1', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('149', '0', '5772d3bcbe666c359b5b1b63f774ec4da5cd715f.jpg', 'book', 'uploads/images/beva/full/5772d3bcbe666c359b5b1b63f774ec4da5cd715f.jpg', '', 'https://3w.beva.cn/story/images/res/10306/ST_xiaokedouhuahua205213.png', 'image/jpeg', 'jpeg', '13826', '31348dc0705ad8bb59852078f2d3123d', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('150', '0', '18494d9fa03d2c83dd201fb0ff64fb6694e8267e.jpg', 'book', 'uploads/images/beva/full/18494d9fa03d2c83dd201fb0ff64fb6694e8267e.jpg', '', 'https://3w.beva.cn/story/images/res/43808/ST_xiaolaoshu205213.png', 'image/jpeg', 'jpeg', '14442', 'faf4840b54cd4a94a21781c320dbdb33', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('151', '0', 'a4d6b5b2417e1d1d9c5b288711b995839f69d74d.jpg', 'book', 'uploads/images/beva/full/a4d6b5b2417e1d1d9c5b288711b995839f69d74d.jpg', '', 'https://3w.beva.cn/story/images/res/43812/ST_xiaodanke205213.png', 'image/jpeg', 'jpeg', '14185', 'de06a4c350cd475d22eb7c172584ece6', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('152', '0', '24e7c4307be10d7a2e2f08d16d604e0cefc49613.jpg', 'book', 'uploads/images/beva/full/24e7c4307be10d7a2e2f08d16d604e0cefc49613.jpg', '', 'https://3w.beva.cn/story/images/res/11620/ST_sankexingxing205213-17.jpg', 'image/jpeg', 'jpeg', '13095', 'fc8c8316c2b1e726947f89115ddfb4a4', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('153', '0', '89f1545208d0e3e0611fdd422e52969a3128ddfd.jpg', 'book', 'uploads/images/beva/full/89f1545208d0e3e0611fdd422e52969a3128ddfd.jpg', '', 'https://3w.beva.cn/story/images/res/10204/ST_yanzifeihuilaile205.jpg', 'image/jpeg', 'jpeg', '6741', '60259f5775e7d6c2c44bca32cf44ba44', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('154', '0', '075906c6f909755e5c9d1bdd5aaed83534bb79c8.jpg', 'book', 'uploads/images/beva/full/075906c6f909755e5c9d1bdd5aaed83534bb79c8.jpg', '', 'https://3w.beva.cn/story/images/res/10196/ST_xiaogongjihexiaoyazi205.jpg', 'image/jpeg', 'jpeg', '15234', '7e243566a6462885da405ea6d113e5c5', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('155', '0', '70dab7d8f49329424fd163af8fa9a9d576c8cfd0.jpg', 'book', 'uploads/images/beva/full/70dab7d8f49329424fd163af8fa9a9d576c8cfd0.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_ysyy.png', 'image/jpeg', 'jpeg', '10615', '9677a548a0ee07536e09453e7cb9ed22', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('156', '0', '78d4ebd8c8a398439138fec0a7a8612063d89978.jpg', 'book', 'uploads/images/beva/full/78d4ebd8c8a398439138fec0a7a8612063d89978.jpg', '', 'https://3w.beva.cn/story/images/res/15031/ST_205xiaoshideshuzhi.jpg', 'image/jpeg', 'jpeg', '11048', '34e4669fc0112f8beade16f7ebe70237', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('157', '0', '15eee2c868c2f2ab7b265947c2f6f247adb32321.jpg', 'book', 'uploads/images/beva/full/15eee2c868c2f2ab7b265947c2f6f247adb32321.jpg', '', 'https://3w.beva.cn/story/images/res/10324/ST_shenbimaliang205.jpg', 'image/jpeg', 'jpeg', '12535', 'edd2a9dc925fd77db003c9b3457eab8c', '', 'local', '0', '1545803511', '1545803511', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('158', '0', '783b6212dc6f71288d7c40facf96742ca4dc0178.jpg', 'book', 'uploads/images/beva/full/783b6212dc6f71288d7c40facf96742ca4dc0178.jpg', '', 'https://3w.beva.cn/story/images/res/10648/ST_xiaohouzihexiaoxiongdezixingche205213-22.jpg', 'image/jpeg', 'jpeg', '13645', 'ffa3be2b91b702f8fa5e3d89dcc74a17', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('159', '0', 'c6a56b8fdbca00a7eefc53beeb9cabc93293ba96.jpg', 'book', 'uploads/images/beva/full/c6a56b8fdbca00a7eefc53beeb9cabc93293ba96.jpg', '', 'https://3w.beva.cn/story/images/res/15379/ST_yueliangpopozhiyeban2052131.png', 'image/jpeg', 'jpeg', '13336', '951900cdeaaeb2a90e35cbfa53fa78c3', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('160', '0', '9787591f0428ca4466138b928785212e80a6ad01.jpg', 'book', 'uploads/images/beva/full/9787591f0428ca4466138b928785212e80a6ad01.jpg', '', 'https://3w.beva.cn/story/images/res/43802/ST_paopaotangfei205213.png', 'image/jpeg', 'jpeg', '11677', 'dd0de8c953bffee5b62f81cc951a2f83', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('161', '0', '7ca818f0d18deff01558dcb1d9906dadfbffd4ed.jpg', 'book', 'uploads/images/beva/full/7ca818f0d18deff01558dcb1d9906dadfbffd4ed.jpg', '', 'https://3w.beva.cn/story/images/res/11615/ST_xizao205.png', 'image/jpeg', 'jpeg', '12358', '1ea4fc9e80400af2476092282b5a4acf', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('162', '0', '934458eeedb06c0c068353de395a582bbc5372c4.jpg', 'book', 'uploads/images/beva/full/934458eeedb06c0c068353de395a582bbc5372c4.jpg', '', 'https://3w.beva.cn/story/images/res/14976/ST_baobaochifan205213-5.jpg', 'image/jpeg', 'jpeg', '13231', '96b54dbdec110acf3b3ea1bf2f3e8158', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('163', '0', '4432d0c8b11ca7b5ea506eaf230d20fb7723e3f4.jpg', 'book', 'uploads/images/beva/full/4432d0c8b11ca7b5ea506eaf230d20fb7723e3f4.jpg', '', 'https://3w.beva.cn/story/images/res/10069/ST_wuyaheshui205-213.jpg', 'image/jpeg', 'jpeg', '9328', '2a983217122747047fbb81722d5a58ee', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('164', '0', '7de12cb2c98a3caa35ad4a35c58069d13cacf846.jpg', 'book', 'uploads/images/beva/full/7de12cb2c98a3caa35ad4a35c58069d13cacf846.jpg', '', 'https://3w.beva.cn/story/images/res/10224/ST_changebenyua205.jpg', 'image/jpeg', 'jpeg', '6750', 'aa4f414382fd7691f3b29a339a3217c2', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('165', '0', 'd59bc3695d2f741402458ab73dea976fa0146ed2.jpg', 'book', 'uploads/images/beva/full/d59bc3695d2f741402458ab73dea976fa0146ed2.jpg', '', 'https://3w.beva.cn/story/images/res/10250/ST_heixionghuanjidan205213-7.jpg', 'image/jpeg', 'jpeg', '12674', '60762c95c68c9d8953ccaf4c6e0ac08b', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('166', '0', '0ac4fc0c8b55b691b1a41b0dbb60d5b0e45750cd.jpg', 'book', 'uploads/images/beva/full/0ac4fc0c8b55b691b1a41b0dbb60d5b0e45750cd.jpg', '', 'https://3w.beva.cn/story/images/res/10280/ST_yonggandexiaociwei205213-21.jpg', 'image/jpeg', 'jpeg', '12322', '64fa5ee09685e0a2a9f5177ad7595da7', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('167', '0', '2feae5c209b1033698e49b5688b45ec9fbf3886f.jpg', 'book', 'uploads/images/beva/full/2feae5c209b1033698e49b5688b45ec9fbf3886f.jpg', '', 'https://3w.beva.cn/story/images/res/10212/ST_yaoxiayule205.jpg', 'image/jpeg', 'jpeg', '13272', '987296ce59bc95a084716d164942dd2a', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('168', '0', '48a57001512143fc6b55bd37278aeb55b3cf7338.jpg', 'book', 'uploads/images/beva/full/48a57001512143fc6b55bd37278aeb55b3cf7338.jpg', '', 'https://3w.beva.cn/story/images/res/14946/ST_dandadelaohu205213.png', 'image/jpeg', 'jpeg', '11528', '7289460fa273a8a352c935053d4fa4bc', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('169', '0', '10b9a242801f69b148587f61525dba189b6d820a.jpg', 'book', 'uploads/images/beva/full/10b9a242801f69b148587f61525dba189b6d820a.jpg', '', 'https://3w.beva.cn/story/images/res/10498/ST_nvwabutian205.jpg', 'image/jpeg', 'jpeg', '11129', '0309ba7a8b95c49170f44ab83122f91e', '', 'local', '0', '1545803512', '1545803512', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('170', '0', 'af17bd1ce5d023abbc4f2c5fd7410c3c5925fa3f.jpg', 'book', 'uploads/images/beva/full/af17bd1ce5d023abbc4f2c5fd7410c3c5925fa3f.jpg', '', 'https://3w.beva.cn/story/images/res/11431/ST_sanzijing205213.png', 'image/jpeg', 'jpeg', '12457', '942c96574d05dbe46bd1a65cd1ad44e4', '', 'local', '0', '1545803513', '1545803513', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('171', '0', '3feddaf66e19a639e7484759825960e637ed815b.jpg', 'book', 'uploads/images/beva/full/3feddaf66e19a639e7484759825960e637ed815b.jpg', '', 'https://3w.beva.cn/story/images/res/43801/ST_{DB948BDF-1B60-43A7-ACD4-8703E13885D9}.png', 'image/jpeg', 'jpeg', '15911', '1c71fca06cd988db78dedabc46377923', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('172', '0', 'd54bf56d50dbbef14f3b73957e62425e85aafa85.jpg', 'book', 'uploads/images/beva/full/d54bf56d50dbbef14f3b73957e62425e85aafa85.jpg', '', 'https://3w.beva.cn/story/images/res/14897/ST_honghongdepingguo205213.png', 'image/jpeg', 'jpeg', '14092', '3c0e17f42b2b4c76c6c1f56662061905', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('173', '0', 'c90bbc4715f23991e294882a20ad7ef2c383f537.jpg', 'book', 'uploads/images/beva/full/c90bbc4715f23991e294882a20ad7ef2c383f537.jpg', '', 'https://3w.beva.cn/story/images/res/15080/ST_shiershengxiao205.jpg', 'image/jpeg', 'jpeg', '13655', '224a2d23834dbd7c9560682ecd4584b1', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('174', '0', '2d890dc9111a63b68cece5fd400a85cdac1db288.jpg', 'book', 'uploads/images/beva/full/2d890dc9111a63b68cece5fd400a85cdac1db288.jpg', '', 'https://3w.beva.cn/story/images/res/10740/ST_niulangzhunv205.jpg', 'image/jpeg', 'jpeg', '9424', '14daf9a4d53f1e86d778754391bfde07', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('175', '0', '763ab5f93cbe19918c43a18c356445c3db2f67b2.jpg', 'book', 'uploads/images/beva/full/763ab5f93cbe19918c43a18c356445c3db2f67b2.jpg', '', 'https://3w.beva.cn/story/images/res/11530/ST_qingwawangzi205213-16.jpg', 'image/jpeg', 'jpeg', '12874', '9b46d7a8aca42245cd4feb81ca055fb2', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('176', '0', 'a1f3814d55f69cfaad2beecaa8e58e59e3f26e3a.jpg', 'book', 'uploads/images/beva/full/a1f3814d55f69cfaad2beecaa8e58e59e3f26e3a.jpg', '', 'https://3w.beva.cn/story/images/res/10465/ST_shuimeiren205213-12.jpg', 'image/jpeg', 'jpeg', '12615', 'a151665a42c3f70cc25b9aeac316aaa2', '', 'local', '0', '1545803514', '1545803514', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('177', '0', 'AU_maihuochaidexiaonvhai001.MP3', 'book', 'uploads/mp3/beva/1bc958b0cf13e003fbc230210b534e07/AU_maihuochaidexiaonvhai001.MP3', '', 'http://story.beva.com/audio/download/10689/3', 'audio/mp3', 'mp3', '1438995', '0872dfcd680ba72c7de356af60fab8a1', '', 'local', '0', '1545803515', '1545803515', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('178', '0', 'AU_maihuochaidexiaonvhai002.MP3', 'book', 'uploads/mp3/beva/1bc958b0cf13e003fbc230210b534e07/AU_maihuochaidexiaonvhai002.MP3', '', 'http://story.beva.com/audio/download/10689/3', 'audio/mp3', 'mp3', '1697907', 'b5998f24066d3a02fe9efe3a268f86fd', '', 'local', '0', '1545803515', '1545803515', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('179', '0', 'f9dead70b906023c078cbfde8967587bab8bd338.jpg', 'book', 'uploads/images/beva/full/f9dead70b906023c078cbfde8967587bab8bd338.jpg', '', 'https://3w.beva.cn/story/images/res/10689/ST_maihuochaidexiaonvhai205.jpg', 'image/jpeg', 'jpeg', '10669', '4321a23b6993b68cbe1dff0574d3ab70', '', 'local', '0', '1545803515', '1545803515', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('180', '0', '95579d3c913e82a5c77052ed504a187b4d67f964.jpg', 'book', 'uploads/images/beva/full/95579d3c913e82a5c77052ed504a187b4d67f964.jpg', '', 'https://3w.beva.cn/story/images/res/11602/ST_205.jpg', 'image/jpeg', 'jpeg', '9116', '70d77da50e853e2e668fd394c367908b', '', 'local', '0', '1545803515', '1545803515', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('181', '0', 'AU_Xiao-Xiong-Sheng-Ri-Hui-over.mp3', 'book', 'uploads/mp3/beva/b522d8c9d1255e234f925f0f936a280f/AU_Xiao-Xiong-Sheng-Ri-Hui-over.mp3', '', 'http://story.beva.com/audio/download/11333/1', 'audio/mp3', 'mp3', '1056501', 'b20ace9ca9b370a6aab2e32e3c8e9f53', '', 'local', '0', '1545803515', '1545803515', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('182', '0', 'fe15c17d473a475f8e1a857f99e7de87a9158150.jpg', 'book', 'uploads/images/beva/full/fe15c17d473a475f8e1a857f99e7de87a9158150.jpg', '', 'https://3w.beva.cn/story/images/res/43806/ST_tiankongyaota205213.png', 'image/jpeg', 'jpeg', '12589', '333bf1641268086f01ba607d85fcf4fd', '', 'local', '0', '1545803516', '1545803516', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('183', '0', 'AU_chouxiaoya.MP3', 'book', 'uploads/mp3/beva/6972c15afc1b03e8e6d1817dd2af03bf/AU_chouxiaoya.MP3', '', 'http://story.beva.com/audio/download/10121/1', 'audio/mp3', 'mp3', '2293483', 'ceca44b226990ea3ff1aa6c481b81cba', '', 'local', '0', '1545803516', '1545803516', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('184', '0', '8772e29a62a2fd571eb6627526da314176da08b2.jpg', 'book', 'uploads/images/beva/full/8772e29a62a2fd571eb6627526da314176da08b2.jpg', '', 'https://3w.beva.cn/story/images/res/10770/ST_shouxiaoya205.jpg', 'image/jpeg', 'jpeg', '11091', '883d138934b4be7b0cddc94889c313ec', '', 'local', '0', '1545803516', '1545803516', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('185', '0', 'AU_mangrenmoxiang.MP3', 'book', 'uploads/mp3/beva/6394dae3b67e59f6f99288a2da305a14/AU_mangrenmoxiang.MP3', '', 'http://story.beva.com/audio/download/10053/1', 'audio/mp3', 'mp3', '801790', '2e903621ff0509af419e00c491fe57b2', '', 'local', '0', '1545803516', '1545803516', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('186', '0', '556d84acdd64762a609101bef4c5d12bf5294950.jpg', 'book', 'uploads/images/beva/full/556d84acdd64762a609101bef4c5d12bf5294950.jpg', '', 'https://3w.beva.cn/story/images/res/10758/ST_mangrenmoxiang205213-13.jpg', 'image/jpeg', 'jpeg', '13114', 'ed7a99a48041b84052c3bde922e0ccd4', '', 'local', '0', '1545803516', '1545803516', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('187', '0', '8db7532de11cfe3643a2e31b0e13f3d602ed1185.jpg', 'book', 'uploads/images/beva/full/8db7532de11cfe3643a2e31b0e13f3d602ed1185.jpg', '', 'https://3w.beva.cn/story/images/res/15347/ST_kezhouqiujian205213.png', 'image/jpeg', 'jpeg', '10379', '86508c04d98f9a5df5959b9d2ae1433a', '', 'local', '0', '1545803516', '1545803516', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('188', '0', 'AU_xiaogongjixuechilaba.mp3', 'book', 'uploads/mp3/beva/dfb5c61f196d4878fea2b88c19c672f5/AU_xiaogongjixuechilaba.mp3', '', 'http://story.beva.com/audio/download/10217/1', 'audio/mp3', 'mp3', '2545216', 'a1b4a991b952f3894327e160cd381355', '', 'local', '0', '1545803517', '1545803517', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('189', '0', 'AU_Cong-Ming-De-Xiao-Bai-Tu.mp3', 'book', 'uploads/mp3/beva/80443e728d0a5e7d6416937d0a01f4c5/AU_Cong-Ming-De-Xiao-Bai-Tu.mp3', '', 'http://story.beva.com/audio/download/11111/1', 'audio/mp3', 'mp3', '597648', '7ca7e462dad9ebce396864d9f76718b7', '', 'local', '0', '1545803517', '1545803517', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('190', '0', '75ffb297109e12ea16b84b168c9c9341ad200623.jpg', 'book', 'uploads/images/beva/full/75ffb297109e12ea16b84b168c9c9341ad200623.jpg', '', 'https://3w.beva.cn/story/images/res/43871/ST_wenjiqiwu.jpg', 'image/jpeg', 'jpeg', '9826', '395d4e88e6e0a0510a6c8a42bfe955a7', '', 'local', '0', '1545803517', '1545803517', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('191', '0', '9d8fd4006ac96f80e0e74d2edd77c85c6750f518.jpg', 'book', 'uploads/images/beva/full/9d8fd4006ac96f80e0e74d2edd77c85c6750f518.jpg', '', 'https://3w.beva.cn/story/images/res/11584/ST_baixuehuanghou205.jpg', 'image/jpeg', 'jpeg', '11472', 'f305c537d3a909699a73d3b28a0ebd7f', '', 'local', '0', '1545803517', '1545803517', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('192', '0', '361e5f4eb9dd5c193d2b2acf2bcb0a878266237c.jpg', 'book', 'uploads/images/beva/full/361e5f4eb9dd5c193d2b2acf2bcb0a878266237c.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_bevawhy.png', 'image/jpeg', 'jpeg', '10392', '2bbe7aa20ef56afbb4ed8630652fff40', '', 'local', '0', '1545803519', '1545803519', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('193', '0', '395eff1fcb5a23f2bbebc46db50ccc614fbfa728.jpg', 'book', 'uploads/images/beva/full/395eff1fcb5a23f2bbebc46db50ccc614fbfa728.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_glth.png', 'image/jpeg', 'jpeg', '10664', '56ded047873cb7258e5f79c597a47460', '', 'local', '0', '1545803521', '1545803521', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('194', '0', '83811098c174ac77b0d4f0250da0da528ee128d3.jpg', 'book', 'uploads/images/beva/full/83811098c174ac77b0d4f0250da0da528ee128d3.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_xyyyhtl.png', 'image/jpeg', 'jpeg', '12725', 'fdd44f451a02905ea2d99bdc297e191b', '', 'local', '0', '1545803523', '1545803523', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('195', '0', 'd1e1aa5c7d7f2bf8c323cf2f153e4ce3744a4fd2.jpg', 'book', 'uploads/images/beva/full/d1e1aa5c7d7f2bf8c323cf2f153e4ce3744a4fd2.jpg', '', 'https://3w.beva.cn/story/images/res/10088/ST_yamiaozhuzhang205.jpg', 'image/jpeg', 'jpeg', '15682', '789992f621dd7371b9d448ee2f2af403', '', 'local', '0', '1545803523', '1545803523', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('196', '0', 'AU_gui-tu-sai-pao.MP3', 'book', 'uploads/mp3/beva/638419ee41138f56e61543214dd166e5/AU_gui-tu-sai-pao.MP3', '', 'http://story.beva.com/audio/download/11006/1', 'audio/mp3', 'mp3', '1621869', '3a507a5152b8098b4474e1c2581b661b', '', 'local', '0', '1545803523', '1545803523', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('197', '0', '8222e53c518b7f1b14698a8f1b1e5ca33d82a399.jpg', 'book', 'uploads/images/beva/full/8222e53c518b7f1b14698a8f1b1e5ca33d82a399.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_sha.png', 'image/jpeg', 'jpeg', '10062', '59b5823264adc010b36cb7dd396841fc', '', 'local', '0', '1545803524', '1545803524', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('198', '0', 'AU_hujiahuwei.MP3', 'book', 'uploads/mp3/beva/aa9ff58c9b52a9427387660206bf7754/AU_hujiahuwei.MP3', '', 'http://story.beva.com/audio/download/10126/1', 'audio/mp3', 'mp3', '2598886', '68b9f8b2b40c44b7fef32e6f5309780d', '', 'local', '0', '1545803532', '1545803532', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('199', '0', 'b93666c0900551c292d03db68c644c228fd8958b.jpg', 'book', 'uploads/images/beva/full/b93666c0900551c292d03db68c644c228fd8958b.jpg', '', 'https://3w.beva.cn/story/images/res/11476/ST_296_205_cygs-hujiahuwei.jpg', 'image/jpeg', 'jpeg', '16085', '4cb8a4c965e5006c782947415104c4bc', '', 'local', '0', '1545803532', '1545803532', '100', '1', '296', '205');
INSERT INTO `dp_admin_attachment` VALUES ('200', '0', 'AU_Wan-Ju-Hui-Jia-Le.mp3', 'book', 'uploads/mp3/beva/b3ced32ae8ceb34389b1cc59697f764c/AU_Wan-Ju-Hui-Jia-Le.mp3', '', 'http://story.beva.com/audio/download/11069/1', 'audio/mp3', 'mp3', '1432560', '5182486df6f401e930e3ca8a9e5bf42f', '', 'local', '0', '1545803532', '1545803532', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('201', '0', 'AU_baitunainaideyaoyi.mp3', 'book', 'uploads/mp3/beva/145c6e50977af8f04c8b0303fc121319/AU_baitunainaideyaoyi.mp3', '', 'http://story.beva.com/audio/download/10203/1', 'audio/mp3', 'mp3', '718009', 'a8bcf852c4157355213f28d441c34849', '', 'local', '0', '1545803532', '1545803532', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('202', '0', 'a5feaa8310da0cc4dc1f50d1a1f17d657713456b.jpg', 'book', 'uploads/images/beva/full/a5feaa8310da0cc4dc1f50d1a1f17d657713456b.jpg', '', 'https://3w.beva.cn/story/images/res/15104/ST_meitiandoushishengdanjie205.jpg', 'image/jpeg', 'jpeg', '12219', '01fc38c57f3366967aa08be635954e8a', '', 'local', '0', '1545803533', '1545803533', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('203', '0', 'AU_xinfenglideqiqi.mp3', 'book', 'uploads/mp3/beva/922a82ec5e09e45a4d8b1989deb3a064/AU_xinfenglideqiqi.mp3', '', 'http://story.beva.com/audio/download/10202/1', 'audio/mp3', 'mp3', '3723618', '97f5653cf9ce2bb71fa0192b80dc26c8', '', 'local', '0', '1545803533', '1545803533', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('204', '0', 'AU_mimidediaoyugan.mp3', 'book', 'uploads/mp3/beva/bc010c98c78fa6b3e8ce46e46c3ab2a0/AU_mimidediaoyugan.mp3', '', 'http://story.beva.com/audio/download/10185/1', 'audio/mp3', 'mp3', '1743122', '04f891e232b3d0a2c320573c2a5879b6', '', 'local', '0', '1545803534', '1545803534', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('205', '0', 'bc5145c09ec70776a6cdbc4fe8a6d59d130a8c19.jpg', 'book', 'uploads/images/beva/full/bc5145c09ec70776a6cdbc4fe8a6d59d130a8c19.jpg', '', 'https://3w.beva.cn/story/images/res/10312/ST_mimidediaoyugan205.jpg', 'image/jpeg', 'jpeg', '11861', '8a5678a9d31833d3b46e412a9c7365cb', '', 'local', '0', '1545803534', '1545803534', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('206', '0', 'AU_XiaoLaoShuMiMiDaDianHua.mp3', 'book', 'uploads/mp3/beva/87f93d541acab2fd463a997b0196e150/AU_XiaoLaoShuMiMiDaDianHua.mp3', '', 'http://story.beva.com/audio/download/10237/3', 'audio/mp3', 'mp3', '3319833', '5d0cd1322bb7814e617a6ea3faa29d89', '', 'local', '0', '1545803535', '1545803535', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('207', '0', '3e5acc90994e8be9d4cb6ce75db9954f5fd28d81.jpg', 'book', 'uploads/images/beva/full/3e5acc90994e8be9d4cb6ce75db9954f5fd28d81.jpg', '', 'https://3w.beva.cn/story/images/res/10816/ST_huiguniang205213-9.jpg', 'image/jpeg', 'jpeg', '11740', 'd7ea35f567da1261fcb5b2050920a989', '', 'local', '0', '1545803578', '1545803578', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('208', '0', '4ca5096b904b4c236b1d844730d6a17a3ab79149.jpg', 'book', 'uploads/images/beva/full/4ca5096b904b4c236b1d844730d6a17a3ab79149.jpg', '', 'https://3w.beva.cn/story/images/res/10199/ST_xiaohouzixiashan205.jpg', 'image/jpeg', 'jpeg', '9404', '035aa0df927cea8c0487285cb84d45ca', '', 'local', '0', '1545803578', '1545803578', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('209', '0', 'b08c2723af85e7b301570d367a6851ad82b11407.jpg', 'book', 'uploads/images/beva/full/b08c2723af85e7b301570d367a6851ad82b11407.jpg', '', 'https://3w.beva.cn/story/images/res/10083/ST_jiangweitianhai205.jpg', 'image/jpeg', 'jpeg', '14403', 'a3839fc506af8a53d3500f9d76a112c2', '', 'local', '0', '1545803579', '1545803579', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('210', '0', '4a74a50cbd6b5e8a3b55beba5144f29ec5e191fd.jpg', 'book', 'uploads/images/beva/full/4a74a50cbd6b5e8a3b55beba5144f29ec5e191fd.jpg', '', 'https://3w.beva.cn/story/images/res/11105/ST_kongrongrangli205.jpg', 'image/jpeg', 'jpeg', '12385', '861dd9e7c3af2befa04416e631b35ae1', '', 'local', '0', '1545803581', '1545803581', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('211', '0', 'AU_Qian-Li-Song-E-Mao-over.mp3', 'book', 'uploads/mp3/beva/812ad5867cff52f3057a7dff3f138428/AU_Qian-Li-Song-E-Mao-over.mp3', '', 'http://story.beva.com/audio/download/11393/1', 'audio/mp3', 'mp3', '1196784', 'b858a3a57c7716a58081ba90e176a9cd', '', 'local', '0', '1545803584', '1545803584', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('212', '0', '27cdfb534db8cc41fcf769bd2c5b2f5a317c82f8.jpg', 'book', 'uploads/images/beva/full/27cdfb534db8cc41fcf769bd2c5b2f5a317c82f8.jpg', '', 'https://3w.beva.cn/story/images/res/10163/ST_qianlisongemao205213.png', 'image/jpeg', 'jpeg', '11848', '8de957cbd7d64c3de9f8f1ea210bfb7e', '', 'local', '0', '1545803584', '1545803584', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('213', '0', '8b2394ef7aea47a64a48b7ada0c31b86162ab6e0.jpg', 'book', 'uploads/images/beva/full/8b2394ef7aea47a64a48b7ada0c31b86162ab6e0.jpg', '', 'https://3w.beva.cn/story/images/res/10316/ST_baxianguohai205.jpg', 'image/jpeg', 'jpeg', '14479', '036c90eddcbe4025253180a6c9c33027', '', 'local', '0', '1545803584', '1545803584', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('214', '0', '90541cd4520e78dfb86318c9a46396f2bdce4172.jpg', 'book', 'uploads/images/beva/full/90541cd4520e78dfb86318c9a46396f2bdce4172.jpg', '', 'https://3w.beva.cn/story/images/res/15103/ST_sanzhixiongguoshengdan205.jpg', 'image/jpeg', 'jpeg', '13750', '8f238359c21b15b1044c62a83e4639e7', '', 'local', '0', '1545803588', '1545803588', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('215', '0', 'AU_meng-jiang-nv-ku-chang-cheng.MP3', 'book', 'uploads/mp3/beva/5e170f515862c0842e3cbc248839c62a/AU_meng-jiang-nv-ku-chang-cheng.MP3', '', 'http://story.beva.com/audio/download/11048/1', 'audio/mp3', 'mp3', '1950625', '3c4badf2d15a7c62ad4f6ff049ebf604', '', 'local', '0', '1545803588', '1545803588', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('216', '0', '94cf0c4fb2f2e2d200260290b6cfa3906286f8c5.jpg', 'book', 'uploads/images/beva/full/94cf0c4fb2f2e2d200260290b6cfa3906286f8c5.jpg', '', 'https://3w.beva.cn/story/images/res/15053/ST_mengjiangnvkuchangcheng205.jpg', 'image/jpeg', 'jpeg', '11269', '46ac47758368631cb2f803f15f0577c9', '', 'local', '0', '1545803588', '1545803588', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('217', '0', '7c9476145f6053ad4d05f5fd312b4af78152030e.jpg', 'book', 'uploads/images/beva/full/7c9476145f6053ad4d05f5fd312b4af78152030e.jpg', '', 'https://3w.beva.cn/story/images/res/15370/ST_chenxiangjiumu205213.png', 'image/jpeg', 'jpeg', '11925', '760288d2fdea8ff5b063cc0bbf08f46f', '', 'local', '0', '1545803592', '1545803592', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('218', '0', 'da5733c20d6ab960179d520cf4bf9144844d7ad5.jpg', 'book', 'uploads/images/beva/full/da5733c20d6ab960179d520cf4bf9144844d7ad5.jpg', '', 'https://3w.beva.cn/story/images/res/15386/ST_zhacaibizi205213.png', 'image/jpeg', 'jpeg', '11762', '482db5d08952d9e830874e06c3627548', '', 'local', '0', '1545803593', '1545803593', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('219', '0', 'AU_shuihexiaolingyangqubishu.mp3', 'book', 'uploads/mp3/beva/6aedbfe3e376e7e11711222bb9c9092c/AU_shuihexiaolingyangqubishu.mp3', '', 'http://story.beva.com/audio/download/10230/1', 'audio/mp3', 'mp3', '1709586', '2ec8cfe2413bf1ebd4a920b9c2807d8e', '', 'local', '0', '1545803594', '1545803594', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('220', '0', 'ea98a365de15050ae69d6e5dea61463cfaab2740.jpg', 'book', 'uploads/images/beva/full/ea98a365de15050ae69d6e5dea61463cfaab2740.jpg', '', 'https://3w.beva.cn/story/images/res/10350/ST_huang-di-de-xin-zhuang-205213.png', 'image/jpeg', 'jpeg', '13288', '8cb1bfa613123fcda9aba0d56b2f3db7', '', 'local', '0', '1545803595', '1545803595', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('221', '0', 'AU_hua-she-tian-zu.mp3', 'book', 'uploads/mp3/beva/edc6feb0a674c699bbd3d596197a7808/AU_hua-she-tian-zu.mp3', '', 'http://story.beva.com/audio/download/11567/1', 'audio/mp3', 'mp3', '964661', 'e2311ca30303ec95cee8d47488f5e219', '', 'local', '0', '1545803596', '1545803596', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('222', '0', '2e3d2440fe58883b95d462a8b023bea636caa9ce.jpg', 'book', 'uploads/images/beva/full/2e3d2440fe58883b95d462a8b023bea636caa9ce.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_cygs.png', 'image/jpeg', 'jpeg', '10105', 'eb2fd9d035534f8d4431e82d613e19c0', '', 'local', '0', '1545803596', '1545803596', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('223', '0', 'AU_lang-yu-xiao-yang.mp3', 'book', 'uploads/mp3/beva/60584fed2e21ae8ebfcbdb8d38cbe881/AU_lang-yu-xiao-yang.mp3', '', 'http://story.beva.com/audio/download/11497/1', 'audio/mp3', 'mp3', '508168', 'b01684c98fc83a7d22dc6e3ce058c259', '', 'local', '0', '1545803596', '1545803596', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('224', '0', '3139085c0c837cb0ddfb3b32a3657498813d62fd.jpg', 'book', 'uploads/images/beva/full/3139085c0c837cb0ddfb3b32a3657498813d62fd.jpg', '', 'https://3w.beva.cn/story/images/res/10027/ST_langyuxiaoyang205213-10.jpg', 'image/jpeg', 'jpeg', '11877', '07febb0b45b55e778e0370e8bb6a6b8d', '', 'local', '0', '1545803596', '1545803596', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('225', '0', 'AU_minnong.mp3', 'book', 'uploads/mp3/beva/25954f8fbc12667ffca9cb8eb67c5686/AU_minnong.mp3', '', 'http://story.beva.com/audio/download/10196/1', 'audio/mp3', 'mp3', '490458', 'dd615b7cf564fcfc4ba8f236e4abcf28', '', 'local', '0', '1545803598', '1545803598', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('226', '0', 'AU_Min-Nong.mp3', 'book', 'uploads/mp3/beva/25954f8fbc12667ffca9cb8eb67c5686/AU_Min-Nong.mp3', '', 'http://story.beva.com/audio/download/10196/1', 'audio/mp3', 'mp3', '457493', 'a615529c27105907a2de68b956868129', '', 'local', '0', '1545803598', '1545803598', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('227', '0', '52b4ed95df72f069ba0f9e8711f493bef8cdd730.jpg', 'book', 'uploads/images/beva/full/52b4ed95df72f069ba0f9e8711f493bef8cdd730.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_gxgs.png', 'image/jpeg', 'jpeg', '9960', '91eacbaeaa5e4843c09bf7741c20ed2a', '', 'local', '0', '1545803598', '1545803598', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('228', '0', 'AU_Chou-Xiao-Ya.MP3', 'book', 'uploads/mp3/beva/affa602f70f30488de7c82c37ac1ce60/AU_Chou-Xiao-Ya.MP3', '', 'http://story.beva.com/audio/download/10677/1', 'audio/mp3', 'mp3', '2316235', '173111146bcd3b9aedf83e1462b504d2', '', 'local', '0', '1545803598', '1545803598', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('229', '0', 'AU_fenger-yangguang-xiaoxishui.mp3', 'book', 'uploads/mp3/beva/3c383e09870a935d11c0f1ab7bafbb3e/AU_fenger-yangguang-xiaoxishui.mp3', '', 'http://story.beva.com/audio/download/10193/1', 'audio/mp3', 'mp3', '964640', '711c271756a5e9ba4256f598d38c9798', '', 'local', '0', '1545803598', '1545803598', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('230', '0', 'AU_hujiahuwei.MP3', 'book', 'uploads/mp3/beva/c4fc320c3ee109d4b546d311f14ed879/AU_hujiahuwei.MP3', '', 'http://story.beva.com/audio/download/10051/1', 'audio/mp3', 'mp3', '900717', '1021311f3d6d572d130196fb9eb5adaf', '', 'local', '0', '1545803599', '1545803599', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('231', '0', '2c43432447c062722ce2593bf06e61da0e367039.jpg', 'book', 'uploads/images/beva/full/2c43432447c062722ce2593bf06e61da0e367039.jpg', '', 'https://3w.beva.cn/story/images/res/15038/ST_houyisheri205.jpg', 'image/jpeg', 'jpeg', '8896', '80903253aa3fe5b37798658e6664ebb4', '', 'local', '0', '1545803599', '1545803599', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('232', '0', 'AU_ye-zhi-yin.mp3', 'book', 'uploads/mp3/beva/ea43ceebe728341e116d1c410c74032e/AU_ye-zhi-yin.mp3', '', 'http://story.beva.com/audio/download/10733/1', 'audio/mp3', 'mp3', '1988795', '22c28a976733e78e9693b293b11831b1', '', 'local', '0', '1545803602', '1545803602', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('233', '0', 'AU_Shuo-Huang-De-Fang-Yang-Wa.mp3', 'book', 'uploads/mp3/beva/e80401b83364cb07c8b5f0803251614c/AU_Shuo-Huang-De-Fang-Yang-Wa.mp3', '', 'http://story.beva.com/audio/download/11476/1', 'audio/mp3', 'mp3', '536949', 'e46e490a0627ebc0c02b7172cd077fc1', '', 'local', '0', '1545803602', '1545803602', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('234', '0', '582b160a1f6eb6869bbefc56ae96c864246ddef2.jpg', 'book', 'uploads/images/beva/full/582b160a1f6eb6869bbefc56ae96c864246ddef2.jpg', '', 'https://3w.beva.cn/story/images/res/10040/ST_langlaile205213.png', 'image/jpeg', 'jpeg', '14337', 'de55df955dda35855f74ab54623b6c8f', '', 'local', '0', '1545803602', '1545803602', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('235', '0', 'AU_Niao-Wo-Li-De-Shu.mp3', 'book', 'uploads/mp3/beva/bed5c768a96194dc1fe372bb19ee5804/AU_Niao-Wo-Li-De-Shu.mp3', '', 'http://story.beva.com/audio/download/11104/1', 'audio/mp3', 'mp3', '1900704', '807c30a9477abc568091be1f30d5500c', '', 'local', '0', '1545803603', '1545803603', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('236', '0', 'AU_xiaogongjixuechilaba.mp3', 'book', 'uploads/mp3/beva/1f715f376f5e826ae65dce7391133fb9/AU_xiaogongjixuechilaba.mp3', '', 'http://story.beva.com/audio/download/10218/1', 'audio/mp3', 'mp3', '2542048', '6270714384d962270e27c8568bc49899', '', 'local', '0', '1545803605', '1545803605', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('237', '0', 'AU_shouzhudaitu.mp3', 'book', 'uploads/mp3/beva/e387e09aa103797816b8b56e84ac5bed/AU_shouzhudaitu.mp3', '', 'http://story.beva.com/audio/download/10130/1', 'audio/mp3', 'mp3', '661102', '50834851a70c37fc6ab0687524169d56', '', 'local', '0', '1545803608', '1545803608', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('238', '0', '06382463b19e3ba83f00eb9233cb939e965ee198.jpg', 'book', 'uploads/images/beva/full/06382463b19e3ba83f00eb9233cb939e965ee198.jpg', '', 'https://3w.beva.cn/story/images/res/10745/ST_shouzhudaitu205213-18.jpg', 'image/jpeg', 'jpeg', '12680', 'f62e11315cbc0ce2f9552eba7dac6f2a', '', 'local', '0', '1545803608', '1545803608', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('239', '0', 'AU_guitusaipao.MP3', 'book', 'uploads/mp3/beva/97a9b3a00411a347de991a34a33b5c50/AU_guitusaipao.MP3', '', 'http://story.beva.com/audio/download/10104/1', 'audio/mp3', 'mp3', '1600413', 'd99ba9af4890ba7e399e323f445ea9bc', '', 'local', '0', '1545803610', '1545803610', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('240', '0', '77ab083e8d13afa6245eebea4c29d473c239fa8f.jpg', 'book', 'uploads/images/beva/full/77ab083e8d13afa6245eebea4c29d473c239fa8f.jpg', '', 'https://3w.beva.cn/story/images/res/11581/ST_liyutiaolongmen205.jpg', 'image/jpeg', 'jpeg', '10674', 'b70d76f1ccec28ab0be6e827da01770f', '', 'local', '0', '1545803617', '1545803617', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('241', '0', 'AU_ping-guo-shi-fang-de-ma.mp3', 'book', 'uploads/mp3/beva/ff89d8a144e97aca421bbd366f89e9d4/AU_ping-guo-shi-fang-de-ma.mp3', '', 'http://story.beva.com/audio/download/11051/1', 'audio/mp3', 'mp3', '1355192', '8d36a606e1a2282acaeec55ffb60961b', '', 'local', '0', '1545803618', '1545803618', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('242', '0', 'AU_mu-zhi-gu-niang.mp3', 'book', 'uploads/mp3/beva/2a5ba3399bf9e27737db5b72f91155d2/AU_mu-zhi-gu-niang.mp3', '', 'http://story.beva.com/audio/download/11500/1', 'audio/mp3', 'mp3', '809992', '21ba2ec5803fcaed7390e1585263eb75', '', 'local', '0', '1545803620', '1545803620', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('243', '0', 'b1234b20885eecfff690fd2cc3723842c442eb34.jpg', 'book', 'uploads/images/beva/full/b1234b20885eecfff690fd2cc3723842c442eb34.jpg', '', 'https://3w.beva.cn/story/images/res/11598/ST_muzhiguniang205213-15.jpg', 'image/jpeg', 'jpeg', '12237', 'efc006d9a975f3796385eff85be05366', '', 'local', '0', '1545803620', '1545803620', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('244', '0', 'AU_Zai-Hui-Jia-De-Lu-Shang-over.mp3', 'book', 'uploads/mp3/beva/5f8cfaa1a8ab3fdfb1d7ff615aee29dc/AU_Zai-Hui-Jia-De-Lu-Shang-over.mp3', '', 'http://story.beva.com/audio/download/11381/1', 'audio/mp3', 'mp3', '2450853', '09be96fb3258d8f50ff1f5bd4b468d06', '', 'local', '0', '1545803620', '1545803620', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('245', '0', 'c8126d93af4efc06eed5249eef6c7ff1f66d844d.jpg', 'book', 'uploads/images/beva/full/c8126d93af4efc06eed5249eef6c7ff1f66d844d.jpg', '', 'https://3w.beva.cn/story/images/res/15383/ST_zaihuijiadelushang205213.png', 'image/jpeg', 'jpeg', '12107', '2ff4fa3c8725955ac1a095469d75c09b', '', 'local', '0', '1545803620', '1545803620', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('246', '0', 'AU_sanzhixiaozhu.mp3', 'book', 'uploads/mp3/beva/fb9c599587d55e831d0415258ae719ba/AU_sanzhixiaozhu.mp3', '', 'http://story.beva.com/audio/download/10221/1', 'audio/mp3', 'mp3', '1353898', '0528bfb583452c7b69adf96d9a1d6688', '', 'local', '0', '1545803620', '1545803620', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('247', '0', '9caa463db445156880537f807170a95cb23a46a5.jpg', 'book', 'uploads/images/beva/full/9caa463db445156880537f807170a95cb23a46a5.jpg', '', 'https://3w.beva.cn/story/images/res/10147/ST_ben-niao-xian-fei.jpg', 'image/jpeg', 'jpeg', '7088', '8e6cc6e309719938a9c96a52240f1225', '', 'local', '0', '1545803620', '1545803620', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('248', '0', '02dc5b47058dee8e8be0d8829d614c598a75c76d.jpg', 'book', 'uploads/images/beva/full/02dc5b47058dee8e8be0d8829d614c598a75c76d.jpg', '', 'https://3w.beva.cn/story/images/res/10339/ST_xiaohongmao205213-1.jpg', 'image/jpeg', 'jpeg', '12755', '818796bef0dc88cf056246941ed372f5', '', 'local', '0', '1545803639', '1545803639', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('249', '0', 'AU_Ma-Yi-Bao-En.mp3', 'book', 'uploads/mp3/beva/9ad9cc00603e5090ec431981ea1db1c1/AU_Ma-Yi-Bao-En.mp3', '', 'http://story.beva.com/audio/download/11059/1', 'audio/mp3', 'mp3', '611760', '5ea70ab23b5b1c4dd23eafee56623a8f', '', 'local', '0', '1545803639', '1545803639', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('250', '0', 'AU_baluobo.MP3', 'book', 'uploads/mp3/beva/1a1f7d68f785eb6060beacda48cdfc89/AU_baluobo.MP3', '', 'http://story.beva.com/audio/download/10102/1', 'audio/mp3', 'mp3', '1380811', '7d9b7f5218354f2dbd3089770dc7f62a', '', 'local', '0', '1545803639', '1545803639', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('251', '0', 'c61966384173c55473a741a8e8f20f3434abdb48.jpg', 'book', 'uploads/images/beva/full/c61966384173c55473a741a8e8f20f3434abdb48.jpg', '', 'https://3w.beva.cn/story/images/res/10463/ST_baixuegongzhu205213-2.jpg', 'image/jpeg', 'jpeg', '14465', '29c768dd9ca1693e1c9eec3816dc1d76', '', 'local', '0', '1545803640', '1545803640', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('252', '0', 'AU_duan-wu-jie-de-lai-li.mp3', 'book', 'uploads/mp3/beva/6756193a8a61e114692d396fd04774cd/AU_duan-wu-jie-de-lai-li.mp3', '', 'http://story.beva.com/audio/download/11488/1', 'audio/mp3', 'mp3', '640517', 'e0ef6741a7849891f22de850392c0915', '', 'local', '0', '1545803641', '1545803641', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('253', '0', 'AU_Kong-Ronf-Rang-Li.mp3', 'book', 'uploads/mp3/beva/aa0ae45784d19120f9c482d70b9571bd/AU_Kong-Ronf-Rang-Li.mp3', '', 'http://story.beva.com/audio/download/10661/1', 'audio/mp3', 'mp3', '782807', '95fbe413793df526865445f620a2ffaa', '', 'local', '0', '1545803641', '1545803641', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('254', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/8029db35230d49f8203b6268d00789ca/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10443/1', 'audio/mp3', 'mp3', '1133002', '8a24629948ead04e23e2f78b26fffcb5', '', 'local', '0', '1545803641', '1545803641', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('255', '0', 'AU_da-re-wen-guan-cha-qu-shi.mp3', 'book', 'uploads/mp3/beva/6779e84feb022c9e5950bf7ce4f17614/AU_da-re-wen-guan-cha-qu-shi.mp3', '', 'http://story.beva.com/audio/download/11484/1', 'audio/mp3', 'mp3', '713516', '6c5db4d6036749b4e250eb9ac0ec83e9', '', 'local', '0', '1545803641', '1545803641', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('256', '0', '0ffa1022eaf268d08f7ffe6b5f40a876cb82b416.jpg', 'book', 'uploads/images/beva/full/0ffa1022eaf268d08f7ffe6b5f40a876cb82b416.jpg', '', 'https://3w.beva.cn/story/images/res/14965/ST_daerwen205213.png', 'image/jpeg', 'jpeg', '12847', 'd99218f051d0ba3e96c65d0a9f96fe64', '', 'local', '0', '1545803641', '1545803641', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('257', '0', 'AU_Yi-Gen-Yu-Mao.mp3', 'book', 'uploads/mp3/beva/a8b3f01d8e403e8e518200790764f294/AU_Yi-Gen-Yu-Mao.mp3', '', 'http://story.beva.com/audio/download/11085/1', 'audio/mp3', 'mp3', '1741728', '00357295e8ed46af49eac6c6b1838cf5', '', 'local', '0', '1545803641', '1545803641', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('258', '0', 'AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', 'book', 'uploads/mp3/beva/b1bea712f277a5f38deeb644f0dbfe37/AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', '', 'http://story.beva.com/audio/download/10590/1', 'audio/mp3', 'mp3', '2300940', 'd4c20cebf54ce3f05414fd28c218a934', '', 'local', '0', '1545803642', '1545803642', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('259', '0', 'AU_sui-gong.mp3', 'book', 'uploads/mp3/beva/5c1efd3bacc3ede534322f17bed7fa34/AU_sui-gong.mp3', '', 'http://story.beva.com/audio/download/11658/1', 'audio/mp3', 'mp3', '823973', '6399ff1e59ebe26dcc040b9de5d8fff8', '', 'local', '0', '1545803642', '1545803642', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('260', '0', '22a7796802eaa7ac0de5ff9c0084b338d60e00da.jpg', 'book', 'uploads/images/beva/full/22a7796802eaa7ac0de5ff9c0084b338d60e00da.jpg', '', 'https://3w.beva.cn/story/images/res/15343/ST_ganentubao205213.png', 'image/jpeg', 'jpeg', '11640', '5c9e1bfcf44c5c88f0fe5673fa6e0739', '', 'local', '0', '1545803642', '1545803642', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('261', '0', '776b06176fc1b11a52573376f1e2776f33a22981.jpg', 'book', 'uploads/images/beva/full/776b06176fc1b11a52573376f1e2776f33a22981.jpg', '', 'https://3w.beva.cn/story/images/res/14988/ST_libai205.jpg', 'image/jpeg', 'jpeg', '8898', 'f21cba2020eea7c6203f41d0c2b4381e', '', 'local', '0', '1545803643', '1545803643', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('262', '0', '9ce759a19ed017d1da2ec11406f130c131dd9687.jpg', 'book', 'uploads/images/beva/full/9ce759a19ed017d1da2ec11406f130c131dd9687.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_kjys.png', 'image/jpeg', 'jpeg', '14068', '433600f0568f9f48b8c6361650c37887', '', 'local', '0', '1545803643', '1545803643', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('263', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/5dc34e625d83c046835c4aec7f30242a/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10473/1', 'audio/mp3', 'mp3', '1025858', 'b6dd7458bc6a4acd27fdf19164cf0aea', '', 'local', '0', '1545803644', '1545803644', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('264', '0', '1787f546cea9f6a835405350052f3553473adbfe.jpg', 'book', 'uploads/images/beva/full/1787f546cea9f6a835405350052f3553473adbfe.jpg', '', 'https://3w.beva.cn/story/images/res/10506/ST_yeying205.jpg', 'image/jpeg', 'jpeg', '10765', '655fd44154097721aeab4927997ab207', '', 'local', '0', '1545803644', '1545803644', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('265', '0', 'bc9c0ca819ff9702e500edd597609d9c946c0ec0.jpg', 'book', 'uploads/images/beva/full/bc9c0ca819ff9702e500edd597609d9c946c0ec0.jpg', '', 'https://3w.beva.cn/story/images/res/15098/ST_205shengdanxiaogushi.jpg', 'image/jpeg', 'jpeg', '13862', 'c67e4bf36bfc19021ad3100569db3cd0', '', 'local', '0', '1545803646', '1545803646', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('266', '0', 'AU_You-Wu-Ding-Hui-Qing-Tian-Ma.mp3', 'book', 'uploads/mp3/beva/2c2ecf07c5be5bd02fa85ed0e9250e36/AU_You-Wu-Ding-Hui-Qing-Tian-Ma.mp3', '', 'http://story.beva.com/audio/download/10507/1', 'audio/mp3', 'mp3', '2400348', '8a8a77f790d1223ff22517240af02368', '', 'local', '0', '1545803646', '1545803646', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('267', '0', '15f9a91e5151aa42ae1a335a3602b0defd8c6c30.jpg', 'book', 'uploads/images/beva/full/15f9a91e5151aa42ae1a335a3602b0defd8c6c30.jpg', '', 'https://3w.beva.cn/story/images/res/14993/ST_ying-xiong-wang-er-xiao.jpg', 'image/jpeg', 'jpeg', '10321', '44ad43358aa3cc76b9921f7e53508313', '', 'local', '0', '1545803646', '1545803646', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('268', '0', 'AU_Ke-Zhou-Jiu-Jian-over.mp3', 'book', 'uploads/mp3/beva/ca88f6dd4482bfe4b0bde0123a756616/AU_Ke-Zhou-Jiu-Jian-over.mp3', '', 'http://story.beva.com/audio/download/11389/1', 'audio/mp3', 'mp3', '843696', 'edaaddc000a10d6908e7592194288bf0', '', 'local', '0', '1545803646', '1545803646', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('269', '0', 'AU_Shui-Yong-Gan.mp3', 'book', 'uploads/mp3/beva/695a5cc2e36759e7db5c9ce892a571a7/AU_Shui-Yong-Gan.mp3', '', 'http://story.beva.com/audio/download/10557/1', 'audio/mp3', 'mp3', '1965454', 'a844b4e52b94158e7fd5620aa20a4b87', '', 'local', '0', '1545803646', '1545803646', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('270', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/8fb804b5763fdcc6005a5bb999ebf5b2/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10455/1', 'audio/mp3', 'mp3', '1211328', 'ef88fa4ca4df0d8a7d97a4b690f09f23', '', 'local', '0', '1545803646', '1545803646', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('271', '0', 'AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', 'book', 'uploads/mp3/beva/de1d16b786be4a3d2133302a38644387/AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', '', 'http://story.beva.com/audio/download/10466/1', 'audio/mp3', 'mp3', '1486090', '04d0a291d6e4820fa4394ef0aa5053bb', '', 'local', '0', '1545803646', '1545803646', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('272', '0', 'AU_hong-ma-yi-he-hei-ma-yi.mp3', 'book', 'uploads/mp3/beva/2017e9a66ae5ca76c530656ffe50d267/AU_hong-ma-yi-he-hei-ma-yi.mp3', '', 'http://story.beva.com/audio/download/11522/1', 'audio/mp3', 'mp3', '1567989', '847d605669cff7f9f28cb95d1f6432c9', '', 'local', '0', '1545803647', '1545803647', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('273', '0', 'AU_guitusaipao.MP3', 'book', 'uploads/mp3/beva/b7a340374d915924a26bfeb71312c0a3/AU_guitusaipao.MP3', '', 'http://story.beva.com/audio/download/10105/1', 'audio/mp3', 'mp3', '1600125', '095e84aeaf5685c44d4c78b25af5fa4f', '', 'local', '0', '1545803647', '1545803647', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('274', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/135b8e9967e28303719219cdda2f2055/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10447/1', 'audio/mp3', 'mp3', '1107366', '37ddf6d589e2844646123f4290b6e4ab', '', 'local', '0', '1545803647', '1545803647', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('275', '0', 'AU_Xiao-Er-Chui-Diao.mp3', 'book', 'uploads/mp3/beva/32b5e38da17275c7da6d128a3525aceb/AU_Xiao-Er-Chui-Diao.mp3', '', 'http://story.beva.com/audio/download/11685/1', 'audio/mp3', 'mp3', '525605', '0520059d950e318fe41558ed21d27d32', '', 'local', '0', '1545803647', '1545803647', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('276', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/3a1a913d039657d0d776187813af2603/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10483/1', 'audio/mp3', 'mp3', '1336182', '7e27f46d02e3f71a2713db1764596583', '', 'local', '0', '1545803647', '1545803647', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('277', '0', '91721ba2cda9338b815f23d87f1c509114eb634b.jpg', 'book', 'uploads/images/beva/full/91721ba2cda9338b815f23d87f1c509114eb634b.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_bevaerge.png', 'image/jpeg', 'jpeg', '9795', '7fefe426728f7dd0fbf35fc8d628fca2', '', 'local', '0', '1545803648', '1545803648', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('278', '0', 'AU_Za-ji-biao-yan.mp3', 'book', 'uploads/mp3/beva/bd5ac05abe04b6a579c0e27abcc8889e/AU_Za-ji-biao-yan.mp3', '', 'http://story.beva.com/audio/download/11654/1', 'audio/mp3', 'mp3', '821237', '86da13e8844f6922e6a45449fc712706', '', 'local', '0', '1545803649', '1545803649', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('279', '0', '1a155289e9152daf92a703ff0fedb67388fc648e.jpg', 'book', 'uploads/images/beva/full/1a155289e9152daf92a703ff0fedb67388fc648e.jpg', '', 'https://3w.beva.cn/story/images/res/10466/ST_caizhemianbaozoudenvhai205.jpg', 'image/jpeg', 'jpeg', '9198', 'e54e9fd6143d9941cbed6af5de5b0abb', '', 'local', '0', '1545803649', '1545803649', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('280', '0', 'AU_shan-de-hui-yin.mp3', 'book', 'uploads/mp3/beva/a84549b6043db5d276fcc9adb4d3bc3b/AU_shan-de-hui-yin.mp3', '', 'http://story.beva.com/audio/download/10740/1', 'audio/mp3', 'mp3', '1974253', 'c64137e857f3e5065ef61694d80cbe3e', '', 'local', '0', '1545803650', '1545803650', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('281', '0', 'AU_Zhao-San-Mu-Si-over.mp3', 'book', 'uploads/mp3/beva/c9b31b268e6123252b1e7d9f80f4272c/AU_Zhao-San-Mu-Si-over.mp3', '', 'http://story.beva.com/audio/download/11365/1', 'audio/mp3', 'mp3', '689733', '5c8d696cf38bb79c0b9502ef28f922aa', '', 'local', '0', '1545803650', '1545803650', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('282', '0', 'cafa9dd9567e02b345ca0042f18f40d1406f5179.jpg', 'book', 'uploads/images/beva/full/cafa9dd9567e02b345ca0042f18f40d1406f5179.jpg', '', 'https://3w.beva.cn/story/images/res/15076/ST_pangukaitian205.jpg', 'image/jpeg', 'jpeg', '10263', '61f936a5f82383c63949acf6dc301d1c', '', 'local', '0', '1545803651', '1545803651', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('283', '0', 'AU_ma-li-he-yang-wa-wa.mp3', 'book', 'uploads/mp3/beva/6075b260db0d596d8ad7e2dbefa15643/AU_ma-li-he-yang-wa-wa.mp3', '', 'http://story.beva.com/audio/download/11014/1', 'audio/mp3', 'mp3', '1359953', '13a6ff32e46319856862ab0e314d56be', '', 'local', '0', '1545803651', '1545803651', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('284', '0', '900f9b4f7e8c8441edd4cc3d76e431018e479f9e.jpg', 'book', 'uploads/images/beva/full/900f9b4f7e8c8441edd4cc3d76e431018e479f9e.jpg', '', 'https://3w.beva.cn/story/images/res/15364/ST_bainiaochaofeng205213.png', 'image/jpeg', 'jpeg', '10229', '48639324ae25092096b4af8d098cbc6e', '', 'local', '0', '1545803651', '1545803651', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('285', '0', 'AU_Liang-Ge-Jiu-Guan-over.mp3', 'book', 'uploads/mp3/beva/3f8d415b9fb1bbe84673e517bee5f9c5/AU_Liang-Ge-Jiu-Guan-over.mp3', '', 'http://story.beva.com/audio/download/11305/1', 'audio/mp3', 'mp3', '1052901', '5ee1d606ada7bb2c08bcf628cf906027', '', 'local', '0', '1545803651', '1545803651', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('286', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/2c03c273c1088bf871d6aefe52f22b67/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10320/1', 'audio/mp3', 'mp3', '1397814', 'b7b52471e0ae02b6a9cbffa91a24b193', '', 'local', '0', '1545803652', '1545803652', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('287', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/784fab65f319e2da05c1bff69b932f55/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10439/1', 'audio/mp3', 'mp3', '1173754', 'c2e597c8a5034136986d123a82d7c381', '', 'local', '0', '1545803652', '1545803652', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('288', '0', 'AU_Chi-Shang.mp3', 'book', 'uploads/mp3/beva/a5fe15a5dfac1367eeb131cc7b693a47/AU_Chi-Shang.mp3', '', 'http://story.beva.com/audio/download/11680/1', 'audio/mp3', 'mp3', '449285', '07c2d9679e5a9f5fb7b57c946ad17dd5', '', 'local', '0', '1545803652', '1545803652', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('289', '0', 'AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', 'book', 'uploads/mp3/beva/1b6bdd395d0a847f1746c794e6f64a2d/AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', '', 'http://story.beva.com/audio/download/10424/1', 'audio/mp3', 'mp3', '1252380', '019e2cdfbbe0915d29f60700b48dd82a', '', 'local', '0', '1545803652', '1545803652', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('290', '0', 'AU_shu-mu-zen-me-guo-dong.mp3', 'book', 'uploads/mp3/beva/1aca3173ef65855e3a26df78362c28bb/AU_shu-mu-zen-me-guo-dong.mp3', '', 'http://story.beva.com/audio/download/10919/1', 'audio/mp3', 'mp3', '901035', '210c7767699ba8222220ffa6e18484e3', '', 'local', '0', '1545803652', '1545803652', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('291', '0', 'AU_Dab-Shi-Guo-Ren-De-Mao-Ze-Dong.mp3', 'book', 'uploads/mp3/beva/f35e71f12bc67a4b93010da479e375d2/AU_Dab-Shi-Guo-Ren-De-Mao-Ze-Dong.mp3', '', 'http://story.beva.com/audio/download/10642/1', 'audio/mp3', 'mp3', '1082615', 'c7d9ef7449f02cab3dfa4cc6eb87ba8c', '', 'local', '0', '1545803653', '1545803653', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('292', '0', 'AU_Nv-Shui-Yao.mp3', 'book', 'uploads/mp3/beva/276512fbdc888eb805003ccbff248ac1/AU_Nv-Shui-Yao.mp3', '', 'http://story.beva.com/audio/download/11422/1', 'audio/mp3', 'mp3', '1249781', '53151ccffcc63fb336f5c7b057567424', '', 'local', '0', '1545803653', '1545803653', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('293', '0', 'AU_Bing-Gai-Xia-De-Peng-You.mp3', 'book', 'uploads/mp3/beva/1d3da712b149b1fa709b059c5af45178/AU_Bing-Gai-Xia-De-Peng-You.mp3', '', 'http://story.beva.com/audio/download/10992/1', 'audio/mp3', 'mp3', '2343933', 'c3040c0530d6fa5b56763c03ac56f056', '', 'local', '0', '1545803653', '1545803653', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('294', '0', '1c3bee94d179b15ac356354c995038eb8bbd4fff.jpg', 'book', 'uploads/images/beva/full/1c3bee94d179b15ac356354c995038eb8bbd4fff.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_ats.png', 'image/jpeg', 'jpeg', '9820', '19a1e5ceba4ea2c666cc54c0d608ade6', '', 'local', '0', '1545803653', '1545803653', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('295', '0', 'AU_He-Ma-Da-Shu-Kai-Dian.mp3', 'book', 'uploads/mp3/beva/7916db61db9e446dd0d45184288626a0/AU_He-Ma-Da-Shu-Kai-Dian.mp3', '', 'http://story.beva.com/audio/download/10234/1', 'audio/mp3', 'mp3', '883886', '4fe4254ab4fdbc0b74ee40e8b892a52a', '', 'local', '0', '1545803654', '1545803654', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('296', '0', 'AU_Wang-Yang-Bu-Lao-over.mp3', 'book', 'uploads/mp3/beva/8bea41a41a4befb4b2a8558c691f8cab/AU_Wang-Yang-Bu-Lao-over.mp3', '', 'http://story.beva.com/audio/download/11400/1', 'audio/mp3', 'mp3', '1107360', '9ce4991d3318c712700255ad9def59ed', '', 'local', '0', '1545803654', '1545803654', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('297', '0', '89c29b540819b981cf1c2fd00be591d4093f43b4.jpg', 'book', 'uploads/images/beva/full/89c29b540819b981cf1c2fd00be591d4093f43b4.jpg', '', 'https://3w.beva.cn/story/images/res/14819/ST_wangyangbulao205213.png', 'image/jpeg', 'jpeg', '12600', '9366e5a60f87ddb4cd9e557efea0623e', '', 'local', '0', '1545803654', '1545803654', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('298', '0', 'AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', 'book', 'uploads/mp3/beva/0ab4fe9b836609d1b148c997716751c4/AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', '', 'http://story.beva.com/audio/download/10465/1', 'audio/mp3', 'mp3', '1486090', '6008fa539d169d549a3541118d0ce1bc', '', 'local', '0', '1545803655', '1545803655', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('299', '0', 'AU_yue-ye-yi-xiao-di-6.mp3', 'book', 'uploads/mp3/beva/622e27f2331125a695a966379ace677a/AU_yue-ye-yi-xiao-di-6.mp3', '', 'http://story.beva.com/audio/download/11608/1', 'audio/mp3', 'mp3', '771269', '44c2f80c0c332999bac2e0f61ea007f6', '', 'local', '0', '1545803655', '1545803655', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('300', '0', 'AU_lianggeshenmidexiaoxiejiang.mp3', 'book', 'uploads/mp3/beva/fffb2b5284ae1077c9a1a1ba4a4761a0/AU_lianggeshenmidexiaoxiejiang.mp3', '', 'http://story.beva.com/audio/download/10191/1', 'audio/mp3', 'mp3', '2082820', '365295081141b9ff3f4820b802f44d50', '', 'local', '0', '1545803656', '1545803656', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('301', '0', '96f46a07e1e601e890442a133ee5b3ef574b6b0b.jpg', 'book', 'uploads/images/beva/full/96f46a07e1e601e890442a133ee5b3ef574b6b0b.jpg', '', 'https://3w.beva.cn/story/images/res/10686/ST_lainggeshenmidexiaoxiejiang.jpg', 'image/jpeg', 'jpeg', '9708', 'a650a0a972ede4e2caab4005025d7960', '', 'local', '0', '1545803656', '1545803656', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('302', '0', 'AU_huiguniang_4_5.mp3', 'book', 'uploads/mp3/beva/b651688447312a7680d411dd5e7b13be/AU_huiguniang_4_5.mp3', '', 'http://story.beva.com/audio/download/10188/1', 'audio/mp3', 'mp3', '2889943', '8430d647fd7a97e212d276f4474e5ff9', '', 'local', '0', '1545803656', '1545803656', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('303', '0', 'AU_huiguniang.mp3', 'book', 'uploads/mp3/beva/b651688447312a7680d411dd5e7b13be/AU_huiguniang.mp3', '', 'http://story.beva.com/audio/download/10188/1', 'audio/mp3', 'mp3', '1507100', '2da72530fb99a08c5731b691b4c3061a', '', 'local', '0', '1545803656', '1545803656', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('304', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/811916bc36e909f1c6eebde6e5acb2df/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10487/1', 'audio/mp3', 'mp3', '1336182', '052e37f07691672e2ba565b04f02a1ae', '', 'local', '0', '1545803656', '1545803656', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('305', '0', 'AU_Suo-Jian.mp3', 'book', 'uploads/mp3/beva/e8ad76e0c3360d64a12ea69f65d4c524/AU_Suo-Jian.mp3', '', 'http://story.beva.com/audio/download/11670/1', 'audio/mp3', 'mp3', '453749', '38c5214597104ed6c840f8c1c6cf72fd', '', 'local', '0', '1545803657', '1545803657', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('306', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/1cb005bc53213a6ea21d6020d77fb046/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10437/1', 'audio/mp3', 'mp3', '1173754', 'f088cbebbac4be5744c38d7745781705', '', 'local', '0', '1545803658', '1545803658', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('307', '0', 'AU_Jiang-Shang-Yu-Zhe.mp3', 'book', 'uploads/mp3/beva/5788d98c5f067ecbea982bccdd32323f/AU_Jiang-Shang-Yu-Zhe.mp3', '', 'http://story.beva.com/audio/download/11666/1', 'audio/mp3', 'mp3', '445973', 'a2ed6559becc7dd60541b7a97bf60b1d', '', 'local', '0', '1545803658', '1545803658', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('308', '0', '430b98690c9ce61599a53725d39aea2d42b3a36d.jpg', 'book', 'uploads/images/beva/full/430b98690c9ce61599a53725d39aea2d42b3a36d.jpg', '', 'https://3w.beva.cn/story/images/res/11642/ST_wu-ya-he-shui.jpg', 'image/jpeg', 'jpeg', '8736', '77d8ef29ef0c50a774d2d1e61c102b23', '', 'local', '0', '1545803658', '1545803658', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('309', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/535e5d0552402e15893f9b8518ac27b4/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10477/1', 'audio/mp3', 'mp3', '1025858', '061f61823ce55a342645ad4222925b2b', '', 'local', '0', '1545803659', '1545803659', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('310', '0', 'AU_Kang-Ri-Ying-Xiong-Wang-Er-Xiao.mp3', 'book', 'uploads/mp3/beva/c0e199658d26d36859a2343c24d0191e/AU_Kang-Ri-Ying-Xiong-Wang-Er-Xiao.mp3', '', 'http://story.beva.com/audio/download/10658/1', 'audio/mp3', 'mp3', '627719', '6829f775945c616361378a51ca43660d', '', 'local', '0', '1545803659', '1545803659', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('311', '0', 'AU_Ma-Yi-Hui-You-Yong-Ma.mp3', 'book', 'uploads/mp3/beva/0c7ef2da7713ee32fa48a926d9931558/AU_Ma-Yi-Hui-You-Yong-Ma.mp3', '', 'http://story.beva.com/audio/download/10495/1', 'audio/mp3', 'mp3', '1411352', '8c2b8bb56c5c1bc9fddc2f42ba281573', '', 'local', '0', '1545803659', '1545803659', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('312', '0', 'AU_guoniandelaili.MP3', 'book', 'uploads/mp3/beva/0461517647f29e612f555167e42b26e5/AU_guoniandelaili.MP3', '', 'http://story.beva.com/audio/download/10094/1', 'audio/mp3', 'mp3', '1228607', '3edba81f4ddcd8a27d93004edc0359f4', '', 'local', '0', '1545803660', '1545803660', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('313', '0', '49489d565e1493b8f6d6b152b885dbfd1a5eee7f.jpg', 'book', 'uploads/images/beva/full/49489d565e1493b8f6d6b152b885dbfd1a5eee7f.jpg', '', 'https://3w.beva.cn/story/images/res/10128/ST_guoniandelaili205.jpg', 'image/jpeg', 'jpeg', '13697', 'b2d05877f65a72bbc9f62a04041a47a5', '', 'local', '0', '1545803660', '1545803660', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('314', '0', 'AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', 'book', 'uploads/mp3/beva/b6365dc146898782b4518cb4941ea3ed/AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', '', 'http://story.beva.com/audio/download/10345/1', 'audio/mp3', 'mp3', '1487240', 'c2126de613d107854014614f4e938753', '', 'local', '0', '1545803660', '1545803660', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('315', '0', 'AU_Zhe-Ge-Ban-Fa-Zhen-Hao.mp3', 'book', 'uploads/mp3/beva/26869ac2539de76c731cd6add1c94249/AU_Zhe-Ge-Ban-Fa-Zhen-Hao.mp3', '', 'http://story.beva.com/audio/download/11090/1', 'audio/mp3', 'mp3', '580944', '3638c52c29bc3e00389b177bd8f9af4a', '', 'local', '0', '1545803660', '1545803660', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('316', '0', 'AU_Hong-Ma-Yi-De-Li-Wu.mp3', 'book', 'uploads/mp3/beva/8a97b10c3903aba1fb7f11fd682590f9/AU_Hong-Ma-Yi-De-Li-Wu.mp3', '', 'http://story.beva.com/audio/download/10270/1', 'audio/mp3', 'mp3', '2227986', '86c4da81ed766ebbe46a31786b13ba81', '', 'local', '0', '1545803661', '1545803661', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('317', '0', 'c48b4897cf64bdb119cb885bb1ca763c43dbd686.jpg', 'book', 'uploads/images/beva/full/c48b4897cf64bdb119cb885bb1ca763c43dbd686.jpg', '', 'https://3w.beva.cn/story/images/res/10581/ST_205213.png', 'image/jpeg', 'jpeg', '13730', '12ce1094dcb623dfacc14838d894de0b', '', 'local', '0', '1545803661', '1545803661', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('318', '0', 'c07ef1fbe724f5bee7005071906172920dc6743c.jpg', 'book', 'uploads/images/beva/full/c07ef1fbe724f5bee7005071906172920dc6743c.jpg', '', 'https://3w.beva.cn/story/images/res/11480/ST_huluntunzao205.jpg', 'image/jpeg', 'jpeg', '8397', '949f6c8ebf625f65f55d9230c3bdc7b1', '', 'local', '0', '1545803661', '1545803661', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('319', '0', 'AU_Lang-Hua-De-Ren-Wu.mp3', 'book', 'uploads/mp3/beva/1a9dfb7009b2bb6fac89544ee8f1e54a/AU_Lang-Hua-De-Ren-Wu.mp3', '', 'http://story.beva.com/audio/download/10533/1', 'audio/mp3', 'mp3', '2905668', '565bf8051bffa8a7307a69237d8fdacf', '', 'local', '0', '1545803662', '1545803662', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('320', '0', 'abe5e645346e7670b2eb328ea4bccb716b0c1d84.jpg', 'book', 'uploads/images/beva/full/abe5e645346e7670b2eb328ea4bccb716b0c1d84.jpg', '', 'https://3w.beva.cn/story/images/res/14786/ST_mochuchengzhen205213-14.jpg', 'image/jpeg', 'jpeg', '13183', 'cc9364c4bc466deac8425ec5f773e90b', '', 'local', '0', '1545803662', '1545803662', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('321', '0', 'e851c5f6b72826f3312b07423b01f370ba36b4dc.jpg', 'book', 'uploads/images/beva/full/e851c5f6b72826f3312b07423b01f370ba36b4dc.jpg', '', 'https://3w.beva.cn/story/images/res/10331/ST_296-205-sqgs-dhx.jpg', 'image/jpeg', 'jpeg', '18940', '980312d0048814258d5901302cc40d24', '', 'local', '0', '1545803662', '1545803662', '100', '1', '296', '205');
INSERT INTO `dp_admin_attachment` VALUES ('322', '0', 'AU_xing-xing-wei-shen-me-zong-shi-yi-shan-yi-shan-de.mp3', 'book', 'uploads/mp3/beva/7385599a8d8146e62acd36fee2a0e07d/AU_xing-xing-wei-shen-me-zong-shi-yi-shan-yi-shan-de.mp3', '', 'http://story.beva.com/audio/download/10695/1', 'audio/mp3', 'mp3', '1127991', '95195ddd4731fbfe3cd89e9aa970fa1a', '', 'local', '0', '1545803662', '1545803662', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('323', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/ea4c7936d80a7e0caf9928690382c7f7/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10457/1', 'audio/mp3', 'mp3', '1211328', '5b9ebbdc274eda4ff7050925999c253a', '', 'local', '0', '1545803662', '1545803662', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('324', '0', 'AU_shi-yan-cuo-jiao-ye-du.mp3', 'book', 'uploads/mp3/beva/ae074d6769e9263fe8ad28e9d2ad33da/AU_shi-yan-cuo-jiao-ye-du.mp3', '', 'http://story.beva.com/audio/download/15362/3', 'audio/mp3', 'mp3', '1330360', '18e4490db203331766ff6731454bccd1', '', 'local', '0', '1545803662', '1545803662', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('325', '0', '7f59bae378ee34b92aea11889c69fa1bcb1a6290.jpg', 'book', 'uploads/images/beva/full/7f59bae378ee34b92aea11889c69fa1bcb1a6290.jpg', '', 'https://3w.beva.cn/story/images/res/15362/ST_shiyangcuojiaoyedu205213.png', 'image/jpeg', 'jpeg', '11697', 'd0152d9e0d4cfe647363767af73c00f8', '', 'local', '0', '1545803662', '1545803662', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('326', '0', 'AU_Cong-Ming-De-Xiao-Xiong.mp3', 'book', 'uploads/mp3/beva/a8c7534d99da1551323c3f3794fb1a1b/AU_Cong-Ming-De-Xiao-Xiong.mp3', '', 'http://story.beva.com/audio/download/10287/1', 'audio/mp3', 'mp3', '1442742', 'f336c726e3b4def0088bb89e02350ca8', '', 'local', '0', '1545803663', '1545803663', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('327', '0', 'AU_shenbimaliang.MP3', 'book', 'uploads/mp3/beva/88b84dedc7cb2ec587e833751d2aa7ff/AU_shenbimaliang.MP3', '', 'http://story.beva.com/audio/download/10100/1', 'audio/mp3', 'mp3', '2272461', '993ef0585d7a26681830c26de1d1db2c', '', 'local', '0', '1545803663', '1545803663', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('328', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/5db94c3b21ac22977e1ba393f35519b7/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10486/1', 'audio/mp3', 'mp3', '1336182', '270951ef852d027a0f1349020e634aac', '', 'local', '0', '1545803664', '1545803664', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('329', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/0ac3059d5c81030234b6a6175f60ffa4/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10474/1', 'audio/mp3', 'mp3', '1025858', 'f0efb50548b00e686eaef46a1316d7c6', '', 'local', '0', '1545803664', '1545803664', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('330', '0', 'AU_Ma-Tou-Qin-De-Lai-Li.mp3', 'book', 'uploads/mp3/beva/7b9438b717cf358137346d71034b4a98/AU_Ma-Tou-Qin-De-Lai-Li.mp3', '', 'http://story.beva.com/audio/download/11058/1', 'audio/mp3', 'mp3', '3965520', 'f8d2449c8e01d929d04dc25f0d19321d', '', 'local', '0', '1545803664', '1545803664', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('331', '0', 'AU_maihuochaidexiaonvhai001.MP3', 'book', 'uploads/mp3/beva/83b1768245b626552445205f02c3ca90/AU_maihuochaidexiaonvhai001.MP3', '', 'http://story.beva.com/audio/download/10683/3', 'audio/mp3', 'mp3', '1440003', '80301c3072bb4f8a2c002d5831aac8f7', '', 'local', '0', '1545803665', '1545803665', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('332', '0', 'AU_maihuochaidexiaonvhai002.MP3', 'book', 'uploads/mp3/beva/83b1768245b626552445205f02c3ca90/AU_maihuochaidexiaonvhai002.MP3', '', 'http://story.beva.com/audio/download/10683/3', 'audio/mp3', 'mp3', '1697043', 'dabeac1715f8eb7e9f7d41cf18fd7176', '', 'local', '0', '1545803665', '1545803665', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('333', '0', 'AU_you-zi-ying.mp3', 'book', 'uploads/mp3/beva/acd131d34f1da4ee93b473ea2030864e/AU_you-zi-ying.mp3', '', 'http://story.beva.com/audio/download/11557/1', 'audio/mp3', 'mp3', '620357', '6811a0ae2765555ff9adfcf98baba545', '', 'local', '0', '1545803666', '1545803666', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('334', '0', 'AU_deng-guang-que-lou.mp3', 'book', 'uploads/mp3/beva/01e6f1378cbedb00eae89f443bd1ebe0/AU_deng-guang-que-lou.mp3', '', 'http://story.beva.com/audio/download/11531/1', 'audio/mp3', 'mp3', '468437', '087ec454faebc288f351fc59dd3ccc76', '', 'local', '0', '1545803666', '1545803666', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('335', '0', 'AU_Lao-Shu-Xiao-Niao-He-Xiang-Chang.mp3', 'book', 'uploads/mp3/beva/e569a93e44cf0b406527b106c81b858b/AU_Lao-Shu-Xiao-Niao-He-Xiang-Chang.mp3', '', 'http://story.beva.com/audio/download/11461/1', 'audio/mp3', 'mp3', '2641829', '04ca1478eeaea61a540bc0bae09448b5', '', 'local', '0', '1545803666', '1545803666', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('336', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/d5347e1bcf6c4eb1b3fffde9ac4e1e0e/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10454/1', 'audio/mp3', 'mp3', '1211328', '7df8218c9ab6c3515b94a060048cdee1', '', 'local', '0', '1545803666', '1545803666', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('337', '0', 'AU_zhong-nan-bie-ye.mp3', 'book', 'uploads/mp3/beva/31583e4c0029b3b1136712bf3c5e6b85/AU_zhong-nan-bie-ye.mp3', '', 'http://story.beva.com/audio/download/11614/1', 'audio/mp3', 'mp3', '709493', '0a00ee5406b68afc8a0a43d3d8674688', '', 'local', '0', '1545803667', '1545803667', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('338', '0', 'AU_jiu-yue-jiu-ri-yi-shan-dong-xiong-di.mp3', 'book', 'uploads/mp3/beva/ddd40fd3157ea186eb1f9caf674ba62e/AU_jiu-yue-jiu-ri-yi-shan-dong-xiong-di.mp3', '', 'http://story.beva.com/audio/download/11541/1', 'audio/mp3', 'mp3', '576581', 'c3d23dcddf7807e6f760477ca3673395', '', 'local', '0', '1545803667', '1545803667', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('339', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/23b7fb3e753e5a9d002f230839fdc5c9/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10475/1', 'audio/mp3', 'mp3', '1025858', 'd8a44ee907836d50be2b490d244fb541', '', 'local', '0', '1545803668', '1545803668', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('340', '0', 'AU_Fu-De-Gu-Yuan-Cao-Song-Bie.mp3', 'book', 'uploads/mp3/beva/db5b9edf03847df3a1d0c46ee7eb62fa/AU_Fu-De-Gu-Yuan-Cao-Song-Bie.mp3', '', 'http://story.beva.com/audio/download/11259/1', 'audio/mp3', 'mp3', '671045', '79c428c7ca2ce307ebab55d88a6e2293', '', 'local', '0', '1545803668', '1545803668', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('341', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/aecfa0ec0468c97c48366ae5b9795f0a/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10456/1', 'audio/mp3', 'mp3', '1211328', 'fc208f9179498a0f84dc7b7c355875e1', '', 'local', '0', '1545803668', '1545803668', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('342', '0', 'AU_Yi-Ming-Jing-Ren-over.mp3', 'book', 'uploads/mp3/beva/d64d640bda6dd3bff7e23e2080051d78/AU_Yi-Ming-Jing-Ren-over.mp3', '', 'http://story.beva.com/audio/download/11411/1', 'audio/mp3', 'mp3', '740448', '1ebe1533daee0cd931d6eb9054d57e93', '', 'local', '0', '1545803668', '1545803668', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('343', '0', 'AU_xiao-gu-si-ta-wa-de-zao-can.mp3', 'book', 'uploads/mp3/beva/4b90aa34743287056588fee88bccb12c/AU_xiao-gu-si-ta-wa-de-zao-can.mp3', '', 'http://story.beva.com/audio/download/10750/1', 'audio/mp3', 'mp3', '2358319', '93aea539a0bf0c6306842e2f1d863105', '', 'local', '0', '1545803669', '1545803669', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('344', '0', 'AU_Da-Yu-Zhi-Shui-over.mp3', 'book', 'uploads/mp3/beva/34b0bb70877bc666f1eca49100f9987f/AU_Da-Yu-Zhi-Shui-over.mp3', '', 'http://story.beva.com/audio/download/11449/1', 'audio/mp3', 'mp3', '1522629', '3515516527401d6a4283d6c2206d2cf5', '', 'local', '0', '1545803669', '1545803669', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('345', '0', 'ea647cf9fb94921f6131952d21abb098b598f0b9.jpg', 'book', 'uploads/images/beva/full/ea647cf9fb94921f6131952d21abb098b598f0b9.jpg', '', 'https://3w.beva.cn/story/images/res/15064/ST_dayuzhishui205.jpg', 'image/jpeg', 'jpeg', '12093', '4a025fb7cb8f487ca0e505229bd08ce2', '', 'local', '0', '1545803669', '1545803669', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('346', '0', 'AU_Sha-Lou-De-Qi-Shi.mp3', 'book', 'uploads/mp3/beva/a485892337a0a1c67fb1d947b1e873cc/AU_Sha-Lou-De-Qi-Shi.mp3', '', 'http://story.beva.com/audio/download/10478/1', 'audio/mp3', 'mp3', '1956678', 'c51a1bf7af4793b235ebb3d3b9d8296a', '', 'local', '0', '1545803669', '1545803669', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('347', '0', 'AU_zhilanyushu.mp3', 'book', 'uploads/mp3/beva/1afb8074b536c5e72272e63116d46820/AU_zhilanyushu.mp3', '', 'http://story.beva.com/audio/download/10063/1', 'audio/mp3', 'mp3', '2415453', '4bb098e03ba3140dc5a59e2091cbba75', '', 'local', '0', '1545803670', '1545803670', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('348', '0', '08bb0a3d78df7bfd34d68f7f2981c8989cf53b9e.jpg', 'book', 'uploads/images/beva/full/08bb0a3d78df7bfd34d68f7f2981c8989cf53b9e.jpg', '', 'https://3w.beva.cn/story/images/res/10736/ST_296_205_cygs-zhilanyushu.jpg', 'image/jpeg', 'jpeg', '7980', 'afad37865e76233327bd9354ef6a7d99', '', 'local', '0', '1545803670', '1545803670', '100', '1', '296', '205');
INSERT INTO `dp_admin_attachment` VALUES ('349', '0', 'AU_Yi-Si-Bu-Gou.mp3', 'book', 'uploads/mp3/beva/600715fe9ffe41dd7ee94e9ff0f2b4a8/AU_Yi-Si-Bu-Gou.mp3', '', 'http://story.beva.com/audio/download/11362/1', 'audio/mp3', 'mp3', '1302885', 'fd26986d7d2fea42014af0634d446c6b', '', 'local', '0', '1545803670', '1545803670', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('350', '0', 'AU_Bing-Hai-Zi.mp3', 'book', 'uploads/mp3/beva/45db3669ff72114806544c2e36d06701/AU_Bing-Hai-Zi.mp3', '', 'http://story.beva.com/audio/download/11052/1', 'audio/mp3', 'mp3', '3449712', 'c85a32eb4a44b793a20dd80906d53f7c', '', 'local', '0', '1545803670', '1545803670', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('351', '0', 'AU_wang-lu-shan-pu-bu.mp3', 'book', 'uploads/mp3/beva/ef5be3124eacea9fed3d55997bd593ae/AU_wang-lu-shan-pu-bu.mp3', '', 'http://story.beva.com/audio/download/11553/1', 'audio/mp3', 'mp3', '547205', 'd09268ceee41ae22ffbf3d370904eebd', '', 'local', '0', '1545803671', '1545803671', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('352', '0', 'AU_Jing-Di-Zhi-Wa-over.mp3', 'book', 'uploads/mp3/beva/4d263bcfc36ca4e2b161a08d88f1c178/AU_Jing-Di-Zhi-Wa-over.mp3', '', 'http://story.beva.com/audio/download/11356/1', 'audio/mp3', 'mp3', '783189', '0d069e65fd139010793b732b90891cc7', '', 'local', '0', '1545803671', '1545803671', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('353', '0', '46fb10aa5776e672bc3d12b4715da2f77003fcfe.jpg', 'book', 'uploads/images/beva/full/46fb10aa5776e672bc3d12b4715da2f77003fcfe.jpg', '', 'https://3w.beva.cn/story/images/res/10781/ST_jiangdizhiwa205.jpg', 'image/jpeg', 'jpeg', '12310', '57c64083eac97ea3076d5dec1220e077', '', 'local', '0', '1545803671', '1545803671', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('354', '0', 'AU_Xiao-Xin-Yi-Yi-over.mp3', 'book', 'uploads/mp3/beva/95d2f4e8fcda31b2d510168da4496c72/AU_Xiao-Xin-Yi-Yi-over.mp3', '', 'http://story.beva.com/audio/download/11406/1', 'audio/mp3', 'mp3', '1046560', 'b0a3e85074bdb46d44c0fbead6c2e4c8', '', 'local', '0', '1545803671', '1545803671', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('355', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/625a396c655fc9eb4e255c4553b06456/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10450/1', 'audio/mp3', 'mp3', '1107366', 'e1cba6c3a3793e5ad5f88d3bfb63e4a9', '', 'local', '0', '1545803671', '1545803671', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('356', '0', 'AU_yan-di-ji-shi-sheng-huo.mp3', 'book', 'uploads/mp3/beva/b7750e50a997a62952ef6ae0342a7132/AU_yan-di-ji-shi-sheng-huo.mp3', '', 'http://story.beva.com/audio/download/11050/1', 'audio/mp3', 'mp3', '566498', '1beb28772790e36855463f5dd988ef65', '', 'local', '0', '1545803671', '1545803671', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('357', '0', '5b12b4853e0a77e6d5be61d720a791f6c9fabe38.jpg', 'book', 'uploads/images/beva/full/5b12b4853e0a77e6d5be61d720a791f6c9fabe38.jpg', '', 'https://3w.beva.cn/story/images/res/10014/ST_gongjihebaoyu205.jpg', 'image/jpeg', 'jpeg', '9377', '5d2629afddfd11b6c59c6c6a31b929ff', '', 'local', '0', '1545803672', '1545803672', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('358', '0', 'AU_yetuheciwei.mp3', 'book', 'uploads/mp3/beva/c6a30dda71abe646e2d037f40bc851e2/AU_yetuheciwei.mp3', '', 'http://story.beva.com/audio/download/10219/1', 'audio/mp3', 'mp3', '1235964', 'f7431e66582e14413340a60e3c03b3ba', '', 'local', '0', '1545803672', '1545803672', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('359', '0', 'AU_da-sen-lin-de-dong-tian.mp3', 'book', 'uploads/mp3/beva/7b9cf672c1f2b472dcfd7938e8f90e09/AU_da-sen-lin-de-dong-tian.mp3', '', 'http://story.beva.com/audio/download/10881/1', 'audio/mp3', 'mp3', '934672', '7c7a4c0cd52599475ebb1d129899f32e', '', 'local', '0', '1545803672', '1545803672', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('360', '0', 'AU_chi-le-ge.mp3', 'book', 'uploads/mp3/beva/a39e44700cf0db876268223694ffa200/AU_chi-le-ge.mp3', '', 'http://story.beva.com/audio/download/11526/1', 'audio/mp3', 'mp3', '638069', 'b0345a6d972fbf1324a4435126781b8e', '', 'local', '0', '1545803672', '1545803672', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('361', '0', 'AU_mangrenmoxiang.MP3', 'book', 'uploads/mp3/beva/4a5f709d85e5480a39b6ca9a8f023c9e/AU_mangrenmoxiang.MP3', '', 'http://story.beva.com/audio/download/10128/1', 'audio/mp3', 'mp3', '2196408', '26bc7dc9293e496ecc8a75a312825908', '', 'local', '0', '1545803674', '1545803674', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('362', '0', '8ca5335a206e0f5ffbee64919031c7213c88a2fd.jpg', 'book', 'uploads/images/beva/full/8ca5335a206e0f5ffbee64919031c7213c88a2fd.jpg', '', 'https://3w.beva.cn/story/images/res/11493/ST_mang-ren-mo-xiang-205213.png', 'image/jpeg', 'jpeg', '13828', '8f7dfddca0831fe28f95f8c4b4838280', '', 'local', '0', '1545803674', '1545803674', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('363', '0', 'AU_ke-pa-de-jiao-yin.mp3', 'book', 'uploads/mp3/beva/74d93143a355dd1e306f66f040975677/AU_ke-pa-de-jiao-yin.mp3', '', 'http://story.beva.com/audio/download/10901/1', 'audio/mp3', 'mp3', '665151', 'fb58a7a0571bd81de5c9528c120610a7', '', 'local', '0', '1545803674', '1545803674', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('364', '0', 'efa7372b650980d16941a051097d3ec9b38b7049.jpg', 'book', 'uploads/images/beva/full/efa7372b650980d16941a051097d3ec9b38b7049.jpg', '', 'https://3w.beva.cn/story/images/res/10512/ST_antusheng205.jpg', 'image/jpeg', 'jpeg', '12855', '9189e7df4646433cdfcaec83a9514a42', '', 'local', '0', '1545803675', '1545803675', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('365', '0', 'AU_Xiao-Tai-Yang.mp3', 'book', 'uploads/mp3/beva/d72b45729779823e1ac6c98bd8d1d3f7/AU_Xiao-Tai-Yang.mp3', '', 'http://story.beva.com/audio/download/10558/1', 'audio/mp3', 'mp3', '636084', 'f6664d5e2300bf19b5694a32cd22ff30', '', 'local', '0', '1545803675', '1545803675', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('366', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/92cdc02c38814e61c32daa7862a27e1e/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10404/1', 'audio/mp3', 'mp3', '1106070', '6ed04837511502f7c784b790b66a3f2d', '', 'local', '0', '1545803675', '1545803675', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('367', '0', 'AU_shenbimaliang.MP3', 'book', 'uploads/mp3/beva/ddb30d06d51451cf416d8ff5883e17d1/AU_shenbimaliang.MP3', '', 'http://story.beva.com/audio/download/10099/1', 'audio/mp3', 'mp3', '2271165', '83a2a715077df832be6159c764529e31', '', 'local', '0', '1545803676', '1545803676', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('368', '0', 'AU_guo-nian-de-lai-li.MP3', 'book', 'uploads/mp3/beva/0548123de71eba48250bc0253512c624/AU_guo-nian-de-lai-li.MP3', '', 'http://story.beva.com/audio/download/11044/1', 'audio/mp3', 'mp3', '1235231', '9763f10e4b5f8802ec7ac353722275d0', '', 'local', '0', '1545803676', '1545803676', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('369', '0', 'AU_Sai-Xia-Qu.mp3', 'book', 'uploads/mp3/beva/02a69ca5926da146a0e7359c11629189/AU_Sai-Xia-Qu.mp3', '', 'http://story.beva.com/audio/download/11277/1', 'audio/mp3', 'mp3', '472469', 'cdd4eae63fd976093c2dd5d603881635', '', 'local', '0', '1545803677', '1545803677', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('370', '0', 'AU_mang-lu-de-chong-er-men.mp3', 'book', 'uploads/mp3/beva/e6f9bf62a09216ec4eb9731ec7544532/AU_mang-lu-de-chong-er-men.mp3', '', 'http://story.beva.com/audio/download/10907/1', 'audio/mp3', 'mp3', '1033371', '46c866085e19b31a5634389901c18136', '', 'local', '0', '1545803677', '1545803677', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('371', '0', 'AU_Hua-Sheng-Dun-Kan-Shu.mp3', 'book', 'uploads/mp3/beva/49fd29f7c6ce57718fc9838bb05f025c/AU_Hua-Sheng-Dun-Kan-Shu.mp3', '', 'http://story.beva.com/audio/download/11430/3', 'audio/mp3', 'mp3', '458519', 'eb3b831dccaf50dc93932c800ec81b72', '', 'local', '0', '1545803678', '1545803678', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('372', '0', 'AU_guan-yin-song-hua.mp3', 'book', 'uploads/mp3/beva/808ab817cf0f085b7d7613b9edd25772/AU_guan-yin-song-hua.mp3', '', 'http://story.beva.com/audio/download/11491/1', 'audio/mp3', 'mp3', '1175464', '8bee91d7ab7c45c0ef85ae8b91a0026e', '', 'local', '0', '1545803678', '1545803678', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('373', '0', 'AU_Cong-Ming-De-Xiao-Xiong.mp3', 'book', 'uploads/mp3/beva/b3ae82c0929cbe27cba759e304329bb2/AU_Cong-Ming-De-Xiao-Xiong.mp3', '', 'http://story.beva.com/audio/download/10338/1', 'audio/mp3', 'mp3', '1442742', 'a5ec7abaed5e09d7d17e947d9711bece', '', 'local', '0', '1545803679', '1545803679', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('374', '0', '5e36fd6e75992d862348f27da72e1ffe840f6167.jpg', 'book', 'uploads/images/beva/full/5e36fd6e75992d862348f27da72e1ffe840f6167.jpg', '', 'https://3w.beva.cn/story/images/res/14983/ST_buleizhen205.jpg', 'image/jpeg', 'jpeg', '9628', 'c9ae3344a83331af72200a4406957ff2', '', 'local', '0', '1545803680', '1545803680', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('375', '0', '0419513304df5c91be7f53833fab6b02e82ebcad.jpg', 'book', 'uploads/images/beva/full/0419513304df5c91be7f53833fab6b02e82ebcad.jpg', '', 'https://3w.beva.cn/story/images/res/11441/ST_dizigui205213.png', 'image/jpeg', 'jpeg', '11671', 'c5f055c35647280ac2858bfd7071c089', '', 'local', '0', '1545803680', '1545803680', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('376', '0', '4af4eb3f280a0abda8bee40dee54620771993503.jpg', 'book', 'uploads/images/beva/full/4af4eb3f280a0abda8bee40dee54620771993503.jpg', '', 'https://3w.beva.cn/story/images/res/10036/ST_xiangfeidewugui205.jpg', 'image/jpeg', 'jpeg', '11325', '86ac9770cec304acdc945ff8f60df3b4', '', 'local', '0', '1545803680', '1545803680', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('377', '0', 'AU_sanzhongyuyan.MP3', 'book', 'uploads/mp3/beva/3623d814e778b53abb26bd1f5938603c/AU_sanzhongyuyan.MP3', '', 'http://story.beva.com/audio/download/10180/1', 'audio/mp3', 'mp3', '2794749', '8fb10489b37949a96f88da3a3dc7d655', '', 'local', '0', '1545803680', '1545803680', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('378', '0', 'e6942a14f3fffd861ba3e3f2aa9450b483c69cd2.jpg', 'book', 'uploads/images/beva/full/e6942a14f3fffd861ba3e3f2aa9450b483c69cd2.jpg', '', 'https://3w.beva.cn/story/images/res/10628/ST_sanzhongyuyan205.jpg', 'image/jpeg', 'jpeg', '7373', '12576b8035dad1ea340814ba3289daaa', '', 'local', '0', '1545803680', '1545803680', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('379', '0', 'AU_Re-Tian-Zhong-wu-Bu-Jiao-Hua.mp3', 'book', 'uploads/mp3/beva/786cbcfd10bcb5eeeda1cd6391c8059b/AU_Re-Tian-Zhong-wu-Bu-Jiao-Hua.mp3', '', 'http://story.beva.com/audio/download/10500/1', 'audio/mp3', 'mp3', '1844938', '1c2b1545270beea8b5e5f868c2870cb3', '', 'local', '0', '1545803681', '1545803681', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('380', '0', 'AU_Hu-Li-He-Mao∩╝êµá╝µ₧ù∩╝ë-over.mp3', 'book', 'uploads/mp3/beva/ded7ea9f63764dc82bd4890eaa4c9b87/AU_Hu-Li-He-Mao∩╝êµá╝µ₧ù∩╝ë-over.mp3', '', 'http://story.beva.com/audio/download/11334/1', 'audio/mp3', 'mp3', '1312821', '4daae06068a72fb5265b6c856f3349ce', '', 'local', '0', '1545803681', '1545803681', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('381', '0', 'f7cd6301a88a2daa9d668a59e10540ebf212bffd.jpg', 'book', 'uploads/images/beva/full/f7cd6301a88a2daa9d668a59e10540ebf212bffd.jpg', '', 'https://3w.beva.cn/story/images/res/10445/ST_hulihemao205213.png', 'image/jpeg', 'jpeg', '10695', 'be42b54db1115ee9d672db4fe7ddd5c4', '', 'local', '0', '1545803681', '1545803681', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('382', '0', 'AU_wang-tian-men-shan.mp3', 'book', 'uploads/mp3/beva/d84e935f05526a61754a6c8ebd57d46f/AU_wang-tian-men-shan.mp3', '', 'http://story.beva.com/audio/download/11554/1', 'audio/mp3', 'mp3', '532517', 'c69858e5ab9531cdeda9f8c4d8a411f4', '', 'local', '0', '1545803681', '1545803681', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('383', '0', 'AU_chi-bao-de-bu-pa-leng.mp3', 'book', 'uploads/mp3/beva/b127b4b2cd89d3885528996f1e52e665/AU_chi-bao-de-bu-pa-leng.mp3', '', 'http://story.beva.com/audio/download/10874/1', 'audio/mp3', 'mp3', '778049', '7610d42066625211d1bc3bc5a751535e', '', 'local', '0', '1545803682', '1545803682', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('384', '0', 'AU_Shi-Chong-Hua.mp3', 'book', 'uploads/mp3/beva/48ae29c18570cd5ba3d0c7e5541dde6d/AU_Shi-Chong-Hua.mp3', '', 'http://story.beva.com/audio/download/10411/1', 'audio/mp3', 'mp3', '858386', '621aa03628629373b100b247c62e6d2f', '', 'local', '0', '1545803682', '1545803682', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('385', '0', 'AU_Ju-Ren-He-Cai-Feng-over.mp3', 'book', 'uploads/mp3/beva/3f99165733e55acbb9de4fa4f42db42d/AU_Ju-Ren-He-Cai-Feng-over.mp3', '', 'http://story.beva.com/audio/download/11458/1', 'audio/mp3', 'mp3', '2580741', 'e70dd1dbe02e5e036a27c95c4d001027', '', 'local', '0', '1545803682', '1545803682', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('386', '0', 'AU_yetuheciwei.mp3', 'book', 'uploads/mp3/beva/8099bc202641f47ffafda942625cfc13/AU_yetuheciwei.mp3', '', 'http://story.beva.com/audio/download/10220/1', 'audio/mp3', 'mp3', '1235388', 'a4b21e2d49583575d7f014e97effab06', '', 'local', '0', '1545803682', '1545803682', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('387', '0', 'AU_luo-bo.mp3', 'book', 'uploads/mp3/beva/1f6c08bfcf3325ad4bf47488e7a6fc72/AU_luo-bo.mp3', '', 'http://story.beva.com/audio/download/11633/1', 'audio/mp3', 'mp3', '810869', 'a31acb9c20b6850914f7993157fde491', '', 'local', '0', '1545803682', '1545803682', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('388', '0', 'e2ba3d72d241005b0c4586f3882a330756cfae03.jpg', 'book', 'uploads/images/beva/full/e2ba3d72d241005b0c4586f3882a330756cfae03.jpg', '', 'https://3w.beva.cn/story/images/res/10679/ST_luobo205213.png', 'image/jpeg', 'jpeg', '11375', '412f963696559857a31d0875901674b3', '', 'local', '0', '1545803682', '1545803682', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('389', '0', 'AU_Chun-Tian-De-Se-Cai.mp3', 'book', 'uploads/mp3/beva/0a60940ef9c127a3b049b1c699684317/AU_Chun-Tian-De-Se-Cai.mp3', '', 'http://story.beva.com/audio/download/10539/1', 'audio/mp3', 'mp3', '1061604', 'a771d0b096f1ea2aba8a322c568b7ef6', '', 'local', '0', '1545803683', '1545803683', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('390', '0', 'AU_liang-zhong-wen-zi.mp3', 'book', 'uploads/mp3/beva/39554a297469c914bdb3b4cd472d3eb1/AU_liang-zhong-wen-zi.mp3', '', 'http://story.beva.com/audio/download/10931/1', 'audio/mp3', 'mp3', '701725', '08c749fc974e58b741d5040e607dea0c', '', 'local', '0', '1545803683', '1545803683', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('391', '0', 'AU_gxgs-yonge.MP3', 'book', 'uploads/mp3/beva/b0802b8d65d941748a08473ab84b2a8c/AU_gxgs-yonge.MP3', '', 'http://story.beva.com/audio/download/10150/1', 'audio/mp3', 'mp3', '1289838', 'd1ef6c5009c0f643d9eea336857bab9c', '', 'local', '0', '1545803683', '1545803683', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('392', '0', '504af77dcd2d8c6795d57415ade655bd8ca1fce6.jpg', 'book', 'uploads/images/beva/full/504af77dcd2d8c6795d57415ade655bd8ca1fce6.jpg', '', 'https://3w.beva.cn/story/images/res/11075/ST_yonge205.jpg', 'image/jpeg', 'jpeg', '8414', '305045b440033c01965fd4b05f5bbce0', '', 'local', '0', '1545803683', '1545803683', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('393', '0', 'AU_lang-de-hua-zhao.mp3', 'book', 'uploads/mp3/beva/1477cd5742ee52bb1f7f460b38346626/AU_lang-de-hua-zhao.mp3', '', 'http://story.beva.com/audio/download/10905/1', 'audio/mp3', 'mp3', '584663', '14ffdf805981c34045482c4e1df65b59', '', 'local', '0', '1545803684', '1545803684', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('394', '0', 'AU_Di-Qiu-Shi-Shen-Me-Xing-Zhuang.mp3', 'book', 'uploads/mp3/beva/7e9cf66664ca239c15581beb0e59e8a7/AU_Di-Qiu-Shi-Shen-Me-Xing-Zhuang.mp3', '', 'http://story.beva.com/audio/download/10492/1', 'audio/mp3', 'mp3', '2309914', '758c3375946b911a3aee9c958438f98e', '', 'local', '0', '1545803684', '1545803684', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('395', '0', 'AU_You-Yuan-Bu-Zhi.mp3', 'book', 'uploads/mp3/beva/4820abe89f6a444f30051c81e508388f/AU_You-Yuan-Bu-Zhi.mp3', '', 'http://story.beva.com/audio/download/11442/1', 'audio/mp3', 'mp3', '477365', 'c2e1744d19d3366c4c0e52e373719cfc', '', 'local', '0', '1545803684', '1545803684', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('396', '0', 'AU_mian-fen-shi-tang.mp3', 'book', 'uploads/mp3/beva/3c3f8304bc5859cac27e282eda3d1223/AU_mian-fen-shi-tang.mp3', '', 'http://story.beva.com/audio/download/10911/1', 'audio/mp3', 'mp3', '446989', 'fd0ee1cdc27a485d34ed75ff5237fcae', '', 'local', '0', '1545803685', '1545803685', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('397', '0', 'AU_Jing-Nan-Chun.mp3', 'book', 'uploads/mp3/beva/aefd379671545875705527e642f6ec91/AU_Jing-Nan-Chun.mp3', '', 'http://story.beva.com/audio/download/11242/1', 'audio/mp3', 'mp3', '508944', 'dce8640e7e2e5eff6540650d79f1ae7c', '', 'local', '0', '1545803685', '1545803685', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('398', '0', 'AU_jingyesi.mp3', 'book', 'uploads/mp3/beva/60c16721249d272ac001edf68db9d668/AU_jingyesi.mp3', '', 'http://story.beva.com/audio/download/10228/1', 'audio/mp3', 'mp3', '637784', 'ca34fcc7855f85f5d4d29098e2f0a273', '', 'local', '0', '1545803685', '1545803685', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('399', '0', 'AU_Sen-Lin-De-Jiu-Yue.mp3', 'book', 'uploads/mp3/beva/ef6af8530902a82cb3db6ab4a33d1d7d/AU_Sen-Lin-De-Jiu-Yue.mp3', '', 'http://story.beva.com/audio/download/10405/1', 'audio/mp3', 'mp3', '1212054', '0b212e9e8add1db0a9e175285c80e0bf', '', 'local', '0', '1545803685', '1545803685', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('400', '0', 'AU_wei-cheng-qu.mp3', 'book', 'uploads/mp3/beva/cc7c8328afaaaa76a08d945ec23c8852/AU_wei-cheng-qu.mp3', '', 'http://story.beva.com/audio/download/11581/1', 'audio/mp3', 'mp3', '551381', '854a76c4f231cb7e0226406db963ca1b', '', 'local', '0', '1545803686', '1545803686', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('401', '0', 'AU_mo-shu-yao-shui.mp3', 'book', 'uploads/mp3/beva/618503e3bb0ecf77bb5bad413fba97ee/AU_mo-shu-yao-shui.mp3', '', 'http://story.beva.com/audio/download/10939/1', 'audio/mp3', 'mp3', '406093', 'bdefc222206079de31a2d63be03ef333', '', 'local', '0', '1545803686', '1545803686', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('402', '0', 'AU_Shui-Luo-Shi-Chu-over.mp3', 'book', 'uploads/mp3/beva/2fa88f1931e9721f2ad419130220da7f/AU_Shui-Luo-Shi-Chu-over.mp3', '', 'http://story.beva.com/audio/download/11397/1', 'audio/mp3', 'mp3', '855936', 'fad76326237b848d4a1f6a085469f83a', '', 'local', '0', '1545803687', '1545803687', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('403', '0', 'AU_bie-dong-da.mp3', 'book', 'uploads/mp3/beva/0c2b3ad4c9bef9d0402465172e569a9f/AU_bie-dong-da.mp3', '', 'http://story.beva.com/audio/download/11524/1', 'audio/mp3', 'mp3', '527765', '7c75d0f650c64eae00d29537575ae181', '', 'local', '0', '1545803687', '1545803687', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('404', '0', '21bf45826a2289d14089bda3f59d88e5d5f1c388.jpg', 'book', 'uploads/images/beva/full/21bf45826a2289d14089bda3f59d88e5d5f1c388.jpg', '', 'https://3w.beva.cn/story/images/res/10588/ST_fengyutaiyang205.jpg', 'image/jpeg', 'jpeg', '11703', 'fb9aa489976282fff3c1e2a7c99ca8d8', '', 'local', '0', '1545803687', '1545803687', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('405', '0', 'AU_Fen-Da-Ping-Guo.mp3', 'book', 'uploads/mp3/beva/f5a238e16d9fbcafd4f2f8643c38b298/AU_Fen-Da-Ping-Guo.mp3', '', 'http://story.beva.com/audio/download/10646/1', 'audio/mp3', 'mp3', '1176215', '0d9743d5f81df7241fd5cfc9bafc5b16', '', 'local', '0', '1545803689', '1545803689', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('406', '0', '0f6595ef261cfe7737098f0d7fbf2323617b73bd.jpg', 'book', 'uploads/images/beva/full/0f6595ef261cfe7737098f0d7fbf2323617b73bd.jpg', '', 'https://3w.beva.cn/story/images/res/11427/ST_fendapingguo205213dsfw.png', 'image/jpeg', 'jpeg', '12750', '4e304c3d1eba8c02be57cc8320017161', '', 'local', '0', '1545803689', '1545803689', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('407', '0', 'AU_chu-cang-shu-cai.mp3', 'book', 'uploads/mp3/beva/a155932289799c52c1e94155b437502f/AU_chu-cang-shu-cai.mp3', '', 'http://story.beva.com/audio/download/10820/1', 'audio/mp3', 'mp3', '893111', '3297046eca78957a6d5c03cc4d74beb6', '', 'local', '0', '1545803689', '1545803689', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('408', '0', 'AU_xue-di-li-de-bao-bao.mp3', 'book', 'uploads/mp3/beva/41b3f9d1ba42bd278c773ae13443b97b/AU_xue-di-li-de-bao-bao.mp3', '', 'http://story.beva.com/audio/download/10791/1', 'audio/mp3', 'mp3', '1527281', '8c1e18cbbe4eb0bb3aaffa5e87c4093f', '', 'local', '0', '1545803689', '1545803689', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('409', '0', 'AU_yan-zi-chao.mp3', 'book', 'uploads/mp3/beva/0a0205a7d158026481580a04b87dd989/AU_yan-zi-chao.mp3', '', 'http://story.beva.com/audio/download/10963/1', 'audio/mp3', 'mp3', '1399835', 'fdca58060b5d2ad6e8129b8789fd829b', '', 'local', '0', '1545803690', '1545803690', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('410', '0', 'AU_wu-yi-xiang.mp3', 'book', 'uploads/mp3/beva/d8b131599a7ad445ad68cf499e28fad7/AU_wu-yi-xiang.mp3', '', 'http://story.beva.com/audio/download/11590/1', 'audio/mp3', 'mp3', '545477', 'ea66eda2b026b2b6a1a0635318b23dbe', '', 'local', '0', '1545803690', '1545803690', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('411', '0', 'AU_Sen-Lin-Li-Leng-a-TAi-Leng-Le.mp3', 'book', 'uploads/mp3/beva/e5f25b9e8044e8c0ea58e121660fe129/AU_Sen-Lin-Li-Leng-a-TAi-Leng-Le.mp3', '', 'http://story.beva.com/audio/download/10290/1', 'audio/mp3', 'mp3', '824702', '2c021073c3ce8329985a4744e1a2427c', '', 'local', '0', '1545803690', '1545803690', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('412', '0', '005358032dee6c356de49de905b84c945a6638d4.jpg', 'book', 'uploads/images/beva/full/005358032dee6c356de49de905b84c945a6638d4.jpg', '', 'https://3w.beva.cn/story/images/res/11402/ST_kuanghengzaobitouguang205.jpg', 'image/jpeg', 'jpeg', '8654', 'cb1d451835b9901d47ae02be005d5c1e', '', 'local', '0', '1545803691', '1545803691', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('413', '0', 'AU_xiao-lu-yu.mp3', 'book', 'uploads/mp3/beva/67f051bebcc3e2d5cc4462902047a9f7/AU_xiao-lu-yu.mp3', '', 'http://story.beva.com/audio/download/11026/1', 'audio/mp3', 'mp3', '495237', 'e00d661ec817e3a6bc9cc908e9432f71', '', 'local', '0', '1545803691', '1545803691', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('414', '0', '63b56ce23077581fe157d553ab07a55aaa17b116.jpg', 'book', 'uploads/images/beva/full/63b56ce23077581fe157d553ab07a55aaa17b116.jpg', '', 'https://3w.beva.cn/story/images/res/10822/ST_guojuguniang205.jpg', 'image/jpeg', 'jpeg', '14920', '6bac391ff00cb34252a99aa2d348a71d', '', 'local', '0', '1545803691', '1545803691', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('415', '0', 'AU_ye-yu-ji-bei.mp3', 'book', 'uploads/mp3/beva/497f4fb334ea904684829f2b7629685d/AU_ye-yu-ji-bei.mp3', '', 'http://story.beva.com/audio/download/11602/1', 'audio/mp3', 'mp3', '563477', 'a97164034e8da92854dc729ef35c6456', '', 'local', '0', '1545803692', '1545803692', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('416', '0', '20bffd66bbef2f6146f2f30c148e0ad68fe316a8.jpg', 'book', 'uploads/images/beva/full/20bffd66bbef2f6146f2f30c148e0ad68fe316a8.jpg', '', 'https://3w.beva.cn/story/images/res/defaulticons/L_v1_hybb.png', 'image/jpeg', 'jpeg', '14880', '526905f7ff2c8735dbebd473f7b445be', '', 'local', '0', '1545803692', '1545803692', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('417', '0', 'AU_Jiang-Xue.mp3', 'book', 'uploads/mp3/beva/a2718d175ab05d48247ec52355ab1901/AU_Jiang-Xue.mp3', '', 'http://story.beva.com/audio/download/11264/1', 'audio/mp3', 'mp3', '487445', '3857313c2d72b4dd0394b92cc19b322e', '', 'local', '0', '1545803692', '1545803692', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('418', '0', 'AU_dangyinyuejiaqu001.MP3', 'book', 'uploads/mp3/beva/1c2a8af93b95b8b7efe598c96f7e0e34/AU_dangyinyuejiaqu001.MP3', '', 'http://story.beva.com/audio/download/10340/3', 'audio/mp3', 'mp3', '1796831', 'f34673f442801f0d1a326616855b9657', '', 'local', '0', '1545803692', '1545803692', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('419', '0', 'AU_dangyinyuejiaqu002.MP3', 'book', 'uploads/mp3/beva/1c2a8af93b95b8b7efe598c96f7e0e34/AU_dangyinyuejiaqu002.MP3', '', 'http://story.beva.com/audio/download/10340/3', 'audio/mp3', 'mp3', '1365263', 'f5818f6be319fd819bc46e6fa0eb5d37', '', 'local', '0', '1545803692', '1545803692', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('420', '0', 'AU_dangyinyuejiaqu003.MP3', 'book', 'uploads/mp3/beva/1c2a8af93b95b8b7efe598c96f7e0e34/AU_dangyinyuejiaqu003.MP3', '', 'http://story.beva.com/audio/download/10340/3', 'audio/mp3', 'mp3', '1350575', '745794fb129cbf619ed39a918eeefa0e', '', 'local', '0', '1545803692', '1545803692', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('421', '0', 'cfbbffe1d274d3a37969e9d761efc4768d1bbfdb.jpg', 'book', 'uploads/images/beva/full/cfbbffe1d274d3a37969e9d761efc4768d1bbfdb.jpg', '', 'https://3w.beva.cn/story/images/res/10340/ST_dangyinyuejiaqu205.jpg', 'image/jpeg', 'jpeg', '10416', '1dfb09a98fd9eba2f35cf0157daf6237', '', 'local', '0', '1545803692', '1545803692', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('422', '0', 'AU_Che-Yin-Nang-Ying-Ye-Du.mp3', 'book', 'uploads/mp3/beva/ecf9d62c3b86227a213748ad7c156cf3/AU_Che-Yin-Nang-Ying-Ye-Du.mp3', '', 'http://story.beva.com/audio/download/10641/1', 'audio/mp3', 'mp3', '669479', '7e37e200e7e839ba1760b2d633e4fdac', '', 'local', '0', '1545803693', '1545803693', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('423', '0', '9ed2cda8763df4f47cfa97c77e737e685334e19a.jpg', 'book', 'uploads/images/beva/full/9ed2cda8763df4f47cfa97c77e737e685334e19a.jpg', '', 'https://3w.beva.cn/story/images/res/11395/ST_lieningxiaoshihou205.jpg', 'image/jpeg', 'jpeg', '11107', 'c9879242260491b86353510f5c363e9a', '', 'local', '0', '1545803693', '1545803693', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('424', '0', 'AU_zeng-wang-lun.mp3', 'book', 'uploads/mp3/beva/22ce4c30da8b26515ec06f02f698b41d/AU_zeng-wang-lun.mp3', '', 'http://story.beva.com/audio/download/11564/1', 'audio/mp3', 'mp3', '500117', '1edd141f41f37e1a566b82f1fa37c58c', '', 'local', '0', '1545803693', '1545803693', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('425', '0', 'AU_Yi-Jing-Nan.mp3', 'book', 'uploads/mp3/beva/f4bdceeedf88ef0d198044b825d103cf/AU_Yi-Jing-Nan.mp3', '', 'http://story.beva.com/audio/download/11249/1', 'audio/mp3', 'mp3', '506784', 'bc3c5c43516bffde7722d8b32626550a', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('426', '0', 'AU_Chu-Zhou-Xi-Jian.mp3', 'book', 'uploads/mp3/beva/888d7aed2894068916582285d6b2e775/AU_Chu-Zhou-Xi-Jian.mp3', '', 'http://story.beva.com/audio/download/11139/1', 'audio/mp3', 'mp3', '457670', 'cde58062148954edb8a0c097525f9139', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('427', '0', 'AU_Hui-Chong-Chun-Jiang-Xiao-Jing.mp3', 'book', 'uploads/mp3/beva/77ffb0f1e332fcb9febab42f5cdbc079/AU_Hui-Chong-Chun-Jiang-Xiao-Jing.mp3', '', 'http://story.beva.com/audio/download/11239/1', 'audio/mp3', 'mp3', '487200', 'd493d306f7bcfa9fd6ffb1bc25681467', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('428', '0', 'AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', 'book', 'uploads/mp3/beva/90e7f59b309d7804fd377a20b0300970/AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', '', 'http://story.beva.com/audio/download/10370/1', 'audio/mp3', 'mp3', '1708422', '094d246dd54335cdaf333cdadd86563e', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('429', '0', 'AU_yong-liu.mp3', 'book', 'uploads/mp3/beva/bfe93f7431f45ba46243735d687006ea/AU_yong-liu.mp3', '', 'http://story.beva.com/audio/download/11555/1', 'audio/mp3', 'mp3', '541877', 'eb9dd61f22d5b8e564cffcd912bb317a', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('430', '0', 'AU_lv-se-peng-you.mp3', 'book', 'uploads/mp3/beva/00d609c6ea7998fcd8ea98a316bb4914/AU_lv-se-peng-you.mp3', '', 'http://story.beva.com/audio/download/10935/1', 'audio/mp3', 'mp3', '961213', '9ac4a43e1aa97d884d3d55c249157931', '', 'local', '0', '1545803694', '1545803694', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('431', '0', 'AU_Xiao-Chi.mp3', 'book', 'uploads/mp3/beva/7afe3cc0e28652ec98707233ca477377/AU_Xiao-Chi.mp3', '', 'http://story.beva.com/audio/download/11433/1', 'audio/mp3', 'mp3', '474453', 'b616a08fd58c6a60e3f6deeb36e2fb70', '', 'local', '0', '1545803695', '1545803695', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('432', '0', 'AU_San-Hang.mp3', 'book', 'uploads/mp3/beva/e374f307d8f0a9c9cefd204df651d4ca/AU_San-Hang.mp3', '', 'http://story.beva.com/audio/download/11278/1', 'audio/mp3', 'mp3', '523733', 'dd58b4bc1b65274312268579cf425291', '', 'local', '0', '1545803696', '1545803696', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('433', '0', 'AU_ai-ji-yong-ji-de-niao-er.mp3', 'book', 'uploads/mp3/beva/2cad696b313e6660bf81c17bcad2f294/AU_ai-ji-yong-ji-de-niao-er.mp3', '', 'http://story.beva.com/audio/download/10868/1', 'audio/mp3', 'mp3', '833491', 'b6646f87baaeb95c7e2bd4c7930e8fab', '', 'local', '0', '1545803696', '1545803696', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('434', '0', 'AU_changebanyue.MP3', 'book', 'uploads/mp3/beva/fa7122e2f2f66485fff3a854484d066f/AU_changebanyue.MP3', '', 'http://story.beva.com/audio/download/10092/1', 'audio/mp3', 'mp3', '4970428', '4a9a80e83cf6a328acab3dd50c0b48aa', '', 'local', '0', '1545803696', '1545803696', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('435', '0', 'AU_chun-ye-xi-yu.mp3', 'book', 'uploads/mp3/beva/80db15464bd0a50ec85cb1575c91a449/AU_chun-ye-xi-yu.mp3', '', 'http://story.beva.com/audio/download/11529/1', 'audio/mp3', 'mp3', '717845', 'e45619dbfe7bb56c602bb13b6d18eb99', '', 'local', '0', '1545803696', '1545803696', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('436', '0', 'c2158e861f16c304116ca65553a24666d3957964.jpg', 'book', 'uploads/images/beva/full/c2158e861f16c304116ca65553a24666d3957964.jpg', '', 'https://3w.beva.cn/story/images/res/11159/ST_chunyexiyu205.jpg', 'image/jpeg', 'jpeg', '5994', '497b9823a5c7547d2c0ca5ed2e548c71', '', 'local', '0', '1545803696', '1545803696', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('437', '0', 'AU_jue-ju.mp3', 'book', 'uploads/mp3/beva/818f0bcb2a117dfcbcf6af7edc657234/AU_jue-ju.mp3', '', 'http://story.beva.com/audio/download/11546/1', 'audio/mp3', 'mp3', '522581', '3a55ebc1eeb2674bccc91492fcb85a65', '', 'local', '0', '1545803697', '1545803697', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('438', '0', 'AU_huan-fang-jian-huan-ming-zi.mp3', 'book', 'uploads/mp3/beva/142fad300e8bcdffa878eeb058ed9059/AU_huan-fang-jian-huan-ming-zi.mp3', '', 'http://story.beva.com/audio/download/10832/1', 'audio/mp3', 'mp3', '580771', '20100d9e3855d79dd343b8bf040517b1', '', 'local', '0', '1545803697', '1545803697', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('439', '0', 'AU_xiao-yan-que-he-ta-de-ma-ma.mp3', 'book', 'uploads/mp3/beva/3abfe0bc8f3f9d29ffdcaec1562a1e0b/AU_xiao-yan-que-he-ta-de-ma-ma.mp3', '', 'http://story.beva.com/audio/download/10951/1', 'audio/mp3', 'mp3', '1045903', '995665acfe9a86606f1217d27c71fa21', '', 'local', '0', '1545803697', '1545803697', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('440', '0', 'AU_xi-yi.mp3', 'book', 'uploads/mp3/beva/65a62ff4711bacb1e892929cb503f15a/AU_xi-yi.mp3', '', 'http://story.beva.com/audio/download/10960/1', 'audio/mp3', 'mp3', '792163', 'a4681418e42c86997e3081f745b64b82', '', 'local', '0', '1545803698', '1545803698', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('441', '0', 'AU_Fang-Chui-Suo-Zi-He-Zhen-over.mp3', 'book', 'uploads/mp3/beva/e316f47416fc31861507e1a604008abd/AU_Fang-Chui-Suo-Zi-He-Zhen-over.mp3', '', 'http://story.beva.com/audio/download/11416/1', 'audio/mp3', 'mp3', '4210965', '164107ff01e87fda0893c439ebe181cf', '', 'local', '0', '1545803698', '1545803698', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('442', '0', 'AU_Le-You-Yuan.mp3', 'book', 'uploads/mp3/beva/2e17f8696f93c4af932631d51349f774/AU_Le-You-Yuan.mp3', '', 'http://story.beva.com/audio/download/11246/1', 'audio/mp3', 'mp3', '442848', '582528ee8c0b9f099be33361a70e0cd3', '', 'local', '0', '1545803699', '1545803699', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('443', '0', 'AU_chun-shui-lai-le.mp3', 'book', 'uploads/mp3/beva/cb81845aca1a422bc254521bf3598d7f/AU_chun-shui-lai-le.mp3', '', 'http://story.beva.com/audio/download/10696/1', 'audio/mp3', 'mp3', '652487', '127c73440124f3714c2bdf771a215770', '', 'local', '0', '1545803699', '1545803699', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('444', '0', 'AU_guang-jiao-zai-xue-shang-pa.mp3', 'book', 'uploads/mp3/beva/bbd9dcbacf325eb387a1ecfef0152a37/AU_guang-jiao-zai-xue-shang-pa.mp3', '', 'http://story.beva.com/audio/download/10890/1', 'audio/mp3', 'mp3', '517419', '5edcd7cff164e340a542de7fc7698637', '', 'local', '0', '1545803699', '1545803699', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('445', '0', 'AU_Fox-And-Grape.mp3', 'book', 'uploads/mp3/beva/6ecd2c02fb2e1d22a091d5e158763be3/AU_Fox-And-Grape.mp3', '', 'http://story.beva.com/audio/download/11471/1', 'audio/mp3', 'mp3', '342981', '61ee04ae62ada75c72324983212eb2ee', '', 'local', '0', '1545803700', '1545803700', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('446', '0', '57689c3cbb4abbb4bac324183f875dfc2e813e00.jpg', 'book', 'uploads/images/beva/full/57689c3cbb4abbb4bac324183f875dfc2e813e00.jpg', '', 'https://3w.beva.cn/story/images/res/10514/ST_huligheputao205213-24.jpg', 'image/jpeg', 'jpeg', '12277', 'd41823116f831c72d4e09b736b488247', '', 'local', '0', '1545803700', '1545803700', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('447', '0', 'AU_Xuan-Zhou-XIe-Tiao-Lou-Jian-Bie.mp3', 'book', 'uploads/mp3/beva/ed58570ab7a0d3dff4389814cac6525a/AU_Xuan-Zhou-XIe-Tiao-Lou-Jian-Bie.mp3', '', 'http://story.beva.com/audio/download/11230/1', 'audio/mp3', 'mp3', '1017830', '285c4ad74ad8ee179637727b0e7e2b24', '', 'local', '0', '1545803700', '1545803700', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('448', '0', 'AU_liang-zhou-ci.mp3', 'book', 'uploads/mp3/beva/3e7669235682a7e30db801e48616a869/AU_liang-zhou-ci.mp3', '', 'http://story.beva.com/audio/download/11548/1', 'audio/mp3', 'mp3', '494789', '3ad4dc1386e8bbff4fa1269238115da3', '', 'local', '0', '1545803700', '1545803700', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('449', '0', 'AU_lu-chai.mp3', 'book', 'uploads/mp3/beva/f783471349bce0c615a0613cf632c97c/AU_lu-chai.mp3', '', 'http://story.beva.com/audio/download/11550/1', 'audio/mp3', 'mp3', '455045', 'd7bb132e52149b41da00f895faf92730', '', 'local', '0', '1545803702', '1545803702', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('450', '0', 'AU_Shi-Chong-Hua.mp3', 'book', 'uploads/mp3/beva/630ccdf3fcd4193eca3cd44bee230bfb/AU_Shi-Chong-Hua.mp3', '', 'http://story.beva.com/audio/download/10409/1', 'audio/mp3', 'mp3', '858386', '06a1c4ccf53636d0ee988bcaa55039df', '', 'local', '0', '1545803703', '1545803703', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('451', '0', '476206834d5d5ea4f552cbf6f10a67a84966e74d.jpg', 'book', 'uploads/images/beva/full/476206834d5d5ea4f552cbf6f10a67a84966e74d.jpg', '', 'https://3w.beva.cn/story/images/res/11254/ST_meihua302.jpg', 'image/jpeg', 'jpeg', '15729', '83580434bc5a1bcafdd79b211e03781b', '', 'local', '0', '1545803703', '1545803703', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('452', '0', 'AU_Lan-Han-Fu-over.mp3', 'book', 'uploads/mp3/beva/ab4f38238a1015b0667a2241e4b06758/AU_Lan-Han-Fu-over.mp3', '', 'http://story.beva.com/audio/download/11342/1', 'audio/mp3', 'mp3', '2080773', '298e629fc328ce7b94dba379c039da2c', '', 'local', '0', '1545803703', '1545803703', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('453', '0', 'AU_Ga-Nen-Tu-Bao-over.mp3', 'book', 'uploads/mp3/beva/d69ebb762dd5fb115556764bf38ee51d/AU_Ga-Nen-Tu-Bao-over.mp3', '', 'http://story.beva.com/audio/download/11384/1', 'audio/mp3', 'mp3', '1107184', 'f791018dda3d15a5747a757eb6cafdf9', '', 'local', '0', '1545803704', '1545803704', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('454', '0', 'AU_dan-dao-na-er-qu-le.mp3', 'book', 'uploads/mp3/beva/cd995a98bb3f8bdee270292d3eeedd30/AU_dan-dao-na-er-qu-le.mp3', '', 'http://story.beva.com/audio/download/10925/1', 'audio/mp3', 'mp3', '353679', '2bf7f54cc2d1fe4f0fd588686563ad5c', '', 'local', '0', '1545803704', '1545803704', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('455', '0', 'AU_tai-yang-xue.mp3', 'book', 'uploads/mp3/beva/497e7bc29bb45f24829be5bd55181cb1/AU_tai-yang-xue.mp3', '', 'http://story.beva.com/audio/download/10716/1', 'audio/mp3', 'mp3', '579333', '13fc628b6a7ccea5e84a7f0911f516c6', '', 'local', '0', '1545803704', '1545803704', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('456', '0', 'AU_anqier001.mp3', 'book', 'uploads/mp3/beva/57a0d36a28837ef9a0912397618b9be8/AU_anqier001.mp3', '', 'http://story.beva.com/audio/download/11544/3', 'audio/mp3', 'mp3', '1231052', '92461aefc2e2283fd350ac8508826109', '', 'local', '0', '1545803705', '1545803705', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('457', '0', 'AU_anqier002.mp3', 'book', 'uploads/mp3/beva/57a0d36a28837ef9a0912397618b9be8/AU_anqier002.mp3', '', 'http://story.beva.com/audio/download/11544/3', 'audio/mp3', 'mp3', '1126796', '712ee1ee3c540de2d3908e3b8619b38f', '', 'local', '0', '1545803705', '1545803705', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('458', '0', 'AU_anqier003.mp3', 'book', 'uploads/mp3/beva/57a0d36a28837ef9a0912397618b9be8/AU_anqier003.mp3', '', 'http://story.beva.com/audio/download/11544/3', 'audio/mp3', 'mp3', '1587452', '26ccf703fa451fdbd9051d0d5c2eb632', '', 'local', '0', '1545803705', '1545803705', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('459', '0', 'AU_San-He-Xiao-Ai-Ren-over.mp3', 'book', 'uploads/mp3/beva/f071c081f58e8fee1fa7719bf9d82d52/AU_San-He-Xiao-Ai-Ren-over.mp3', '', 'http://story.beva.com/audio/download/11423/1', 'audio/mp3', 'mp3', '5007717', '355ad254bd2d47572e2cae6a6f657e12', '', 'local', '0', '1545803705', '1545803705', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('460', '0', 'AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', 'book', 'uploads/mp3/beva/73fae8a025a1de18b98cb0148031d474/AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', '', 'http://story.beva.com/audio/download/10297/1', 'audio/mp3', 'mp3', '1278876', 'f62821594dc6d1a86cd930d9ee9fa7f0', '', 'local', '0', '1545803705', '1545803705', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('461', '0', 'AU_yamiaozhuzhang.mp3', 'book', 'uploads/mp3/beva/d0a891880ab481c0f2363846bf968acb/AU_yamiaozhuzhang.mp3', '', 'http://story.beva.com/audio/download/10132/1', 'audio/mp3', 'mp3', '1851529', 'bba33b243a97acbd37e2810da9807157', '', 'local', '0', '1545803706', '1545803706', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('462', '0', 'AU_huang-he-lou-song-meng-hao-ran-zhi-ren-guang-lin.mp3', 'book', 'uploads/mp3/beva/0dd007923c0e50ac2d6f0e9aede8df98/AU_huang-he-lou-song-meng-hao-ran-zhi-ren-guang-lin.mp3', '', 'http://story.beva.com/audio/download/11538/1', 'audio/mp3', 'mp3', '535109', '35b6468e5217c897661783128f160a22', '', 'local', '0', '1545803706', '1545803706', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('463', '0', 'c8e7d00b7c9a9f74349cbf9ea4762b71ba3622a9.jpg', 'book', 'uploads/images/beva/full/c8e7d00b7c9a9f74349cbf9ea4762b71ba3622a9.jpg', '', 'https://3w.beva.cn/story/images/res/11139/ST_huanghelou205.jpg', 'image/jpeg', 'jpeg', '6856', '33d7a6d8ead765abd37d6d8e4405760b', '', 'local', '0', '1545803706', '1545803706', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('464', '0', 'AU_shan-shu.mp3', 'book', 'uploads/mp3/beva/fabf76919464e21be01d1b7918f28830/AU_shan-shu.mp3', '', 'http://story.beva.com/audio/download/10846/1', 'audio/mp3', 'mp3', '814339', '2181c2c93c5cf296940a8a44030079b8', '', 'local', '0', '1545803706', '1545803706', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('465', '0', 'AU_Kun-Chong-De-jie-Ri.mp3', 'book', 'uploads/mp3/beva/13896dac75ba8db91124f899f6abe954/AU_Kun-Chong-De-jie-Ri.mp3', '', 'http://story.beva.com/audio/download/10316/1', 'audio/mp3', 'mp3', '581190', 'cd11266b180528743942f7dbfa57ecb5', '', 'local', '0', '1545803707', '1545803707', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('466', '0', 'AU_yueliang.MP3', 'book', 'uploads/mp3/beva/afc9a422f25b926cc071b080b84f9c30/AU_yueliang.MP3', '', 'http://story.beva.com/audio/download/10138/1', 'audio/mp3', 'mp3', '754842', '4f7676d757b9aefd809b3644600c5152', '', 'local', '0', '1545803707', '1545803707', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('467', '0', 'f722651990093ba1106433d0627fdf22f76eee37.jpg', 'book', 'uploads/images/beva/full/f722651990093ba1106433d0627fdf22f76eee37.jpg', '', 'https://3w.beva.cn/story/images/res/10633/ST_yueliang205.jpg', 'image/jpeg', 'jpeg', '7450', 'af00021c15cf14e1d579f54e2960db53', '', 'local', '0', '1545803707', '1545803707', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('468', '0', 'AU_Bu-Gu-Niao-Jiao-Le.mp3', 'book', 'uploads/mp3/beva/261a6f05c8e4f7e876cf738cf041cd9b/AU_Bu-Gu-Niao-Jiao-Le.mp3', '', 'http://story.beva.com/audio/download/10302/1', 'audio/mp3', 'mp3', '519270', 'fa9fda9420b74119395104155c1910b1', '', 'local', '0', '1545803707', '1545803707', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('469', '0', 'AU_da-jia-dou-duo-qi-lai-le.mp3', 'book', 'uploads/mp3/beva/2a29b75ea371f54e39caa7de6016e4cf/AU_da-jia-dou-duo-qi-lai-le.mp3', '', 'http://story.beva.com/audio/download/10826/1', 'audio/mp3', 'mp3', '800813', 'f1512295cf7760791b9690a50b2512af', '', 'local', '0', '1545803708', '1545803708', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('470', '0', 'AU_Sen-Lin-Li-De-Xin-Gui-Jv.mp3', 'book', 'uploads/mp3/beva/7a4c2ce9c27602c5a3fe61bd08ebce49/AU_Sen-Lin-Li-De-Xin-Gui-Jv.mp3', '', 'http://story.beva.com/audio/download/10581/1', 'audio/mp3', 'mp3', '1744997', '3284c4d4a6aed918179fa84d5d40edb4', '', 'local', '0', '1545803709', '1545803709', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('471', '0', 'AU_Qiao-Mai.MP3', 'book', 'uploads/mp3/beva/a6d967cd6ef59c4ade2a01d7086601dc/AU_Qiao-Mai.MP3', '', 'http://story.beva.com/audio/download/10679/1', 'audio/mp3', 'mp3', '2390969', '86bf96133b74c725c0164d7141eeecb2', '', 'local', '0', '1545803709', '1545803709', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('472', '0', 'c0bbd54c38eec025afd2b640c435ed67c8920f51.jpg', 'book', 'uploads/images/beva/full/c0bbd54c38eec025afd2b640c435ed67c8920f51.jpg', '', 'https://3w.beva.cn/story/images/res/10390/ST_qiaomai205.jpg', 'image/jpeg', 'jpeg', '11410', 'd26325888d608ea5c043ecfb5f477dce', '', 'local', '0', '1545803709', '1545803709', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('473', '0', 'AU_dong-ji-de-zhong-wu.mp3', 'book', 'uploads/mp3/beva/f8ec2ae9f23587bb222f9085ff4e1d0f/AU_dong-ji-de-zhong-wu.mp3', '', 'http://story.beva.com/audio/download/10884/1', 'audio/mp3', 'mp3', '967407', '88942312b783d7e28f0937c78c838a95', '', 'local', '0', '1545803710', '1545803710', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('474', '0', 'AU_Xiao-Chu-Jing-Ci-Shi-Song-Lin-Zi-Fang.mp3', 'book', 'uploads/mp3/beva/de4e80d7ac257abfa72863109ee80240/AU_Xiao-Chu-Jing-Ci-Shi-Song-Lin-Zi-Fang.mp3', '', 'http://story.beva.com/audio/download/11435/1', 'audio/mp3', 'mp3', '534096', '71d126bf84b1f3145b7bdd97b99bb9bb', '', 'local', '0', '1545803710', '1545803710', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('475', '0', 'AU_Tu-Zi-De-Hua-Zhao.mp3', 'book', 'uploads/mp3/beva/ae5fbc0512eb301a8f672bb06297348f/AU_Tu-Zi-De-Hua-Zhao.mp3', '', 'http://story.beva.com/audio/download/10428/1', 'audio/mp3', 'mp3', '3326982', '36bd6c45f635fb0b44fcda3c8e749dd9', '', 'local', '0', '1545803710', '1545803710', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('476', '0', 'AU_Xun-Yin-Zhe-Bu-Yu.mp3', 'book', 'uploads/mp3/beva/0937ddba95cef129091522a24ad01dc5/AU_Xun-Yin-Zhe-Bu-Yu.mp3', '', 'http://story.beva.com/audio/download/11283/1', 'audio/mp3', 'mp3', '464837', '8a11405820c25d64d042cb227e7bc3b4', '', 'local', '0', '1545803711', '1545803711', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('477', '0', 'AU_feng-qiao-ye-bo.mp3', 'book', 'uploads/mp3/beva/c59f2864bd638109c844e659838c93c0/AU_feng-qiao-ye-bo.mp3', '', 'http://story.beva.com/audio/download/11535/1', 'audio/mp3', 'mp3', '535685', 'b427aa07e3b5754271e33a066efdc44e', '', 'local', '0', '1545803711', '1545803711', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('478', '0', 'AU_hei-xiong-xing-lai.mp3', 'book', 'uploads/mp3/beva/293f4df7bae3c89a8f6d295bc7bb8d8e/AU_hei-xiong-xing-lai.mp3', '', 'http://story.beva.com/audio/download/10774/1', 'audio/mp3', 'mp3', '673213', '202e9c7b24a1b5ca9e0881b0bcf97d99', '', 'local', '0', '1545803711', '1545803711', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('479', '0', 'AU_Chu-Sai.mp3', 'book', 'uploads/mp3/beva/652a8e5e3e5b45614cd4403d577eb3c9/AU_Chu-Sai.mp3', '', 'http://story.beva.com/audio/download/11138/1', 'audio/mp3', 'mp3', '444293', '97a86ca46c09321ad5db1622eed27a8a', '', 'local', '0', '1545803713', '1545803713', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('480', '0', 'AU_zui-zao-kai-fang-de-hua.mp3', 'book', 'uploads/mp3/beva/438ae0cf551c38c916edeb5cc1c099e3/AU_zui-zao-kai-fang-de-hua.mp3', '', 'http://story.beva.com/audio/download/10796/1', 'audio/mp3', 'mp3', '1048049', '1b7bf9d1b4b5f0eaf404a02ff7e6e44f', '', 'local', '0', '1545803713', '1545803713', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('481', '0', 'AU_Yue-Xia-Du-Zhuo.mp3', 'book', 'uploads/mp3/beva/18187f4db416fc9656772475a013eef5/AU_Yue-Xia-Du-Zhuo.mp3', '', 'http://story.beva.com/audio/download/11182/1', 'audio/mp3', 'mp3', '947702', 'ec9804d1301cd60bc267087e7161edb5', '', 'local', '0', '1545803713', '1545803713', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('482', '0', 'd1722333a162c2b0a0ed6d53797206bda881f072.jpg', 'book', 'uploads/images/beva/full/d1722333a162c2b0a0ed6d53797206bda881f072.jpg', '', 'https://3w.beva.cn/story/images/res/10443/ST_congmingdexiaomutong205.jpg', 'image/jpeg', 'jpeg', '12121', '27dbb0312e8f928fc6b50d330d915e73', '', 'local', '0', '1545803713', '1545803713', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('483', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/3917287bf3aa948d8bfa1120d6979a59/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10461/1', 'audio/mp3', 'mp3', '1136016', 'f80d27ed167d64a2545fde2e25a9d69d', '', 'local', '0', '1545803714', '1545803714', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('484', '0', 'AU_bai-tian-xing-xing-dou-dao-na-er-qu-le.mp3', 'book', 'uploads/mp3/beva/00ae06479956d9d96486e1d2cbb2bec2/AU_bai-tian-xing-xing-dou-dao-na-er-qu-le.mp3', '', 'http://story.beva.com/audio/download/10812/1', 'audio/mp3', 'mp3', '652604', '56bc82171610304f7bc7a97871ae2313', '', 'local', '0', '1545803714', '1545803714', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('485', '0', 'AU_wang-chuan-xian-ju.mp3', 'book', 'uploads/mp3/beva/480bfd52caac76055f051218ac33e5e9/AU_wang-chuan-xian-ju.mp3', '', 'http://story.beva.com/audio/download/11575/1', 'audio/mp3', 'mp3', '777317', 'b7487fa66fa3d8be17f7bfae6e06b940', '', 'local', '0', '1545803715', '1545803715', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('486', '0', 'AU_You-Wu-Ding-Hui-Qing-Tian-Ma.mp3', 'book', 'uploads/mp3/beva/e45696d9467dd6cd03b3683b3165075d/AU_You-Wu-Ding-Hui-Qing-Tian-Ma.mp3', '', 'http://story.beva.com/audio/download/10506/1', 'audio/mp3', 'mp3', '2400348', '9bed0d702476c0a34c2e1490c14182ea', '', 'local', '0', '1545803715', '1545803715', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('487', '0', 'AU_qiu-yin-mei-you-jiao-hui-zou-lu.mp3', 'book', 'uploads/mp3/beva/968bf0005e4648284ef2c1e166af4888/AU_qiu-yin-mei-you-jiao-hui-zou-lu.mp3', '', 'http://story.beva.com/audio/download/10817/1', 'audio/mp3', 'mp3', '871797', 'c2560bd1e2497a7ef6ad32cb6dc346d4', '', 'local', '0', '1545803715', '1545803715', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('488', '0', 'AU_shen-mi-de-rong-mao.mp3', 'book', 'uploads/mp3/beva/a7c0397fe9822f44dd16a87fcd30052f/AU_shen-mi-de-rong-mao.mp3', '', 'http://story.beva.com/audio/download/10781/1', 'audio/mp3', 'mp3', '582486', '546464aceabb63b65019816e0c73be62', '', 'local', '0', '1545803715', '1545803715', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('489', '0', 'AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', 'book', 'uploads/mp3/beva/d326ab9b5d7a1dfdd974515a3be46ae5/AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', '', 'http://story.beva.com/audio/download/10299/1', 'audio/mp3', 'mp3', '1278876', '361fc5a9cef5c9e665d4fc026fd967b0', '', 'local', '0', '1545803716', '1545803716', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('490', '0', 'AU_Tu-Zi-Shang-Shu.mp3', 'book', 'uploads/mp3/beva/03d4a52f3cf5f7b47b65888df369707c/AU_Tu-Zi-Shang-Shu.mp3', '', 'http://story.beva.com/audio/download/10341/1', 'audio/mp3', 'mp3', '2039620', '35d8cf43713d341bca544ca6fb5257e5', '', 'local', '0', '1545803717', '1545803717', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('491', '0', 'AU_zhuo-xiao-long-xia.mp3', 'book', 'uploads/mp3/beva/bf797002847e0d8e5631edb20c5a65a8/AU_zhuo-xiao-long-xia.mp3', '', 'http://story.beva.com/audio/download/10975/1', 'audio/mp3', 'mp3', '1040413', '59d4a143ce7177f2d58460ed1cb02205', '', 'local', '0', '1545803717', '1545803717', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('492', '0', 'AU_Ma-Yi-Hui-You-Yong-Ma.mp3', 'book', 'uploads/mp3/beva/61dfb757d31c35559a76db58134e1ab7/AU_Ma-Yi-Hui-You-Yong-Ma.mp3', '', 'http://story.beva.com/audio/download/10494/1', 'audio/mp3', 'mp3', '3765830', '87193bb8e64039f58d4e9d3fc39e5c67', '', 'local', '0', '1545803717', '1545803717', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('493', '0', 'AU_sha-mo-de-qiu-tian.mp3', 'book', 'uploads/mp3/beva/d243b6c0336f395ba10723399669c447/AU_sha-mo-de-qiu-tian.mp3', '', 'http://story.beva.com/audio/download/10843/1', 'audio/mp3', 'mp3', '789279', '18a87d1178b846e9299ebd567dac1198', '', 'local', '0', '1545803718', '1545803718', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('494', '0', 'AU_Ba-Zhen-Tu.mp3', 'book', 'uploads/mp3/beva/bdfde12d882313c400de28f08a4796f9/AU_Ba-Zhen-Tu.mp3', '', 'http://story.beva.com/audio/download/11112/1', 'audio/mp3', 'mp3', '410294', '18b20b917b13fc587a123d5cc0270cc9', '', 'local', '0', '1545803718', '1545803718', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('495', '0', 'AU_Sen-Ling-De-Yi-Yue.mp3', 'book', 'uploads/mp3/beva/52f9d723e64637afb467012faa985c57/AU_Sen-Ling-De-Yi-Yue.mp3', '', 'http://story.beva.com/audio/download/10288/1', 'audio/mp3', 'mp3', '4002813', 'f94c763e119a8b31de1bef7e8d4050d3', '', 'local', '0', '1545803718', '1545803718', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('496', '0', 'AU_Sen-Lin-De-Shi-Yue.mp3', 'book', 'uploads/mp3/beva/57e44d5cdc9c2de511172dc6c5ca3681/AU_Sen-Lin-De-Shi-Yue.mp3', '', 'http://story.beva.com/audio/download/10413/1', 'audio/mp3', 'mp3', '1504374', 'd3a5fdff32f5a360eb2b805e7d57cb1a', '', 'local', '0', '1545803719', '1545803719', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('497', '0', 'AU_zui-zao-sheng-dan-de-niao.mp3', 'book', 'uploads/mp3/beva/14478f56dd800b61d338a4651238c666/AU_zui-zao-sheng-dan-de-niao.mp3', '', 'http://story.beva.com/audio/download/10806/1', 'audio/mp3', 'mp3', '543041', 'd79517ce3c6f39633c7d2bb491019d0f', '', 'local', '0', '1545803719', '1545803719', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('498', '0', 'AU_Nong-Fu-Yu-Mo-Gui-over.mp3', 'book', 'uploads/mp3/beva/adb68b4cd0058ffbc6f14127e0d0d244/AU_Nong-Fu-Yu-Mo-Gui-over.mp3', '', 'http://story.beva.com/audio/download/11345/1', 'audio/mp3', 'mp3', '1492677', 'c324cde20160b8376b0cacc3394f5efd', '', 'local', '0', '1545803719', '1545803719', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('499', '0', 'AU_song-shu-de-shai-tai.mp3', 'book', 'uploads/mp3/beva/3bcd2b933a34227d251bccd5d58f004a/AU_song-shu-de-shai-tai.mp3', '', 'http://story.beva.com/audio/download/10859/1', 'audio/mp3', 'mp3', '562921', 'c9c424d789fa656a1e52cf4627bc53e6', '', 'local', '0', '1545803719', '1545803719', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('500', '0', 'AU_Bo-Qin-Huai.mp3', 'book', 'uploads/mp3/beva/37ca25fb20b58889305af445f9ad9ed2/AU_Bo-Qin-Huai.mp3', '', 'http://story.beva.com/audio/download/11123/1', 'audio/mp3', 'mp3', '485030', '8f2ce266428ef067918f7fe35ac38ef0', '', 'local', '0', '1545803720', '1545803720', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('501', '0', 'AU_shui-jing-ban-de-zao-cheng.mp3', 'book', 'uploads/mp3/beva/41ae51567cc41211701af32a4da2d82a/AU_shui-jing-ban-de-zao-cheng.mp3', '', 'http://story.beva.com/audio/download/10852/1', 'audio/mp3', 'mp3', '993915', '6b473105437e6d2dcb94ee2d6a7af1e5', '', 'local', '0', '1545803722', '1545803722', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('502', '0', 'AU_Song-Shu-Kai-Hun.mp3', 'book', 'uploads/mp3/beva/6e73c30527f06b5dabdfe454760d86ce/AU_Song-Shu-Kai-Hun.mp3', '', 'http://story.beva.com/audio/download/10335/1', 'audio/mp3', 'mp3', '633172', '43ea58058a4346c699071d962ae5708b', '', 'local', '0', '1545803722', '1545803722', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('503', '0', 'AU_xiao-wen-zi-de-wu-dao.mp3', 'book', 'uploads/mp3/beva/67c89d9af099987af86cea723b39a1b7/AU_xiao-wen-zi-de-wu-dao.mp3', '', 'http://story.beva.com/audio/download/10725/1', 'audio/mp3', 'mp3', '456219', 'b0da16b1d308dc67c543e1fdd04420d3', '', 'local', '0', '1545803722', '1545803722', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('504', '0', 'AU_ma-que-feng-bo.mp3', 'book', 'uploads/mp3/beva/7ab310583877d0e894b43e95d39c856f/AU_ma-que-feng-bo.mp3', '', 'http://story.beva.com/audio/download/10775/1', 'audio/mp3', 'mp3', '830893', '7540bd9747a95e62a067bcb84791e565', '', 'local', '0', '1545803723', '1545803723', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('505', '0', 'AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', 'book', 'uploads/mp3/beva/6a29c8842852989732530ffed0717475/AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', '', 'http://story.beva.com/audio/download/10326/1', 'audio/mp3', 'mp3', '963228', '7b75ec6321cd1adc667cd1e3a729fbec', '', 'local', '0', '1545803723', '1545803723', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('506', '0', 'AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', 'book', 'uploads/mp3/beva/ddb5372ba4bd262a01a79a65d343de33/AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', '', 'http://story.beva.com/audio/download/10315/1', 'audio/mp3', 'mp3', '709356', '699e83ee7971bf0e45a9c65877ca5da4', '', 'local', '0', '1545803724', '1545803724', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('507', '0', 'AU_Zhuo-Qiang-Dao.mp3', 'book', 'uploads/mp3/beva/0dc8acaaa835155497ad11e0e0223d48/AU_Zhuo-Qiang-Dao.mp3', '', 'http://story.beva.com/audio/download/10569/1', 'audio/mp3', 'mp3', '3792997', '37aaf68eb3d5e84d41f335fa5d288d8f', '', 'local', '0', '1545803724', '1545803724', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('508', '0', '153b06cbad7025661406eb7a3835a630c46440c6.jpg', 'book', 'uploads/images/beva/full/153b06cbad7025661406eb7a3835a630c46440c6.jpg', '', 'https://3w.beva.cn/story/images/res/14740/ST_baifabaizhong205.jpg', 'image/jpeg', 'jpeg', '11716', '2e586358c7d294fbbca4a12011ef044d', '', 'local', '0', '1545803724', '1545803724', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('509', '0', 'AU_ba-yue-yang-guang-zhi-yue.mp3', 'book', 'uploads/mp3/beva/7ec50b0933a4465f7520b517ffa8aec2/AU_ba-yue-yang-guang-zhi-yue.mp3', '', 'http://story.beva.com/audio/download/11019/1', 'audio/mp3', 'mp3', '761726', '1686dea919d663fff40fd19080b68b86', '', 'local', '0', '1545803725', '1545803725', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('510', '0', 'd0eb9d3e2dca22d210c5fe6fc781d85c824c6cf9.jpg', 'book', 'uploads/images/beva/full/d0eb9d3e2dca22d210c5fe6fc781d85c824c6cf9.jpg', '', 'https://3w.beva.cn/story/images/res/12339/ST_yidishui205213.png', 'image/jpeg', 'jpeg', '13823', '2db4e7d102b69f5f1ee4de583968ab23', '', 'local', '0', '1545803725', '1545803725', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('511', '0', 'AU_Tu-Zi-De-Hua-Zhao.mp3', 'book', 'uploads/mp3/beva/0edbf2b784a5f55fcd55b85848855152/AU_Tu-Zi-De-Hua-Zhao.mp3', '', 'http://story.beva.com/audio/download/10431/1', 'audio/mp3', 'mp3', '3326982', '6a4c41646f82480e553607bc71bbc98e', '', 'local', '0', '1545803726', '1545803726', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('512', '0', 'AU_Tu-Zi-De-Hua-Zhao.mp3', 'book', 'uploads/mp3/beva/970ddb26634b1574f022e63c34bf61df/AU_Tu-Zi-De-Hua-Zhao.mp3', '', 'http://story.beva.com/audio/download/10429/1', 'audio/mp3', 'mp3', '3326982', '2409712f57e549f9a062746c26a05ded', '', 'local', '0', '1545803727', '1545803727', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('513', '0', 'AU_dong-mian-su-xing-yue.mp3', 'book', 'uploads/mp3/beva/0cf1f8095652e9568baea6d48b1b3f47/AU_dong-mian-su-xing-yue.mp3', '', 'http://story.beva.com/audio/download/10706/1', 'audio/mp3', 'mp3', '665449', 'f426039de3fbb19e31e00d9b56ec1b2d', '', 'local', '0', '1545803731', '1545803731', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('514', '0', 'AU_lianggeshenmidexiaoxiejiang.mp3', 'book', 'uploads/mp3/beva/7d899d615c47580c1bbeb4f1d8ca7594/AU_lianggeshenmidexiaoxiejiang.mp3', '', 'http://story.beva.com/audio/download/10190/1', 'audio/mp3', 'mp3', '2081956', '36de94a400253841d1d78ffd3651c595', '', 'local', '0', '1545803732', '1545803732', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('515', '0', 'AU_shui-zhu-zai-zhe-er.mp3', 'book', 'uploads/mp3/beva/9b982159238ceafebbaac259aba0e997/AU_shui-zhu-zai-zhe-er.mp3', '', 'http://story.beva.com/audio/download/10944/1', 'audio/mp3', 'mp3', '780647', 'd499c03cd3d06ffd3d9d12078d9a48e9', '', 'local', '0', '1545803732', '1545803732', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('516', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/cde0f5e08411e9ee6512095faa83a668/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10375/1', 'audio/mp3', 'mp3', '1106938', '21834dd1c203e9f52e1efdcea505071c', '', 'local', '0', '1545803732', '1545803732', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('517', '0', 'AU_Li-Lin-An-Di.mp3', 'book', 'uploads/mp3/beva/2084be61f73c53526f6359dd20e22ac6/AU_Li-Lin-An-Di.mp3', '', 'http://story.beva.com/audio/download/11248/1', 'audio/mp3', 'mp3', '507936', '14f910651138bf2fb265e2c19ff32126', '', 'local', '0', '1545803733', '1545803733', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('518', '0', 'AU_da-kai-chun-tian-de-da-men.mp3', 'book', 'uploads/mp3/beva/961eaa7f4911fd769975101843b888df/AU_da-kai-chun-tian-de-da-men.mp3', '', 'http://story.beva.com/audio/download/10766/1', 'audio/mp3', 'mp3', '521875', 'e50f6fef6f6d9329e22a8d8fb2ed00bf', '', 'local', '0', '1545803733', '1545803733', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('519', '0', 'AU_ke-ren-shen-mi-shi-zong.mp3', 'book', 'uploads/mp3/beva/997b31a61a758ee8456400695aa4419b/AU_ke-ren-shen-mi-shi-zong.mp3', '', 'http://story.beva.com/audio/download/10929/1', 'audio/mp3', 'mp3', '500129', '0f33f0b5097284bc271a1cbcf28844c2', '', 'local', '0', '1545803734', '1545803734', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('520', '0', 'AU_hao-Ke-Pa-Yao.mp3', 'book', 'uploads/mp3/beva/789ebe8e439a7a916f293669b7dbccb7/AU_hao-Ke-Pa-Yao.mp3', '', 'http://story.beva.com/audio/download/10388/1', 'audio/mp3', 'mp3', '950548', '960d34d000779a20efe5c0e0c59798e0', '', 'local', '0', '1545803734', '1545803734', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('521', '0', 'AU_Song-Shu-Zhui-Bao-Ji.mp3', 'book', 'uploads/mp3/beva/f28fe7ce28b16f4cef47de731df4f055/AU_Song-Shu-Zhui-Bao-Ji.mp3', '', 'http://story.beva.com/audio/download/11013/1', 'audio/mp3', 'mp3', '3775858', '9d5b02eae518645d2dffd09ba13b7563', '', 'local', '0', '1545803734', '1545803734', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('522', '0', 'AU_Yi-Duo-Hong-Mei-Gui.mp3', 'book', 'uploads/mp3/beva/596c446308245a9fc72abd1a3c32b6ac/AU_Yi-Duo-Hong-Mei-Gui.mp3', '', 'http://story.beva.com/audio/download/10561/1', 'audio/mp3', 'mp3', '1207044', '437cf225a3744b18d599ee19977c73cb', '', 'local', '0', '1545803734', '1545803734', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('523', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/ef4efea609cdf06cd9288847eb687730/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10310/1', 'audio/mp3', 'mp3', '614596', '6be7b60cd554a8ac3b324baa5be4b8b9', '', 'local', '0', '1545803735', '1545803735', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('524', '0', 'AU_xiao-ci-wei.mp3', 'book', 'uploads/mp3/beva/2a8b2a6da8a5582d6397c3b3d071c039/AU_xiao-ci-wei.mp3', '', 'http://story.beva.com/audio/download/10947/1', 'audio/mp3', 'mp3', '921189', '8714f89b15bbfdaff53154fadd58ad61', '', 'local', '0', '1545803736', '1545803736', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('525', '0', 'AU_mi-feng-he-hua-er-shi-hao-peng-you.mp3', 'book', 'uploads/mp3/beva/93c52e4f119c51c740a155c235b48977/AU_mi-feng-he-hua-er-shi-hao-peng-you.mp3', '', 'http://story.beva.com/audio/download/10815/1', 'audio/mp3', 'mp3', '985845', '0a01612999e3db577bae694a2003451a', '', 'local', '0', '1545803738', '1545803738', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('526', '0', 'AU_wen-guan-jun-shou-he-nan-he-bei.mp3', 'book', 'uploads/mp3/beva/cdf1d3dc499916429cab1d236d36a0da/AU_wen-guan-jun-shou-he-nan-he-bei.mp3', '', 'http://story.beva.com/audio/download/11582/1', 'audio/mp3', 'mp3', '897413', 'a9db5a10febf7780483194068d05cc99', '', 'local', '0', '1545803738', '1545803738', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('527', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/5c7aaa9c63ceab77764ac8a26fc27bda/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10459/1', 'audio/mp3', 'mp3', '1136016', '7963b792b3cd503ae2eb0ac654872ece', '', 'local', '0', '1545803741', '1545803741', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('528', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/5f716bdc318ead33d238af3c0e34c40d/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10400/1', 'audio/mp3', 'mp3', '1106070', '30ebfc17740d7684b11ff7ef51d31bea', '', 'local', '0', '1545803758', '1545803758', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('529', '0', 'AU_Deng-You-Zhou-Tai-Ge.mp3', 'book', 'uploads/mp3/beva/eae48614645cd14ccbe58bab5041483d/AU_Deng-You-Zhou-Tai-Ge.mp3', '', 'http://story.beva.com/audio/download/11164/1', 'audio/mp3', 'mp3', '404678', 'e7e9594d5bf1159857a50114a49c1038', '', 'local', '0', '1545803759', '1545803759', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('530', '0', 'AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', 'book', 'uploads/mp3/beva/bb0da364fb1b28b6f14660771de582f8/AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', '', 'http://story.beva.com/audio/download/10324/1', 'audio/mp3', 'mp3', '963228', '48cacfe3374c67b49709e4a3e8fe6ddf', '', 'local', '0', '1545803765', '1545803765', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('531', '0', 'AU_Xiang-Tiao-Jia-Chong-Jing-Gong.mp3', 'book', 'uploads/mp3/beva/04dc26b0aab121172ab4b083e35c10e2/AU_Xiang-Tiao-Jia-Chong-Jing-Gong.mp3', '', 'http://story.beva.com/audio/download/10570/1', 'audio/mp3', 'mp3', '2127430', '47281024b2eed4eb4d21bfd8e8d41d52', '', 'local', '0', '1545803766', '1545803766', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('532', '0', 'AU_Cong-Ming-De-Gu-Gui.mp3', 'book', 'uploads/mp3/beva/a538dfa1d2c39d444ee0f423818e2a0d/AU_Cong-Ming-De-Gu-Gui.mp3', '', 'http://story.beva.com/audio/download/10544/1', 'audio/mp3', 'mp3', '1824207', '41d2d52793a48eaf0e46d30074d4f0a8', '', 'local', '0', '1545803766', '1545803766', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('533', '0', 'AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', 'book', 'uploads/mp3/beva/22f2a0d372613cc310b6853182830a55/AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', '', 'http://story.beva.com/audio/download/10286/1', 'audio/mp3', 'mp3', '1278876', '2d9a027b698000e6edf394931d05ebb1', '', 'local', '0', '1545803769', '1545803769', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('534', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/72208e09f03ec55e0fc70110ba819981/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10357/1', 'audio/mp3', 'mp3', '636630', '5b3b2e7022e805ce5049fbabcf8088ac', '', 'local', '0', '1545803770', '1545803770', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('535', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/736fc41574f9f8d71e3bb9bde8f12b41/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10358/1', 'audio/mp3', 'mp3', '466564', '453bb0a7acb49664ea63d1834f379c3b', '', 'local', '0', '1545803773', '1545803773', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('536', '0', 'AU_xin-nian-zuo∩╝êσÅñΦ»ù∩╝ë.mp3', 'book', 'uploads/mp3/beva/23d795af7369f76b32456c9d275dad5f/AU_xin-nian-zuo∩╝êσÅñΦ»ù∩╝ë.mp3', '', 'http://story.beva.com/audio/download/11591/1', 'audio/mp3', 'mp3', '706037', '821d57d631dc8dbe9ce877f54900649f', '', 'local', '0', '1545803774', '1545803774', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('537', '0', 'AU_XIa-Ri-Nan-Ting-Huang-Xin-Da.mp3', 'book', 'uploads/mp3/beva/61d4d6e0089246ab072f1a25a63a3e41/AU_XIa-Ri-Nan-Ting-Huang-Xin-Da.mp3', '', 'http://story.beva.com/audio/download/11211/1', 'audio/mp3', 'mp3', '766550', '71d36a11273129abf80d665374f37786', '', 'local', '0', '1545803774', '1545803774', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('538', '0', 'AU_Deng-Lou.mp3', 'book', 'uploads/mp3/beva/ea5a429b4c11842656f3a96c818ce87f/AU_Deng-Lou.mp3', '', 'http://story.beva.com/audio/download/11157/1', 'audio/mp3', 'mp3', '729110', '593c58710f914144e9960d212d3e2b62', '', 'local', '0', '1545803776', '1545803776', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('539', '0', 'feeeef5a3ef237c2fbbe808dda3630f063976eba.jpg', 'book', 'uploads/images/beva/full/feeeef5a3ef237c2fbbe808dda3630f063976eba.jpg', '', 'https://3w.beva.cn/story/images/res/10436/ST_xiongrenhefuren205.jpg', 'image/jpeg', 'jpeg', '9366', '62be96b3a8092842ff79252d7300f31e', '', 'local', '0', '1545803777', '1545803777', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('540', '0', 'AU_yun-dong-zhe-diao-yu.mp3', 'book', 'uploads/mp3/beva/0aa9b9c410a86e168a40ce4a52f8a52e/AU_yun-dong-zhe-diao-yu.mp3', '', 'http://story.beva.com/audio/download/10971/1', 'audio/mp3', 'mp3', '796335', '880a906c78edf6cc741e252d8d22195f', '', 'local', '0', '1545803778', '1545803778', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('541', '0', 'AU_Chun-Fan-ruo-Ye-Xi.mp3', 'book', 'uploads/mp3/beva/c2241e46b1d3e2e1ddd667f2f5f95f67/AU_Chun-Fan-ruo-Ye-Xi.mp3', '', 'http://story.beva.com/audio/download/11145/1', 'audio/mp3', 'mp3', '767990', '83e0026c33cfa706122cd8005897d586', '', 'local', '0', '1545803778', '1545803778', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('542', '0', 'AU_Xue-Xa-Niao-Qun.mp3', 'book', 'uploads/mp3/beva/55201806ebe3b409f18e2ba35af347b1/AU_Xue-Xa-Niao-Qun.mp3', '', 'http://story.beva.com/audio/download/12064/3', 'audio/mp3', 'mp3', '2049689', '82ace85d73c260f20fcdaf63534c1eec', '', 'local', '0', '1545803779', '1545803779', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('543', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/a5563a488a42e787eae7c74fa6811452/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10304/1', 'audio/mp3', 'mp3', '1509704', '89f4318650d63809c7c944a9828a1d01', '', 'local', '0', '1545803779', '1545803779', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('544', '0', 'AU_Deng-Le-You-Yuan.mp3', 'book', 'uploads/mp3/beva/3749c70b552dde800af5311f0fbe43ce/AU_Deng-Le-You-Yuan.mp3', '', 'http://story.beva.com/audio/download/11152/1', 'audio/mp3', 'mp3', '416918', '163d3202a7f9af8992825b75da8878dd', '', 'local', '0', '1545803780', '1545803780', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('545', '0', 'AU_Xi-CI-Xu-Yi-Shan.mp3', 'book', 'uploads/mp3/beva/71928342e637ae8aec545a36873b0934/AU_Xi-CI-Xu-Yi-Shan.mp3', '', 'http://story.beva.com/audio/download/11217/1', 'audio/mp3', 'mp3', '656678', '2d3cee6581d1c526c53ee6313e6924cb', '', 'local', '0', '1545803780', '1545803780', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('546', '0', 'AU_Can-Liu-De-Bing-Gai.mp3', 'book', 'uploads/mp3/beva/913d03683e830d9dbcd0091bef4dbc18/AU_Can-Liu-De-Bing-Gai.mp3', '', 'http://story.beva.com/audio/download/11007/1', 'audio/mp3', 'mp3', '4205523', '69a84c58712e7a0ab2dc3f5a7a8b315c', '', 'local', '0', '1545803780', '1545803780', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('547', '0', 'AU_Gan-Yu-Qi-Yi.mp3', 'book', 'uploads/mp3/beva/bce1c893311091c928d1b8a5303ce753/AU_Gan-Yu-Qi-Yi.mp3', '', 'http://story.beva.com/audio/download/11169/1', 'audio/mp3', 'mp3', '672086', '0ae3d3b071f243260d441ca3260da1d8', '', 'local', '0', '1545803781', '1545803781', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('548', '0', '561b5946841ac836bce198e77eb7bdc329246d24.jpg', 'book', 'uploads/images/beva/full/561b5946841ac836bce198e77eb7bdc329246d24.jpg', '', 'https://3w.beva.cn/story/images/res/10717/ST_bolipingzhongdeyaoguai205213.png', 'image/jpeg', 'jpeg', '12388', '8b7dc939c86328b5bfda31be01d315c1', '', 'local', '0', '1545803781', '1545803781', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('549', '0', '57e56eeeb10b3413e412e62cae9cb10cae102ce5.jpg', 'book', 'uploads/images/beva/full/57e56eeeb10b3413e412e62cae9cb10cae102ce5.jpg', '', 'https://3w.beva.cn/story/images/res/10426/ST_shijieshangzuimeidemeiguihu.jpg', 'image/jpeg', 'jpeg', '12077', '31b0c652c59f56d8f090fd943f3eaf9e', '', 'local', '0', '1545803782', '1545803782', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('550', '0', 'AU_Song-Shu-Zhui-Bao-Ji.mp3', 'book', 'uploads/mp3/beva/246000cfbd1f8efd6cbec0ac0e5fbe0c/AU_Song-Shu-Zhui-Bao-Ji.mp3', '', 'http://story.beva.com/audio/download/10420/1', 'audio/mp3', 'mp3', '1415238', '9b0b1a386e57f942a9e603bd8fefa549', '', 'local', '0', '1545803782', '1545803782', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('551', '0', 'AU_Qing-Ming.mp3', 'book', 'uploads/mp3/beva/14156234625b6ec3c9df19edf0623e50/AU_Qing-Ming.mp3', '', 'http://story.beva.com/audio/download/11275/1', 'audio/mp3', 'mp3', '495797', '79e42f34e9b31490055f876505e13367', '', 'local', '0', '1545803782', '1545803782', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('552', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/e314fd43948620e97c4194788b7c8dc7/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10380/1', 'audio/mp3', 'mp3', '1106938', '9af4fe6240679d6c7a3f162d02a18d6c', '', 'local', '0', '1545803782', '1545803782', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('553', '0', 'AU_Xia-Tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/adbf032588d673472abfe8228c5e8472/AU_Xia-Tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10391/1', 'audio/mp3', 'mp3', '1509704', '9f2a943bcf186d4178791b69df47e266', '', 'local', '0', '1545803782', '1545803782', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('554', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/4090f863fe2ee694d64092673d37a790/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10352/1', 'audio/mp3', 'mp3', '636630', 'fa5a484082d7b553d706411a52f50ba9', '', 'local', '0', '1545803783', '1545803783', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('555', '0', 'AU_Guan-Shan-Yue.mp3', 'book', 'uploads/mp3/beva/4c5dfe410de1878597b2b730e4b678a8/AU_Guan-Shan-Yue.mp3', '', 'http://story.beva.com/audio/download/11189/1', 'audio/mp3', 'mp3', '820406', '69e36e2b19cad78b9e76d8af39dba7cb', '', 'local', '0', '1545803784', '1545803784', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('556', '0', 'AU_Hu-Li-He-Wu-Ya.mp3', 'book', 'uploads/mp3/beva/b1e0a158fd6f0ac399edccd6bc6e3379/AU_Hu-Li-He-Wu-Ya.mp3', '', 'http://story.beva.com/audio/download/10548/1', 'audio/mp3', 'mp3', '912564', '8a50cba59d6b142368433528a4ef5153', '', 'local', '0', '1545803784', '1545803784', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('557', '0', 'AU_Shen-Qi-De-Bai-Hu-Shu.mp3', 'book', 'uploads/mp3/beva/9b39fa73348a5e6743ff843a47e102a5/AU_Shen-Qi-De-Bai-Hu-Shu.mp3', '', 'http://story.beva.com/audio/download/10350/1', 'audio/mp3', 'mp3', '1566584', '55f66585e2928d0f5612adaaff88ac4f', '', 'local', '0', '1545803785', '1545803785', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('558', '0', 'AU_Bai-Shan-Que.mp3', 'book', 'uploads/mp3/beva/213758bef8d331368a7d4e7d28ecca3d/AU_Bai-Shan-Que.mp3', '', 'http://story.beva.com/audio/download/10296/1', 'audio/mp3', 'mp3', '509042', '2e69fd57ae550933f64c2f1b68d5bfdc', '', 'local', '0', '1545803785', '1545803785', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('559', '0', 'AU_Xiong-Bei-Xia-Si-Le.mp3', 'book', 'uploads/mp3/beva/bf01964010c0e3606912099ccda41ed4/AU_Xiong-Bei-Xia-Si-Le.mp3', '', 'http://story.beva.com/audio/download/10384/1', 'audio/mp3', 'mp3', '1185126', '5766d9c01d43293e4b77ee5c234af43c', '', 'local', '0', '1545803786', '1545803786', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('560', '0', 'AU_Song-Shu-Kai-Hun.mp3', 'book', 'uploads/mp3/beva/efd184968123fff0e10bbbc6dcb96a9b/AU_Song-Shu-Kai-Hun.mp3', '', 'http://story.beva.com/audio/download/10334/1', 'audio/mp3', 'mp3', '633172', 'e669a0bfed14e4609abe3153c686f58c', '', 'local', '0', '1545803786', '1545803786', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('561', '0', 'AU_Tu-Zi-Shang-Shu.mp3', 'book', 'uploads/mp3/beva/56a9fc51ce813fc1e68b30352e943ce1/AU_Tu-Zi-Shang-Shu.mp3', '', 'http://story.beva.com/audio/download/10342/1', 'audio/mp3', 'mp3', '2039620', '2896881348fbed7521220291f2475d4e', '', 'local', '0', '1545803787', '1545803787', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('562', '0', 'AU_Sen-Ling-De-Dong-Jing.mp3', 'book', 'uploads/mp3/beva/e5611102ce15e1daed21e51b265c4c62/AU_Sen-Ling-De-Dong-Jing.mp3', '', 'http://story.beva.com/audio/download/10291/1', 'audio/mp3', 'mp3', '1254390', '005cfd499f8d7b638791c216a045cc61', '', 'local', '0', '1545803787', '1545803787', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('563', '0', 'AU_Sen-Lin-Li-Leng-a-TAi-Leng-Le.mp3', 'book', 'uploads/mp3/beva/f073c4677a45fdfa60ecfce78ca3c115/AU_Sen-Lin-Li-Leng-a-TAi-Leng-Le.mp3', '', 'http://story.beva.com/audio/download/10343/1', 'audio/mp3', 'mp3', '824702', '628d934117718577ce809a56ad073be3', '', 'local', '0', '1545803787', '1545803787', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('564', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/1a756129d0f2a71dce1a6916f47d66cf/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10306/1', 'audio/mp3', 'mp3', '1509704', 'e47cb3c685ec968a0f4d05c4487b1ee4', '', 'local', '0', '1545803788', '1545803788', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('565', '0', '56e95761f67fd9f417f4679c7653688538ed6da4.jpg', 'book', 'uploads/images/beva/full/56e95761f67fd9f417f4679c7653688538ed6da4.jpg', '', 'https://3w.beva.cn/story/images/res/10048/ST_dong-shi-xiao-ping.jpg', 'image/jpeg', 'jpeg', '6970', '72f50988d055b6fb4c2c1d58238f490d', '', 'local', '0', '1545803790', '1545803790', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('566', '0', 'AU_Chou-Zhang-Shao-Fu.mp3', 'book', 'uploads/mp3/beva/ea8c98995db60c58a602e1e119de03d1/AU_Chou-Zhang-Shao-Fu.mp3', '', 'http://story.beva.com/audio/download/11130/1', 'audio/mp3', 'mp3', '608438', '51842f0f42ba5b9a023a6db5fecdc627', '', 'local', '0', '1545803790', '1545803790', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('567', '0', 'AU_you-qu-de-zhi-wu.mp3', 'book', 'uploads/mp3/beva/8b571ac3a87675ef29b57e642209d40d/AU_you-qu-de-zhi-wu.mp3', '', 'http://story.beva.com/audio/download/10966/1', 'audio/mp3', 'mp3', '807279', 'a709587e3a1282faabf5b9d373de8d99', '', 'local', '0', '1545803791', '1545803791', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('568', '0', 'AU_CHi-Bi.mp3', 'book', 'uploads/mp3/beva/2031707cc1929ef3ef6a7746156f77a4/AU_CHi-Bi.mp3', '', 'http://story.beva.com/audio/download/11124/1', 'audio/mp3', 'mp3', '466757', '6336151e7ef53c34d8ceeac96697b7d6', '', 'local', '0', '1545803792', '1545803792', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('569', '0', 'AU_Bai-Shan-Que.mp3', 'book', 'uploads/mp3/beva/6597499f3afe9dbf0d679fd5191ec183/AU_Bai-Shan-Que.mp3', '', 'http://story.beva.com/audio/download/10373/1', 'audio/mp3', 'mp3', '509042', 'f94e49e00f5532601c8a8babd55319bb', '', 'local', '0', '1545803793', '1545803793', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('570', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/0afacfc74ec0fdb502f9bbaf529f7d86/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10307/1', 'audio/mp3', 'mp3', '1509704', 'a42cb0efe61dc212d6632d70bccc49d9', '', 'local', '0', '1545803794', '1545803794', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('571', '0', 'AU_tian-kong-chuan-lai-le-la-ba-sheng.mp3', 'book', 'uploads/mp3/beva/4ea062450d55eef5b8f7f570e71a6c12/AU_tian-kong-chuan-lai-le-la-ba-sheng.mp3', '', 'http://story.beva.com/audio/download/10723/1', 'audio/mp3', 'mp3', '696129', 'e2ebb3819b4412c0fd610e3e2fbab94b', '', 'local', '0', '1545803794', '1545803794', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('572', '0', 'AU_Chun-Ri.mp3', 'book', 'uploads/mp3/beva/fefa3282698f73ef8cac8d4a9f31430f/AU_Chun-Ri.mp3', '', 'http://story.beva.com/audio/download/11238/1', 'audio/mp3', 'mp3', '501888', 'd8e7e27005421b0f03cac385da3236ee', '', 'local', '0', '1545803795', '1545803795', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('573', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/b5bd7cfab90eba1aee151995c4fca40e/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10312/1', 'audio/mp3', 'mp3', '614596', '19ab8cb31523b31680b76f1d55e9bf2d', '', 'local', '0', '1545803796', '1545803796', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('574', '0', '3a7e8d648aa0bedc2e74b82344f4f595a73ecb5c.jpg', 'book', 'uploads/images/beva/full/3a7e8d648aa0bedc2e74b82344f4f595a73ecb5c.jpg', '', 'https://3w.beva.cn/story/images/res/10439/ST_shaguahansi205213.png', 'image/jpeg', 'jpeg', '9988', 'bb4ddbc0fc082071e71f887df8cc0857', '', 'local', '0', '1545803796', '1545803796', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('575', '0', 'AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', 'book', 'uploads/mp3/beva/5e20fe07fabf66a5a550a541007e6230/AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', '', 'http://story.beva.com/audio/download/10365/1', 'audio/mp3', 'mp3', '632892', '495643cd26feebb067d07a0bd9ee3604', '', 'local', '0', '1545803797', '1545803797', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('576', '0', 'AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', 'book', 'uploads/mp3/beva/63b187a6b87a1b35b42a3a31e3bd2205/AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', '', 'http://story.beva.com/audio/download/10314/1', 'audio/mp3', 'mp3', '709356', '2dcefb8051838caf4dad434d28ca0341', '', 'local', '0', '1545803798', '1545803798', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('577', '0', 'AU_Bing-Che-Xing.mp3', 'book', 'uploads/mp3/beva/1fb7f2465064d811d5a574bc41c48747/AU_Bing-Che-Xing.mp3', '', 'http://story.beva.com/audio/download/11257/1', 'audio/mp3', 'mp3', '2538693', '2ff30b2b407285304796432254d5d37f', '', 'local', '0', '1545803798', '1545803798', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('578', '0', 'AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', 'book', 'uploads/mp3/beva/fbf5ada066b12ff2295987e57e3dae66/AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', '', 'http://story.beva.com/audio/download/10371/1', 'audio/mp3', 'mp3', '1708422', 'a93070011b244894b074f015037d83a4', '', 'local', '0', '1545803799', '1545803799', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('579', '0', 'AU_Hao-Qi-De-Yan.mp3', 'book', 'uploads/mp3/beva/e94ac105a17c91cd36cae0c21dc822cd/AU_Hao-Qi-De-Yan.mp3', '', 'http://story.beva.com/audio/download/10398/1', 'audio/mp3', 'mp3', '1193332', 'fdd4a5ca7eb6a90690283d757111a74e', '', 'local', '0', '1545803800', '1545803800', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('580', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/d2c826834de8884ea2c5aa8401af9c0c/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10311/1', 'audio/mp3', 'mp3', '614596', '49cb29f603e31ab1de70a741a295ce43', '', 'local', '0', '1545803802', '1545803802', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('581', '0', 'AU_lu-shan-yao-ji-lu-shi-yu-xu-zhou.mp3', 'book', 'uploads/mp3/beva/e1301fc7c5ab1f50a7214104c322e23f/AU_lu-shan-yao-ji-lu-shi-yu-xu-zhou.mp3', '', 'http://story.beva.com/audio/download/11425/1', 'audio/mp3', 'mp3', '2296048', 'f6b76ba68ea1fb693fd0366892d81148', '', 'local', '0', '1545803803', '1545803803', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('582', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/679308fa57232ab6537467647eab5c93/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10464/1', 'audio/mp3', 'mp3', '1136016', 'ac5a630173920279035754b32a29d39f', '', 'local', '0', '1545803804', '1545803804', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('583', '0', 'AU_Xia-Tian-Kai-Shi-Le.mp3', 'book', 'uploads/mp3/beva/4798dec7c41848fee24188187dee0d5c/AU_Xia-Tian-Kai-Shi-Le.mp3', '', 'http://story.beva.com/audio/download/10394/1', 'audio/mp3', 'mp3', '691774', '6242343518a205b98d89388dc432adcb', '', 'local', '0', '1545803805', '1545803805', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('584', '0', 'AU_Hao-Qi-De-Yan.mp3', 'book', 'uploads/mp3/beva/1528dc3bb8634c5cf653de478e0597de/AU_Hao-Qi-De-Yan.mp3', '', 'http://story.beva.com/audio/download/10396/1', 'audio/mp3', 'mp3', '1193332', 'c005ee9a323a8b1150340ffed8b496c0', '', 'local', '0', '1545803805', '1545803805', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('585', '0', 'AU_Gan-Yu-Qi-Er.mp3', 'book', 'uploads/mp3/beva/d5edc47b4c2222d5b91cb51a16998cc0/AU_Gan-Yu-Qi-Er.mp3', '', 'http://story.beva.com/audio/download/11178/1', 'audio/mp3', 'mp3', '766550', '9aa0032d97f5d872ac4367166a8e7ef0', '', 'local', '0', '1545803806', '1545803806', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('586', '0', 'AU_Tu-Zi-Shang-Shu.mp3', 'book', 'uploads/mp3/beva/5c1dae1c9ef58e6b5bcc4859b6bcf149/AU_Tu-Zi-Shang-Shu.mp3', '', 'http://story.beva.com/audio/download/10340/1', 'audio/mp3', 'mp3', '2039620', '3e037ffe8287219871b06c40b2f31bd0', '', 'local', '0', '1545803807', '1545803807', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('587', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/58ba7312b38d14f75286e2fdab9fdd82/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10332/1', 'audio/mp3', 'mp3', '1300036', 'c68d0f145d798d67620bb0dcfb0c808a', '', 'local', '0', '1545803807', '1545803807', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('588', '0', 'AU_Shen-Qi-De-Bai-Hu-Shu.mp3', 'book', 'uploads/mp3/beva/e4d5a34f95a688f96a7e1dabc0b1c2a7/AU_Shen-Qi-De-Bai-Hu-Shu.mp3', '', 'http://story.beva.com/audio/download/10351/1', 'audio/mp3', 'mp3', '1566584', 'e0cd92642779f57f1636e7c6dbfca302', '', 'local', '0', '1545803809', '1545803809', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('589', '0', 'AU_qiaomai.MP3', 'book', 'uploads/mp3/beva/1ab7e177d29a0c3b98da746d03250a04/AU_qiaomai.MP3', '', 'http://story.beva.com/audio/download/10182/1', 'audio/mp3', 'mp3', '6436169', '49491d28b829d2093bcb988a4452f493', '', 'local', '0', '1545803810', '1545803810', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('590', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/54561526f602e5dc37beaafb7c291722/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10354/1', 'audio/mp3', 'mp3', '636630', 'a07823f436b2a4aa0be922e60b6f7671', '', 'local', '0', '1545803810', '1545803810', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('591', '0', 'AU_Xi-Ju.mp3', 'book', 'uploads/mp3/beva/3a4c84e32c7d6d5f450bcb968940531a/AU_Xi-Ju.mp3', '', 'http://story.beva.com/audio/download/11224/1', 'audio/mp3', 'mp3', '611909', 'b07d966eb1e1d07689f6ed29567033fa', '', 'local', '0', '1545803810', '1545803810', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('592', '0', 'AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', 'book', 'uploads/mp3/beva/6fd6aa3699287fb9b8c6b19b550d265f/AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', '', 'http://story.beva.com/audio/download/10434/1', 'audio/mp3', 'mp3', '724620', '47af7f71c68223ccd4a9f1fc7b1fec2b', '', 'local', '0', '1545803810', '1545803810', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('593', '0', 'AU_shui-you-guo-lai-le.mp3', 'book', 'uploads/mp3/beva/a83de47f362aff92fe38893cf8959b24/AU_shui-you-guo-lai-le.mp3', '', 'http://story.beva.com/audio/download/10714/1', 'audio/mp3', 'mp3', '1721545', 'ea3004f2a8d40cf2337e126870e772d4', '', 'local', '0', '1545803811', '1545803811', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('594', '0', 'AU_Bai-Xue-Ge-Song-Wu-Pan-Guan-Gui-Jing-over.mp3', 'book', 'uploads/mp3/beva/be64e4c3eda8733c198ff1b4e31615ad/AU_Bai-Xue-Ge-Song-Wu-Pan-Guan-Gui-Jing-over.mp3', '', 'http://story.beva.com/audio/download/11255/1', 'audio/mp3', 'mp3', '1610613', '33ccab4190ba24d2a7b76a21083f6ee6', '', 'local', '0', '1545803812', '1545803812', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('595', '0', 'AU_JIn-Ling-Jiu-Si-Liu-Bie.mp3', 'book', 'uploads/mp3/beva/91699498f00e1b4313bbfd9d544a171c/AU_JIn-Ling-Jiu-Si-Liu-Bie.mp3', '', 'http://story.beva.com/audio/download/11204/1', 'audio/mp3', 'mp3', '586838', '4826087344b0d6e08ce6162d0e6ea066', '', 'local', '0', '1545803813', '1545803813', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('596', '0', 'AU_shui-de-zhu-zhai-zui-hao.mp3', 'book', 'uploads/mp3/beva/37507461eee4a9a4796cbff2b81be2a8/AU_shui-de-zhu-zhai-zui-hao.mp3', '', 'http://story.beva.com/audio/download/10942/1', 'audio/mp3', 'mp3', '1323665', '8d1bd46efe665083dadece144ce77245', '', 'local', '0', '1545803813', '1545803813', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('597', '0', 'AU_Ji-Quan-Jiao-Shan-Zhong-Dao-Shi.mp3', 'book', 'uploads/mp3/beva/cb9846edf7ba36098f0924a28bf7e082/AU_Ji-Quan-Jiao-Shan-Zhong-Dao-Shi.mp3', '', 'http://story.beva.com/audio/download/11205/1', 'audio/mp3', 'mp3', '627590', 'a67c379e4ac6cd6ed54b41cf1450639f', '', 'local', '0', '1545803814', '1545803814', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('598', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/fb14cf4a59d03f13407160232b6df478/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10412/1', 'audio/mp3', 'mp3', '1106070', '2727a5afff9bafbd1316ec121ebbb46e', '', 'local', '0', '1545803815', '1545803815', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('599', '0', 'AU_Bai-Shan-Que.mp3', 'book', 'uploads/mp3/beva/41ac204d050fafa25c54962a4ffb0e3a/AU_Bai-Shan-Que.mp3', '', 'http://story.beva.com/audio/download/10372/1', 'audio/mp3', 'mp3', '509042', 'e582f1c5199dd6ddc56fb3f5ebd1d3c1', '', 'local', '0', '1545803815', '1545803815', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('600', '0', 'AU_Xue-Shang-Bing-Ke.mp3', 'book', 'uploads/mp3/beva/d8698963a3f20cbfcf15f2c9610f1888/AU_Xue-Shang-Bing-Ke.mp3', '', 'http://story.beva.com/audio/download/10513/1', 'audio/mp3', 'mp3', '1442164', 'e48a93b0a75b6c88f57b3246f3c24dce', '', 'local', '0', '1545803820', '1545803820', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('601', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/8cb9d7ff4b730d5e05dc11823631234c/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10376/1', 'audio/mp3', 'mp3', '1106938', '532e788515b688f32ca7daeae47b480c', '', 'local', '0', '1545803821', '1545803821', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('602', '0', 'AU_Sen-Ling-De-Dong-Jing.mp3', 'book', 'uploads/mp3/beva/623e77c9d43a9b784a505b5d902eea8d/AU_Sen-Ling-De-Dong-Jing.mp3', '', 'http://story.beva.com/audio/download/10348/1', 'audio/mp3', 'mp3', '1254390', '7c96ac33131d708a1efc942077ff7be9', '', 'local', '0', '1545803821', '1545803821', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('603', '0', 'AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', 'book', 'uploads/mp3/beva/e74a7a576f2561e7c94d6a058bc05b17/AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', '', 'http://story.beva.com/audio/download/10366/1', 'audio/mp3', 'mp3', '632892', '69875a5abbdfea06c11fd922ae8c0646', '', 'local', '0', '1545803822', '1545803822', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('604', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/9133fae8f532e541f166b534f8e6ef2d/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10329/1', 'audio/mp3', 'mp3', '1300036', '9122b16b223abc19873c417013d9f65a', '', 'local', '0', '1545803822', '1545803822', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('605', '0', 'AU_Shi-Chong-Hua.mp3', 'book', 'uploads/mp3/beva/d1ca7328a10a7a0af8dd75fe30dcc125/AU_Shi-Chong-Hua.mp3', '', 'http://story.beva.com/audio/download/10410/1', 'audio/mp3', 'mp3', '858386', 'e0b789c65f8ae9f78f2d152e96c921d5', '', 'local', '0', '1545803823', '1545803823', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('606', '0', 'AU_xi-que.mp3', 'book', 'uploads/mp3/beva/3ab9f880d44220d704ffe7d5f1bb23fb/AU_xi-que.mp3', '', 'http://story.beva.com/audio/download/10865/1', 'audio/mp3', 'mp3', '1228339', 'ca2e439251ac9bc7c5dfc83587621480', '', 'local', '0', '1545803824', '1545803824', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('607', '0', 'AU_xingxingyinyuan.MP3', 'book', 'uploads/mp3/beva/5c43e6c33fc97f73f08219e25fdfc756/AU_xingxingyinyuan.MP3', '', 'http://story.beva.com/audio/download/10083/1', 'audio/mp3', 'mp3', '806109', '7b5c5a4dbd9f5d76207dc266c5dfb003', '', 'local', '0', '1545803824', '1545803824', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('608', '0', '22d21cb4864776882b4231c9f403bb1663bda055.jpg', 'book', 'uploads/images/beva/full/22d21cb4864776882b4231c9f403bb1663bda055.jpg', '', 'https://3w.beva.cn/story/images/res/10673/ST_xingxingyinyuan205.jpg', 'image/jpeg', 'jpeg', '7302', '2459912164d319c1c719ab075a74ecbc', '', 'local', '0', '1545803824', '1545803824', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('609', '0', 'AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', 'book', 'uploads/mp3/beva/78e6b53f414c04f1e5f4cbdd74cefd44/AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', '', 'http://story.beva.com/audio/download/10433/1', 'audio/mp3', 'mp3', '724620', '5df9ff9ac10944bb3f1b1a49989b3e89', '', 'local', '0', '1545803826', '1545803826', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('610', '0', 'AU_Song-Shu-Zhui-Bao-Ji.mp3', 'book', 'uploads/mp3/beva/c5a7c5642da04906822eb571e4312565/AU_Song-Shu-Zhui-Bao-Ji.mp3', '', 'http://story.beva.com/audio/download/10419/1', 'audio/mp3', 'mp3', '1415238', '04943809b9e1a411daccaf48c69d4745', '', 'local', '0', '1545803826', '1545803826', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('611', '0', 'AU_Shi-Chong-Hua.mp3', 'book', 'uploads/mp3/beva/b98dc1644a3d4487aa297cfcde7ac033/AU_Shi-Chong-Hua.mp3', '', 'http://story.beva.com/audio/download/10407/1', 'audio/mp3', 'mp3', '858386', '1dc88358e63a201e47f6d5bafa60a088', '', 'local', '0', '1545803826', '1545803826', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('612', '0', 'AU_Wu-Song.mp3', 'book', 'uploads/mp3/beva/b7f5ef104700e46ff3718054bb61ebe8/AU_Wu-Song.mp3', '', 'http://story.beva.com/audio/download/10505/1', 'audio/mp3', 'mp3', '867024', '6f1a29e62e7832f8dafcf54ce3f9781c', '', 'local', '0', '1545803828', '1545803828', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('613', '0', 'AU_Xiong-Bei-Xia-Si-Le.mp3', 'book', 'uploads/mp3/beva/bb40551de0ea099309128cf3af2ec035/AU_Xiong-Bei-Xia-Si-Le.mp3', '', 'http://story.beva.com/audio/download/10383/1', 'audio/mp3', 'mp3', '1185126', 'e01c702305be14670ee2f900a6fa5ece', '', 'local', '0', '1545803828', '1545803828', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('614', '0', 'AU_Tu-Zi-De-Hua-Zhao.mp3', 'book', 'uploads/mp3/beva/3cd814a865c192c1085a399a4af96b47/AU_Tu-Zi-De-Hua-Zhao.mp3', '', 'http://story.beva.com/audio/download/10430/1', 'audio/mp3', 'mp3', '3326982', '9ec6fa7242f203579653cfeb614bb1d7', '', 'local', '0', '1545803829', '1545803829', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('615', '0', 'AU_Meng-You-Tian-Mu-Yin-Liu-Bie-over.mp3', 'book', 'uploads/mp3/beva/389906d46a8f9117b146b4cce08ad918/AU_Meng-You-Tian-Mu-Yin-Liu-Bie-over.mp3', '', 'http://story.beva.com/audio/download/11308/1', 'audio/mp3', 'mp3', '3366261', '32463098dd901c37b6a03b92fa347983', '', 'local', '0', '1545803829', '1545803829', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('616', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/2d3acd00a1c567f54e467b77993102de/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10379/1', 'audio/mp3', 'mp3', '1106938', 'a45d748b1e0e7ec4e503d14f4c97e570', '', 'local', '0', '1545803830', '1545803830', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('617', '0', 'AU_Xue-Shang-Bing-Ke.mp3', 'book', 'uploads/mp3/beva/e2ca46057defe897875f5ab12cf35a24/AU_Xue-Shang-Bing-Ke.mp3', '', 'http://story.beva.com/audio/download/10512/1', 'audio/mp3', 'mp3', '1442164', '3d2ffc515c2f45547a8200a155a8abc0', '', 'local', '0', '1545803832', '1545803832', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('618', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/b1c5bafb1684ae3fbc0ee85597f7f4fc/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10333/1', 'audio/mp3', 'mp3', '1300036', 'b554798a55fd8160e81f87cb9bd33e2e', '', 'local', '0', '1545803832', '1545803832', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('619', '0', 'AU_Hao-Qi-De-Yan.mp3', 'book', 'uploads/mp3/beva/df33725dc64a17e054bb45a81b74e591/AU_Hao-Qi-De-Yan.mp3', '', 'http://story.beva.com/audio/download/10397/1', 'audio/mp3', 'mp3', '1193332', '5b9e3a46becc5f57551679ed2d120906', '', 'local', '0', '1545803832', '1545803832', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('620', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/32ebd93fb5318c944077d5ccbc06db78/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10359/1', 'audio/mp3', 'mp3', '466564', 'edf74a24a3a3c8dbebf858a04558282b', '', 'local', '0', '1545803834', '1545803834', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('621', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/76e4f92684a47cc9e076b459c0f159e4/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10353/1', 'audio/mp3', 'mp3', '636630', '438087d4397cd4ab68daf50ab2f27dec', '', 'local', '0', '1545803834', '1545803834', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('622', '0', 'AU_Song-Shu-Zhui-Bao-Ji.mp3', 'book', 'uploads/mp3/beva/2253d699a6706be489263653fc0b9f9a/AU_Song-Shu-Zhui-Bao-Ji.mp3', '', 'http://story.beva.com/audio/download/10422/1', 'audio/mp3', 'mp3', '1415238', '845f73f2bc533be1f5364e523bfba795', '', 'local', '0', '1545803835', '1545803835', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('623', '0', '534e6094eb7fcc0eedf79cdd1b14f3caee39c393.jpg', 'book', 'uploads/images/beva/full/534e6094eb7fcc0eedf79cdd1b14f3caee39c393.jpg', '', 'https://3w.beva.cn/story/images/res/10472/ST_yanmuouxideren205.jpg', 'image/jpeg', 'jpeg', '11944', 'b1863f9781083a753fae4d8b9bb03bcd', '', 'local', '0', '1545803836', '1545803836', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('624', '0', 'AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', 'book', 'uploads/mp3/beva/cad8f04c52be4942dac69421519c8c92/AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', '', 'http://story.beva.com/audio/download/10368/1', 'audio/mp3', 'mp3', '1708422', '2a008dc64ef5b1837df06e59a7bf1657', '', 'local', '0', '1545803838', '1545803838', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('625', '0', 'AU_Xiong-Bei-Xia-Si-Le.mp3', 'book', 'uploads/mp3/beva/ebd38ce2b0b51afcfd09cf83ffe263d8/AU_Xiong-Bei-Xia-Si-Le.mp3', '', 'http://story.beva.com/audio/download/10381/1', 'audio/mp3', 'mp3', '1185126', '5a991586ac572551f16fd180f8b2e48c', '', 'local', '0', '1545803838', '1545803838', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('626', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/c534b54ed07e872022858a30871549f9/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10377/1', 'audio/mp3', 'mp3', '1106938', '370aa807d4021f18dde23950507de2b9', '', 'local', '0', '1545803838', '1545803838', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('627', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/407520f73a69ee87d01d3b1c3181706b/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10460/1', 'audio/mp3', 'mp3', '1136016', '6f7ab6196602a0c75a84707909335ff2', '', 'local', '0', '1545803838', '1545803838', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('628', '0', 'AU_Bu-Gu-Niao-Jiao-Le.mp3', 'book', 'uploads/mp3/beva/1d9acfc6da7f282d1f10cad772886fc0/AU_Bu-Gu-Niao-Jiao-Le.mp3', '', 'http://story.beva.com/audio/download/10300/1', 'audio/mp3', 'mp3', '519270', 'f571363ad12dc62a1ef7aad58cf216d4', '', 'local', '0', '1545803839', '1545803839', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('629', '0', 'AU_Qin-Ge-over.mp3', 'book', 'uploads/mp3/beva/e27c8b2d3491ce19d7a72568685015b4/AU_Qin-Ge-over.mp3', '', 'http://story.beva.com/audio/download/11271/1', 'audio/mp3', 'mp3', '1019061', 'd0e87e499d972fbac25445382eec3e8b', '', 'local', '0', '1545803839', '1545803839', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('630', '0', 'AU_Sen-Ling-De-Dong-Jing.mp3', 'book', 'uploads/mp3/beva/4ffd9d36c54eb7b4acfa3bca26c20a5a/AU_Sen-Ling-De-Dong-Jing.mp3', '', 'http://story.beva.com/audio/download/10349/1', 'audio/mp3', 'mp3', '1254390', '8306dcdc3987e71089f6f15c2b513701', '', 'local', '0', '1545803840', '1545803840', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('631', '0', 'AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', 'book', 'uploads/mp3/beva/7dc2efd5179fc0ed9066ba4ceb0ab939/AU_Kong-Zhong-piao-Lai-Yi-Zhong-Yun-Tuan.mp3', '', 'http://story.beva.com/audio/download/10313/1', 'audio/mp3', 'mp3', '709356', '2c6d13edf91c3e49fcf9f573792c553b', '', 'local', '0', '1545803841', '1545803841', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('632', '0', 'AU_hao-Ke-Pa-Yao.mp3', 'book', 'uploads/mp3/beva/85ff5c1ede5c243382c41188459ce336/AU_hao-Ke-Pa-Yao.mp3', '', 'http://story.beva.com/audio/download/10385/1', 'audio/mp3', 'mp3', '950548', '52a7bf908f0dba3b74c3d192b2d4a92d', '', 'local', '0', '1545803841', '1545803841', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('633', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/a64b5757a3b667facad39bac4e6d97e8/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10323/1', 'audio/mp3', 'mp3', '1397814', '70ad2112d1e2aea231718befcc868c0b', '', 'local', '0', '1545803843', '1545803843', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('634', '0', 'AU_Yuan-Ri.mp3', 'book', 'uploads/mp3/beva/03aa8441001a1c8b7f2e25fddf467f50/AU_Yuan-Ri.mp3', '', 'http://story.beva.com/audio/download/11443/1', 'audio/mp3', 'mp3', '510917', 'e6de559410e0d50a1018994a470c0f09', '', 'local', '0', '1545803843', '1545803843', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('635', '0', 'cd27213791448c7186ea975c609853f6ca7aa979.jpg', 'book', 'uploads/images/beva/full/cd27213791448c7186ea975c609853f6ca7aa979.jpg', '', 'https://3w.beva.cn/story/images/res/10493/ST_meioguigongzhu205.jpg', 'image/jpeg', 'jpeg', '9600', '2cb3b46c8eb463f038d8dff6ac71d4d2', '', 'local', '0', '1545803843', '1545803843', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('636', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/827612ad3c92195bd6f3789c933e4f22/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10331/1', 'audio/mp3', 'mp3', '1300036', '7d5c5e9a58872e589003aff2355f4d07', '', 'local', '0', '1545803850', '1545803850', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('637', '0', 'AU_chun-tian-li-de-xiao-hua-zhao.mp3', 'book', 'uploads/mp3/beva/28ac870425b654b603b49bcd9e239ded/AU_chun-tian-li-de-xiao-hua-zhao.mp3', '', 'http://story.beva.com/audio/download/10704/1', 'audio/mp3', 'mp3', '836957', '298bc3d7528760c3e268aed828c34984', '', 'local', '0', '1545803851', '1545803851', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('638', '0', 'AU_Sha-Mo-De-Hui-Ying.mp3', 'book', 'uploads/mp3/beva/63ce32082d9bbbc42943d0c732ce6dfe/AU_Sha-Mo-De-Hui-Ying.mp3', '', 'http://story.beva.com/audio/download/10417/1', 'audio/mp3', 'mp3', '844710', '6f07ffba40f27087fa837383044255ce', '', 'local', '0', '1545803851', '1545803851', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('639', '0', 'AU_Sen-Lin-De-Jiu-Yue.mp3', 'book', 'uploads/mp3/beva/36fbb75e36f045358f042d2ed90606bd/AU_Sen-Lin-De-Jiu-Yue.mp3', '', 'http://story.beva.com/audio/download/10406/1', 'audio/mp3', 'mp3', '1212054', 'ad291b72efb1a539691c7ffd57e48844', '', 'local', '0', '1545803852', '1545803852', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('640', '0', 'AU_hao-Ke-Pa-Yao.mp3', 'book', 'uploads/mp3/beva/1aca28335ce8b60d5b8f9b85ea15ceff/AU_hao-Ke-Pa-Yao.mp3', '', 'http://story.beva.com/audio/download/10392/1', 'audio/mp3', 'mp3', '950548', 'fb8b96068c0fe4552e9c86a991718ec1', '', 'local', '0', '1545803854', '1545803854', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('641', '0', 'AU_Xia-Tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/ae8f92987d0686b1795c881be67f4043/AU_Xia-Tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10387/1', 'audio/mp3', 'mp3', '1509704', '0f39b41dab099ec8df9945e317c25c74', '', 'local', '0', '1545803854', '1545803854', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('642', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/2496bdc4221f816592459c292c3c97de/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10462/1', 'audio/mp3', 'mp3', '1136016', 'f8b218aa69a87911e83e5115e4b0bab1', '', 'local', '0', '1545803854', '1545803854', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('643', '0', 'AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', 'book', 'uploads/mp3/beva/c8d6c24ddd93378320a6f88ef12f14ef/AU_Zhi-Zhu-Feng-Xing-Yuan.mp3', '', 'http://story.beva.com/audio/download/10369/1', 'audio/mp3', 'mp3', '1708422', '246bb2236d694e53f3ac84aaf1c744a3', '', 'local', '0', '1545803859', '1545803859', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('644', '0', 'AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', 'book', 'uploads/mp3/beva/ec24c99af0f82d16599d1f92c5328713/AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', '', 'http://story.beva.com/audio/download/10347/1', 'audio/mp3', 'mp3', '1487240', '330745c5fa58dfea1bb8bd53a57ebc99', '', 'local', '0', '1545803860', '1545803860', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('645', '0', 'AU_Xia-Tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/71646b7d19d8adfd764012040de20640/AU_Xia-Tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10386/1', 'audio/mp3', 'mp3', '1509704', '85b77b06fbad8eb820c2842dce40306e', '', 'local', '0', '1545803860', '1545803860', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('646', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/f73f2133034de323909a44c59e175fa9/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10363/1', 'audio/mp3', 'mp3', '466564', '6ac695398771835eb63182e0765382a9', '', 'local', '0', '1545803860', '1545803860', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('647', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/599e111ae9aa99901d0a210b53d2f656/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10322/1', 'audio/mp3', 'mp3', '1397814', '28f8947ac1787325488befb14f02f23f', '', 'local', '0', '1545803860', '1545803860', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('648', '0', 'AU_shi-can.mp3', 'book', 'uploads/mp3/beva/d2a41b1e866343290ac0ff54a34ad90b/AU_shi-can.mp3', '', 'http://story.beva.com/audio/download/10789/1', 'audio/mp3', 'mp3', '766953', '9af45188247972d592ebd147e3e6069b', '', 'local', '0', '1545803862', '1545803862', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('649', '0', 'AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', 'book', 'uploads/mp3/beva/6e8aeb79cbb3d3e777ae712c5de56d66/AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', '', 'http://story.beva.com/audio/download/11684/3', 'audio/mp3', 'mp3', '632892', 'bf433f38686f961a07b56fe3642bcc64', '', 'local', '0', '1545803863', '1545803863', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('650', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/2d3b261ca8f16636df8d613a1eb46334/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10328/1', 'audio/mp3', 'mp3', '1300036', '62fc601cd32917aa3e0bb03e34fbe30d', '', 'local', '0', '1545803864', '1545803864', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('651', '0', 'AU_Za-Ji-Yan-Yuan-Zhen-Li-Hai.mp3', 'book', 'uploads/mp3/beva/ad1558f0bfc921b71654db54987f3dc0/AU_Za-Ji-Yan-Yuan-Zhen-Li-Hai.mp3', '', 'http://story.beva.com/audio/download/10509/1', 'audio/mp3', 'mp3', '2406106', 'ba53a1267f354838b0914a1c6852960a', '', 'local', '0', '1545803864', '1545803864', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('652', '0', 'aed3840a7c4f50ad651862c9b462fe1ee94ac6e4.jpg', 'book', 'uploads/images/beva/full/aed3840a7c4f50ad651862c9b462fe1ee94ac6e4.jpg', '', 'https://3w.beva.cn/story/images/res/10806/ST_langheqizhixiaoyang205.jpg', 'image/jpeg', 'jpeg', '10778', 'dc38529d7b3ee240ac9fe8b8dd487045', '', 'local', '0', '1545803865', '1545803865', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('653', '0', 'AU_Xia-Tian-Kai-Shi-Le.mp3', 'book', 'uploads/mp3/beva/667d53aff5a65ef20e673959f1063ee9/AU_Xia-Tian-Kai-Shi-Le.mp3', '', 'http://story.beva.com/audio/download/10393/1', 'audio/mp3', 'mp3', '691774', 'a7bc030e864506a90321c176b69b3cc4', '', 'local', '0', '1545803867', '1545803867', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('654', '0', 'AU_Shen-Qi-De-Bai-Hu-Shu.mp3', 'book', 'uploads/mp3/beva/06942c680c64466db9b1505fdf41da8a/AU_Shen-Qi-De-Bai-Hu-Shu.mp3', '', 'http://story.beva.com/audio/download/10292/1', 'audio/mp3', 'mp3', '1566584', 'ec50bea53fe186a3c6019cac21a9cd00', '', 'local', '0', '1545803867', '1545803867', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('655', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/14a11ea56eeb5b8dc871827e8d5d87b5/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10294/1', 'audio/mp3', 'mp3', '614596', '252e6e102f75ffe9508b34ba555ff484', '', 'local', '0', '1545803868', '1545803868', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('656', '0', 'AU_Bai-Shan-Que.mp3', 'book', 'uploads/mp3/beva/2d2a35836e23d3146d29fcc0ce87335e/AU_Bai-Shan-Que.mp3', '', 'http://story.beva.com/audio/download/10374/1', 'audio/mp3', 'mp3', '509042', '107e83139d0a5ee6eba124844f4f0fb5', '', 'local', '0', '1545803870', '1545803870', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('657', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/bb42570dea65d74786e0e8e6ac4d1b2a/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10318/1', 'audio/mp3', 'mp3', '1397814', '4b85a03871b45b15b03a3b4502f3cb29', '', 'local', '0', '1545803870', '1545803870', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('658', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/3395e8e301ab06440686fe0b33bd4519/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10309/1', 'audio/mp3', 'mp3', '614596', 'e9dd94513eae09b3d9ea6f0613a74f2c', '', 'local', '0', '1545803870', '1545803870', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('659', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/37ef0a8ee1274d7feddbdeabce2635a1/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10401/1', 'audio/mp3', 'mp3', '1106070', '65718fd49c6157373206dd5accbdbab9', '', 'local', '0', '1545803870', '1545803870', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('660', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/e22b17e3a22511b49e92fd0bb739a2fc/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10319/1', 'audio/mp3', 'mp3', '1397814', '6578ca8b6968a8071ba9c15011ede7f4', '', 'local', '0', '1545803871', '1545803871', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('661', '0', 'AU_qiu-tian-de-mo-gu.mp3', 'book', 'uploads/mp3/beva/be6e19c43d1028d5d4a6ef7dc5d058a9/AU_qiu-tian-de-mo-gu.mp3', '', 'http://story.beva.com/audio/download/10840/1', 'audio/mp3', 'mp3', '800809', '7a509d780e2c84826925aafffab8dafb', '', 'local', '0', '1545803872', '1545803872', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('662', '0', 'AU_Sen-Lin-De-Shi-Yue.mp3', 'book', 'uploads/mp3/beva/be3b60394bd7c561f1bb8dd4235aaf4c/AU_Sen-Lin-De-Shi-Yue.mp3', '', 'http://story.beva.com/audio/download/10416/1', 'audio/mp3', 'mp3', '1504374', '4b1a8f436325c2b43c0a5f7467bdde24', '', 'local', '0', '1545803872', '1545803872', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('663', '0', 'AU_Hao-Qi-De-Yan.mp3', 'book', 'uploads/mp3/beva/ffb04280dcef6da2d4cc4ac2d91ff7f9/AU_Hao-Qi-De-Yan.mp3', '', 'http://story.beva.com/audio/download/10399/1', 'audio/mp3', 'mp3', '1193332', '34610feb3263ada105afd29818c1684d', '', 'local', '0', '1545803872', '1545803872', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('664', '0', 'AU_Xia-Tian.mp3', 'book', 'uploads/mp3/beva/316bf0a3fd7158df8bb4b12bf25e913a/AU_Xia-Tian.mp3', '', 'http://story.beva.com/audio/download/10463/1', 'audio/mp3', 'mp3', '1136016', '7332f3cfca11c12728ebd405e69a0849', '', 'local', '0', '1545803873', '1545803873', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('665', '0', 'AU_AU_dangyinyuejiaqu001.MP3', 'book', 'uploads/mp3/beva/21cda01511bbe3702a678022a1d4644c/AU_AU_dangyinyuejiaqu001.MP3', '', 'http://story.beva.com/audio/download/11636/3', 'audio/mp3', 'mp3', '1836287', 'fbad8da17168b4dcf53650ef677e180d', '', 'local', '0', '1545803875', '1545803875', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('666', '0', 'AU_AU_dangyinyuejiaqu002.MP3', 'book', 'uploads/mp3/beva/21cda01511bbe3702a678022a1d4644c/AU_AU_dangyinyuejiaqu002.MP3', '', 'http://story.beva.com/audio/download/11636/3', 'audio/mp3', 'mp3', '1388591', 'f95bf64f3bdf9405164c9fcbf98226e1', '', 'local', '0', '1545803875', '1545803875', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('667', '0', 'AU_AU_dangyinyuejiaqu003.MP3', 'book', 'uploads/mp3/beva/21cda01511bbe3702a678022a1d4644c/AU_AU_dangyinyuejiaqu003.MP3', '', 'http://story.beva.com/audio/download/11636/3', 'audio/mp3', 'mp3', '1372319', '11e5e0ed5c1514ed862bb00dbdf34fdc', '', 'local', '0', '1545803875', '1545803875', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('668', '0', 'AU_Xia-Tian-Kai-Shi-Le.mp3', 'book', 'uploads/mp3/beva/ab7e9bdb98352e11468ad7a08d003281/AU_Xia-Tian-Kai-Shi-Le.mp3', '', 'http://story.beva.com/audio/download/10395/1', 'audio/mp3', 'mp3', '691774', '47a40c531f963c116e5a2c0437eb19ed', '', 'local', '0', '1545803875', '1545803875', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('669', '0', 'AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', 'book', 'uploads/mp3/beva/6fcd6525eae6700253d677e1a1233cd4/AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', '', 'http://story.beva.com/audio/download/10346/1', 'audio/mp3', 'mp3', '1487240', 'b979f973c5704c9fa2856b0774fc9604', '', 'local', '0', '1545803881', '1545803881', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('670', '0', 'AU_Sen-Lin-De-WuYue.mp3', 'book', 'uploads/mp3/beva/b64be00c6f5028f072aea4541661d2a0/AU_Sen-Lin-De-WuYue.mp3', '', 'http://story.beva.com/audio/download/10321/1', 'audio/mp3', 'mp3', '1397814', 'd46d97b797baa4a2c1eb9cf46cc57f63', '', 'local', '0', '1545803881', '1545803881', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('671', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/7276f6ccd1936199d77fee9f83327c4f/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10356/1', 'audio/mp3', 'mp3', '636630', '2e0ab5423f12688f04078de514632dda', '', 'local', '0', '1545803881', '1545803881', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('672', '0', 'AU_Wu-Song.mp3', 'book', 'uploads/mp3/beva/1e8355e1364f8dd0b60bc5e68f97924c/AU_Wu-Song.mp3', '', 'http://story.beva.com/audio/download/10504/1', 'audio/mp3', 'mp3', '867024', '6d7d6414e2fdb06f7047027c600672cb', '', 'local', '0', '1545803882', '1545803882', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('673', '0', 'AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', 'book', 'uploads/mp3/beva/4335ea3e0c1ceff67dbaef712e7b76c6/AU_Ba-Xiao-Tou-Guan-Zai-Ping-Zi-Li.mp3', '', 'http://story.beva.com/audio/download/10364/1', 'audio/mp3', 'mp3', '632892', '9badae15093f0464126560d9b9a42a85', '', 'local', '0', '1545803882', '1545803882', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('674', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/58d88fbda05ae1fed7c45064dca267c2/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10361/1', 'audio/mp3', 'mp3', '466564', 'd7ca84223444805537af58ef56130ae4', '', 'local', '0', '1545803882', '1545803882', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('675', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/2adda90b3ce547af6819ca64e604e5cb/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10362/1', 'audio/mp3', 'mp3', '466564', 'cd15018d898cde1fa53f74c5d216d53b', '', 'local', '0', '1545803885', '1545803885', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('676', '0', 'AU_Sha-Mo-De-Hui-Ying.mp3', 'book', 'uploads/mp3/beva/8bb0ad93aa03c5a72ae9d6f56a9e2730/AU_Sha-Mo-De-Hui-Ying.mp3', '', 'http://story.beva.com/audio/download/10418/1', 'audio/mp3', 'mp3', '844710', '6946167bb7d3a130dcee127be045c774', '', 'local', '0', '1545803885', '1545803885', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('677', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/d8ceec8d0bdd706366eeb95342dd4155/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10308/1', 'audio/mp3', 'mp3', '1509704', '0f0acb059e1bbbbb39ff608cf6e02343', '', 'local', '0', '1545803886', '1545803886', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('678', '0', 'AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', 'book', 'uploads/mp3/beva/eb0fbf8e600ebacb83b109ac99f3051c/AU_Yi-zhi-Shan-Yang-Chi-Guang-Le-Yi-Pian-Sen-Lin.mp3', '', 'http://story.beva.com/audio/download/10378/1', 'audio/mp3', 'mp3', '1106938', 'd2f7208eac415e63ac14fbccd56438ec', '', 'local', '0', '1545803887', '1545803887', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('679', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/798f987a55501c5a798cbb9b2d39bcd9/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10303/1', 'audio/mp3', 'mp3', '1509704', '117706995fb04e3b79585ad598ea36fa', '', 'local', '0', '1545803890', '1545803890', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('680', '0', 'AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', 'book', 'uploads/mp3/beva/2bdb6597e939faf96820f4fcab14b035/AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', '', 'http://story.beva.com/audio/download/10325/1', 'audio/mp3', 'mp3', '963228', 'd5f8cf335b1da67df4ac0da2110646b9', '', 'local', '0', '1545803891', '1545803891', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('681', '0', 'AU_Kun-Chong-De-jie-Ri.mp3', 'book', 'uploads/mp3/beva/149d028908c8db4579e2173b2b4b2183/AU_Kun-Chong-De-jie-Ri.mp3', '', 'http://story.beva.com/audio/download/10317/1', 'audio/mp3', 'mp3', '581190', 'b91d7c823d5c1fd856aced15e7ba9f43', '', 'local', '0', '1545803891', '1545803891', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('682', '0', 'AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', 'book', 'uploads/mp3/beva/289d2178756906e6c194d52b689ecd67/AU_Duo-Zai-Bai-Yang-Shu-Shang.mp3', '', 'http://story.beva.com/audio/download/10344/1', 'audio/mp3', 'mp3', '1487240', '348fa5c9e0dd75e1bada4dff26f61c87', '', 'local', '0', '1545803891', '1545803891', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('683', '0', 'AU_Sen-Lin-De-Shi-Yue.mp3', 'book', 'uploads/mp3/beva/55f058b518f985f9443c8fc9e2aeaebd/AU_Sen-Lin-De-Shi-Yue.mp3', '', 'http://story.beva.com/audio/download/11728/3', 'audio/mp3', 'mp3', '1504374', '3a27df90936248944d21fb40590a6c8b', '', 'local', '0', '1545803892', '1545803892', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('684', '0', 'AU_Jin-Sha-Tan-Shang-De-Hai-Zi.mp3', 'book', 'uploads/mp3/beva/b122a4fcae486944dc44d2d96adfea3f/AU_Jin-Sha-Tan-Shang-De-Hai-Zi.mp3', '', 'http://story.beva.com/audio/download/10553/1', 'audio/mp3', 'mp3', '814932', '7b96893e5cdb5f0fd86132a4b70e425d', '', 'local', '0', '1545803893', '1545803893', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('685', '0', 'AU_Shi-Hui-Ying.mp3', 'book', 'uploads/mp3/beva/2eccb64ce0212457ca3e25d027f112ec/AU_Shi-Hui-Ying.mp3', '', 'http://story.beva.com/audio/download/11428/1', 'audio/mp3', 'mp3', '522005', 'f3b4dcdf29c2045ee031a56e97890028', '', 'local', '0', '1545803893', '1545803893', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('686', '0', 'AU_Xia-Tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/12edd0424bfcc85b963016618ae3ac1d/AU_Xia-Tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10389/1', 'audio/mp3', 'mp3', '1509704', '454a013a0abbb6f15f7fe96242be6deb', '', 'local', '0', '1545803894', '1545803894', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('687', '0', 'AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', 'book', 'uploads/mp3/beva/45fc6d00314d30203bb52a137d1182ce/AU_Sen-Lin-Li-De-Yun-Dan-Jia-Jie.mp3', '', 'http://story.beva.com/audio/download/10327/1', 'audio/mp3', 'mp3', '963228', '1997f7c34ff3f197629c4bf00fb0866c', '', 'local', '0', '1545803894', '1545803894', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('688', '0', 'AU_Xue-Shang-Bing-Ke.mp3', 'book', 'uploads/mp3/beva/b322aeb34fe5b40c690664540677795c/AU_Xue-Shang-Bing-Ke.mp3', '', 'http://story.beva.com/audio/download/10511/1', 'audio/mp3', 'mp3', '1442164', 'ede41326bb133fa820314f0ae5e11042', '', 'local', '0', '1545803895', '1545803895', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('689', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/a2fde53fdae7bd79ea9db469929a3b29/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10402/1', 'audio/mp3', 'mp3', '1106070', 'a7c670e467d7fadd1f9a64356e4867c4', '', 'local', '0', '1545803897', '1545803897', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('690', '0', 'AU_Xiong-Bei-Xia-Si-Le.mp3', 'book', 'uploads/mp3/beva/3561b04621585f750960be7adf82a623/AU_Xiong-Bei-Xia-Si-Le.mp3', '', 'http://story.beva.com/audio/download/10382/1', 'audio/mp3', 'mp3', '1185126', 'ded26f56d8d586659e4a2af14f0f00ce', '', 'local', '0', '1545803897', '1545803897', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('691', '0', 'AU_Tu-Zi-Shang-Shu.mp3', 'book', 'uploads/mp3/beva/24bdaea108a0856e4778ad916cf69755/AU_Tu-Zi-Shang-Shu.mp3', '', 'http://story.beva.com/audio/download/10339/1', 'audio/mp3', 'mp3', '2039620', '436cf599860e12ed895a154925ce63ee', '', 'local', '0', '1545803898', '1545803898', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('692', '0', 'AU_zhu-shi.mp3', 'book', 'uploads/mp3/beva/f1a03dbda2b1026e5e8b38abd9c44d01/AU_zhu-shi.mp3', '', 'http://story.beva.com/audio/download/11445/1', 'audio/mp3', 'mp3', '512501', 'a6f8ed6a29dbc12a2c0296ee6a6ac398', '', 'local', '0', '1545803899', '1545803899', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('693', '0', 'AU_xingxingyinyuan.MP3', 'book', 'uploads/mp3/beva/c49c103ae8716ea4d7500188b99f69ef/AU_xingxingyinyuan.MP3', '', 'http://story.beva.com/audio/download/10084/1', 'audio/mp3', 'mp3', '806397', 'a7d99f35d49f47b3cb7b22547c3b2924', '', 'local', '0', '1545803901', '1545803901', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('694', '0', 'AU_Shi-Chong-Hua.mp3', 'book', 'uploads/mp3/beva/1b599679f34366cccd874df58d5612bf/AU_Shi-Chong-Hua.mp3', '', 'http://story.beva.com/audio/download/10408/1', 'audio/mp3', 'mp3', '858386', 'ecdcc03339b4074ec80c1716964ee276', '', 'local', '0', '1545803902', '1545803902', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('695', '0', 'AU_Song-Shu-Zhui-Bao-Ji.mp3', 'book', 'uploads/mp3/beva/991551fe727b5d42bb244f035252b287/AU_Song-Shu-Zhui-Bao-Ji.mp3', '', 'http://story.beva.com/audio/download/10421/1', 'audio/mp3', 'mp3', '1415238', 'ae77c941deaa9837b7d0afa77490c386', '', 'local', '0', '1545803902', '1545803902', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('696', '0', 'AU_Cong-Ming-De-Xiao-Xiong.mp3', 'book', 'uploads/mp3/beva/231b73f49b254b4be93b3ddb79b00b8e/AU_Cong-Ming-De-Xiao-Xiong.mp3', '', 'http://story.beva.com/audio/download/10337/1', 'audio/mp3', 'mp3', '1442742', '9d5558a4e6cd3d3cfde89aa3b4815698', '', 'local', '0', '1545803903', '1545803903', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('697', '0', '52ff0c806a93ec9093007d7d8e48ae534e261138.jpg', 'book', 'uploads/images/beva/full/52ff0c806a93ec9093007d7d8e48ae534e261138.jpg', '', 'https://3w.beva.cn/story/images/res/10777/ST_duiniutanqin205213.png', 'image/jpeg', 'jpeg', '10517', '592d6b21768d4f6b44b5e85527bfb668', '', 'local', '0', '1545803903', '1545803903', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('698', '0', 'AU_Lang-He-Hu-Hi-over.mp3', 'book', 'uploads/mp3/beva/5a6209c33c4bf478a1e779b14480191a/AU_Lang-He-Hu-Hi-over.mp3', '', 'http://story.beva.com/audio/download/11339/1', 'audio/mp3', 'mp3', '2705877', 'df2085f1128dc03ab478b5aad6b6cacb', '', 'local', '0', '1545803905', '1545803905', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('699', '0', 'AU_yueliang.MP3', 'book', 'uploads/mp3/beva/bbdd137f11e01ac15e9ebd1126403915/AU_yueliang.MP3', '', 'http://story.beva.com/audio/download/10137/1', 'audio/mp3', 'mp3', '753258', '201e2d6dc7dffe4323727221081d02ba', '', 'local', '0', '1545803905', '1545803905', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('700', '0', 'AU_Xia-Ri-Jue-Ju.mp3', 'book', 'uploads/mp3/beva/14e7c382e8a3396898eec417f596038b/AU_Xia-Ri-Jue-Ju.mp3', '', 'http://story.beva.com/audio/download/11437/1', 'audio/mp3', 'mp3', '448853', 'd5ce07c3d2c25fd39688de0b453bad3f', '', 'local', '0', '1545803905', '1545803905', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('701', '0', 'AU_caochongchengxiang.MP3', 'book', 'uploads/mp3/beva/2b2e205251e80bcf4ebd50623af0b662/AU_caochongchengxiang.MP3', '', 'http://story.beva.com/audio/download/10049/1', 'audio/mp3', 'mp3', '4532365', 'c2f4d5dec148fb235390643c860019bd', '', 'local', '0', '1545803907', '1545803907', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('702', '0', '8d61bf9f71a978f30ff99447f47f9cd94f4a55a8.jpg', 'book', 'uploads/images/beva/full/8d61bf9f71a978f30ff99447f47f9cd94f4a55a8.jpg', '', 'https://3w.beva.cn/story/images/res/11418/ST_caochongchengxiang205.jpg', 'image/jpeg', 'jpeg', '13639', '0ddf66d7554e5914738113aaa9eca15c', '', 'local', '0', '1545803907', '1545803907', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('703', '0', 'AU_Yi-Hai-Zha-Shi.mp3', 'book', 'uploads/mp3/beva/5b8d980ce49f9e76fa08450a0072f73b/AU_Yi-Hai-Zha-Shi.mp3', '', 'http://story.beva.com/audio/download/11438/1', 'audio/mp3', 'mp3', '477653', 'f7b19e6fa4ffa524031336b0a94e4654', '', 'local', '0', '1545803908', '1545803908', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('704', '0', 'AU_Xue-Xia-Cao-Chang.mp3', 'book', 'uploads/mp3/beva/5e171d92577e4de5b0dda1979f3d6188/AU_Xue-Xia-Cao-Chang.mp3', '', 'http://story.beva.com/audio/download/10336/1', 'audio/mp3', 'mp3', '614596', '01aa79277a64903d0d8a8cb23c47d0b6', '', 'local', '0', '1545803911', '1545803911', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('705', '0', 'AU_zao-fa-bai-di-cheng.mp3', 'book', 'uploads/mp3/beva/f8a214d0111eccb35619bd546928104c/AU_zao-fa-bai-di-cheng.mp3', '', 'http://story.beva.com/audio/download/11560/1', 'audio/mp3', 'mp3', '533813', 'ef0913a79b017ce2393e166bae0a2267', '', 'local', '0', '1545803912', '1545803912', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('706', '0', 'AU_San-Ge-Lan-Han-over.mp3', 'book', 'uploads/mp3/beva/6053f78d19bbe53a1a488e88d498ac12/AU_San-Ge-Lan-Han-over.mp3', '', 'http://story.beva.com/audio/download/11348/1', 'audio/mp3', 'mp3', '813429', '483aadbc399b5b7d4752a943e6c02eef', '', 'local', '0', '1545803913', '1545803913', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('707', '0', 'AU_Hu-Li-He-Ma-over.mp3', 'book', 'uploads/mp3/beva/52a547f0a05a0676e3a0c09c8dfe9350/AU_Hu-Li-He-Ma-over.mp3', '', 'http://story.beva.com/audio/download/11337/1', 'audio/mp3', 'mp3', '1949301', '29ef232dc484619e77ee587c996bc768', '', 'local', '0', '1545803915', '1545803915', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('708', '0', 'AU_Chun-tian-Li-De-Nong-Shi.mp3', 'book', 'uploads/mp3/beva/c17f6ab19c8e039b80b54ea951940c62/AU_Chun-tian-Li-De-Nong-Shi.mp3', '', 'http://story.beva.com/audio/download/10305/1', 'audio/mp3', 'mp3', '1509704', 'e36e472c438e7b9d73e58a68cbd4fdbf', '', 'local', '0', '1545803918', '1545803918', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('709', '0', 'AU_yanerdaoling.mp3', 'book', 'uploads/mp3/beva/abfd9947923fff72310e00be7e197368/AU_yanerdaoling.mp3', '', 'http://story.beva.com/audio/download/10135/1', 'audio/mp3', 'mp3', '1767101', 'f9dc6cd00f1d0841b06e618b1a0ca256', '', 'local', '0', '1545803922', '1545803922', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('710', '0', '9c8dae512ad432d561e9e6fcf314f59bb3d5015e.jpg', 'book', 'uploads/images/beva/full/9c8dae512ad432d561e9e6fcf314f59bb3d5015e.jpg', '', 'https://3w.beva.cn/story/images/res/11501/ST_yanerdaoling205.jpg', 'image/jpeg', 'jpeg', '13388', '8c35d21e5f594ce33b4dddde865e4432', '', 'local', '0', '1545803922', '1545803922', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('711', '0', 'AU_meng-jiang-nv-ku-chang-cheng.MP3', 'book', 'uploads/mp3/beva/e2bd16b23491eb1a473830e49e7d1084/AU_meng-jiang-nv-ku-chang-cheng.MP3', '', 'http://story.beva.com/audio/download/11046/1', 'audio/mp3', 'mp3', '1972369', 'fad2d3d42d406a02388c72435bde2694', '', 'local', '0', '1545803924', '1545803924', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('712', '0', 'AU_Qiao-Mai.MP3', 'book', 'uploads/mp3/beva/a69b7ae013a0a384fa74637d18a0874a/AU_Qiao-Mai.MP3', '', 'http://story.beva.com/audio/download/10680/1', 'audio/mp3', 'mp3', '2412569', '97b565cf7e116a90fa809153c14f09ef', '', 'local', '0', '1545803924', '1545803924', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('713', '0', 'AU_Sen-Lin-Kuai-Bao.mp3', 'book', 'uploads/mp3/beva/64a79bdf55b480cba9ef1dedbac062d3/AU_Sen-Lin-Kuai-Bao.mp3', '', 'http://story.beva.com/audio/download/10360/1', 'audio/mp3', 'mp3', '466564', '24e4178f119f265bbc4d883f5c14426f', '', 'local', '0', '1545803927', '1545803927', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('714', '0', 'AU_Hui-Tiao-De-Di-Ren.mp3', 'book', 'uploads/mp3/beva/8888919584b095961a1941bc5e48ba82/AU_Hui-Tiao-De-Di-Ren.mp3', '', 'http://story.beva.com/audio/download/10355/1', 'audio/mp3', 'mp3', '636630', '27abc5f4cb8f33b8f07bf148e3b09c7f', '', 'local', '0', '1545803927', '1545803927', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('715', '0', 'AU_yanerdaoling.mp3', 'book', 'uploads/mp3/beva/b89263d6bbc1b2ac05d05ab37b523256/AU_yanerdaoling.mp3', '', 'http://story.beva.com/audio/download/10060/1', 'audio/mp3', 'mp3', '661966', '1de15f3b6f937d6f5202e7042b870ba5', '', 'local', '0', '1545803940', '1545803940', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('716', '0', 'AU_hao-Ke-Pa-Yao.mp3', 'book', 'uploads/mp3/beva/75b3dc258fd255b37a70050f98eb52a0/AU_hao-Ke-Pa-Yao.mp3', '', 'http://story.beva.com/audio/download/10390/1', 'audio/mp3', 'mp3', '950548', '001035b5fe41acd1105a4e642c755a0b', '', 'local', '0', '1545803941', '1545803941', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('717', '0', 'AU_Bo-Chuan-Gua-Zhou.mp3', 'book', 'uploads/mp3/beva/063065cb10bc1eadb834fc03d72de2bd/AU_Bo-Chuan-Gua-Zhou.mp3', '', 'http://story.beva.com/audio/download/11236/1', 'audio/mp3', 'mp3', '524352', '6e4dbac447e12f2a3169775cbdd659cf', '', 'local', '0', '1545803941', '1545803941', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('718', '0', 'AU_Xiong-You-Cheng-Zhu-over.mp3', 'book', 'uploads/mp3/beva/b2fbafa83aa3d6bd14077a0702c0ed2a/AU_Xiong-You-Cheng-Zhu-over.mp3', '', 'http://story.beva.com/audio/download/11410/1', 'audio/mp3', 'mp3', '910512', 'dee25e1a9773c6069c05d55c00fbd231', '', 'local', '0', '1545803959', '1545803959', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('719', '0', '16bfabe66e90c956474ae54b81309018fa6a0c05.jpg', 'book', 'uploads/images/beva/full/16bfabe66e90c956474ae54b81309018fa6a0c05.jpg', '', 'https://3w.beva.cn/story/images/res/10788/ST_xiongyouchengzhu205213.png', 'image/jpeg', 'jpeg', '13708', '327a11c19bcca9e91c200abb14dd0d8b', '', 'local', '0', '1545803959', '1545803959', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('720', '0', 'AU_jingyesi.mp3', 'book', 'uploads/mp3/beva/cf7cf93f377c9e2f399d7d2a060cb972/AU_jingyesi.mp3', '', 'http://story.beva.com/audio/download/10227/1', 'audio/mp3', 'mp3', '637784', '324cceca4fe67ac37f1071b4d491e31d', '', 'local', '0', '1545803959', '1545803959', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('721', '0', 'AU_Wu-ti.mp3', 'book', 'uploads/mp3/beva/0e2dda63d0e33aa334c35240d26c15b1/AU_Wu-ti.mp3', '', 'http://story.beva.com/audio/download/11615/1', 'audio/mp3', 'mp3', '834629', '7697c1adfe4cee25117ba0c3179cc627', '', 'local', '0', '1545803968', '1545803968', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('722', '0', 'AU_caochongchengxiang.MP3', 'book', 'uploads/mp3/beva/0e9a2a0f8156dbd25bcf44fe1b2d8a51/AU_caochongchengxiang.MP3', '', 'http://story.beva.com/audio/download/10048/1', 'audio/mp3', 'mp3', '1698765', 'd272c32c36f648c992f0b20cb8bdc5cb', '', 'local', '0', '1545803968', '1545803968', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('723', '0', 'AU_qing-wa-wang-zi-001.mp3', 'book', 'uploads/mp3/beva/2bedbcee6017d568f3f61f225ee287e7/AU_qing-wa-wang-zi-001.mp3', '', 'http://story.beva.com/audio/download/11529/3', 'audio/mp3', 'mp3', '2033564', 'a01039cc90edb8694270416c45454bc4', '', 'local', '0', '1545803988', '1545803988', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('724', '0', 'AU_qing-wa-wang-zi-002.mp3', 'book', 'uploads/mp3/beva/2bedbcee6017d568f3f61f225ee287e7/AU_qing-wa-wang-zi-002.mp3', '', 'http://story.beva.com/audio/download/11529/3', 'audio/mp3', 'mp3', '1783436', '604825029f9cadad9ba907a18e99fd15', '', 'local', '0', '1545803988', '1545803988', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('725', '0', 'AU_qing-wa-wang-zi-003.mp3', 'book', 'uploads/mp3/beva/2bedbcee6017d568f3f61f225ee287e7/AU_qing-wa-wang-zi-003.mp3', '', 'http://story.beva.com/audio/download/11529/3', 'audio/mp3', 'mp3', '1787756', 'b4cac8126324e28b4cacb751870633f7', '', 'local', '0', '1545803988', '1545803988', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('726', '0', 'AU_AU_xiaohongmao001.mp3', 'book', 'uploads/mp3/beva/bb7217b3aeef1b105d8d144bc90a2bb1/AU_AU_xiaohongmao001.mp3', '', 'http://story.beva.com/audio/download/10518/3', 'audio/mp3', 'mp3', '1663914', 'e8cbb1a143779ebf9f3a90176999527d', '', 'local', '0', '1545803989', '1545803989', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('727', '0', 'AU_AU_xiaohongmao002.mp3', 'book', 'uploads/mp3/beva/bb7217b3aeef1b105d8d144bc90a2bb1/AU_AU_xiaohongmao002.mp3', '', 'http://story.beva.com/audio/download/10518/3', 'audio/mp3', 'mp3', '1660748', '66cdd34184387c78059b9e4430c6b993', '', 'local', '0', '1545803989', '1545803989', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('728', '0', 'AU_AU_xiaohongmao003.mp3', 'book', 'uploads/mp3/beva/bb7217b3aeef1b105d8d144bc90a2bb1/AU_AU_xiaohongmao003.mp3', '', 'http://story.beva.com/audio/download/10518/3', 'audio/mp3', 'mp3', '1687676', '34467b4e4477109cfb8167df6f6d9ab2', '', 'local', '0', '1545803989', '1545803989', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('729', '0', 'AU_chouxiaoya.MP3', 'book', 'uploads/mp3/beva/6ea9901cc9717d3c82e459a32d251a72/AU_chouxiaoya.MP3', '', 'http://story.beva.com/audio/download/10120/1', 'audio/mp3', 'mp3', '2294635', 'a79a29d7f64553f82f67e1e2f249cc06', '', 'local', '0', '1545804001', '1545804001', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('730', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/27594cf875985d4ff98e76304c6517a2/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10449/1', 'audio/mp3', 'mp3', '1107366', '3ca0f8bbb0fed3c069e0d0379b3fc77e', '', 'local', '0', '1545804002', '1545804002', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('731', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/e6b971b9a0786547fe593820a76504f5/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10485/1', 'audio/mp3', 'mp3', '1336182', '7c1f8bd2408c797a250374c6ed80100a', '', 'local', '0', '1545804003', '1545804003', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('732', '0', 'AU_gxgs-chunxiao.MP3', 'book', 'uploads/mp3/beva/d2c47c5c413dde18a4c096eeac9d6ab0/AU_gxgs-chunxiao.MP3', '', 'http://story.beva.com/audio/download/10152/1', 'audio/mp3', 'mp3', '1265178', 'f21546c7bb0b8a03dff9ab68a1a2e19c', '', 'local', '0', '1545804005', '1545804005', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('733', '0', '08a2cae98ba159e28710f19fc911511cf48cc246.jpg', 'book', 'uploads/images/beva/full/08a2cae98ba159e28710f19fc911511cf48cc246.jpg', '', 'https://3w.beva.cn/story/images/res/11089/ST_chunxiao205.jpg', 'image/jpeg', 'jpeg', '16342', '6e856cd84b10c1c4f5b1f58e8903aa68', '', 'local', '0', '1545804005', '1545804005', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('734', '0', 'AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', 'book', 'uploads/mp3/beva/9aa470083ebaf3478b58eb494e181844/AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', '', 'http://story.beva.com/audio/download/10423/1', 'audio/mp3', 'mp3', '1252380', 'bf2846737586c99981100b2a030bb132', '', 'local', '0', '1545804005', '1545804005', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('735', '0', 'AU_Bu-Gu-Niao-Jiao-Le.mp3', 'book', 'uploads/mp3/beva/bb99c7133c08529d80ce1c6ddf39caff/AU_Bu-Gu-Niao-Jiao-Le.mp3', '', 'http://story.beva.com/audio/download/10301/1', 'audio/mp3', 'mp3', '519270', 'a20177f4f6c54ecdbe7d677bd020539f', '', 'local', '0', '1545804005', '1545804005', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('736', '0', 'AU_Xiao-Shu-Ye-Ka.mp3', 'book', 'uploads/mp3/beva/1cb26d02c6fcffee24284cc032a7ca7d/AU_Xiao-Shu-Ye-Ka.mp3', '', 'http://story.beva.com/audio/download/11076/1', 'audio/mp3', 'mp3', '1962624', '887d3411dc058dfd7ba547670e37b514', '', 'local', '0', '1545804005', '1545804005', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('737', '0', 'AU_anqier001.mp3', 'book', 'uploads/mp3/beva/f6c329af8be001c0bafe82b30cf6e779/AU_anqier001.mp3', '', 'http://story.beva.com/audio/download/10392/3', 'audio/mp3', 'mp3', '1209596', '923c98716edba53dd9455622b95fa6e5', '', 'local', '0', '1545804007', '1545804007', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('738', '0', 'AU_anqier002.mp3', 'book', 'uploads/mp3/beva/f6c329af8be001c0bafe82b30cf6e779/AU_anqier002.mp3', '', 'http://story.beva.com/audio/download/10392/3', 'audio/mp3', 'mp3', '1101308', 'b432ab66a34823c5bdfd7a5b3d3bba85', '', 'local', '0', '1545804007', '1545804007', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('739', '0', 'AU_anqier003.mp3', 'book', 'uploads/mp3/beva/f6c329af8be001c0bafe82b30cf6e779/AU_anqier003.mp3', '', 'http://story.beva.com/audio/download/10392/3', 'audio/mp3', 'mp3', '1566428', '067e19ddc1facec1e4622dcf96d47580', '', 'local', '0', '1545804007', '1545804007', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('740', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/b42ac97b73dd1ec5ef84d634684f3fef/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10452/1', 'audio/mp3', 'mp3', '1107366', '66a62c59487c0e2f808807dbb8637a89', '', 'local', '0', '1545804007', '1545804007', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('741', '0', '05d51988f5f7a0fa804f06fa3134f5c0c1672052.jpg', 'book', 'uploads/images/beva/full/05d51988f5f7a0fa804f06fa3134f5c0c1672052.jpg', '', 'https://3w.beva.cn/story/images/res/10905/ST_toudongxi205213.png', 'image/jpeg', 'jpeg', '13768', '7c712f19364aa147d188cf1a696f303e', '', 'local', '0', '1545804010', '1545804010', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('742', '0', 'AU_Sha-Lou-De-Qi-Shi.mp3', 'book', 'uploads/mp3/beva/cfc26045af8e27f3fb1aa2ce99756448/AU_Sha-Lou-De-Qi-Shi.mp3', '', 'http://story.beva.com/audio/download/10479/1', 'audio/mp3', 'mp3', '1956678', '71ac8495b0694abc82e11bea6f89e6b8', '', 'local', '0', '1545804010', '1545804010', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('743', '0', 'AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', 'book', 'uploads/mp3/beva/7f827b2c93480de12a982d88e59f0d9e/AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', '', 'http://story.beva.com/audio/download/10490/1', 'audio/mp3', 'mp3', '1819880', '3b6c46449f5bb944d6d64ca4a92ffe7b', '', 'local', '0', '1545804010', '1545804010', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('744', '0', 'AU_yueliang.MP3', 'book', 'uploads/mp3/beva/732eb868728b81228f12cd0d5f8e6f6f/AU_yueliang.MP3', '', 'http://story.beva.com/audio/download/10087/1', 'audio/mp3', 'mp3', '756570', '0b8f59056f04a422b35a43d1a147ad13', '', 'local', '0', '1545804010', '1545804010', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('745', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/bf987e08def6592398aaa455eb95d403/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10451/1', 'audio/mp3', 'mp3', '1107366', 'd6ebef44dfd22c0e6efdf8e6ead6eca1', '', 'local', '0', '1545804011', '1545804011', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('746', '0', '93f56a62e95733d792b51a380a73003b497ab171.jpg', 'book', 'uploads/images/beva/full/93f56a62e95733d792b51a380a73003b497ab171.jpg', '', 'https://3w.beva.cn/story/images/res/15109/ST_205xiyangyanghuitailang.jpg', 'image/jpeg', 'jpeg', '12474', '94eaa7fa9c2ba475c37bd79fcdd1bc6d', '', 'local', '0', '1545804012', '1545804012', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('747', '0', 'AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', 'book', 'uploads/mp3/beva/5416f67b9ade14504243ade8567bef55/AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', '', 'http://story.beva.com/audio/download/10425/1', 'audio/mp3', 'mp3', '1252380', 'ff15564ee28d9a52541dbbc87c26a5ca', '', 'local', '0', '1545804015', '1545804015', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('748', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/1d761ea964453c9b8537c4bcf337bce4/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10484/1', 'audio/mp3', 'mp3', '1336182', '9be08e579a86851bb97855578d33f08f', '', 'local', '0', '1545804015', '1545804015', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('749', '0', 'AU_congmingdexiaomutong.MP3', 'book', 'uploads/mp3/beva/96a4694a00d0a1ea6ce0cd7450be1978/AU_congmingdexiaomutong.MP3', '', 'http://story.beva.com/audio/download/10078/1', 'audio/mp3', 'mp3', '1124497', '375b9b8eab2aaf5acec40346293fb991', '', 'local', '0', '1545804018', '1545804018', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('750', '0', '1a586ba705c577983a212cb98f95081d3d535c68.jpg', 'book', 'uploads/images/beva/full/1a586ba705c577983a212cb98f95081d3d535c68.jpg', '', 'https://3w.beva.cn/story/images/res/10682/ST_congmingdexiaomutong.jpg', 'image/jpeg', 'jpeg', '8971', 'b0f526eb3f22133400c7dc5590f30b5b', '', 'local', '0', '1545804018', '1545804018', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('751', '0', 'AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', 'book', 'uploads/mp3/beva/c2eb541af7de0a122487bd3d9389b0b8/AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', '', 'http://story.beva.com/audio/download/10489/1', 'audio/mp3', 'mp3', '1819880', '2e00dd965d032b8b353433e643a8b9e9', '', 'local', '0', '1545804020', '1545804020', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('752', '0', 'AU_xingxingyinyuan.MP3', 'book', 'uploads/mp3/beva/7aaa127b2b63b09412c3e2a9c228ce79/AU_xingxingyinyuan.MP3', '', 'http://story.beva.com/audio/download/10085/1', 'audio/mp3', 'mp3', '805821', 'a9a022e6a20e87dcb616ff34621ddce2', '', 'local', '0', '1545804020', '1545804020', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('753', '0', 'AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', 'book', 'uploads/mp3/beva/f4623f8f95a21e0c8d79a4acbd30d6e5/AU_Zhun-Bei-Guo-Dong-De-Dong-Zhi-Wu.mp3', '', 'http://story.beva.com/audio/download/10432/1', 'audio/mp3', 'mp3', '724620', 'e835fb807eabb9ad7867d3f044b88a7d', '', 'local', '0', '1545804020', '1545804020', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('754', '0', 'AU_3suiqingwawangzi.mp3', 'book', 'uploads/mp3/beva/00206cf028fc5160a4671b47414295e0/AU_3suiqingwawangzi.mp3', '', 'http://story.beva.com/audio/download/10187/1', 'audio/mp3', 'mp3', '1677172', '792cf051f75490f44a8966e94e8bcd32', '', 'local', '0', '1545804020', '1545804020', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('755', '0', 'AU_Mu-Lang-Gao-Si-Pu-He-Hu-Li-over.mp3', 'book', 'uploads/mp3/beva/68bd9dd38c182373901c1b274ab1e3de/AU_Mu-Lang-Gao-Si-Pu-He-Hu-Li-over.mp3', '', 'http://story.beva.com/audio/download/11344/1', 'audio/mp3', 'mp3', '1436085', '3f82a31609ca576fa7370507989c019d', '', 'local', '0', '1545804020', '1545804020', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('756', '0', 'f07a23ac1f4edd24dff6decd374245527154e406.jpg', 'book', 'uploads/images/beva/full/f07a23ac1f4edd24dff6decd374245527154e406.jpg', '', 'https://3w.beva.cn/story/images/res/15100/ST_baofuyindegush205-213i.png', 'image/jpeg', 'jpeg', '15284', 'c23612d5fc30eb69df49d5a47d8b63ea', '', 'local', '0', '1545804021', '1545804021', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('757', '0', 'AU_Shui-Neng-Dian-Huo-Ma.mp3', 'book', 'uploads/mp3/beva/dedac419f8b5f3146663b34dd5d0d778/AU_Shui-Neng-Dian-Huo-Ma.mp3', '', 'http://story.beva.com/audio/download/10503/1', 'audio/mp3', 'mp3', '2713110', '29c5f47df04ddf799449c6c366958863', '', 'local', '0', '1545804021', '1545804021', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('758', '0', 'c9947795b7ab5cba71a11c494bb79fdad694c88b.jpg', 'book', 'uploads/images/beva/full/c9947795b7ab5cba71a11c494bb79fdad694c88b.jpg', '', 'https://3w.beva.cn/story/images/res/10647/ST_dabagaoji205213.png', 'image/jpeg', 'jpeg', '12804', '600c58e796ba36d63ebb055b4e73a62c', '', 'local', '0', '1545804024', '1545804024', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('759', '0', 'AU_caochongchengxiang.MP3', 'book', 'uploads/mp3/beva/fbeb5f5a8c8a6dea5e09837299f1d2a5/AU_caochongchengxiang.MP3', '', 'http://story.beva.com/audio/download/10046/1', 'audio/mp3', 'mp3', '1698765', 'c879024d78335ebd56697ad36bc7c8a8', '', 'local', '0', '1545804025', '1545804025', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('760', '0', 'AU_cong-ming-de-xiao-mu-tong.MP3', 'book', 'uploads/mp3/beva/a4c4a8f7c1d6da3bbd57a54522709cb9/AU_cong-ming-de-xiao-mu-tong.MP3', '', 'http://story.beva.com/audio/download/11001/1', 'audio/mp3', 'mp3', '1146241', '6de9b0759585326a782435fe26c5a02f', '', 'local', '0', '1545804025', '1545804025', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('761', '0', 'cefb055e166a2a6c1be160039c843658e554e2ff.jpg', 'book', 'uploads/images/beva/full/cefb055e166a2a6c1be160039c843658e554e2ff.jpg', '', 'https://3w.beva.cn/story/images/res/11634/ST_13.png', 'image/jpeg', 'jpeg', '9287', '848297aac8406258b0fa4759034088b1', '', 'local', '0', '1545804025', '1545804025', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('762', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/b0e8c2292d80bdc588c88a9c689fce85/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10476/1', 'audio/mp3', 'mp3', '1025858', '1ce327283d3857e9a7d9b62cef9581df', '', 'local', '0', '1545804027', '1545804027', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('763', '0', 'AU_xiao-luo-zi-shi-shui-de-hai-zi.mp3', 'book', 'uploads/mp3/beva/120799ef0270a50788e7098c15d13a66/AU_xiao-luo-zi-shi-shui-de-hai-zi.mp3', '', 'http://story.beva.com/audio/download/11514/1', 'audio/mp3', 'mp3', '2323845', '4c155c56233f171a4e645cc75d75ceed', '', 'local', '0', '1545804029', '1545804029', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('764', '0', 'AU_Xiao-Ji-Zi-Zi-over.mp3', 'book', 'uploads/mp3/beva/fc019d9a49b570fc604e2a984d0ee279/AU_Xiao-Ji-Zi-Zi-over.mp3', '', 'http://story.beva.com/audio/download/11320/1', 'audio/mp3', 'mp3', '1610901', 'b70f4da1e36882be8e925f75821e1fd8', '', 'local', '0', '1545804029', '1545804029', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('765', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/cc51f5d257ec65854de0bb1384326c77/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10458/1', 'audio/mp3', 'mp3', '1211328', '7966e4a0ff57255ed72702d8824f8c05', '', 'local', '0', '1545804030', '1545804030', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('766', '0', '514640e95296fa28124b373f6356279777874988.jpg', 'book', 'uploads/images/beva/full/514640e95296fa28124b373f6356279777874988.jpg', '', 'https://3w.beva.cn/story/images/res/10519/ST_nongfuyushe205213-23.jpg', 'image/jpeg', 'jpeg', '12590', '2ff1c1cf5cd8a4abec6f17a838eb714c', '', 'local', '0', '1545804031', '1545804031', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('767', '0', 'AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', 'book', 'uploads/mp3/beva/1ec95347f0ae8a5cf5d5c0ece3bfe38f/AU_Zi-Zuo-Cong-Ming-De-Xao-Hu-Li.mp3', '', 'http://story.beva.com/audio/download/10298/1', 'audio/mp3', 'mp3', '1278876', '65516d5b1f49286eccfaa50c86f30af5', '', 'local', '0', '1545804032', '1545804032', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('768', '0', 'AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', 'book', 'uploads/mp3/beva/aa1d84cb086d879a62962b73e5fe3cc9/AU_Ha-Li-He-Ke-Pa-De-Guai-Wu.mp3', '', 'http://story.beva.com/audio/download/10426/1', 'audio/mp3', 'mp3', '1252380', '6341cb43fd257d21dfb0050a53633af8', '', 'local', '0', '1545804032', '1545804032', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('769', '0', 'AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', 'book', 'uploads/mp3/beva/9125790e1096da27555e51d0f1b8b709/AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', '', 'http://story.beva.com/audio/download/10469/1', 'audio/mp3', 'mp3', '1070794', 'c8d8e5433f1ccf6effe9c7450c9bf598', '', 'local', '0', '1545804032', '1545804032', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('770', '0', 'AU_Hong-Ma-Yi-De-Li-Wu.mp3', 'book', 'uploads/mp3/beva/9134980ee272bb2f5a88a67e861b21d5/AU_Hong-Ma-Yi-De-Li-Wu.mp3', '', 'http://story.beva.com/audio/download/10269/1', 'audio/mp3', 'mp3', '2227986', '5a32489eb66e523a5db44f338540fb59', '', 'local', '0', '1545804033', '1545804033', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('771', '0', 'AU_yanerdaoling.mp3', 'book', 'uploads/mp3/beva/186da645c894cd943871c7ad42264139/AU_yanerdaoling.mp3', '', 'http://story.beva.com/audio/download/10059/1', 'audio/mp3', 'mp3', '710782', 'de76583fc8f740cf748bdcd51db61262', '', 'local', '0', '1545804034', '1545804034', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('772', '0', 'AU_chouxiaoya.MP3', 'book', 'uploads/mp3/beva/a121d72a0dc0a444cea642bd8c0bf6e8/AU_chouxiaoya.MP3', '', 'http://story.beva.com/audio/download/10036/1', 'audio/mp3', 'mp3', '2292331', '86b83bad2dc9a5c538957564dd007d49', '', 'local', '0', '1545804034', '1545804034', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('773', '0', 'AU_shuihexiaolingyangqubishu.mp3', 'book', 'uploads/mp3/beva/89bdf48025ae0a28cf76320da84fd5e2/AU_shuihexiaolingyangqubishu.mp3', '', 'http://story.beva.com/audio/download/10229/1', 'audio/mp3', 'mp3', '1709586', '42db817fb13e940b74972801c4c1074d', '', 'local', '0', '1545804034', '1545804034', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('774', '0', 'AU_mao-ma-ma-ban-jia.mp3', 'book', 'uploads/mp3/beva/13b1d6713037a153a207c20402d403d4/AU_mao-ma-ma-ban-jia.mp3', '', 'http://story.beva.com/audio/download/11519/1', 'audio/mp3', 'mp3', '3409749', 'cf6fe88b3e29c0ccbe07402f81f857e0', '', 'local', '0', '1545804034', '1545804034', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('775', '0', 'AU_Xiong-Di.mp3', 'book', 'uploads/mp3/beva/a9f1d9b19c6370f1311cfe71218d5333/AU_Xiong-Di.mp3', '', 'http://story.beva.com/audio/download/10453/1', 'audio/mp3', 'mp3', '1211328', '4c6e020a9ee25ceec56c8f9345a2ad26', '', 'local', '0', '1545804035', '1545804035', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('776', '0', 'AU_mangrenmoxiang.MP3', 'book', 'uploads/mp3/beva/ec7aec475b653e2bcd7c45da319e882d/AU_mangrenmoxiang.MP3', '', 'http://story.beva.com/audio/download/10054/1', 'audio/mp3', 'mp3', '803806', '269f223c0f62df8fbb245e2abeecbc65', '', 'local', '0', '1545804035', '1545804035', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('777', '0', 'AU_yigedoujialidewulidou001.mp3', 'book', 'uploads/mp3/beva/cca2788f266301f6cff28250ea955848/AU_yigedoujialidewulidou001.mp3', '', 'http://story.beva.com/audio/download/10434/3', 'audio/mp3', 'mp3', '1263896', 'f061e338a9d921de04f7829c29541a6f', '', 'local', '0', '1545804036', '1545804036', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('778', '0', 'AU_yigedoujialidewulidou002.mp3', 'book', 'uploads/mp3/beva/cca2788f266301f6cff28250ea955848/AU_yigedoujialidewulidou002.mp3', '', 'http://story.beva.com/audio/download/10434/3', 'audio/mp3', 'mp3', '938600', '2b6801ef17651fd6fc2d329b31de9b98', '', 'local', '0', '1545804036', '1545804036', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('779', '0', 'AU_yigedoujialidewulidou003.mp3', 'book', 'uploads/mp3/beva/cca2788f266301f6cff28250ea955848/AU_yigedoujialidewulidou003.mp3', '', 'http://story.beva.com/audio/download/10434/3', 'audio/mp3', 'mp3', '1403144', 'e2c3f8e4817c9da8a0224ad9209feda5', '', 'local', '0', '1545804036', '1545804036', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('780', '0', 'AU_yigedoujialidewulidou004.mp3', 'book', 'uploads/mp3/beva/cca2788f266301f6cff28250ea955848/AU_yigedoujialidewulidou004.mp3', '', 'http://story.beva.com/audio/download/10434/3', 'audio/mp3', 'mp3', '1342232', '94171632c2568ffe3161ea8a156ba0d3', '', 'local', '0', '1545804036', '1545804036', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('781', '0', 'AU_pangukaitian.mp3', 'book', 'uploads/mp3/beva/b89077bfc2e2efbc87101b109356785f/AU_pangukaitian.mp3', '', 'http://story.beva.com/audio/download/10199/1', 'audio/mp3', 'mp3', '712222', 'e06b768b4626501e04140a317411623c', '', 'local', '0', '1545804037', '1545804037', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('782', '0', 'AU_Da-Xiong-Tao-Ya-Tao.mp3', 'book', 'uploads/mp3/beva/f1d6d21576fb72fc254345be8baa511b/AU_Da-Xiong-Tao-Ya-Tao.mp3', '', 'http://story.beva.com/audio/download/11106/1', 'audio/mp3', 'mp3', '1565472', 'a4881f2ed039c83091fa1f9b3dd6ddcc', '', 'local', '0', '1545804038', '1545804038', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('783', '0', 'AU_Xiao-Mu-Ji-Huan-Huan.mp3', 'book', 'uploads/mp3/beva/f4004434d73170f5fa1712e954f002bc/AU_Xiao-Mu-Ji-Huan-Huan.mp3', '', 'http://story.beva.com/audio/download/11072/1', 'audio/mp3', 'mp3', '2880768', 'd51b09f985a1621b7539c49539de77c6', '', 'local', '0', '1545804041', '1545804041', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('784', '0', 'AU_daduzideguoguo.mp3', 'book', 'uploads/mp3/beva/fcde9da7b7a0ed049897f4f7814881be/AU_daduzideguoguo.mp3', '', 'http://story.beva.com/audio/download/10211/1', 'audio/mp3', 'mp3', '1487676', '896d63381c557dac699cdfb1e3db8371', '', 'local', '0', '1545804042', '1545804042', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('785', '0', 'AU_Sha-Lou-De-Qi-Shi.mp3', 'book', 'uploads/mp3/beva/8708d293f16b81422db8d2d9a02e5c7d/AU_Sha-Lou-De-Qi-Shi.mp3', '', 'http://story.beva.com/audio/download/10482/1', 'audio/mp3', 'mp3', '1956678', '65d78ef56713c7b476994385b9b88149', '', 'local', '0', '1545804051', '1545804051', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('786', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/c941ea374742fc8b22e3bbfa03415941/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10438/1', 'audio/mp3', 'mp3', '1173754', '48cb860a987f8e5e251ac88c3c1bf1b2', '', 'local', '0', '1545804051', '1545804051', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('787', '0', 'AU_zen-me-bian-bie-fang-xiang.mp3', 'book', 'uploads/mp3/beva/25cf149fddd590a058e194ae0412a001/AU_zen-me-bian-bie-fang-xiang.mp3', '', 'http://story.beva.com/audio/download/10691/1', 'audio/mp3', 'mp3', '2153372', '09c91da0318d727050f32fb8b30850d6', '', 'local', '0', '1545804053', '1545804053', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('788', '0', 'AU_Zhen-Gui-De-Ying-Bi.mp3', 'book', 'uploads/mp3/beva/6982650855f44ad8484be3a097c40a85/AU_Zhen-Gui-De-Ying-Bi.mp3', '', 'http://story.beva.com/audio/download/10584/1', 'audio/mp3', 'mp3', '3887038', 'a8ad64be4890cdc260a796ef018a6fa0', '', 'local', '0', '1545804053', '1545804053', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('789', '0', 'AU_she-shui-yu-wei-wei.mp3', 'book', 'uploads/mp3/beva/88478c9cf5aa634c43ddee405e2203f4/AU_she-shui-yu-wei-wei.mp3', '', 'http://story.beva.com/audio/download/11515/1', 'audio/mp3', 'mp3', '2293893', 'e0f75ad4a8c32657222d616fc12cd81c', '', 'local', '0', '1545804053', '1545804053', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('790', '0', 'AU_yueliang.MP3', 'book', 'uploads/mp3/beva/41e87d1578d32ce092f49054ffa3e41b/AU_yueliang.MP3', '', 'http://story.beva.com/audio/download/10088/1', 'audio/mp3', 'mp3', '756714', '0f6330878a8121104a9b09c70ed13a81', '', 'local', '0', '1545804056', '1545804056', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('791', '0', 'AU_qiongrenhefuren.MP3', 'book', 'uploads/mp3/beva/2ef70ab834cf4b065a06c479502cc322/AU_qiongrenhefuren.MP3', '', 'http://story.beva.com/audio/download/10080/1', 'audio/mp3', 'mp3', '1566143', 'ba346a34a83bdf32916fdc7c6d1b9d6d', '', 'local', '0', '1545804060', '1545804060', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('792', '0', 'AU_shan-li-lai-de-xiao-lao-hu.mp3', 'book', 'uploads/mp3/beva/5e91fed88902a300a90eabb507da688b/AU_shan-li-lai-de-xiao-lao-hu.mp3', '', 'http://story.beva.com/audio/download/11516/1', 'audio/mp3', 'mp3', '2998773', '1843a44ee5051a244a1de79805bbc1ee', '', 'local', '0', '1545804075', '1545804075', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('793', '0', 'AU_Zhen-Jia-XIao-Bai-Tu.mp3', 'book', 'uploads/mp3/beva/fb5968eaf23d2bf0a83ba852c21b0688/AU_Zhen-Jia-XIao-Bai-Tu.mp3', '', 'http://story.beva.com/audio/download/11084/1', 'audio/mp3', 'mp3', '1715520', '11dd939998f89e21d2f2bc32809d7886', '', 'local', '0', '1545804075', '1545804075', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('794', '0', 'AU_shouzhudaitu.mp3', 'book', 'uploads/mp3/beva/759d8097d708a5e1e76f2a26958ed982/AU_shouzhudaitu.mp3', '', 'http://story.beva.com/audio/download/10055/1', 'audio/mp3', 'mp3', '662542', 'f1c1aeefb833dd5ebaacf0212791010e', '', 'local', '0', '1545804076', '1545804076', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('795', '0', 'AU_jingyesi.mp3', 'book', 'uploads/mp3/beva/8f4605972736232ef93ac946073a3417/AU_jingyesi.mp3', '', 'http://story.beva.com/audio/download/10231/1', 'audio/mp3', 'mp3', '637784', '001b4290e7328c1d183d01dd0ba53ecc', '', 'local', '0', '1545804076', '1545804076', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('796', '0', 'AU_si-ma-guang-za-gang.mp3', 'book', 'uploads/mp3/beva/e851a6414dcf56cb0278cb074d1c0dfd/AU_si-ma-guang-za-gang.mp3', '', 'http://story.beva.com/audio/download/10758/1', 'audio/mp3', 'mp3', '1670159', '8c20f7e13a91ea73eac22042e483935d', '', 'local', '0', '1545804076', '1545804076', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('797', '0', 'AU_Da-Tou-Er-Zi-Yu-Mao-Huang-Huang.mp3', 'book', 'uploads/mp3/beva/50b592b209318b623044a6ba2369ee58/AU_Da-Tou-Er-Zi-Yu-Mao-Huang-Huang.mp3', '', 'http://story.beva.com/audio/download/11108/1', 'audio/mp3', 'mp3', '2393616', '7a27e6545899a8083e24f1b65b0bca27', '', 'local', '0', '1545804077', '1545804077', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('798', '0', 'ad446827c2ed779a6f2f549c2c55456af15ed32a.jpg', 'book', 'uploads/images/beva/full/ad446827c2ed779a6f2f549c2c55456af15ed32a.jpg', '', 'https://3w.beva.cn/story/images/res/10834/ST_damugemanyouji205.jpg', 'image/jpeg', 'jpeg', '8796', '2dd7c85ba2f67c608230515db1ece1b8', '', 'local', '0', '1545804080', '1545804080', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('799', '0', 'AU_xingxingyinyuan.MP3', 'book', 'uploads/mp3/beva/3a5778175643ab452811ce4d24b0b012/AU_xingxingyinyuan.MP3', '', 'http://story.beva.com/audio/download/10082/1', 'audio/mp3', 'mp3', '806397', 'f2ec3253247251b6b3ed925e30c7bd76', '', 'local', '0', '1545804083', '1545804083', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('800', '0', 'AU_wafuyumuji.mp3', 'book', 'uploads/mp3/beva/6505d9a721debb56792e789ce83d4a81/AU_wafuyumuji.mp3', '', 'http://story.beva.com/audio/download/10197/1', 'audio/mp3', 'mp3', '639648', '228663ffd75e05d0ba6ca14c87551d00', '', 'local', '0', '1545804083', '1545804083', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('801', '0', 'bf598aa86964ab0f9596788170d11edf34e834ec.jpg', 'book', 'uploads/images/beva/full/bf598aa86964ab0f9596788170d11edf34e834ec.jpg', '', 'https://3w.beva.cn/story/images/res/10007/ST_guafuyumuji205.jpg', 'image/jpeg', 'jpeg', '8601', 'f37e12ad8ca6a76679f13e3cb4f85122', '', 'local', '0', '1545804083', '1545804083', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('802', '0', 'AU_Sha-Lou-De-Qi-Shi.mp3', 'book', 'uploads/mp3/beva/1003691cedcb546cebc1838797335555/AU_Sha-Lou-De-Qi-Shi.mp3', '', 'http://story.beva.com/audio/download/11824/3', 'audio/mp3', 'mp3', '1956678', '503d66925e31459289690120b30af241', '', 'local', '0', '1545804084', '1545804084', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('803', '0', 'AU_ya-miao-zhu-zhang.mp3', 'book', 'uploads/mp3/beva/1a2c8a31f38b15616fa2d22f51df3c3f/AU_ya-miao-zhu-zhang.mp3', '', 'http://story.beva.com/audio/download/11018/1', 'audio/mp3', 'mp3', '693502', 'df61eced1a05b0a08300f9d3aef9c81f', '', 'local', '0', '1545804084', '1545804084', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('804', '0', 'AU_jiao-hua-de-lao-hu-li-he-ya-zi.mp3', 'book', 'uploads/mp3/beva/9132b4015ed988c8b518d93c72bc6411/AU_jiao-hua-de-lao-hu-li-he-ya-zi.mp3', '', 'http://story.beva.com/audio/download/10737/1', 'audio/mp3', 'mp3', '1598567', '16b2a5c1e038106d2321cb6f84cdaa86', '', 'local', '0', '1545804085', '1545804085', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('805', '0', 'AU_Shi-Zi-He-Tiao-Zao.mp3', 'book', 'uploads/mp3/beva/8ce900e4bb35790a07504164cd39b621/AU_Shi-Zi-He-Tiao-Zao.mp3', '', 'http://story.beva.com/audio/download/10516/1', 'audio/mp3', 'mp3', '2789462', '1271eeb4a7fc9da8876d14aa38e280c0', '', 'local', '0', '1545804085', '1545804085', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('806', '0', 'AU_chang-e-ben-yue.MP3', 'book', 'uploads/mp3/beva/e2954d865f106c022988c4fc03176707/AU_chang-e-ben-yue.MP3', '', 'http://story.beva.com/audio/download/11038/1', 'audio/mp3', 'mp3', '1840605', '45b30bc3356b8d301c01cef25553b36a', '', 'local', '0', '1545804086', '1545804086', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('807', '0', 'AU_Shi-Tou-Ji-De-Shui-Bo.mp3', 'book', 'uploads/mp3/beva/471e2503dc4bef3ee543d3f4428b0f05/AU_Shi-Tou-Ji-De-Shui-Bo.mp3', '', 'http://story.beva.com/audio/download/10502/1', 'audio/mp3', 'mp3', '1992242', '44c85a5b42d0932f403fe1749027cf88', '', 'local', '0', '1545804086', '1545804086', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('808', '0', 'AU_Ye-Er-Yu-Feng-Er.mp3', 'book', 'uploads/mp3/beva/06da691b5bc6ba2e650632447803f1f6/AU_Ye-Er-Yu-Feng-Er.mp3', '', 'http://story.beva.com/audio/download/10448/1', 'audio/mp3', 'mp3', '1107366', '3097aa54d57c40bf2684babc1d99e556', '', 'local', '0', '1545804087', '1545804087', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('809', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/a09c9bc5ca7877aad8a62dc88aa3dc86/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10440/1', 'audio/mp3', 'mp3', '1173754', '493f9e2ab35a475c4cc0df71024734ad', '', 'local', '0', '1545804088', '1545804088', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('810', '0', 'AU_maihuochaidexiaonvhai001.MP3', 'book', 'uploads/mp3/beva/865d90bdc55dccfdf9edd46507cec300/AU_maihuochaidexiaonvhai001.MP3', '', 'http://story.beva.com/audio/download/10685/3', 'audio/mp3', 'mp3', '1439427', '1ad38a3a20de77e23cf0b43bc2943b6a', '', 'local', '0', '1545804090', '1545804090', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('811', '0', 'AU_maihuochaidexiaonvhai002.MP3', 'book', 'uploads/mp3/beva/865d90bdc55dccfdf9edd46507cec300/AU_maihuochaidexiaonvhai002.MP3', '', 'http://story.beva.com/audio/download/10685/3', 'audio/mp3', 'mp3', '1696611', 'a0bd400f15ed4aeba740973c49058417', '', 'local', '0', '1545804090', '1545804090', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('812', '0', 'AU_yandijishishenghuo.mp3', 'book', 'uploads/mp3/beva/222c23844c24cec8bdeb77a9ea089bef/AU_yandijishishenghuo.mp3', '', 'http://story.beva.com/audio/download/10201/1', 'audio/mp3', 'mp3', '569810', '2c7ff8643e8f8660e9f0a32e0b0c2fd2', '', 'local', '0', '1545804092', '1545804092', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('813', '0', 'AU_tulaodewuy.mp3', 'book', 'uploads/mp3/beva/0e62e9a1f98f632472fdf8f32082470c/AU_tulaodewuy.mp3', '', 'http://story.beva.com/audio/download/10198/1', 'audio/mp3', 'mp3', '993440', '0683d8607f8d92ec31537c0e2d385a2d', '', 'local', '0', '1545804093', '1545804093', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('814', '0', '64be8b66d7628f131ca8db09eeee1b1ac1378e75.jpg', 'book', 'uploads/images/beva/full/64be8b66d7628f131ca8db09eeee1b1ac1378e75.jpg', '', 'https://3w.beva.cn/story/images/res/10008/ST_tulaodewuya205.jpg', 'image/jpeg', 'jpeg', '8139', 'a882ed5513d2f2d962b1df828b7aa3a3', '', 'local', '0', '1545804093', '1545804093', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('815', '0', 'AU_Xiao-Hui-lang.mp3', 'book', 'uploads/mp3/beva/5151cce6d42b0ebb4b775df210934c67/AU_Xiao-Hui-lang.mp3', '', 'http://story.beva.com/audio/download/11099/1', 'audio/mp3', 'mp3', '1387488', 'a63cbad24f5439cb7e1379e30e1adddb', '', 'local', '0', '1545804094', '1545804094', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('816', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/9959082c3994719d45caf4c565f17fab/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10436/1', 'audio/mp3', 'mp3', '1173754', '31125602c4ff7787e82e1f937c3b267b', '', 'local', '0', '1545804094', '1545804094', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('817', '0', 'AU_Xiang-Bi-Zi-Qiao.mp3', 'book', 'uploads/mp3/beva/97393e0e7c9ec89030c8b6dc5a6bec8c/AU_Xiang-Bi-Zi-Qiao.mp3', '', 'http://story.beva.com/audio/download/11103/1', 'audio/mp3', 'mp3', '1840224', '85bf20135e9ef1256a91075a4a7903a6', '', 'local', '0', '1545804094', '1545804094', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('818', '0', 'bfa583367681cb2f8f97a3f9da582a17ca0252f5.jpg', 'book', 'uploads/images/beva/full/bfa583367681cb2f8f97a3f9da582a17ca0252f5.jpg', '', 'https://3w.beva.cn/story/images/res/15096/ST_shengdanshudegushi205213.png', 'image/jpeg', 'jpeg', '14781', 'c69e2fd6a53b98aa71f5d06c703afc52', '', 'local', '0', '1545804096', '1545804096', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('819', '0', 'AU_Hong-Ma-Yi-De-Li-Wu.mp3', 'book', 'uploads/mp3/beva/de81ffe92c936e774bdd81157d0bec58/AU_Hong-Ma-Yi-De-Li-Wu.mp3', '', 'http://story.beva.com/audio/download/10268/1', 'audio/mp3', 'mp3', '2227986', 'ab4a82c9f51076775a908d53e178ac83', '', 'local', '0', '1545804096', '1545804096', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('820', '0', 'AU_zhuheniu.mp3', 'book', 'uploads/mp3/beva/2ca68b51a1fdf65999019779b8b75114/AU_zhuheniu.mp3', '', 'http://story.beva.com/audio/download/10216/1', 'audio/mp3', 'mp3', '883304', 'e9d9fae3f2e323bcc207704787b6c934', '', 'local', '0', '1545804096', '1545804096', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('821', '0', 'AU_He-Ma-Da-Shu-Kai-Dian.mp3', 'book', 'uploads/mp3/beva/c6f8b1c320de22b7fafd145579f6bc62/AU_He-Ma-Da-Shu-Kai-Dian.mp3', '', 'http://story.beva.com/audio/download/10233/1', 'audio/mp3', 'mp3', '883886', '174687558676f22c8235f43a6178d282', '', 'local', '0', '1545804098', '1545804098', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('822', '0', '179a40bee31411c5e2bc027bcffb92ab183e84a5.jpg', 'book', 'uploads/images/beva/full/179a40bee31411c5e2bc027bcffb92ab183e84a5.jpg', '', 'https://3w.beva.cn/story/images/res/15102/ST_shengdanmao205.jpg', 'image/jpeg', 'jpeg', '11883', '03adf2fddf4faa2cf64389cbebd6f3ea', '', 'local', '0', '1545804098', '1545804098', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('823', '0', 'AU_zhilanyushu.mp3', 'book', 'uploads/mp3/beva/e21961f49093fa66afec8c1c54b1cf5a/AU_zhilanyushu.mp3', '', 'http://story.beva.com/audio/download/10064/1', 'audio/mp3', 'mp3', '2404365', '944310d1bf7c9f7e45726e50816d137c', '', 'local', '0', '1545804101', '1545804101', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('824', '0', 'AU_nuwazaoren.mp3', 'book', 'uploads/mp3/beva/d04da12bb10104ee6e00bff81a4d89ec/AU_nuwazaoren.mp3', '', 'http://story.beva.com/audio/download/10995/1', 'audio/mp3', 'mp3', '2126611', 'cf4f18367e0eb5153c1c87c886f2d031', '', 'local', '0', '1545804101', '1545804101', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('825', '0', 'dd735434dc8ff352be6eb432a6250074f242f378.jpg', 'book', 'uploads/images/beva/full/dd735434dc8ff352be6eb432a6250074f242f378.jpg', '', 'https://3w.beva.cn/story/images/res/15351/ST_nvwazaoren205213.png', 'image/jpeg', 'jpeg', '10921', 'cb3be27ded16e9d189905590b453d8e2', '', 'local', '0', '1545804101', '1545804101', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('826', '0', 'AU_Zhuan-Xin-Zhi-Zhi.mp3', 'book', 'uploads/mp3/beva/c0e9ae2b6bbee02d1e1fc1d1918a4f71/AU_Zhuan-Xin-Zhi-Zhi.mp3', '', 'http://story.beva.com/audio/download/11373/1', 'audio/mp3', 'mp3', '959733', '43e081f45346273eda7a20e531a60af3', '', 'local', '0', '1545804102', '1545804102', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('827', '0', 'AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', 'book', 'uploads/mp3/beva/9a6c797d26a2484eea64f0c7571a3d1e/AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', '', 'http://story.beva.com/audio/download/10471/1', 'audio/mp3', 'mp3', '1070794', 'f3bdd5a69a88301ea4420c5237d712c2', '', 'local', '0', '1545804102', '1545804102', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('828', '0', 'AU_Jian-Wang-Cao.mp3', 'book', 'uploads/mp3/beva/98b28eac71096ee723bd56f68fb2f5cc/AU_Jian-Wang-Cao.mp3', '', 'http://story.beva.com/audio/download/11054/1', 'audio/mp3', 'mp3', '1529184', '53daa91cdbba41a174c68de39ff07033', '', 'local', '0', '1545804103', '1545804103', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('829', '0', 'AU_congmingdexiaomutong.MP3', 'book', 'uploads/mp3/beva/61dabd6c9a4fc1e408bcd4a8595ccd70/AU_congmingdexiaomutong.MP3', '', 'http://story.beva.com/audio/download/10077/1', 'audio/mp3', 'mp3', '1123345', 'f9cdf76c70c5ffb1a809635226b4440d', '', 'local', '0', '1545804103', '1545804103', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('830', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/b292b131aa9317250964020c920bd5d1/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10442/1', 'audio/mp3', 'mp3', '1133002', '735107aaf0e14721f8a5ec53a031a974', '', 'local', '0', '1545804104', '1545804104', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('831', '0', 'AU_Shui-Zui-Xian.mp3', 'book', 'uploads/mp3/beva/56caee058f9242158f11e552d0f7ae9f/AU_Shui-Zui-Xian.mp3', '', 'http://story.beva.com/audio/download/10472/1', 'audio/mp3', 'mp3', '1025858', '4af10b9f66a173fff915b4aa044068bc', '', 'local', '0', '1545804104', '1545804104', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('832', '0', 'AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', 'book', 'uploads/mp3/beva/46911a729243a58f2a9adc3cf04934b7/AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', '', 'http://story.beva.com/audio/download/10588/1', 'audio/mp3', 'mp3', '2280029', '3613527576127d968445370d8cf18634', '', 'local', '0', '1545804105', '1545804105', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('833', '0', 'AU_Dai-Xiang-lian-Bi-Sai.mp3', 'book', 'uploads/mp3/beva/a5959439a3ce00d67c60f3c66cc54855/AU_Dai-Xiang-lian-Bi-Sai.mp3', '', 'http://story.beva.com/audio/download/11110/1', 'audio/mp3', 'mp3', '1418016', '0025669e95d5f5515a1d1c08e24f5dab', '', 'local', '0', '1545804106', '1545804106', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('834', '0', 'AU_Liang-Ge-Xiao-Ji-over.mp3', 'book', 'uploads/mp3/beva/9560699d733a57a1f88ed4e51089db26/AU_Liang-Ge-Xiao-Ji-over.mp3', '', 'http://story.beva.com/audio/download/11343/1', 'audio/mp3', 'mp3', '1175045', 'cc5effb06887aa054e6ff146ccbd489f', '', 'local', '0', '1545804107', '1545804107', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('835', '0', '38c3074d8c3825c29753d1c47e292a2cdd628fe6.jpg', 'book', 'uploads/images/beva/full/38c3074d8c3825c29753d1c47e292a2cdd628fe6.jpg', '', 'https://3w.beva.cn/story/images/res/15095/ST_shengdanwa205.jpg', 'image/jpeg', 'jpeg', '8300', 'f2813b5365500a26f70b14b796a6a57c', '', 'local', '0', '1545804113', '1545804113', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('836', '0', 'AU_Xiao-Gong-Zhu-He-SHe.mp3', 'book', 'uploads/mp3/beva/9e61f94601a85c2ac7b2297b7561cacb/AU_Xiao-Gong-Zhu-He-SHe.mp3', '', 'http://story.beva.com/audio/download/11071/1', 'audio/mp3', 'mp3', '3357696', '6de5d15900515e40b5f62630436941a0', '', 'local', '0', '1545804114', '1545804114', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('837', '0', 'AU_Tian-Shang-De-Da-Xiang.mp3', 'book', 'uploads/mp3/beva/ff964db2099c2b484bd4f75b5ed7cb45/AU_Tian-Shang-De-Da-Xiang.mp3', '', 'http://story.beva.com/audio/download/10403/1', 'audio/mp3', 'mp3', '1106070', '3fb03a794def3a5bdd0dbaf05a6dd47b', '', 'local', '0', '1545804115', '1545804115', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('838', '0', 'AU_qiongrenhefuren.MP3', 'book', 'uploads/mp3/beva/e663a643b5f3fb8117d4bf35f467fa8b/AU_qiongrenhefuren.MP3', '', 'http://story.beva.com/audio/download/10081/1', 'audio/mp3', 'mp3', '1568879', 'e50bfa753bfbee331f723883cf76591d', '', 'local', '0', '1545804116', '1545804116', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('839', '0', 'AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', 'book', 'uploads/mp3/beva/4c9f6b7cb41b95f1c5224d179f59dda8/AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', '', 'http://story.beva.com/audio/download/10467/1', 'audio/mp3', 'mp3', '1486090', '6cc90002589ca993ede9ff9513605527', '', 'local', '0', '1545804116', '1545804116', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('840', '0', 'AU_sheng-jin-dan-de-e.mp3', 'book', 'uploads/mp3/beva/91f0137c2a19a781a609c5cf3ec9ec4c/AU_sheng-jin-dan-de-e.mp3', '', 'http://story.beva.com/audio/download/11509/1', 'audio/mp3', 'mp3', '537976', '60063ea4429ecb13af36757f118a7d67', '', 'local', '0', '1545804117', '1545804117', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('841', '0', 'd6164043d65b1f1296006bde2fb6ff5a5a5cec04.jpg', 'book', 'uploads/images/beva/full/d6164043d65b1f1296006bde2fb6ff5a5a5cec04.jpg', '', 'https://3w.beva.cn/story/images/res/10921/ST_shengjindandee205213.png', 'image/jpeg', 'jpeg', '10342', '406b85d49bc3e9c26b82bb72d6df7ff3', '', 'local', '0', '1545804117', '1545804117', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('842', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/0808515ab73e7c86daf238f9f77c0fff/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10446/1', 'audio/mp3', 'mp3', '1133002', '1d41cffb27410ed235860880e443b27d', '', 'local', '0', '1545804117', '1545804117', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('843', '0', 'AU_Sen-Lin-Yue-Dui.mp3', 'book', 'uploads/mp3/beva/13801729cf3e9092e753663840e12323/AU_Sen-Lin-Yue-Dui.mp3', '', 'http://story.beva.com/audio/download/10330/1', 'audio/mp3', 'mp3', '1300036', '71359ca0f656819584e430e0fe7394a3', '', 'local', '0', '1545804118', '1545804118', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('844', '0', 'AU_He-Ma-Xian-Sheng-De-Mo-Shu-over.mp3', 'book', 'uploads/mp3/beva/71550d7ac92746ba3b938892f9321444/AU_He-Ma-Xian-Sheng-De-Mo-Shu-over.mp3', '', 'http://story.beva.com/audio/download/11295/1', 'audio/mp3', 'mp3', '797157', 'eb60422e163b6fced6f9fc2b9447e0e9', '', 'local', '0', '1545804126', '1545804126', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('845', '0', 'AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', 'book', 'uploads/mp3/beva/bebeee4d34bdff9860150d43abc03bab/AU_Xiao-Mian-Bao-Li-De-Yin-Bi.mp3', '', 'http://story.beva.com/audio/download/10468/1', 'audio/mp3', 'mp3', '1486090', '04224be2e84ceee307184664ecf4876e', '', 'local', '0', '1545804134', '1545804134', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('846', '0', 'AU_Jian-Dao-Da-Xia-over.mp3', 'book', 'uploads/mp3/beva/57778ff0151ce091380f9da218fcf708/AU_Jian-Dao-Da-Xia-over.mp3', '', 'http://story.beva.com/audio/download/11304/1', 'audio/mp3', 'mp3', '1811925', '7512db31077135a4b8e0548b3fc22256', '', 'local', '0', '1545804159', '1545804159', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('847', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/b1fa3189f7561ae22199a2fdbe108f82/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10445/1', 'audio/mp3', 'mp3', '1133002', 'fc6f4ebf3c88b94155c06ebfe7e80abf', '', 'local', '0', '1545804159', '1545804159', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('848', '0', 'AU_lianggeshenmidexiaoxiejiang.mp3', 'book', 'uploads/mp3/beva/cc786efdaf2df58a3718b1a7c576c276/AU_lianggeshenmidexiaoxiejiang.mp3', '', 'http://story.beva.com/audio/download/10192/1', 'audio/mp3', 'mp3', '2081956', '91ea10c9c0692c43588f6a1e998fea40', '', 'local', '0', '1545804159', '1545804159', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('849', '0', 'AU_yuanmuqiuyu.MP3', 'book', 'uploads/mp3/beva/816099afdf278c53454edb8b648dc08b/AU_yuanmuqiuyu.MP3', '', 'http://story.beva.com/audio/download/10062/1', 'audio/mp3', 'mp3', '1269790', 'c675bc19af0d02b30c21e5398f44f1b2', '', 'local', '0', '1545804168', '1545804168', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('850', '0', 'c4b2f501a69239ea6585e3292029b72e14227cd1.jpg', 'book', 'uploads/images/beva/full/c4b2f501a69239ea6585e3292029b72e14227cd1.jpg', '', 'https://3w.beva.cn/story/images/res/10195/ST_yuanmuqiouyu205.jpg', 'image/jpeg', 'jpeg', '5679', '6afdc0c41707e757b10f948a67b42c54', '', 'local', '0', '1545804168', '1545804168', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('851', '0', 'AU_shouzhudaitu.mp3', 'book', 'uploads/mp3/beva/0e4a1a4059672d060419c833c9712a2a/AU_shouzhudaitu.mp3', '', 'http://story.beva.com/audio/download/10056/1', 'audio/mp3', 'mp3', '662110', '9ec409c771c404fb67251f7a701a94ea', '', 'local', '0', '1545804169', '1545804169', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('852', '0', 'AU_zhubajiechixigua.MP3', 'book', 'uploads/mp3/beva/688aaf633109a97974ebbfa7b6e586c3/AU_zhubajiechixigua.MP3', '', 'http://story.beva.com/audio/download/10116/1', 'audio/mp3', 'mp3', '1978705', 'f9f5f889a9cf4b06b43a497635edc202', '', 'local', '0', '1545804170', '1545804170', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('853', '0', 'efe4c4c94f621143cd40ec5cbc57ff2446309ba2.jpg', 'book', 'uploads/images/beva/full/efe4c4c94f621143cd40ec5cbc57ff2446309ba2.jpg', '', 'https://3w.beva.cn/story/images/res/10662/ST_296-205-sh-zbjcxg.jpg', 'image/jpeg', 'jpeg', '16292', '7cd5b1a97c2fe96bbadc8f4eab35fb1a', '', 'local', '0', '1545804170', '1545804170', '100', '1', '296', '205');
INSERT INTO `dp_admin_attachment` VALUES ('854', '0', 'AU_zhuheniu.mp3', 'book', 'uploads/mp3/beva/9b9d595500033e79d2af803e23706f32/AU_zhuheniu.mp3', '', 'http://story.beva.com/audio/download/10215/1', 'audio/mp3', 'mp3', '879128', 'b92cb6b95406d6b7c20007ae9dbc0df1', '', 'local', '0', '1545804170', '1545804170', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('855', '0', 'AU_yanerdaoling.mp3', 'book', 'uploads/mp3/beva/19a919d2a676bf0a023abc1d3ede2531/AU_yanerdaoling.mp3', '', 'http://story.beva.com/audio/download/10061/1', 'audio/mp3', 'mp3', '661966', '48091f8fd36b64fd103a57bc6d7d28fd', '', 'local', '0', '1545804172', '1545804172', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('856', '0', 'AU_Jian-Zhu-He-Ta-De-Huo-Ban.mp3', 'book', 'uploads/mp3/beva/f9173937c3900ce12b4003a2721fc5eb/AU_Jian-Zhu-He-Ta-De-Huo-Ban.mp3', '', 'http://story.beva.com/audio/download/11105/1', 'audio/mp3', 'mp3', '2529696', 'f2bace41039179040b344f047bef7733', '', 'local', '0', '1545804177', '1545804177', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('857', '0', 'AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', 'book', 'uploads/mp3/beva/a07fb31b18ba17f9dbe32e6a89d3a54a/AU_Tai-yang-He-Feng-De-Zheng-Chao.mp3', '', 'http://story.beva.com/audio/download/10470/1', 'audio/mp3', 'mp3', '1070794', '87a7ed07c6780f67dbb6a1154f9f6bc2', '', 'local', '0', '1545804178', '1545804178', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('858', '0', 'AU_xiao-xiong-chuan-pi-xie.mp3', 'book', 'uploads/mp3/beva/c2ec4dfa8f663dec7bd59f6dc25126e0/AU_xiao-xiong-chuan-pi-xie.mp3', '', 'http://story.beva.com/audio/download/11512/1', 'audio/mp3', 'mp3', '1116549', '1bb4fc85f827065e7731cbd6996bc168', '', 'local', '0', '1545804179', '1545804179', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('859', '0', 'AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', 'book', 'uploads/mp3/beva/cbb07eb92b665a1ed28a252bd1557fe2/AU_Yi-Zhi-Jiao-Ao-De-Xiao-Ji.mp3', '', 'http://story.beva.com/audio/download/10441/1', 'audio/mp3', 'mp3', '1133002', '6767a209c281062541cff84d4d5b31e1', '', 'local', '0', '1545804180', '1545804180', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('860', '0', 'AU_Qi-Guai-De-Jing-Zi.mp3', 'book', 'uploads/mp3/beva/114169657dea515b44ec3824378b3bf6/AU_Qi-Guai-De-Jing-Zi.mp3', '', 'http://story.beva.com/audio/download/11062/1', 'audio/mp3', 'mp3', '1924896', 'c207dc1420eb2efb42092614902d4e10', '', 'local', '0', '1545804180', '1545804180', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('861', '0', 'AU_yamiaozhuzhang.mp3', 'book', 'uploads/mp3/beva/2f4c43ff5d1bb5d27113ba37ef2fd010/AU_yamiaozhuzhang.mp3', '', 'http://story.beva.com/audio/download/10057/1', 'audio/mp3', 'mp3', '693502', 'd60717be99a49095c450287e6a7417e3', '', 'local', '0', '1545804181', '1545804181', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('862', '0', 'AU_mengjiangnvkuchangcheng.MP3', 'book', 'uploads/mp3/beva/f817801c8825f1ed82a7e319d9e83266/AU_mengjiangnvkuchangcheng.MP3', '', 'http://story.beva.com/audio/download/10097/1', 'audio/mp3', 'mp3', '1949473', '36f2dd6a5eead3a340986e23ff57d4b0', '', 'local', '0', '1545804181', '1545804181', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('863', '0', 'AU_sanzhixiaozhu.mp3', 'book', 'uploads/mp3/beva/5a6a3ef5ec4c1792091f629d92ea569e/AU_sanzhixiaozhu.mp3', '', 'http://story.beva.com/audio/download/10223/1', 'audio/mp3', 'mp3', '1353178', '5f3a3d7cb00ef16132cbac5ff8f69068', '', 'local', '0', '1545804182', '1545804182', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('864', '0', 'AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', 'book', 'uploads/mp3/beva/d24a7450a69925963f120c348c38f9a6/AU_Mang-Ren-Zui-Gan-Ji-Shui.mp3', '', 'http://story.beva.com/audio/download/10491/1', 'audio/mp3', 'mp3', '1819880', 'c44a8595ea7c54ffe823717b7c13a24b', '', 'local', '0', '1545804183', '1545804183', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('865', '0', 'AU_langheqizhixiaoyangok.MP3', 'book', 'uploads/mp3/beva/e991f11d5744a2fc2ad662d82f7996c8/AU_langheqizhixiaoyangok.MP3', '', 'http://story.beva.com/audio/download/10206/1', 'audio/mp3', 'mp3', '2832351', '94164d224c82384a5f9170b5c880c54d', '', 'local', '0', '1545804184', '1545804184', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('866', '0', 'AU_Rang-Niao-Er-Zi-You.mp3', 'book', 'uploads/mp3/beva/23e0b6470108d0339fdfbe87f6b775be/AU_Rang-Niao-Er-Zi-You.mp3', '', 'http://story.beva.com/audio/download/10488/1', 'audio/mp3', 'mp3', '1336182', 'fb4dbe5efef96156110e552b47baf706', '', 'local', '0', '1545804187', '1545804187', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('867', '0', 'AU_guitusaipao.MP3', 'book', 'uploads/mp3/beva/d16cd2f6661cfe5182b628876d9714ae/AU_guitusaipao.MP3', '', 'http://story.beva.com/audio/download/10106/1', 'audio/mp3', 'mp3', '1599693', '05fd4f913c5e73be1397d0881cf93ad7', '', 'local', '0', '1545804188', '1545804188', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('868', '0', 'AU_Xiao-Qing-Wa-De-Gu-Shi.mp3', 'book', 'uploads/mp3/beva/fc29d012c3357a48faecb0c0703d3840/AU_Xiao-Qing-Wa-De-Gu-Shi.mp3', '', 'http://story.beva.com/audio/download/11092/1', 'audio/mp3', 'mp3', '1570944', 'bf8c6f25173ec3b0cfec6ed5d9fc8a22', '', 'local', '0', '1545804188', '1545804188', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('869', '0', 'AU_He-Ma-Da-Shu-Kai-Dian.mp3', 'book', 'uploads/mp3/beva/92eda579d8d3e69da122d1b391f7bbf0/AU_He-Ma-Da-Shu-Kai-Dian.mp3', '', 'http://story.beva.com/audio/download/10235/1', 'audio/mp3', 'mp3', '883886', '9e52219507ee8277e9baa627393b8e74', '', 'local', '0', '1545804188', '1545804188', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('870', '0', 'AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', 'book', 'uploads/mp3/beva/58ff06a947da2929b1224ec2d4af43a2/AU_Zhi-pa-Chi-Le-Yi-Feng-Zhong.mp3', '', 'http://story.beva.com/audio/download/10435/1', 'audio/mp3', 'mp3', '1173754', '9300aff38aabcdf05360a814aa7fe344', '', 'local', '0', '1545804190', '1545804190', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('871', '0', 'AU_jingweitianhai-290.mp3', 'book', 'uploads/mp3/beva/f6f75f227c17cbece0cf32a5223f0d1c/AU_jingweitianhai-290.mp3', '', 'http://story.beva.com/audio/download/11693/1', 'audio/mp3', 'mp3', '4148296', '5a065b56649c89ecb40b6156bf352f90', '', 'local', '0', '1545804191', '1545804191', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('872', '0', '8d74a9abb6bb12a617a97c599267f770e9047e44.jpg', 'book', 'uploads/images/beva/full/8d74a9abb6bb12a617a97c599267f770e9047e44.jpg', '', 'https://3w.beva.cn/story/images/res/43872/ST_jingweitianhai213-205.png', 'image/jpeg', 'jpeg', '12304', '00c716ef7629c0c6d757c10aee8dd8c5', '', 'local', '0', '1545804191', '1545804191', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('873', '0', 'AU_zhuomuniao.MP3', 'book', 'uploads/mp3/beva/863d5a70fb9a6ea3fc1f4714c6b20b0c/AU_zhuomuniao.MP3', '', 'http://story.beva.com/audio/download/10119/1', 'audio/mp3', 'mp3', '377275', '328db27fa59fee4d1193b911f665db3b', '', 'local', '0', '1545804192', '1545804192', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('874', '0', 'AU_he-li-zhi-dou-e-yu.mp3', 'book', 'uploads/mp3/beva/018eb14820558a68691c6a3fcaf4e038/AU_he-li-zhi-dou-e-yu.mp3', '', 'http://story.beva.com/audio/download/11620/1', 'audio/mp3', 'mp3', '1311701', 'de7f1b920f76e9e7dfcddbceb1435f2c', '', 'local', '0', '1545804192', '1545804192', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('875', '0', 'AU_nuwazaoren.mp3', 'book', 'uploads/mp3/beva/8366f4b966f2a042dd7d96655a4b4b4d/AU_nuwazaoren.mp3', '', 'http://story.beva.com/audio/download/10200/1', 'audio/mp3', 'mp3', '774862', 'ae3b2969243d8fbf5dfdb5c580bd5394', '', 'local', '0', '1545804193', '1545804193', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('876', '0', 'AU_sangumaolu-360.mp3', 'book', 'uploads/mp3/beva/9f008a3fd5ddaa9fdb59cc0bd7e4bf4f/AU_sangumaolu-360.mp3', '', 'http://story.beva.com/audio/download/11694/1', 'audio/mp3', 'mp3', '4324205', 'fdd6a87cb30bff285bc4bc06e95ac3a8', '', 'local', '0', '1545804194', '1545804194', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('877', '0', '7cd1a054c3c745bd130d232fb012d88a8f0e7b67.jpg', 'book', 'uploads/images/beva/full/7cd1a054c3c745bd130d232fb012d88a8f0e7b67.jpg', '', 'https://3w.beva.cn/story/images/res/14802/ST_sangumaolu205-213.jpg', 'image/jpeg', 'jpeg', '10615', '2c8e1e35d0df9103af9ff25ffd7a66e9', '', 'local', '0', '1545804194', '1545804194', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('878', '0', 'AU_beva-xiaoshideshuzhi.mp3', 'book', 'uploads/mp3/beva/2ca77c59ff1e2414277909aa8068163a/AU_beva-xiaoshideshuzhi.mp3', '', 'http://story.beva.com/audio/download/10139/1', 'audio/mp3', 'mp3', '4367010', '17356fc3561b8601f1ce69c218bcafb3', '', 'local', '0', '1545804194', '1545804194', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('879', '0', 'AU_Xiao-Wu-Ya-Xue-Yi.mp3', 'book', 'uploads/mp3/beva/5dc2af7e21166fd9cbb69953a311b4bf/AU_Xiao-Wu-Ya-Xue-Yi.mp3', '', 'http://story.beva.com/audio/download/11325/1', 'audio/mp3', 'mp3', '1046853', 'baa78dfe455e3dfaebe87fb37c65331b', '', 'local', '0', '1545804194', '1545804194', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('880', '0', 'AU_Wu-Gui-Fei-Shang-Tian.mp3', 'book', 'uploads/mp3/beva/074f46423e2d409c9aee30cdb67b1da0/AU_Wu-Gui-Fei-Shang-Tian.mp3', '', 'http://story.beva.com/audio/download/10267/1', 'audio/mp3', 'mp3', '1549308', '7e5e2d569d8c8a0a51164e3336110747', '', 'local', '0', '1545804194', '1545804194', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('881', '0', 'AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', 'book', 'uploads/mp3/beva/859e8f048eecb748b533749e1c3187e9/AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', '', 'http://story.beva.com/audio/download/10586/1', 'audio/mp3', 'mp3', '2274557', 'd14241365e61927170044a05fb1e3fc0', '', 'local', '0', '1545804195', '1545804195', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('882', '0', 'AU_xiaohouzixiashan.MP3', 'book', 'uploads/mp3/beva/900f4b45cf11dbb14e2123e1e63eb8c2/AU_xiaohouzixiashan.MP3', '', 'http://story.beva.com/audio/download/10109/1', 'audio/mp3', 'mp3', '560591', '427997b13e577efafff6550184cad6e0', '', 'local', '0', '1545804196', '1545804196', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('883', '0', 'AU_Lang-He-Ren-over.mp3', 'book', 'uploads/mp3/beva/eec78f0be73b93188250900a5d0e5920/AU_Lang-He-Ren-over.mp3', '', 'http://story.beva.com/audio/download/11340/1', 'audio/mp3', 'mp3', '1614789', 'de2dd317916c7b7de6078ad73ca5c753', '', 'local', '0', '1545804196', '1545804196', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('884', '0', '7e99e521c0f856d1ff8d73da2e291bfa0e9f515c.jpg', 'book', 'uploads/images/beva/full/7e99e521c0f856d1ff8d73da2e291bfa0e9f515c.jpg', '', 'https://3w.beva.cn/story/images/res/10449/ST_205213.png', 'image/jpeg', 'jpeg', '10602', 'b81d6abb62b6e2132370cb6ce1644934', '', 'local', '0', '1545804196', '1545804196', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('885', '0', 'AU_erbeihesanbei.mp3', 'book', 'uploads/mp3/beva/22e219ab381fc3d25675fed2b50e815b/AU_erbeihesanbei.mp3', '', 'http://story.beva.com/audio/download/10195/1', 'audio/mp3', 'mp3', '2657837', 'cf0bae84ae5498a27054af417a2b15a9', '', 'local', '0', '1545804196', '1545804196', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('886', '0', 'AU_zhubajiechixigua.MP3', 'book', 'uploads/mp3/beva/686e32409c726d1174ed65edffd8f0c0/AU_zhubajiechixigua.MP3', '', 'http://story.beva.com/audio/download/10117/1', 'audio/mp3', 'mp3', '1981009', 'ab7cf510d7f1673c5db74573bc861692', '', 'local', '0', '1545804197', '1545804197', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('887', '0', 'AU_guoniandelaili.MP3', 'book', 'uploads/mp3/beva/2e54775d57cb392fc405445837c1de99/AU_guoniandelaili.MP3', '', 'http://story.beva.com/audio/download/10093/1', 'audio/mp3', 'mp3', '3355017', '9075e44b17b274b566414f7671ceb38f', '', 'local', '0', '1545804197', '1545804197', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('888', '0', 'AU_Lan-Xiong-Mai-Xi-Gua.mp3', 'book', 'uploads/mp3/beva/d1d0636065e17deb0f890de4e12580d5/AU_Lan-Xiong-Mai-Xi-Gua.mp3', '', 'http://story.beva.com/audio/download/11055/1', 'audio/mp3', 'mp3', '2828208', '0b61ac39a270cb32ebdbc4e08164467e', '', 'local', '0', '1545804198', '1545804198', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('889', '0', 'AU_Xi-Zao-Zhen-Shu-Fu.mp3', 'book', 'uploads/mp3/beva/5a0660b8dd8f3ed8e8b5fc573a898526/AU_Xi-Zao-Zhen-Shu-Fu.mp3', '', 'http://story.beva.com/audio/download/10518/1', 'audio/mp3', 'mp3', '1085510', '5e0dfc43e85c173494f17c38a10ad05c', '', 'local', '0', '1545804199', '1545804199', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('890', '0', 'AU_caochongchengxiang.MP3', 'book', 'uploads/mp3/beva/52f7a3e8389fd7ddffbce99a9f8b958e/AU_caochongchengxiang.MP3', '', 'http://story.beva.com/audio/download/10047/1', 'audio/mp3', 'mp3', '1698765', '975a6acaa19976bf58921161e6dca0a7', '', 'local', '0', '1545804199', '1545804199', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('891', '0', 'ee8fcb74811704781bca8ed16c4eb943ea2a0579.jpg', 'book', 'uploads/images/beva/full/ee8fcb74811704781bca8ed16c4eb943ea2a0579.jpg', '', 'https://3w.beva.cn/story/images/res/15075/ST_pangukaitian.jpg', 'image/jpeg', 'jpeg', '10830', '6c1fa77b3f67e23718c3e6b95e0c94f1', '', 'local', '0', '1545804199', '1545804199', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('892', '0', 'AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', 'book', 'uploads/mp3/beva/6dd70b9c13d4699fed69c681fd7647f7/AU_Xiao-Ke-Dou-Zhao-Ma-Ma.MP3', '', 'http://story.beva.com/audio/download/10587/1', 'audio/mp3', 'mp3', '2274557', '243e8b71a6ee4d3e5cf8e1b1a5d9cc4a', '', 'local', '0', '1545804200', '1545804200', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('893', '0', 'AU_shouzhudaitu.mp3', 'book', 'uploads/mp3/beva/ec5425bdf735c684f04d56b2c4a9ec98/AU_shouzhudaitu.mp3', '', 'http://story.beva.com/audio/download/10131/1', 'audio/mp3', 'mp3', '662254', '5a83ab262a01dfe8050c5cf2c8da454a', '', 'local', '0', '1545804200', '1545804200', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('894', '0', 'AU_liang-zhi-mao-mao-xiong.mp3', 'book', 'uploads/mp3/beva/16c317c75f2b559bc3824d53d207956a/AU_liang-zhi-mao-mao-xiong.mp3', '', 'http://story.beva.com/audio/download/11520/1', 'audio/mp3', 'mp3', '1005525', 'c1b418373c39ff6f0a5aa17801f36028', '', 'local', '0', '1545804200', '1545804200', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('895', '0', 'AU_chouxiaoya.MP3', 'book', 'uploads/mp3/beva/51a89dd6e6c66008eb045ed5fd4ff13b/AU_chouxiaoya.MP3', '', 'http://story.beva.com/audio/download/10037/1', 'audio/mp3', 'mp3', '2294203', 'b4b31d2c139d95cd1bfc1ec2279744d9', '', 'local', '0', '1545804201', '1545804201', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('896', '0', 'AU_congmingdexiaomutong.MP3', 'book', 'uploads/mp3/beva/76ed2072c0d214fefdf44cc5fb433fe5/AU_congmingdexiaomutong.MP3', '', 'http://story.beva.com/audio/download/10079/1', 'audio/mp3', 'mp3', '1124209', '8bfbadbe908e258bf88d9b7051ac9d63', '', 'local', '0', '1545804201', '1545804201', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('897', '0', 'AU_jin-fa-gu-liang-he-san-zhi-xiong.mp3', 'book', 'uploads/mp3/beva/dd970525f69e6734566b7f146cccf302/AU_jin-fa-gu-liang-he-san-zhi-xiong.mp3', '', 'http://story.beva.com/audio/download/11621/1', 'audio/mp3', 'mp3', '1609061', '98a23887c8787b0cea24fe27dfeb88a1', '', 'local', '0', '1545804201', '1545804201', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('898', '0', 'AU_yizhixiaoyanggao.MP3', 'book', 'uploads/mp3/beva/d212c515f67795a867aa80ed4d4e2662/AU_yizhixiaoyanggao.MP3', '', 'http://story.beva.com/audio/download/10115/1', 'audio/mp3', 'mp3', '453743', 'dcb8f66dd6d084b822860cfaa910c79c', '', 'local', '0', '1545804201', '1545804201', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('899', '0', '63dc449328b1b40c2bfcc32f7d90af660ed11d78.jpg', 'book', 'uploads/images/beva/full/63dc449328b1b40c2bfcc32f7d90af660ed11d78.jpg', '', 'https://3w.beva.cn/story/images/res/10203/ST_yizhixiaoyanggao205.jpg', 'image/jpeg', 'jpeg', '8756', 'a709355555820e5e67d66cfcc82d39f3', '', 'local', '0', '1545804201', '1545804201', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('900', '0', 'AU_wojuguniang001.MP3', 'book', 'uploads/mp3/beva/863395ce228eddc2368bc26dec143889/AU_wojuguniang001.MP3', '', 'http://story.beva.com/audio/download/10821/3', 'audio/mp3', 'mp3', '1276125', '365de3c2b799a7c3724c249fe73df64a', '', 'local', '0', '1545804251', '1545804251', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('901', '0', 'AU_wojuguniang002.MP3', 'book', 'uploads/mp3/beva/863395ce228eddc2368bc26dec143889/AU_wojuguniang002.MP3', '', 'http://story.beva.com/audio/download/10821/3', 'audio/mp3', 'mp3', '1493997', '50d770ccdc17604cb237e7e7ed1e0817', '', 'local', '0', '1545804251', '1545804251', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('902', '0', 'AU_wojuguniang003.MP3', 'book', 'uploads/mp3/beva/863395ce228eddc2368bc26dec143889/AU_wojuguniang003.MP3', '', 'http://story.beva.com/audio/download/10821/3', 'audio/mp3', 'mp3', '1501053', 'de331b51406d1dc9e228e2b8f2da1343', '', 'local', '0', '1545804251', '1545804251', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('903', '0', 'AU_liuzhitiane001.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane001.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1539926', '4e98842001c87594c4c0f3202ffcd450', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('904', '0', 'AU_liuzhitiane002.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane002.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1564694', '8483020ff951a05e189be851aa0a1628', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('905', '0', 'AU_liuzhitiane003.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane003.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1565558', '97aca4f0b61876bc6e3aa9d551c96dc3', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('906', '0', 'AU_liuzhitiane004.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane004.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1577222', 'cdd570a0021eeeb0af6ad34b96b53603', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('907', '0', 'AU_liuzhitiane005.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane005.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1546262', '7276abf99317b262e29f0dab5d292cea', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('908', '0', 'AU_liuzhitiane006.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitiane006.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1514438', 'c63b659fe2397b331490aa03238d2105', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('909', '0', 'AU_liuzhitianeshiting.MP3', 'book', 'uploads/mp3/beva/6ffdc2aee0dd6edfe6c9e7b98f9a2e7a/AU_liuzhitianeshiting.MP3', '', 'http://story.beva.com/audio/download/10467/3', 'audio/mp3', 'mp3', '1342639', '16da6075b4fe84ac2037a30d41ef6d44', '', 'local', '0', '1545804272', '1545804272', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('910', '0', 'f8a5f3749472101953ae72a9b01b44b5f7994ff8.jpg', 'book', 'uploads/images/beva/full/f8a5f3749472101953ae72a9b01b44b5f7994ff8.jpg', '', 'https://3w.beva.cn/story/images/res/10467/ST_liuzhitiane205213-11.jpg', 'image/jpeg', 'jpeg', '10656', 'e001293f83fd4c1154a6a0f64da05bc4', '', 'local', '0', '1545804272', '1545804272', '100', '1', '205', '213');
INSERT INTO `dp_admin_attachment` VALUES ('911', '0', 'AU_dagongjihelouzuiba.mp3', 'book', 'uploads/mp3/beva/cb05257f29e4f12198d8155d851dfdf1/AU_dagongjihelouzuiba.mp3', '', 'http://story.beva.com/audio/download/10194/1', 'audio/mp3', 'mp3', '4329674', '64c7d5547c70a34fe5182d62e82100f7', '', 'local', '0', '1545804626', '1545804626', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('912', '0', 'AU_AU_xiaohongmao001.mp3', 'book', 'uploads/mp3/beva/c12dd6998c0e19a7d310906bd5f84a65/AU_AU_xiaohongmao001.mp3', '', 'http://story.beva.com/audio/download/11523/3', 'audio/mp3', 'mp3', '1687674', '3371a1bdce85570ce5c3e104f04f4952', '', 'local', '0', '1545804651', '1545804651', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('913', '0', 'AU_AU_xiaohongmao002.mp3', 'book', 'uploads/mp3/beva/c12dd6998c0e19a7d310906bd5f84a65/AU_AU_xiaohongmao002.mp3', '', 'http://story.beva.com/audio/download/11523/3', 'audio/mp3', 'mp3', '1687676', '0665e5e7aa8e69838aa4f4a125035c45', '', 'local', '0', '1545804651', '1545804651', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('914', '0', 'AU_wojuguniang001.MP3', 'book', 'uploads/mp3/beva/0e2139382636862317e51586a273a746/AU_wojuguniang001.MP3', '', 'http://story.beva.com/audio/download/10332/3', 'audio/mp3', 'mp3', '1275981', 'c6ab9bb10e70c8e7815d0342eafb01c0', '', 'local', '0', '1545804691', '1545804691', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('915', '0', 'AU_wojuguniang002.MP3', 'book', 'uploads/mp3/beva/0e2139382636862317e51586a273a746/AU_wojuguniang002.MP3', '', 'http://story.beva.com/audio/download/10332/3', 'audio/mp3', 'mp3', '1493709', 'acf811df09eb3e94d449eba0c529b2a7', '', 'local', '0', '1545804691', '1545804691', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('916', '0', 'AU_wojuguniang003.MP3', 'book', 'uploads/mp3/beva/0e2139382636862317e51586a273a746/AU_wojuguniang003.MP3', '', 'http://story.beva.com/audio/download/10332/3', 'audio/mp3', 'mp3', '1501197', '17c15d1531b8798c1d8ebc7fb5c31c94', '', 'local', '0', '1545804691', '1545804691', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('917', '0', 'AU_Di-Qiu-Shi-Shen-Me-Xing-Zhuang.mp3', 'book', 'uploads/mp3/beva/dc715961c6d1095849bf0947162aaf51/AU_Di-Qiu-Shi-Shen-Me-Xing-Zhuang.mp3', '', 'http://story.beva.com/audio/download/10493/1', 'audio/mp3', 'mp3', '6161990', '9f01f77df4c3668ce642ae32827da6b6', '', 'local', '0', '1545804711', '1545804711', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('918', '0', 'AU_dangyinyuejiaqu001.MP3', 'book', 'uploads/mp3/beva/3772609767d9ffcb2a1a879827bf3467/AU_dangyinyuejiaqu001.MP3', '', 'http://story.beva.com/audio/download/10814/3', 'audio/mp3', 'mp3', '1809647', '9b4713802ea5fd638b725ba558dc0881', '', 'local', '0', '1545804735', '1545804735', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('919', '0', 'AU_dangyinyuejiaqu002.MP3', 'book', 'uploads/mp3/beva/3772609767d9ffcb2a1a879827bf3467/AU_dangyinyuejiaqu002.MP3', '', 'http://story.beva.com/audio/download/10814/3', 'audio/mp3', 'mp3', '1366127', 'c227dd5aee86c91bc826be03a06f7a7f', '', 'local', '0', '1545804735', '1545804735', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('920', '0', 'AU_dangyinyuejiaqu003.MP3', 'book', 'uploads/mp3/beva/3772609767d9ffcb2a1a879827bf3467/AU_dangyinyuejiaqu003.MP3', '', 'http://story.beva.com/audio/download/10814/3', 'audio/mp3', 'mp3', '1351727', 'cb60b905c7977ab7530a8ae90001eb42', '', 'local', '0', '1545804735', '1545804735', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('921', '0', 'AU_AU_anqier001.mp3', 'book', 'uploads/mp3/beva/f91e3810287a727f7cc985a9e7c7df1f/AU_AU_anqier001.mp3', '', 'http://story.beva.com/audio/download/12206/3', 'audio/mp3', 'mp3', '3284696', '18b764166f25f13e999983dd7e26a990', '', 'local', '0', '1545804830', '1545804830', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('922', '0', 'AU_AU_anqier002.mp3', 'book', 'uploads/mp3/beva/f91e3810287a727f7cc985a9e7c7df1f/AU_AU_anqier002.mp3', '', 'http://story.beva.com/audio/download/12206/3', 'audio/mp3', 'mp3', '3006753', '7fee6887280da520e8e4bc29a3c3caf0', '', 'local', '0', '1545804830', '1545804830', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('923', '0', 'AU_AU_anqier003.mp3', 'book', 'uploads/mp3/beva/f91e3810287a727f7cc985a9e7c7df1f/AU_AU_anqier003.mp3', '', 'http://story.beva.com/audio/download/12206/3', 'audio/mp3', 'mp3', '4235135', '42eeaa96ac8c6cdc2305bbd1ab8fac48', '', 'local', '0', '1545804830', '1545804830', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('924', '0', 'AU_damugeyouji001.mp3', 'book', 'uploads/mp3/beva/78d652674a8242925a52ae9071e323fc/AU_damugeyouji001.mp3', '', 'http://story.beva.com/audio/download/10834/3', 'audio/mp3', 'mp3', '1239262', '48a3a7a9a41af7677600cb3da158fdaf', '', 'local', '0', '1545804876', '1545804876', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('925', '0', 'AU_damugeyouji002.mp3', 'book', 'uploads/mp3/beva/78d652674a8242925a52ae9071e323fc/AU_damugeyouji002.mp3', '', 'http://story.beva.com/audio/download/10834/3', 'audio/mp3', 'mp3', '1280014', '047e970542fd34f08f23063ca960fb3c', '', 'local', '0', '1545804876', '1545804876', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('926', '0', 'AU_damugeyouji003.mp3', 'book', 'uploads/mp3/beva/78d652674a8242925a52ae9071e323fc/AU_damugeyouji003.mp3', '', 'http://story.beva.com/audio/download/10834/3', 'audio/mp3', 'mp3', '1182670', '87727b875220ab662e107c21e79b59a7', '', 'local', '0', '1545804876', '1545804876', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('927', '0', 'AU_damugeyouji004.mp3', 'book', 'uploads/mp3/beva/78d652674a8242925a52ae9071e323fc/AU_damugeyouji004.mp3', '', 'http://story.beva.com/audio/download/10834/3', 'audio/mp3', 'mp3', '1230478', 'fee629199a3aaf2e4b68e2445bfaabc1', '', 'local', '0', '1545804876', '1545804876', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('928', '0', 'AU_damugeyoujishiting.mp3', 'book', 'uploads/mp3/beva/78d652674a8242925a52ae9071e323fc/AU_damugeyoujishiting.mp3', '', 'http://story.beva.com/audio/download/10834/3', 'audio/mp3', 'mp3', '1226446', '44433d302f21614ad701b57365f0642f', '', 'local', '0', '1545804876', '1545804876', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('929', '0', 'AU_langheqizhixiaoyangok.MP3', 'book', 'uploads/mp3/beva/da67343a416f87ab7106cc096a058c51/AU_langheqizhixiaoyangok.MP3', '', 'http://story.beva.com/audio/download/10205/1', 'audio/mp3', 'mp3', '7609517', '1e2e31e5b41d418d0dae6ef81ed0a0fb', '', 'local', '0', '1545805091', '1545805091', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('930', '0', 'AU_qingwawangzi001.MP3', 'book', 'uploads/mp3/beva/f162c1e3018d21f968732cd6477be16d/AU_qingwawangzi001.MP3', '', 'http://story.beva.com/audio/download/10004/3', 'audio/mp3', 'mp3', '1594487', '1ba3a76b359526d07a29278fda594bc5', '', 'local', '0', '1545805095', '1545805095', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('931', '0', 'AU_qingwawangzi002.MP3', 'book', 'uploads/mp3/beva/f162c1e3018d21f968732cd6477be16d/AU_qingwawangzi002.MP3', '', 'http://story.beva.com/audio/download/10004/3', 'audio/mp3', 'mp3', '1771463', 'fa5d09ee50a404ee838e432ef3330c9e', '', 'local', '0', '1545805095', '1545805095', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('932', '0', 'AU_qingwawangzi003.MP3', 'book', 'uploads/mp3/beva/f162c1e3018d21f968732cd6477be16d/AU_qingwawangzi003.MP3', '', 'http://story.beva.com/audio/download/10004/3', 'audio/mp3', 'mp3', '1805735', '1f9125b149d984b055eb029bc9b52a5f', '', 'local', '0', '1545805095', '1545805095', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('933', '0', 'AU_qingwawangzi004.MP3', 'book', 'uploads/mp3/beva/f162c1e3018d21f968732cd6477be16d/AU_qingwawangzi004.MP3', '', 'http://story.beva.com/audio/download/10004/3', 'audio/mp3', 'mp3', '1522631', '3b5a2bcf2ec56901df547546885e21c4', '', 'local', '0', '1545805095', '1545805095', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('934', '0', 'AU_qingwawangzishiting.MP3', 'book', 'uploads/mp3/beva/f162c1e3018d21f968732cd6477be16d/AU_qingwawangzishiting.MP3', '', 'http://story.beva.com/audio/download/10004/3', 'audio/mp3', 'mp3', '1429039', 'ebd667bdd639ff019410916d1dfb3398', '', 'local', '0', '1545805095', '1545805095', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('935', '0', 'AU_liyutiaolongmen.MP3', 'book', 'uploads/mp3/beva/2d6c84840dcdbb54eabfbc98050d0ebc/AU_liyutiaolongmen.MP3', '', 'http://story.beva.com/audio/download/10162/1', 'audio/mp3', 'mp3', '6676957', '42aabce22f4abe60df255905ab59f605', '', 'local', '0', '1545814755', '1545814755', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('936', '0', 'AU_San-Zi-Jing-2.mp3', 'book', 'uploads/mp3/beva/47584fd29aedb8ce64eb59dfe392a0ec/AU_San-Zi-Jing-2.mp3', '', 'http://story.beva.com/audio/download/15358/3', 'audio/mp3', 'mp3', '2578898', '24f58c10e5b4d536dfffa4956e1355de', '', 'local', '0', '1545814763', '1545814763', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('937', '0', 'AU_San-Zi-Jing-3.mp3', 'book', 'uploads/mp3/beva/47584fd29aedb8ce64eb59dfe392a0ec/AU_San-Zi-Jing-3.mp3', '', 'http://story.beva.com/audio/download/15358/3', 'audio/mp3', 'mp3', '2132498', 'b286014f17501e85cb5ab0a522c16888', '', 'local', '0', '1545814763', '1545814763', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('938', '0', 'AU_San-Zi-Jing-4.mp3', 'book', 'uploads/mp3/beva/47584fd29aedb8ce64eb59dfe392a0ec/AU_San-Zi-Jing-4.mp3', '', 'http://story.beva.com/audio/download/15358/3', 'audio/mp3', 'mp3', '2780642', '28f167a17cc009a51155bb224a4d68f6', '', 'local', '0', '1545814763', '1545814763', '100', '1', '0', '0');
INSERT INTO `dp_admin_attachment` VALUES ('939', '0', 'AU_San-Zi-Jing-5.mp3', 'book', 'uploads/mp3/beva/47584fd29aedb8ce64eb59dfe392a0ec/AU_San-Zi-Jing-5.mp3', '', 'http://story.beva.com/audio/download/15358/3', 'audio/mp3', 'mp3', '2198882', 'ae55544faa123d3d03bc5c685e6bc177', '', 'local', '0', '1545814763', '1545814763', '100', '1', '0', '0');

-- ----------------------------
-- Table structure for `dp_admin_config`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_config`;
CREATE TABLE `dp_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of dp_admin_config
-- ----------------------------
INSERT INTO `dp_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `dp_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '飞阅网', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `dp_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', '儿童', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `dp_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '22', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `dp_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '儿童,阅读,英语,故事,儿歌,儿歌大全,儿童故事大全,儿童歌曲视频,儿童舞蹈,宝宝,经典童谣,童谣大全,儿歌串烧50首,儿童歌曲大全,儿童歌曲,儿歌童谣,婴幼儿歌,幼儿故事,erge,儿歌mp3,儿歌下载,少儿歌曲,英文儿歌,儿歌flash,幼儿儿歌,儿歌大全,尿不湿,初生,婴儿', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `dp_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', '飞阅网', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `dp_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', 'Copyright © 2015-2017 ', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `dp_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `dp_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `dp_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z,mp3', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `dp_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `dp_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', '../data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `dp_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '23', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `dp_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `dp_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '1', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('37', 'upload_driver', '上传驱动', 'upload', 'radio', 'local', 'local:本地', '图片或文件上传驱动', '', '', '', '', '', '0', '', '', '', '', '1501488567', '1501490821', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('38', 'system_log', '系统日志', 'system', 'switch', '1', '', '是否开启系统日志功能', '', '', '', '', '', '0', '', '', '', '', '1512635391', '1512635391', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('39', 'asset_version', '资源版本号', 'develop', 'text', '20180327', '', '可通过修改版号强制用户更新静态文件', '', '', '', '', '', '0', '', '', '', '', '1522143239', '1522143239', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('40', 'email', '邮箱', 'base', 'text', '286763935@qq.com', '', '公开的邮箱', '', '', '', '', '', '0', '', '', '', '', '1542359366', '1542359366', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('41', 'phone', '联系电话', 'base', 'text', '18533117078', '', '前台的联系电话', '', '', '', '', '', '0', '', '', '', '', '1542359413', '1542359413', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook`;
CREATE TABLE `dp_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of dp_admin_hook
-- ----------------------------
INSERT INTO `dp_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '1');
INSERT INTO `dp_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');
INSERT INTO `dp_admin_hook` VALUES ('8', 'upload_attachment', '', '附件上传钩子', '1', '1501493808', '1501493808', '1');
INSERT INTO `dp_admin_hook` VALUES ('9', 'page_plugin_js', '', '页面插件js钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('10', 'page_plugin_css', '', '页面插件css钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('11', 'signin_sso', '', '单点登录钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('12', 'signout_sso', '', '单点退出钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('13', 'user_add', '', '添加用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('14', 'user_edit', '', '编辑用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('15', 'user_delete', '', '删除用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('16', 'user_enable', '', '启用用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('17', 'user_disable', '', '禁用用户钩子', '1', '1503633591', '1503633591', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook_plugin`;
CREATE TABLE `dp_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of dp_admin_hook_plugin
-- ----------------------------
INSERT INTO `dp_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '1');
INSERT INTO `dp_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '1');

-- ----------------------------
-- Table structure for `dp_admin_icon`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_icon`;
CREATE TABLE `dp_admin_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '图标名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图标css地址',
  `prefix` varchar(32) NOT NULL DEFAULT '' COMMENT '图标前缀',
  `font_family` varchar(32) NOT NULL DEFAULT '' COMMENT '字体名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图标表';

-- ----------------------------
-- Records of dp_admin_icon
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_icon_list`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_icon_list`;
CREATE TABLE `dp_admin_icon_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属图标id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '图标标题',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '图标类名',
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '图标关键词',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='详细图标列表';

-- ----------------------------
-- Records of dp_admin_icon_list
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_log`;
CREATE TABLE `dp_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of dp_admin_log
-- ----------------------------
INSERT INTO `dp_admin_log` VALUES ('1', '30', '1', '2130706433', 'admin_menu', '236', '超级管理员 添加了节点：所属模块(book),所属节点ID(0),节点标题(用户管理),节点链接(book/user/index)', '1', '1542014349');
INSERT INTO `dp_admin_log` VALUES ('2', '31', '1', '2130706433', 'admin_menu', '236', '超级管理员 编辑了节点：节点ID(236)', '1', '1542014427');
INSERT INTO `dp_admin_log` VALUES ('3', '30', '1', '2130706433', 'admin_menu', '237', '超级管理员 添加了节点：所属模块(book),所属节点ID(236),节点标题(图书管理),节点链接()', '1', '1542014472');
INSERT INTO `dp_admin_log` VALUES ('4', '30', '1', '2130706433', 'admin_menu', '238', '超级管理员 添加了节点：所属模块(book),所属节点ID(237),节点标题(图书列表),节点链接(book/Index/index)', '1', '1542014556');
INSERT INTO `dp_admin_log` VALUES ('5', '31', '1', '2130706433', 'admin_menu', '237', '超级管理员 编辑了节点：节点ID(237)', '1', '1542014571');
INSERT INTO `dp_admin_log` VALUES ('6', '30', '1', '2130706433', 'admin_menu', '239', '超级管理员 添加了节点：所属模块(book),所属节点ID(237),节点标题(添加),节点链接(book/index/add)', '1', '1542014612');
INSERT INTO `dp_admin_log` VALUES ('7', '30', '1', '2130706433', 'admin_menu', '240', '超级管理员 添加了节点：所属模块(book),所属节点ID(238),节点标题(删除),节点链接(book/index/delete)', '1', '1542014738');
INSERT INTO `dp_admin_log` VALUES ('8', '31', '1', '2130706433', 'admin_menu', '240', '超级管理员 编辑了节点：节点ID(240)', '1', '1542014763');
INSERT INTO `dp_admin_log` VALUES ('9', '30', '1', '2130706433', 'admin_menu', '241', '超级管理员 添加了节点：所属模块(book),所属节点ID(238),节点标题(编辑),节点链接(book/index/edit)', '1', '1542014798');
INSERT INTO `dp_admin_log` VALUES ('10', '31', '1', '2130706433', 'admin_menu', '241', '超级管理员 编辑了节点：节点ID(241)', '1', '1542014812');
INSERT INTO `dp_admin_log` VALUES ('11', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(system)', '1', '1542015089');
INSERT INTO `dp_admin_log` VALUES ('12', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(system)', '1', '1542015108');
INSERT INTO `dp_admin_log` VALUES ('13', '31', '1', '2130706433', 'admin_menu', '240', '超级管理员 编辑了节点：节点ID(240)', '1', '1542029403');
INSERT INTO `dp_admin_log` VALUES ('14', '3', '1', '2130706433', 'admin_user', '0', '超级管理员 删除了用户：魏飞', '1', '1542031190');
INSERT INTO `dp_admin_log` VALUES ('15', '1', '1', '2130706433', 'admin_user', '3', '超级管理员 添加了用户：wei', '1', '1542032858');
INSERT INTO `dp_admin_log` VALUES ('16', '43', '1', '2130706433', 'book', '1', '超级管理员 添加了图书：', '1', '1542033719');
INSERT INTO `dp_admin_log` VALUES ('17', '30', '1', '2130706433', 'admin_menu', '242', '超级管理员 添加了节点：所属模块(book),所属节点ID(236),节点标题(分类管理),节点链接()', '1', '1542267522');
INSERT INTO `dp_admin_log` VALUES ('18', '30', '1', '2130706433', 'admin_menu', '243', '超级管理员 添加了节点：所属模块(book),所属节点ID(242),节点标题(分类列表),节点链接(book/type/index)', '1', '1542267556');
INSERT INTO `dp_admin_log` VALUES ('19', '30', '1', '2130706433', 'admin_menu', '244', '超级管理员 添加了节点：所属模块(book),所属节点ID(242),节点标题(添加),节点链接(book/type/add)', '1', '1542267585');
INSERT INTO `dp_admin_log` VALUES ('20', '30', '1', '2130706433', 'admin_menu', '245', '超级管理员 添加了节点：所属模块(book),所属节点ID(242),节点标题(删除),节点链接(book/type/disable)', '1', '1542267682');
INSERT INTO `dp_admin_log` VALUES ('21', '31', '1', '2130706433', 'admin_menu', '243', '超级管理员 编辑了节点：节点ID(243)', '1', '1542269456');
INSERT INTO `dp_admin_log` VALUES ('22', '31', '1', '2130706433', 'admin_menu', '244', '超级管理员 编辑了节点：节点ID(244)', '1', '1542269469');
INSERT INTO `dp_admin_log` VALUES ('23', '31', '1', '2130706433', 'admin_menu', '245', '超级管理员 编辑了节点：节点ID(245)', '1', '1542269484');
INSERT INTO `dp_admin_log` VALUES ('24', '31', '1', '2130706433', 'admin_menu', '242', '超级管理员 编辑了节点：节点ID(242)', '1', '1542270851');
INSERT INTO `dp_admin_log` VALUES ('25', '31', '1', '2130706433', 'admin_menu', '242', '超级管理员 编辑了节点：节点ID(242)', '1', '1542270933');
INSERT INTO `dp_admin_log` VALUES ('26', '30', '1', '2130706433', 'admin_menu', '246', '超级管理员 添加了节点：所属模块(book),所属节点ID(242),节点标题(编辑),节点链接(book/category/edit)', '1', '1542270958');
INSERT INTO `dp_admin_log` VALUES ('27', '30', '1', '2130706433', 'admin_menu', '247', '超级管理员 添加了节点：所属模块(book),所属节点ID(238),节点标题(内容列表),节点链接(book/content/index)', '1', '1542273740');
INSERT INTO `dp_admin_log` VALUES ('28', '30', '1', '2130706433', 'admin_menu', '248', '超级管理员 添加了节点：所属模块(book),所属节点ID(247),节点标题(添加),节点链接(book/content/addContent)', '1', '1542332123');
INSERT INTO `dp_admin_log` VALUES ('29', '43', '1', '2130706433', 'book', '2', '超级管理员 添加了图书：', '1', '1542334889');
INSERT INTO `dp_admin_log` VALUES ('30', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(upload)', '1', '1542334975');
INSERT INTO `dp_admin_log` VALUES ('31', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(upload)', '1', '1542335028');
INSERT INTO `dp_admin_log` VALUES ('32', '46', '1', '2130706433', 'book', '1', '超级管理员 添加了音频文件：', '1', '1542335458');
INSERT INTO `dp_admin_log` VALUES ('33', '30', '1', '2130706433', 'admin_menu', '249', '超级管理员 添加了节点：所属模块(book),所属节点ID(247),节点标题(编辑),节点链接(book/content/edit)', '1', '1542335928');
INSERT INTO `dp_admin_log` VALUES ('34', '46', '1', '2130706433', 'book', '2', '超级管理员 添加了音频文件：', '1', '1542352757');
INSERT INTO `dp_admin_log` VALUES ('35', '46', '1', '2130706433', 'book', '3', '超级管理员 添加了音频文件：', '1', '1542352837');
INSERT INTO `dp_admin_log` VALUES ('36', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1542359292');
INSERT INTO `dp_admin_log` VALUES ('37', '15', '1', '2130706433', 'admin_config', '40', '超级管理员 添加了配置，详情：分组(base)、类型(text)、标题(邮箱)、名称(email)', '1', '1542359366');
INSERT INTO `dp_admin_log` VALUES ('38', '15', '1', '2130706433', 'admin_config', '41', '超级管理员 添加了配置，详情：分组(base)、类型(text)、标题(联系电话)、名称(phone)', '1', '1542359413');
INSERT INTO `dp_admin_log` VALUES ('39', '43', '1', '2130706433', 'book', '3', '超级管理员 添加了图书：', '1', '1542457864');
INSERT INTO `dp_admin_log` VALUES ('40', '46', '1', '2130706433', 'book', '4', '超级管理员 添加了音频文件：', '1', '1542460229');
INSERT INTO `dp_admin_log` VALUES ('41', '46', '1', '2130706433', 'book', '5', '超级管理员 添加了音频文件：', '1', '1542460311');
INSERT INTO `dp_admin_log` VALUES ('42', '43', '1', '2130706433', 'book', '4', '超级管理员 添加了图书：', '1', '1542460415');
INSERT INTO `dp_admin_log` VALUES ('43', '46', '1', '2130706433', 'book', '6', '超级管理员 添加了音频文件：', '1', '1542460515');
INSERT INTO `dp_admin_log` VALUES ('44', '43', '1', '2130706433', 'book', '5', '超级管理员 添加了图书：', '1', '1542461661');
INSERT INTO `dp_admin_log` VALUES ('45', '46', '1', '2130706433', 'book', '7', '超级管理员 添加了音频文件：', '1', '1542461775');
INSERT INTO `dp_admin_log` VALUES ('46', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543645575');
INSERT INTO `dp_admin_log` VALUES ('47', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543645681');
INSERT INTO `dp_admin_log` VALUES ('48', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543648834');
INSERT INTO `dp_admin_log` VALUES ('49', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543672894');
INSERT INTO `dp_admin_log` VALUES ('50', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543735786');
INSERT INTO `dp_admin_log` VALUES ('51', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543737354');
INSERT INTO `dp_admin_log` VALUES ('52', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543738802');
INSERT INTO `dp_admin_log` VALUES ('53', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543738841');
INSERT INTO `dp_admin_log` VALUES ('54', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543738862');
INSERT INTO `dp_admin_log` VALUES ('55', '42', '1', '2095881831', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543739219');
INSERT INTO `dp_admin_log` VALUES ('56', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1543850662');
INSERT INTO `dp_admin_log` VALUES ('57', '44', '1', '2095881831', 'book', '15', '超级管理员 编辑了节点：', '1', '1544013943');
INSERT INTO `dp_admin_log` VALUES ('58', '44', '1', '2095881831', 'book', '6', '超级管理员 编辑了节点：', '1', '1544014846');
INSERT INTO `dp_admin_log` VALUES ('59', '44', '1', '2095881831', 'book', '7', '超级管理员 编辑了节点：', '1', '1544014890');
INSERT INTO `dp_admin_log` VALUES ('60', '44', '1', '2095881831', 'book', '9', '超级管理员 编辑了节点：', '1', '1544014937');
INSERT INTO `dp_admin_log` VALUES ('61', '44', '1', '2095881831', 'book', '11', '超级管理员 编辑了节点：', '1', '1544014969');
INSERT INTO `dp_admin_log` VALUES ('62', '44', '1', '2095881831', 'book', '12', '超级管理员 编辑了节点：', '1', '1544014995');
INSERT INTO `dp_admin_log` VALUES ('63', '44', '1', '2095881831', 'book', '13', '超级管理员 编辑了节点：', '1', '1544015021');
INSERT INTO `dp_admin_log` VALUES ('64', '44', '1', '2095881831', 'book', '14', '超级管理员 编辑了节点：', '1', '1544015057');
INSERT INTO `dp_admin_log` VALUES ('65', '44', '1', '1861846579', 'book', '10', '超级管理员 编辑了节点：', '1', '1544684076');
INSERT INTO `dp_admin_log` VALUES ('66', '44', '1', '1861846579', 'book', '8', '超级管理员 编辑了节点：', '1', '1544684278');
INSERT INTO `dp_admin_log` VALUES ('67', '44', '1', '1861846579', 'book', '4', '超级管理员 编辑了节点：', '1', '1544684302');
INSERT INTO `dp_admin_log` VALUES ('68', '44', '1', '1861846579', 'book', '4', '超级管理员 编辑了节点：', '1', '1544684750');
INSERT INTO `dp_admin_log` VALUES ('69', '44', '1', '1861846579', 'book', '2', '超级管理员 编辑了节点：', '1', '1544684764');
INSERT INTO `dp_admin_log` VALUES ('70', '44', '1', '1861846579', 'book', '8', '超级管理员 编辑了节点：', '1', '1544684776');
INSERT INTO `dp_admin_log` VALUES ('71', '44', '1', '1861846579', 'book', '2', '超级管理员 编辑了节点：', '1', '1544685738');
INSERT INTO `dp_admin_log` VALUES ('72', '44', '1', '1861846579', 'book', '4', '超级管理员 编辑了节点：', '1', '1544685836');
INSERT INTO `dp_admin_log` VALUES ('73', '44', '1', '1861846579', 'book', '8', '超级管理员 编辑了节点：', '1', '1544685849');
INSERT INTO `dp_admin_log` VALUES ('74', '44', '1', '1861846579', 'book', '10', '超级管理员 编辑了节点：', '1', '1544685861');
INSERT INTO `dp_admin_log` VALUES ('75', '43', '1', '1786056876', 'book', '6', '超级管理员 添加了图书：', '1', '1544713078');
INSERT INTO `dp_admin_log` VALUES ('76', '46', '1', '1786056876', 'book', '8', '超级管理员 添加了音频文件：', '1', '1544713232');
INSERT INTO `dp_admin_log` VALUES ('77', '46', '1', '1786056876', 'book', '9', '超级管理员 添加了音频文件：', '1', '1544713291');
INSERT INTO `dp_admin_log` VALUES ('78', '46', '1', '1786056876', 'book', '10', '超级管理员 添加了音频文件：', '1', '1544714542');

-- ----------------------------
-- Table structure for `dp_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_menu`;
CREATE TABLE `dp_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of dp_admin_menu
-- ----------------------------
INSERT INTO `dp_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1477710540', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1477710540', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1477710540', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('214', '68', 'user', '消息管理', 'fa fa-fw fa-comments-o', 'module_admin', '', '_self', '0', '1520492129', '1520492129', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('215', '214', 'user', '消息列表', 'fa fa-fw fa-th-list', 'module_admin', 'user/message/index', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('216', '215', 'user', '新增', '', 'module_admin', 'user/message/add', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('217', '215', 'user', '编辑', '', 'module_admin', 'user/message/edit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('218', '215', 'user', '删除', '', 'module_admin', 'user/message/delete', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('219', '215', 'user', '启用', '', 'module_admin', 'user/message/enable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('220', '215', 'user', '禁用', '', 'module_admin', 'user/message/disable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('221', '215', 'user', '快速编辑', '', 'module_admin', 'user/message/quickedit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('222', '2', 'admin', '消息中心', 'fa fa-fw fa-comments-o', 'module_admin', 'admin/message/index', '_self', '0', '1520495992', '1520496254', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('223', '222', 'admin', '删除', '', 'module_admin', 'admin/message/delete', '_self', '0', '1520495992', '1520496263', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('224', '222', 'admin', '启用', '', 'module_admin', 'admin/message/enable', '_self', '0', '1520495992', '1520496270', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('225', '32', 'admin', '图标管理', 'fa fa-fw fa-tint', 'module_admin', 'admin/icon/index', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('226', '225', 'admin', '新增', '', 'module_admin', 'admin/icon/add', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('227', '225', 'admin', '编辑', '', 'module_admin', 'admin/icon/edit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('228', '225', 'admin', '删除', '', 'module_admin', 'admin/icon/delete', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('229', '225', 'admin', '启用', '', 'module_admin', 'admin/icon/enable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('230', '225', 'admin', '禁用', '', 'module_admin', 'admin/icon/disable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('231', '225', 'admin', '快速编辑', '', 'module_admin', 'admin/icon/quickedit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('232', '225', 'admin', '图标列表', '', 'module_admin', 'admin/icon/items', '_self', '0', '1520923368', '1520923368', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('233', '225', 'admin', '更新图标', '', 'module_admin', 'admin/icon/reload', '_self', '0', '1520931908', '1520931908', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('234', '20', 'user', '快速编辑', '', 'module_admin', 'user/index/quickedit', '_self', '0', '1526028258', '1526028258', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('235', '67', 'user', '快速编辑', '', 'module_admin', 'user/role/quickedit', '_self', '0', '1526028282', '1526028282', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('236', '0', 'book', '图书', 'fa fa-fw fa-book', 'module_admin', 'book/index/index', '_self', '0', '1542014350', '1542014427', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('237', '236', 'book', '图书管理', 'fa fa-fw fa-gear', 'module_admin', '', '_self', '0', '1542014472', '1542014572', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('238', '237', 'book', '图书列表', 'fa fa-fw fa-list', 'module_admin', 'book/index/index', '_self', '0', '1542014556', '1542014556', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('239', '237', 'book', '添加', 'fa fa-fw fa-plus', 'module_admin', 'book/index/add', '_self', '1', '1542014613', '1542014613', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('240', '237', 'book', '删除', 'fa fa-fw fa-trash-o', 'module_admin', 'book/index/disable', '_self', '1', '1542014738', '1542029403', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('241', '237', 'book', '编辑', 'fa fa-fw fa-pencil', 'module_admin', 'book/index/edit', '_self', '1', '1542014799', '1542014812', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('242', '236', 'book', '分类管理', 'fa fa-fw fa-gear', 'module_admin', '', '_self', '1', '1542267522', '1542270934', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('243', '242', 'book', '分类列表', 'fa fa-fw fa-list', 'module_admin', 'book/category/index', '_self', '0', '1542267556', '1542269457', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('244', '242', 'book', '添加', 'fa fa-fw fa-plus', 'module_admin', 'book/category/add', '_self', '1', '1542267585', '1542269470', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('245', '242', 'book', '删除', 'fa fa-fw fa-trash-o', 'module_admin', 'book/category/disable', '_self', '1', '1542267683', '1542269485', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('246', '242', 'book', '编辑', 'fa fa-fw fa-pencil', 'module_admin', 'book/category/edit', '_self', '1', '1542270959', '1542270959', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('247', '238', 'book', '内容列表', 'fa fa-fw fa-list-ul', 'module_admin', 'book/content/index', '_self', '1', '1542273740', '1542273740', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('248', '247', 'book', '添加', 'fa fa-fw fa-plus', 'module_admin', 'book/content/addcontent', '_self', '1', '1542332123', '1542332123', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('249', '247', 'book', '编辑', 'fa fa-fw fa-pencil', 'module_admin', 'book/content/edit', '_self', '1', '1542335929', '1542335929', '100', '0', '1', '');

-- ----------------------------
-- Table structure for `dp_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_message`;
CREATE TABLE `dp_admin_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid_receive` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收消息的用户id',
  `uid_send` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送消息的用户id',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '消息分类',
  `content` text NOT NULL COMMENT '消息内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of dp_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_module`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_module`;
CREATE TABLE `dp_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of dp_admin_module
-- ----------------------------
INSERT INTO `dp_admin_module` VALUES ('1', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('2', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('3', 'book', '图书', 'fa fa-fw fa-book', '添加模块', 'weifei', '', null, null, '1.0.0', '', '1', '1468204902', '1468204902', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_packet`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_packet`;
CREATE TABLE `dp_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of dp_admin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_plugin`;
CREATE TABLE `dp_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of dp_admin_plugin
-- ----------------------------
INSERT INTO `dp_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `dp_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_role`;
CREATE TABLE `dp_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  `default_module` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '默认访问模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of dp_admin_role
-- ----------------------------
INSERT INTO `dp_admin_role` VALUES ('1', '0', '超级管理员', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1', '0');

-- ----------------------------
-- Table structure for `dp_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_user`;
CREATE TABLE `dp_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of dp_admin_user
-- ----------------------------
INSERT INTO `dp_admin_user` VALUES ('1', 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1544762116', '1544762116', '1786056876', '100', '1');
INSERT INTO `dp_admin_user` VALUES ('3', 'weifei', 'wei', '$2y$10$gegusLVzvvVivQI3OsZFFOvc7T/hCrHpceM/Tm6Z5lYWKZhv/4tY.', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1542032858', '1542032858', '0', '0', '100', '1');

-- ----------------------------
-- Table structure for `dp_books`
-- ----------------------------
DROP TABLE IF EXISTS `dp_books`;
CREATE TABLE `dp_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '图书名称',
  `cat_id` int(11) NOT NULL COMMENT '分类的id',
  `img` varchar(255) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `author` varchar(100) DEFAULT '' COMMENT '作者',
  `publish` varchar(255) DEFAULT NULL COMMENT '出版社',
  `from` varchar(255) DEFAULT NULL COMMENT '来源自己爬取的网站',
  `description` longtext COMMENT '简介',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0下架1正常',
  `type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '图书的类型（1文本2，音频3，视频）',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`author`)
) ENGINE=MyISAM AUTO_INCREMENT=5528 DEFAULT CHARSET=utf8 COMMENT='图书表';

-- ----------------------------
-- Records of dp_books
-- ----------------------------
INSERT INTO `dp_books` VALUES ('3855', '欧阳修', '31', '38', '0', '未知', '未知', '贝瓦', '欧阳修从小写诗、赋文字，下笔就有成人的水平。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3856', '小蝌蚪找妈妈', '19', '38', '0', '未知', '未知', '贝瓦', '有趣的故事让孩子明白青蛙的成长过程。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3857', '小红帽', '19', '38', '0', '未知', '未知', '贝瓦', '小红帽与狼外婆的经典故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3858', '猪八戒吃西瓜', '19', '38', '0', '未知', '未知', '贝瓦', '猪八戒憨厚可爱，他的故事也很受孩子喜爱。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3859', '懂礼貌的小兔', '19', '38', '0', '未知', '未知', '贝瓦', '小白兔懂礼貌，山羊伯伯把它夸！', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3860', '三只小猪', '19', '38', '0', '未知', '未知', '贝瓦', '流传永久的小故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3861', '小熊买糖果', '19', '38', '0', '未知', '未知', '贝瓦', '活泼可爱，充满乐趣。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3862', '拔萝卜', '19', '38', '0', '未知', '未知', '贝瓦', '流传永久的小故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3863', '龟兔赛跑', '19', '38', '0', '未知', '未知', '贝瓦', '一直流传几代人的经典故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3864', '好饿好饿的毛...', '19', '38', '0', '未知', '未知', '贝瓦', '毛毛虫说：“我好饿好饿呀！”\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3865', '老奶奶和小花猫', '19', '38', '0', '未知', '未知', '贝瓦', '小花猫戴眼镜真是有趣。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3866', '老鼠娶亲', '19', '38', '0', '未知', '未知', '贝瓦', '老鼠也要娶媳妇，稀奇，稀奇，真稀奇！\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3867', '小马过河', '19', '38', '0', '未知', '未知', '贝瓦', '人人都听不厌的故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3868', '宝宝洗澡歌', '19', '38', '0', '未知', '未知', '贝瓦', '当你长大了，不再害怕了，还想让你抓紧我的手。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3869', '小壁虎借尾巴', '19', '38', '0', '未知', '未知', '贝瓦', '生动有趣的故事向宝宝介绍了各种可爱的动物以及它们...', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3870', '白雪公主', '21', '38', '0', '未知', '未知', '贝瓦', '美丽的公主躺在七个小矮人的木屋里。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3871', '小公鸡和小鸭子', '19', '38', '0', '未知', '未知', '贝瓦', '小公鸡不会游泳，偷偷下水差点淹死。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3872', '小猫钓鱼', '19', '38', '0', '未知', '未知', '贝瓦', '做事不能三心二意。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3873', '青蛙王子', '19', '38', '0', '未知', '未知', '贝瓦', '公主吻出了青蛙王子的幸福人生。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3874', '小猪照镜子', '19', '38', '0', '未知', '未知', '贝瓦', '美好的一天，快乐的开始。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3875', '小猪的礼物', '19', '38', '0', '未知', '未知', '贝瓦', '珍贵的礼物。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3876', '三颗星星', '19', '38', '0', '未知', '未知', '贝瓦', '清晨会有礼物摆放在我窗前，如雪地里盛开的花，叫我...', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3877', '燕子飞回来了', '19', '38', '0', '未知', '未知', '贝瓦', '春天到了燕子从南方飞回来了。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3878', '不爱洗澡的小猪', '19', '38', '0', '未知', '未知', '贝瓦', '干干净净，人人爱。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3879', '小蝌蚪画画', '19', '38', '0', '未知', '未知', '贝瓦', '小蝌蚪快长大，长大变成绿青蛙。', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3880', '三个好朋友', '19', '38', '0', '未知', '未知', '贝瓦', '永远读不够的故事。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3881', '小老鼠的“敲...', '19', '38', '0', '未知', '未知', '贝瓦', '这真是一根奇妙的小棍儿!', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3882', '小蛋壳的故事', '19', '38', '0', '未知', '未知', '贝瓦', '蛋壳当摇篮，真舒服！', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3883', '小猪发脾气', '19', '38', '0', '未知', '未知', '贝瓦', '小小猪发脾气，好朋友们都离去。\r\n', '1545802938', '1545802938', '1', '2');
INSERT INTO `dp_books` VALUES ('3884', '消失的树枝', '19', '38', '0', '未知', '未知', '贝瓦', '相传500年以前，有一只叫作“贝方斯方”的河狸。', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3885', '神笔马良', '23', '38', '0', '未知', '未知', '贝瓦', '每个孩子都有属于自己的神笔，画出精彩的人生。\r\n', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3886', '蛇与黄鼠狼打架', '24', '38', '0', '未知', '未知', '贝瓦', '江山易改，秉性难易。', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3887', '小猴和小熊的...', '19', '38', '0', '未知', '未知', '贝瓦', '崭新的自行车成了一辆“老爷破车”', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3888', '晚安，月亮', '19', '38', '0', '未知', '未知', '贝瓦', '晚安今天，明天又会有什么呢？', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3889', '泡泡糖飞船', '19', '38', '0', '未知', '未知', '贝瓦', '小狗中泡泡糖会收获吗？', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3890', '月亮婆婆值夜班', '19', '38', '0', '未知', '未知', '贝瓦', '月亮婆婆值班唱摇篮曲。', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3891', '三字经', '22', '38', '0', '未知', '未知', '贝瓦', '熟读《三字经》可知天下事。', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3892', '乌鸦喝水', '19', '38', '0', '未知', '未知', '贝瓦', '智慧往往胜过力气。', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3893', '宝宝吃饭', '19', '38', '0', '未知', '未知', '贝瓦', '你的每个进步我都欢欣鼓舞。	\r\n', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3894', '洗澡', '19', '38', '0', '未知', '未知', '贝瓦', '想要一个很大的露天浴缸，水里洒满阳光任我自由玩耍...', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3895', ' 嫦娥奔月', '23', '38', '0', '未知', '未知', '贝瓦', '花好月圆之时，世人总是渴望美好与团圆。\r\n\r\n', '1545802939', '1545802939', '1', '2');
INSERT INTO `dp_books` VALUES ('3896', '黑熊换鸡蛋', '19', '38', '0', '未知', '未知', '贝瓦', '鸡蛋里钻出，小乌龟，小鳄鱼，小青蛇，真是奇怪？\r...', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3897', '小白兔和小灰兔', '19', '38', '0', '未知', '未知', '贝瓦', '记忆中的的小故事。\r\n', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3898', '勇敢的小刺猬', '19', '38', '0', '未知', '未知', '贝瓦', '大家都小瞧小刺猬了。	\r\n', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3899', '圣诞老人的传说', '19', '38', '0', '未知', '未知', '贝瓦', ' 圣诞老人已经成为圣诞节最受喜爱的象征和传统。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3900', '女娲补天', '23', '38', '0', '未知', '未知', '贝瓦', '古老的传说，天地混沌的产生。\r\n', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3901', '灰姑娘', '19', '38', '0', '未知', '未知', '贝瓦', '善良的女孩遇见了珍爱她的那个王子。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3902', '胆大的老虎', '19', '38', '0', '未知', '未知', '贝瓦', ' 不能贪得无厌，不然就会自食恶果。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3903', '要下雨了', '19', '38', '0', '未知', '未知', '贝瓦', '下雨之前的天气现象。\r\n', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3904', '青蛙王子', '21', '38', '0', '未知', '未知', '贝瓦', '公主吻出了青蛙王子的幸福人生。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3905', '红红的苹果', '19', '38', '0', '未知', '未知', '贝瓦', '红红的脸蛋也像红苹果。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3906', '睡美人', '19', '38', '0', '未知', '未知', '贝瓦', '轻轻吻醒你的宝贝，他比睡美人更幸福。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3907', '爱打针的溪溪', '19', '38', '0', '未知', '未知', '贝瓦', '鼓励、表扬可以让宝宝变得更勇敢自信。', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3908', '三个马大哈', '19', '38', '0', '未知', '未知', '贝瓦', '三个粗心的小动物。\r\n', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3909', '六只天鹅', '21', '38', '0', '未知', '未知', '贝瓦', '王后做的衬衫破解了魔法，六只天鹅变回了英俊的王子...', '1545802940', '1545802940', '1', '2');
INSERT INTO `dp_books` VALUES ('3910', '百鸟朝凤', '23', '38', '0', '未知', '未知', '贝瓦', '勤劳的凤凰被大家推举为鸟王。', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3911', '小猴子下山', '19', '38', '0', '未知', '未知', '贝瓦', '见什么要什么，一样都没得到。\r\n', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3912', ' 鲤鱼跳龙门', '23', '38', '0', '未知', '未知', '贝瓦', '每个孩子都有自己的龙门，努力跳跃吧。	\r\n', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3913', ' 精卫填海', '23', '38', '0', '未知', '未知', '贝瓦', '坚持自己的信念，走出自己的人生足迹。\r\n', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3914', '卖火柴的小女孩', '25', '38', '0', '未知', '未知', '贝瓦', '新年除夕，是大家欢乐的日子，但有的人却在挨饿。', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3915', '皇帝的新装', '25', '38', '0', '未知', '未知', '贝瓦', '虚荣、铺张浪费，而且最重要的是，何等愚蠢。', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3916', '对牛弹琴', '26', '38', '0', '未知', '未知', '贝瓦', '孩子，希望你能理解我的良苦用心。', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3917', '最好吃的蛋糕', '19', '38', '0', '未知', '未知', '贝瓦', '孝顺可爱的三只小老鼠。\r\n', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3918', '农夫与蛇', '24', '38', '0', '未知', '未知', '贝瓦', '即使对恶人仁至义尽，他们的邪恶本性也是不会改变的...', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3919', '十二生肖的故事', '23', '38', '0', '未知', '未知', '贝瓦', '我们要选十二种动物作为人的生肖，一年一种动物。', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3920', '小水壶迷路', '19', '38', '0', '未知', '未知', '贝瓦', '到底是谁送谁，回家呢？\r\n', '1545802941', '1545802941', '1', '2');
INSERT INTO `dp_books` VALUES ('3921', '小星星洗澡', '19', '38', '0', '未知', '未知', '贝瓦', '宝贝还记得第一次为你洗澡时，我比你更加胆怯。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3922', '牛郎织女 ', '23', '38', '0', '未知', '未知', '贝瓦', '中国古代四大民间爱情传说的经典。\r\n', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3923', '孔融让梨', '31', '38', '0', '未知', '未知', '贝瓦', '孔融四岁，知道让梨。上让哥哥，下让弟弟。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3924', '一只小羊羔', '19', '38', '0', '未知', '未知', '贝瓦', '善良的巴特与小羊羔的故事。\r\n', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3925', '贝哈哈博士的...', '19', '38', '0', '未知', '未知', '贝瓦', '哈哈博士小时候因为吃糖，但没养成的好习惯，现在牙...', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3926', '金发姑娘和三...', '19', '38', '0', '未知', '未知', '贝瓦', '动物和人之间的故事，永远是孩子喜欢的。\r\n', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3927', '聪明的小牧童', '21', '38', '0', '未知', '未知', '贝瓦', '小牧童巧妙地解答了国王的三个难题。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3928', '沉香救母', '23', '38', '0', '未知', '未知', '贝瓦', '沉香是刘向和三娘的英雄儿子。\r\n', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3929', ' 丑小鸭', '25', '38', '0', '未知', '未知', '贝瓦', '“丑小鸭”事实上是一只美丽的天鹅。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3930', '大公鸡和漏嘴巴', '19', '38', '0', '未知', '未知', '贝瓦', '吃饭不要东瞧西望哦！要不然就成了漏嘴巴。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3931', '狐狸和猫', '21', '38', '0', '未知', '未知', '贝瓦', '人各有所长，永远不要嘲笑别人。', '1545802942', '1545802942', '1', '2');
INSERT INTO `dp_books` VALUES ('3932', '小熊生日会', '19', '38', '0', '未知', '未知', '贝瓦', '你是怎样过生日呢？', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3933', '狼和七只小山羊', '21', '38', '0', '未知', '未知', '贝瓦', '孩子，当我不在你身边的时候，一定要保护好自己。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3934', '小狗花花也穿鞋', '19', '38', '0', '未知', '未知', '贝瓦', '与善良的浩浩交朋友，培养孩子的爱心。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3935', '天空要塌下来了', '19', '38', '0', '未知', '未知', '贝瓦', '多可怕，天要塌了。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3936', '八仙过海', '23', '38', '0', '未知', '未知', '贝瓦', '八仙过海，各显神通。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3937', '老鼠排第一名', '19', '38', '0', '未知', '未知', '贝瓦', '你的属相排第几？\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3938', '千里送鹅毛', '26', '38', '0', '未知', '未知', '贝瓦', '真正的朋友是在你最需要的时候给予帮助的人。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3939', '小公鸡学吹喇叭', '19', '38', '0', '未知', '未知', '贝瓦', '小公鸡起得早，好像闹钟把时报。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3940', '刻舟求剑', '26', '38', '0', '未知', '未知', '贝瓦', '不要想当然地以为事情会像你想的那样发展。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3941', '盲人摸象', '26', '38', '0', '未知', '未知', '贝瓦', '以偏概全只会让人思想偏激。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3942', '不爱吃饭的贝贝', '19', '38', '0', '未知', '未知', '贝瓦', '手捧的那碗饭，溢出母亲的味道。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3943', '小鸟和大熊', '19', '38', '0', '未知', '未知', '贝瓦', '春去，春回来，好朋友又见面。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3944', '小胖熊半夜历...', '19', '38', '0', '未知', '未知', '贝瓦', '玩完了玩具不乱扔。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3945', '种树的老爷爷', '19', '38', '0', '未知', '未知', '贝瓦', '当你给别人关心的时候，别人也会给你汇报。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3946', '两只毛毛熊', '19', '38', '0', '未知', '未知', '贝瓦', '狐狸一直都扮演的着狡猾的角色，这次也不例外。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3947', '守株待兔', '26', '38', '0', '未知', '未知', '贝瓦', '与其祈求天上掉馅饼，不如自己创造幸福。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3948', '后羿射日', '23', '38', '0', '未知', '未知', '贝瓦', '英雄为民除害，救百姓于水火。\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3949', '小燕子吉吉', '19', '38', '0', '未知', '未知', '贝瓦', '是你残害苹果姑娘，你再美丽也是个害虫！\r\n', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3950', ' 后羿与嫦娥', '23', '38', '0', '未知', '未知', '贝瓦', '神仙的故事传说。', '1545802943', '1545802943', '1', '2');
INSERT INTO `dp_books` VALUES ('3951', '浪花的任务', '19', '38', '0', '未知', '未知', '贝瓦', '让宝宝的快乐也能成为别人的快乐。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3952', '聪明的小白兔', '19', '38', '0', '未知', '未知', '贝瓦', '顶个蘑菇当草帽。\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3953', '曹冲称象', '26', '38', '0', '未知', '未知', '贝瓦', '不要小看孩子的智慧。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3954', '红蚂蚁和黑蚂蚁', '19', '38', '0', '未知', '未知', '贝瓦', '美好的夜晚，甜蜜的梦香。\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3955', '洗澡真舒服', '19', '38', '0', '未知', '未知', '贝瓦', '干净了自己，开心了大家。\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3956', '机智的鸡', '19', '38', '0', '未知', '未知', '贝瓦', '坏狼想吃鸡。\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3957', '闻鸡起舞', '26', '38', '0', '未知', '未知', '贝瓦', '只有勤奋，刻苦的锻炼才能有收获。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3958', '萤火虫找朋友', '19', '38', '0', '未知', '未知', '贝瓦', '萤火虫不帮助人家，人家也不会做你的朋友。\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3959', '白雪皇后', '25', '38', '0', '未知', '未知', '贝瓦', '她坚强的毅力和纯真的感情，终于战胜了重重困难，使...', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3960', '蜗牛的小灯笼', '19', '38', '0', '未知', '未知', '贝瓦', '萤火虫天黑变成小灯笼。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3961', '美女与野兽', '21', '38', '0', '未知', '未知', '贝瓦', '野兽也有温柔的一面，也需要爱。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3962', '狮子烫发', '19', '38', '0', '未知', '未知', '贝瓦', '真稀奇老虎烫发会是什么样子呢？\r\n', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3963', '小胖猪哭了', '19', '38', '0', '未知', '未知', '贝瓦', '小猪该减肥了。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3964', '小红帽', '21', '38', '0', '未知', '未知', '贝瓦', '宝贝慢些走，我想永远牵你的手。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3965', '一只骄傲的小鸡', '19', '38', '0', '未知', '未知', '贝瓦', '真正的智者是谦逊和静默的。', '1545802944', '1545802944', '1', '2');
INSERT INTO `dp_books` VALUES ('3966', '榨菜鼻子', '19', '38', '0', '未知', '未知', '贝瓦', '善良的公主长了榨菜鼻子。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3967', '河马先生的魔术', '19', '38', '0', '未知', '未知', '贝瓦', '魔术真神奇。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3968', '懒熊买西瓜 ', '19', '38', '0', '未知', '未知', '贝瓦', '懒熊买了西瓜滚回家，西瓜切开，猜猜怎么啦？\r\n', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3969', '过年的来历', '23', '38', '0', '未知', '未知', '贝瓦', '过年啦，大家一起来说说“年”的由来吧。\r\n', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3970', '磨杵成针', '26', '38', '0', '未知', '未知', '贝瓦', '坚持下去，我相信你行的。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3971', '二贝和三贝', '19', '38', '0', '未知', '未知', '贝瓦', '宝宝的健康是妈妈最大的心愿。\r\n', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3972', '狼和人', '21', '38', '0', '未知', '未知', '贝瓦', '把话说得太大，最后连退路都没有了', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3973', ' 华盛顿砍树', '31', '38', '0', '未知', '未知', '贝瓦', '华盛顿是美国第一位总统。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3974', '猜猜我有多爱你', '19', '38', '0', '未知', '未知', '贝瓦', '我爱你那么高、那么大、那么远，那么深！', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3975', '小兔和小羊', '19', '38', '0', '未知', '未知', '贝瓦', '虚心学习才能赢得第一。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3976', '乌龟飞天', '19', '38', '0', '未知', '未知', '贝瓦', ' ', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3977', '感恩图报', '26', '38', '0', '未知', '未知', '贝瓦', '懂得感恩的人，内心洒满了阳光。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3978', '小乌鸦学艺', '19', '38', '0', '未知', '未知', '贝瓦', '吃不起苦，是永远学不到真本领的！\r\n', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3979', ' 孟姜女哭长城', '23', '38', '0', '未知', '未知', '贝瓦', '失去挚爱的痛楚，可以感动上天。\r\n', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3980', '三只熊过圣诞节', '19', '38', '0', '未知', '未知', '贝瓦', '幸福的一家人。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3981', '狐假虎威', '26', '38', '0', '未知', '未知', '贝瓦', '站在别人的光环下，你只能看见自己的影子。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3982', '九斤姑娘', '23', '38', '0', '未知', '未知', '贝瓦', '九斤姑娘她从小聪明伶俐。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3983', '揠苗助长', '26', '38', '0', '未知', '未知', '贝瓦', '尊重孩子的纯真思想，不要把他变成小大人。', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3984', '喜羊羊与灰太...', '27', '38', '0', '未知', '未知', '贝瓦', '第10集:灰太狼从广告中得知一种神奇的魔笛，听到...', '1545802945', '1545802945', '1', '2');
INSERT INTO `dp_books` VALUES ('3985', '分大苹果', '31', '38', '0', '未知', '未知', '贝瓦', '爸爸让小华盛顿明白了一个道理。\r\n\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3986', '睡美人', '21', '38', '0', '未知', '未知', '贝瓦', '轻轻吻醒你的宝贝，他比睡美人更幸福。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3987', '珍贵的硬币', '19', '38', '0', '未知', '未知', '贝瓦', '乐于助人，让那一颗糖甜到你的心里。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3988', '女娲造人', '23', '38', '0', '未知', '未知', '贝瓦', '女娲用黄泥按照自己的摸样捏出了很多小人。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3989', '河狸智斗鳄鱼', '19', '38', '0', '未知', '未知', '贝瓦', '河狸在动物世界中有房屋设计建造师之称。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3990', '贝多芬失聪', '31', '38', '0', '未知', '未知', '贝瓦', '贝多芬感觉到自己的耳朵越来越聋时，他几乎绝望了。...', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3991', '莴苣姑娘', '21', '38', '0', '未知', '未知', '贝瓦', '莴苣姑娘的美丽长发，引领着王子的到来。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3992', '啄木鸟', '19', '38', '0', '未知', '未知', '贝瓦', '啄木鸟治好了老树的病。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3993', '杀鸡取蛋', '26', '38', '0', '未知', '未知', '贝瓦', '不要为了一时利益牺牲了长远的发展。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3994', '杂技表演大赛', '19', '38', '0', '未知', '未知', '贝瓦', '动物表演杂技一定很精彩。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3995', '花园宝宝1', '27', '38', '0', '未知', '未知', '贝瓦', '最漂亮的花。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3996', '画饼充饥', '26', '38', '0', '未知', '未知', '贝瓦', '想象并不能解决实际问题，但能放宽人的心。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3997', '精卫填海', '23', '38', '0', '未知', '未知', '贝瓦', '只有锲而不舍的做一件事情才能成功。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3998', '狐狸和葡萄', '24', '38', '0', '未知', '未知', '贝瓦', '吃不到葡萄，说葡萄酸。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('3999', '咪咪的钓鱼竿', '19', '38', '0', '未知', '未知', '贝瓦', '小咪咪钓鱼竿，自己试试看一看。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4000', '信封里的琪琪', '19', '38', '0', '未知', '未知', '贝瓦', '温馨的故事伴随宝宝快快入睡。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4001', '生肖的传说', '23', '38', '0', '未知', '未知', '贝瓦', '关于十二生肖是如何排列次序的小故事。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4002', '每天都是圣诞节', '19', '38', '0', '未知', '未知', '贝瓦', '贪心的小姑娘。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4003', '白兔奶奶的摇椅', '19', '38', '0', '未知', '未知', '贝瓦', '爱着别人，快乐着自己。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4004', '玩具回家了', '19', '38', '0', '未知', '未知', '贝瓦', '玩具玩完不乱扔。', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4005', '大肚子蝈蝈', '19', '38', '0', '未知', '未知', '贝瓦', '可笑傲慢的蝈蝈。\r\n', '1545802946', '1545802946', '1', '2');
INSERT INTO `dp_books` VALUES ('4006', '只怕迟了一分钟', '19', '38', '0', '未知', '未知', '贝瓦', '有很多事哪怕只是迟了一分钟，也就错过了。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4007', '小老鼠咪咪打...', '19', '38', '0', '未知', '未知', '贝瓦', '小老鼠打电话，电话打到花猫家，你说这该多危险。\r...', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4008', '小公主和蛇', '19', '38', '0', '未知', '未知', '贝瓦', '蛇沾上公主的眼泪立成一个英俊的王子。\r\n', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4009', '河马大叔开店', '19', '38', '0', '未知', '未知', '贝瓦', '看看动物们的世界和我们一样吗？\r\n', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4010', '小青蛙的故事', '19', '38', '0', '未知', '未知', '贝瓦', '蝴蝶风筝成了小青蛙的滑翔机。\r\n', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4011', '让鸟儿自由', '19', '38', '0', '未知', '未知', '贝瓦', '珍惜身边的一切生命，让宝宝也像鸟儿一样自由飞翔。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4012', '小灰狼', '19', '38', '0', '未知', '未知', '贝瓦', '小灰狼和猪成了一家人。\r\n', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4013', ' 鲁迅的故事', '31', '38', '0', '未知', '未知', '贝瓦', '鲁迅省吃俭用，节衣缩食，就为买书。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4014', '鸡毛信的故事', '31', '38', '0', '未知', '未知', '贝瓦', '海娃小八路，小英雄！', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4015', '生金蛋的鹅', '24', '38', '0', '未知', '未知', '贝瓦', '人应该满足于现有的东西，切不可贪得无厌，杀鸡取卵...', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4016', ' 端午节的来历', '23', '38', '0', '未知', '未知', '贝瓦', '品尝粽子的同时，不要忘记告诉孩子端午节的由来。\r...', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4017', ' 拇指姑娘', '25', '38', '0', '未知', '未知', '贝瓦', '故事情节美丽动人，同时又有很浓厚的诗意。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4018', '八仙过海,各...', '23', '38', '0', '未知', '未知', '贝瓦', '八仙法力无边，各自有各自的本领，渡过了东海。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4019', '玛丽和洋娃娃', '19', '38', '0', '未知', '未知', '贝瓦', '宝贝，还记得那些你弄丢的玩具吗？', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4020', '萝卜', '21', '38', '0', '未知', '未知', '贝瓦', '哇，这是世界上最大的萝卜！', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4021', '盲人最感激谁', '19', '38', '0', '未知', '未知', '贝瓦', '善良的男孩，可爱的心。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4022', '画蛇添足', '26', '38', '0', '未知', '未知', '贝瓦', '一切刚刚好，多余的东西只会适得其反。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4023', '谁跟小羚羊去...', '19', '38', '0', '未知', '未知', '贝瓦', '童年因为有你才美丽，亲爱的小伙伴。\r\n', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4024', ' 打火匣', '25', '38', '0', '未知', '未知', '贝瓦', '“钱”在人世间所起的作用。', '1545802947', '1545802947', '1', '2');
INSERT INTO `dp_books` VALUES ('4025', '胸有成竹', '26', '38', '0', '未知', '未知', '贝瓦', '有所积累才会信心十足。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4026', '猫和鸡', '24', '38', '0', '未知', '未知', '贝瓦', '聪明人吃一堑，长一智，不会再受伪装的欺骗了。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4027', '我的爸爸叫焦尼', '19', '38', '0', '未知', '未知', '贝瓦', '婚姻虽然破裂，但挚爱亲情永远无法割断。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4028', '逃家小兔', '19', '38', '0', '未知', '未知', '贝瓦', '一场爱的捉迷藏就此展开……', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4029', '奇怪的镜子', '19', '38', '0', '未知', '未知', '贝瓦', '天上月亮倒映在水面，小鱼把它当镜子。\r\n', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4030', '一个老铁匠', '19', '38', '0', '未知', '未知', '贝瓦', '“如果疯子给了你很好的建议，照他说的做不会后悔。...', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4031', '小熊穿皮鞋', '19', '38', '0', '未知', '未知', '贝瓦', '好奇的小熊穿皮鞋。\r\n', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4032', '太阳和风的争吵', '19', '38', '0', '未知', '未知', '贝瓦', '温和的手段比强制的手段往往更有效。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4033', '蚂蚁报恩', '19', '38', '0', '未知', '未知', '贝瓦', '动物之间也是有感情的，就像这条蛇。\r\n', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4034', '箭猪和他的伙伴', '19', '38', '0', '未知', '未知', '贝瓦', '多一个朋友，多一份力量！\r\n\r\n', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4035', '圣诞老人也收...', '19', '38', '0', '未知', '未知', '贝瓦', '圣诞老人的礼物。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4036', '山里来的小老虎', '19', '38', '0', '未知', '未知', '贝瓦', '小老虎王王到底是谁呢？\r\n', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4037', '长干行•其一', '22', '38', '0', '未知', '未知', '贝瓦', '停船暂借问，或恐是同乡。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4038', '小鲤鱼住新房', '19', '38', '0', '未知', '未知', '贝瓦', '小鲤鱼模样真神奇！', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4039', '狼与小羊', '24', '38', '0', '未知', '未知', '贝瓦', '对恶人做任何正当的辩解也是无效的。', '1545802949', '1545802949', '1', '2');
INSERT INTO `dp_books` VALUES ('4040', '大坝告急', '19', '38', '0', '未知', '未知', '贝瓦', '善良的大象救了大家，牺牲了自己。\r\n', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4041', '掩耳盗铃', '26', '38', '0', '未知', '未知', '贝瓦', '不要欺骗别人，更不要欺骗自己。', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4042', '小儿垂钓 ', '22', '38', '0', '未知', '未知', '贝瓦', '这是一首描写儿童生活情趣的诗作。\r\n', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4043', '大拇哥游记', '21', '38', '0', '未知', '未知', '贝瓦', '我想抓一把阳光放在你口袋里，快乐与你同行。', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4044', '三顾茅庐', '26', '38', '0', '未知', '未知', '贝瓦', '你要让自己成为金子，别人才能挖掘你。', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4045', '猪和牛', '19', '38', '0', '未知', '未知', '贝瓦', '为什么过年杀猪，不杀牛。\r\n', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4046', '傻瓜汉斯', '21', '38', '0', '未知', '未知', '贝瓦', '病痛都到我这里来吧，我要你在这个故事里欢笑。', '1545802950', '1545802950', '1', '2');
INSERT INTO `dp_books` VALUES ('4047', '悯农', '22', '38', '0', '未知', '未知', '贝瓦', '谁知盘中餐，粒粒皆辛苦。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4048', '一滴水', '25', '38', '0', '未知', '未知', '贝瓦', '从一滴水可以看一个世界。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4049', '老狐狸和鸭子', '19', '38', '0', '未知', '未知', '贝瓦', '习惯有时是很可怕的东西，它会让人忘记防备危险。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4050', '高尔基救书', '31', '38', '0', '未知', '未知', '贝瓦', '世界文豪高尔基对书感情独深，爱书如命。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4051', '房顶上的大蘑菇', '19', '38', '0', '未知', '未知', '贝瓦', '一个人是离不开大家的，朋友之间要团结友爱、互相帮...', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4052', '骄兵必败', '26', '38', '0', '未知', '未知', '贝瓦', '取得成绩的时候，一定不要骄傲哟。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4053', '弟子规', '22', '38', '0', '未知', '未知', '贝瓦', '启蒙养正，养成忠厚家风的最佳读物。', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4054', '风儿-阳光-...', '19', '38', '0', '未知', '未知', '贝瓦', '美好的故事伴随宝宝快快入睡。\r\n', '1545803205', '1545803205', '1', '2');
INSERT INTO `dp_books` VALUES ('4055', '缘木求鱼', '26', '38', '0', '未知', '未知', '贝瓦', '沿着错的方向是走不到目的地的。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4056', '洛水女神', '23', '38', '0', '未知', '未知', '贝瓦', '经典的神话传说。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4057', '每日三省吾身', '22', '38', '0', '未知', '未知', '贝瓦', '要要求自己对社会、对朋友负责任，勤于求学，永不懈...', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4058', '大头儿子与猫...', '19', '38', '0', '未知', '未知', '贝瓦', '善良的孩子。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4059', '两个神秘的小...', '19', '38', '0', '未知', '未知', '贝瓦', '一个充满神秘和幻想的故事。\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4060', '剪刀大侠', '19', '38', '0', '未知', '未知', '贝瓦', '形象，幻想的故事。\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4061', '司马光砸缸', '31', '38', '0', '未知', '未知', '贝瓦', '小司马光遇事沉着冷静，\"司马光砸缸\"的故事流传至...', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4062', '漂亮的小狗', '19', '38', '0', '未知', '未知', '贝瓦', '小伙模样真漂亮。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4063', '真假小白兔', '19', '38', '0', '未知', '未知', '贝瓦', '小兔子当经理。\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4064', '小兔学长跑', '19', '38', '0', '未知', '未知', '贝瓦', '坚持才能胜利。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4065', '灰姑娘', '21', '38', '0', '未知', '未知', '贝瓦', '善良的女孩遇见了珍爱她的那个王子。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4066', '车胤囊萤夜读', '31', '38', '0', '未知', '未知', '贝瓦', '车胤，小时候很爱学习，勤奋刻苦。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4067', '咏鹅', '22', '38', '0', '未知', '未知', '贝瓦', '鹅，鹅，鹅，曲项向天歌。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4068', '小蜗牛请医生', '19', '38', '0', '未知', '未知', '贝瓦', '小蜗牛找医生，天鹅姑娘来帮忙。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4069', '鲤鱼跳龙门', '23', '38', '0', '未知', '未知', '贝瓦', '每个孩子都有自己的龙门，努力跳跃吧。	\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4070', '重阳节的来历', '23', '38', '0', '未知', '未知', '贝瓦', '茱萸叶、菊花酒，重阳时节登高望远。\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4071', '鸟窝里的树', '19', '38', '0', '未知', '未知', '贝瓦', '小树苗快长大，小鸟来这做家家。\r\n', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4072', '狼来了', '24', '38', '0', '未知', '未知', '贝瓦', '那些常常说谎话的人，即使再说真话也无人相信。', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4073', '叶之吟', '19', '38', '0', '未知', '未知', '贝瓦', '熟睡在大地上的叶子啊，能告诉我你梦到了什么吗？', '1545803207', '1545803207', '1', '2');
INSERT INTO `dp_books` VALUES ('4074', '小面包里的银币', '19', '38', '0', '未知', '未知', '贝瓦', '知足、文雅地生活，怀着一颗感恩的心。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4075', '毛泽东的故事', '31', '38', '0', '未知', '未知', '贝瓦', '毛泽东小时候聪慧过人，而且助人为乐。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4076', '沙子与石头', '19', '38', '0', '未知', '未知', '贝瓦', '沙子和石头的区别，仅在于一颗感恩的心态。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4077', '水落石出', '26', '38', '0', '未知', '未知', '贝瓦', '要刨开现象才能看到本质。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4078', '在回家的路上', '25', '38', '0', '未知', '未知', '贝瓦', '洛狄到达了这山的最高部分；路开始从这儿伸向下边的...', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4079', '白新娘和黑新娘', '21', '38', '0', '未知', '未知', '贝瓦', '善良的孩子总会受到上帝的眷顾。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4080', '盘古开天', '23', '38', '0', '未知', '未知', '贝瓦', '在这黑暗之中经过了一万八千年，孕育出了一个力大无...', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4081', '叶公好龙', '26', '38', '0', '未知', '未知', '贝瓦', '喜欢是发自内心地，假装不来。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4082', '森林乐队', '28', '38', '0', '未知', '未知', '贝瓦', '森林乐队，演唱出一曲动人的春之歌。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4083', '东施效颦', '26', '38', '0', '未知', '未知', '贝瓦', '一味地效仿别人，只会被人笑话。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4084', '水晶球', '21', '38', '0', '未知', '未知', '贝瓦', '美丽而充满魔力的水晶球，我也想拥有。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4085', ' 大禹治水', '23', '38', '0', '未知', '未知', '贝瓦', '大禹治理水患，让大家安居乐业。', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4086', '穷人和富人', '21', '38', '0', '未知', '未知', '贝瓦', '上帝敲开了穷人的幸福之门，富人却把上帝关在了门外...', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4087', '天上的大象', '28', '38', '0', '未知', '未知', '贝瓦', '你见过会飞的大象吗？你见过鱼在天上游吗？', '1545803602', '1545803602', '1', '2');
INSERT INTO `dp_books` VALUES ('4088', '苹果是方的吗？', '28', '38', '0', '未知', '未知', '贝瓦', '促进学生思维和想像发展的好老师。', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4089', '圣诞袜的故事', '19', '38', '0', '未知', '未知', '贝瓦', '一个美丽的圣诞故事。', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4090', '傻小子学害怕', '21', '38', '0', '未知', '未知', '贝瓦', '宝宝别害怕，妈妈怀里你长大。', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4091', '三座房子里的...', '19', '38', '0', '未知', '未知', '贝瓦', '花儿芬芳，蜜蜂歌唱工作忙。', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4092', '两只小鸡', '21', '38', '0', '未知', '未知', '贝瓦', '学会分享，学会信守承诺。', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4093', ' 雷锋助人为乐', '31', '38', '0', '未知', '未知', '贝瓦', '雷锋精神培育着一代又一代新人成长。\r\n', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4094', '猫妈妈搬家', '19', '38', '0', '未知', '未知', '贝瓦', '猫妈妈不顾孩子们的身体，害得自己走路更多。\r\n', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4095', '山的回音', '19', '38', '0', '未知', '未知', '贝瓦', '假如你说话温和、动听，你就会听到一样温和、动听的...', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4096', '这个办法真好', '19', '38', '0', '未知', '未知', '贝瓦', '毛主席和小伙伴上山放羊的故事。\r\n', '1545803604', '1545803604', '1', '2');
INSERT INTO `dp_books` VALUES ('4097', '戴项链的比赛', '19', '38', '0', '未知', '未知', '贝瓦', '小动物真可爱，大家来玩戴项链比赛。\r\n', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4098', '谁最先', '19', '38', '0', '未知', '未知', '贝瓦', '学会分享便是在放大幸福。', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4099', '机智的小绒布鸭', '19', '38', '0', '未知', '未知', '贝瓦', '小伙伴有绒布鸭这个好朋友都很高兴。', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4100', '小鸡吱吱', '19', '38', '0', '未知', '未知', '贝瓦', '小鸡吱吱、哼哼，小鸭嘎嘎，小鹅咕咕，被狐狸带进洞...', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4101', '健忘草', '19', '38', '0', '未知', '未知', '贝瓦', '一闻到健忘草的气味，就忘记了一切。', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4102', '勇敢的小裁缝', '21', '38', '0', '未知', '未知', '贝瓦', '勇敢点，小小的裁缝做了一辈子的国王呢。', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4103', '笨鸟先飞', '26', '38', '0', '未知', '未知', '贝瓦', '勤劳和努力是成功的一个法宝。', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4104', '聪明的蛇医生', '19', '38', '0', '未知', '未知', '贝瓦', '蛇医生的治胀宝药。\r\n', '1545803605', '1545803605', '1', '2');
INSERT INTO `dp_books` VALUES ('4105', '炎帝击石生火', '23', '38', '0', '未知', '未知', '贝瓦', '聪慧的炎帝教会百姓如何生火。\r\n', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4106', '挤牛奶的姑娘', '24', '38', '0', '未知', '未知', '贝瓦', '想入非非不会给自己带来任何实惠。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4107', '所见 ', '22', '38', '0', '未知', '未知', '贝瓦', '讲牧童悠然自得地骑在黄牛背上。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4108', '专心致志', '26', '38', '0', '未知', '未知', '贝瓦', '专注是一个美丽的姿态。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4109', '桃花女龙', '23', '38', '0', '未知', '未知', '贝瓦', '民间传说故事，“女龙”本是渔家女。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4110', '国王的黄金梦', '19', '38', '0', '未知', '未知', '贝瓦', '只有黄金才是世界上最宝贵的财富！', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4111', '芝兰玉树', '26', '38', '0', '未知', '未知', '贝瓦', '做一个品德高洁的人，值得骄傲。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4112', '草地上的罐头', '19', '38', '0', '未知', '未知', '贝瓦', '这个罐头不再是个废物。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4113', '玻璃瓶中的妖怪', '21', '38', '0', '未知', '未知', '贝瓦', '用智慧可以战胜可怕的妖怪。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4114', '一根羽毛', '19', '38', '0', '未知', '未知', '贝瓦', '我可不愿呆在这个窝里，我要去找一个更适合我的地方...', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4115', '狐狸和马', '21', '38', '0', '未知', '未知', '贝瓦', '当我老去时，希望你在我身边。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4116', '江上渔者', '22', '38', '0', '未知', '未知', '贝瓦', '这首语言朴实、形象生动、对比强烈、耐人寻味的小诗...', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4117', '施洋搓脚夜读', '31', '38', '0', '未知', '未知', '贝瓦', '著名的工人领袖施洋，幼年家道贫寒，他就在古庙里读...', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4118', '冰孩儿', '19', '38', '0', '未知', '未知', '贝瓦', '冰孩子的舅舅是冰棍厂的厂长。', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4119', '毛毛和长鼻子树', '19', '38', '0', '未知', '未知', '贝瓦', '温馨美好的小故事。\r\n', '1545803618', '1545803618', '1', '2');
INSERT INTO `dp_books` VALUES ('4120', '小母鸡欢欢', '19', '38', '0', '未知', '未知', '贝瓦', '最好的地方，是妈妈温暖的怀抱里。\r\n', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4121', '挑食的小贝贝', '19', '38', '0', '未知', '未知', '贝瓦', '妈妈做的饭，粒粒盛满爱。\r\n', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4122', '坏蛋那边跑', '19', '38', '0', '未知', '未知', '贝瓦', '具有教育意义的故事。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4123', '后羿射日', '19', '38', '0', '未知', '未知', '贝瓦', '英雄为民除害，救百姓于水火。\r\n', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4124', ' 观音送画', '23', '38', '0', '未知', '未知', '贝瓦', '菩萨帮助人们的一个小故事。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4125', '井底之蛙', '26', '38', '0', '未知', '未知', '贝瓦', '抬头仰望天空，宇宙如此浩瀚。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4126', '一双鞋的故事', '19', '38', '0', '未知', '未知', '贝瓦', '一个有才华的人，如果他的灵魂也很伟大，那么他一定...', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4127', '朝三暮四', '26', '38', '0', '未知', '未知', '贝瓦', '想的事太多，最后一件都做不好。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4128', '红蚂蚁的节日...', '19', '38', '0', '未知', '未知', '贝瓦', '美好的夜晚，甜蜜的梦香。\r\n', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4129', '圣诞树的故事', '19', '38', '0', '未知', '未知', '贝瓦', '过圣诞节时都要准备一棵圣诞树，以增加节日的欢乐气...', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4130', '象鼻子桥', '19', '38', '0', '未知', '未知', '贝瓦', '小动物真可爱，大家友爱把忙帮。\r\n', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4131', '徒劳的乌鸦', '24', '38', '0', '未知', '未知', '贝瓦', '别人的美丽是借不来的。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4132', ' 安琪儿', '25', '38', '0', '未知', '未知', '贝瓦', '幻想的成分开始削弱，现实生活的成分加强了。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4133', '孔雀公主', '23', '38', '0', '未知', '未知', '贝瓦', '一个在傣族人民中间广为流传的故事。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4134', '白蛇传', '23', '38', '0', '未知', '未知', '贝瓦', '流传千年的民间故事。', '1545803621', '1545803621', '1', '2');
INSERT INTO `dp_books` VALUES ('4135', '龙公主戏神珠', '23', '38', '0', '未知', '未知', '贝瓦', '一个民间故事，燕窝岛有个小仔，家里很穷。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4136', '大熊逃呀逃', '19', '38', '0', '未知', '未知', '贝瓦', '不遵守交通规则的大熊，被警察抓了。\r\n', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4137', '圣诞小故事', '19', '38', '0', '未知', '未知', '贝瓦', '圣诞节上帝赐给他了一个美好的礼物。\r\n', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4138', '一鸣惊人', '26', '38', '0', '未知', '未知', '贝瓦', '要在沉淀了很久以后，才有力量爆发出来。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4139', '掩耳盗铃', '22', '38', '0', '未知', '未知', '贝瓦', '松下问童子，言师采药去。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4140', ' 孔子不耻下问', '31', '38', '0', '未知', '未知', '贝瓦', '虚心好学，肯向一切人，包括向比自己地位低的人学习...', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4141', '叶儿与风儿', '19', '38', '0', '未知', '未知', '贝瓦', '即使在寒冷冬天，妈妈的爱也会像春天般温暖。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4142', '石头激起的水波', '28', '38', '0', '未知', '未知', '贝瓦', '当孩子的思想有了丰富的想像的时候，恰当的启发有利...', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4143', '猫头鹰', '21', '38', '0', '未知', '未知', '贝瓦', '躺在母亲怀里打针，那是人生最幸福的痛。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4144', '小骡子是谁的...', '19', '38', '0', '未知', '未知', '贝瓦', '世上只有妈妈好！\r\n', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4145', '虱子和跳蚤', '21', '38', '0', '未知', '未知', '贝瓦', '宝贝快跑，把烦恼远远抛在身后。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4146', ' 夜莺', '25', '38', '0', '未知', '未知', '贝瓦', '揭露了统治阶级的愚蠢和无知、庸俗和腐朽。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4147', '美丽的青蛙公主', '19', '38', '0', '未知', '未知', '贝瓦', '青蛙变成了一个美丽的公主。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4148', ' 元宵节的由来', '23', '38', '0', '未知', '未知', '贝瓦', '元宵节要吃元宵、提灯笼、射灯谜等民俗活动。', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4149', '达尔文观察趣事', '31', '38', '0', '未知', '未知', '贝瓦', '达尔文每天工作以后，喜欢在树林里散步，呼吸新鲜空...', '1545803630', '1545803630', '1', '2');
INSERT INTO `dp_books` VALUES ('4150', '亡羊补牢', '26', '38', '0', '未知', '未知', '贝瓦', '不要等到伤害降临才恍然大悟。', '1545803640', '1545803640', '1', '2');
INSERT INTO `dp_books` VALUES ('4151', '沙漏的启示', '19', '38', '0', '未知', '未知', '贝瓦', '孩子脑中的十万个为什么，将伴随他们成长一生。', '1545803640', '1545803640', '1', '2');
INSERT INTO `dp_books` VALUES ('4152', '牛顿的一生', '31', '38', '0', '未知', '未知', '贝瓦', '从平凡到伟大，从“笨蛋”到科学家。', '1545803640', '1545803640', '1', '2');
INSERT INTO `dp_books` VALUES ('4153', '寡妇与母鸡', '24', '38', '0', '未知', '未知', '贝瓦', '因为贪婪，想得到更多的利益，结果连现有的都失掉了...', '1545803640', '1545803640', '1', '2');
INSERT INTO `dp_books` VALUES ('4154', '星星银元', '21', '38', '0', '未知', '未知', '贝瓦', '天上落下的居然是亮晶晶的银元。', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4155', '狮子,驴子与...', '24', '38', '0', '未知', '未知', '贝瓦', '应该从别人的不幸中吸取经验和教训。', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4156', '毛毛虫历险记', '19', '38', '0', '未知', '未知', '贝瓦', '毛毛虫变成了两只美丽的花蝴蝶。', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4157', '纺锤,梭子和针', '19', '38', '0', '未知', '未知', '贝瓦', '母亲指引着真爱的道路。', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4158', '铠甲勇士1', '27', '38', '0', '未知', '未知', '贝瓦', '第1集：一夜，恶参兽突然出现于海上的一艘渔船，渔...', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4159', '古代大诗人李白', '31', '38', '0', '未知', '未知', '贝瓦', '李白见到“梦笔生花”后，名诗佳句便源源而出，一发...', '1545803641', '1545803641', '1', '2');
INSERT INTO `dp_books` VALUES ('4160', '女水妖', '21', '38', '0', '未知', '未知', '贝瓦', '变，变，变，神奇魔法再现。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4161', '静夜思', '22', '38', '0', '未知', '未知', '贝瓦', '床前明月光，疑是地上霜。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4162', '三个懒汉', '21', '38', '0', '未知', '未知', '贝瓦', '国王竟然要把王位传给最懒的儿子。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4163', '请帮老虎拔牙', '19', '38', '0', '未知', '未知', '贝瓦', '老虎牙疼谁敢帮他拔呢？', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4164', '驴子与蝉', '24', '38', '0', '未知', '未知', '贝瓦', '不要企望那些不可能属于自己的东西。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4165', '谁更勇敢', '28', '38', '0', '未知', '未知', '贝瓦', '勇敢不等于蛮干。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4166', '兄弟', '19', '38', '0', '未知', '未知', '贝瓦', '哥哥的责任，像那个重重的篮子一样。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4167', '有雾定会晴天...', '28', '38', '0', '未知', '未知', '贝瓦', '十雾九晴。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4168', '愚公移山', '26', '38', '0', '未知', '未知', '贝瓦', '不要取笑愚公的傻气，执着的人才会成功。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4169', '抗日英雄王二小', '31', '38', '0', '未知', '未知', '贝瓦', '王二小一边在山坡上放牛，一边给八路军放哨。', '1545803642', '1545803642', '1', '2');
INSERT INTO `dp_books` VALUES ('4170', '月亮', '21', '38', '0', '未知', '未知', '贝瓦', '月亮挂在天上，照亮了孩子的梦。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4171', '鼹鼠找面包', '19', '38', '0', '未知', '未知', '贝瓦', '泥球是个小鼹鼠。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4172', '蜡烛', '19', '38', '0', '未知', '未知', '贝瓦', '当你用一颗善良的心看待这个世界时，一切都是那么美...', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4173', '小海兔的故事', '19', '38', '0', '未知', '未知', '贝瓦', '一个充满童话的故事。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4174', '射水鱼尾尾', '19', '38', '0', '未知', '未知', '贝瓦', '尾尾知错就改，还帮了鲤鱼妈妈，是个好孩子。\r\n', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4175', '一丝不苟', '26', '38', '0', '未知', '未知', '贝瓦', '宝贝，要知道我对你的照顾是一丝不苟的。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4176', '怎样辨别方向？', '28', '38', '0', '未知', '未知', '贝瓦', '春天，大雁向北飞，而秋天，大雁向南飞。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4177', '叼着肉的狗', '24', '38', '0', '未知', '未知', '贝瓦', '抢夺倒影里的幻影，最后会失去所得。', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4178', '四个聪明的兄弟', '19', '38', '0', '未知', '未知', '贝瓦', '一个关于四兄弟学本事的故事。\r\n', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4179', '小古斯塔娃的...', '19', '38', '0', '未知', '未知', '贝瓦', '还记得童年那些吃米粒的小鸡吗？', '1545803645', '1545803645', '1', '2');
INSERT INTO `dp_books` VALUES ('4180', '黄鹤楼送孟浩...', '22', '38', '0', '未知', '未知', '贝瓦', '孤帆远影碧空尽， 惟见长江天际流。', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4181', '行人与梧桐树', '24', '38', '0', '未知', '未知', '贝瓦', '有些人不知好歹，享受了别人的帮助，还要贬低别人。', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4182', '世界上最可爱...', '19', '38', '0', '未知', '未知', '贝瓦', '一个有爱心，有同情心的人，是世界上最可爱的人了！...', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4183', '猛虎上当记', '19', '38', '0', '未知', '未知', '贝瓦', '老虎也上了狐狸的当。\r\n', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4184', '山震', '24', '38', '0', '未知', '未知', '贝瓦', '庸人往往多自忧。', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4185', '白蛇', '21', '38', '0', '未知', '未知', '贝瓦', '“我们会记住你的，好心自然会有好报！”', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4186', '自相矛盾', '26', '38', '0', '未知', '未知', '贝瓦', '人的思想往往是自相矛盾的，想想自己想要什么。', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4187', '拍手歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4188', '踩着面包走的...', '25', '38', '0', '未知', '未知', '贝瓦', '她是一个穷苦的孩子，但是非常骄傲，自以为了不起，...', '1545803647', '1545803647', '1', '2');
INSERT INTO `dp_books` VALUES ('4189', ' 彩蝶双飞', '23', '38', '0', '未知', '未知', '贝瓦', '祝英台与梁山伯的感人故事。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4190', '贪吃的小狮子', '19', '38', '0', '未知', '未知', '贝瓦', '蚂蚱会跳迪斯科。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4191', '豆荚里的五粒豆', '25', '38', '0', '未知', '未知', '贝瓦', '五个豆粒飞到广大的世界里去，各奔前程，对各自的经...', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4192', '熊与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '生活中有些人假装善良，其实邪恶。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4193', '免费食堂', '28', '38', '0', '未知', '未知', '贝瓦', '冬天到了，别忘了小鸟们的免费食堂哦。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4194', '月亮和她妈妈', '24', '38', '0', '未知', '未知', '贝瓦', '事物总在不断变化，不可能一劳永逸。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4195', '奉公守法', '26', '38', '0', '未知', '未知', '贝瓦', '不要因为钱权而丢开道义、法律，平平淡淡才是真。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4196', '森林的五月', '28', '38', '0', '未知', '未知', '贝瓦', '五月的森林，到处歌舞升平。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4197', '两个酒罐', '19', '38', '0', '未知', '未知', '贝瓦', '嚣张的空罐子。\r\n', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4198', '瞎子和小野兽', '24', '38', '0', '未知', '未知', '贝瓦', '恶劣的习性在年小时便可得知。', '1545803648', '1545803648', '1', '2');
INSERT INTO `dp_books` VALUES ('4199', ' 马克思的故事', '31', '38', '0', '未知', '未知', '贝瓦', '马克思与小傻瓜。', '1545803650', '1545803650', '1', '2');
INSERT INTO `dp_books` VALUES ('4200', '小树叶贺卡', '19', '38', '0', '未知', '未知', '贝瓦', '你不懂，我不懂，只有小猫咪听得懂。\r\n', '1545803650', '1545803650', '1', '2');
INSERT INTO `dp_books` VALUES ('4201', '池上', '22', '38', '0', '未知', '未知', '贝瓦', '小娃撑小艇，偷采白莲回。 \r\n', '1545803650', '1545803650', '1', '2');
INSERT INTO `dp_books` VALUES ('4202', '树木怎样过冬', '28', '38', '0', '未知', '未知', '贝瓦', '大树，大树，冬天到了，你冷吗？', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4203', ' 胆识过人的...', '31', '38', '0', '未知', '未知', '贝瓦', '毛泽东从小就聪明，人们都夸他长大了一定有出息，是...', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4204', '见贤思齐', '22', '38', '0', '未知', '未知', '贝瓦', '看见贤人便想要向他看齐，看见不贤的人便要检查自己...', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4205', '罐头小人', '19', '38', '0', '未知', '未知', '贝瓦', '看你们被人整治得没点儿猴性了。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4206', ' 世上最美丽...', '25', '38', '0', '未知', '未知', '贝瓦', '耶稣不宜与宗教迷信混为一谈。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4207', ' 梦神', '25', '38', '0', '未知', '未知', '贝瓦', '“好看的脸上长不出大米”', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4208', '哈里和“可怕...', '19', '38', '0', '未知', '未知', '贝瓦', '幻想出来的怪物最可怕。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4209', '小麻雀模仿苍鹰', '19', '38', '0', '未知', '未知', '贝瓦', '乌鸦讲了小麻雀模仿苍鹰的故事。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4210', '小蜜蜂与花儿', '19', '38', '0', '未知', '未知', '贝瓦', '世界真的很奇妙。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4211', '冰盖下的朋友', '28', '38', '0', '未知', '未知', '贝瓦', '在冬天别忘了那些生活在冰盖下面的朋友哦。', '1545803651', '1545803651', '1', '2');
INSERT INTO `dp_books` VALUES ('4212', '十二个跳舞的...', '21', '38', '0', '未知', '未知', '贝瓦', '梦里，公主正在和王子跳舞呢。', '1545803652', '1545803652', '1', '2');
INSERT INTO `dp_books` VALUES ('4213', '为中华崛起而...', '31', '38', '0', '未知', '未知', '贝瓦', '周恩来在青少年时期，为中华之崛起努力读书。', '1545803652', '1545803652', '1', '2');
INSERT INTO `dp_books` VALUES ('4214', '嗟来之食', '26', '38', '0', '未知', '未知', '贝瓦', '不要低下高贵的头。', '1545803652', '1545803652', '1', '2');
INSERT INTO `dp_books` VALUES ('4215', '马头琴的来历', '19', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803652', '1545803652', '1', '2');
INSERT INTO `dp_books` VALUES ('4216', '登鹳雀楼', '22', '38', '0', '未知', '未知', '贝瓦', '欲穷千里目，更上一层楼。', '1545803652', '1545803652', '1', '2');
INSERT INTO `dp_books` VALUES ('4217', '自作聪明的小...', '28', '38', '0', '未知', '未知', '贝瓦', '小狐狸自作聪明，所以吃了大亏。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4218', '地球是什么形...', '28', '38', '0', '未知', '未知', '贝瓦', '“地球是个大鸭梨”', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4219', '聪明的乌龟', '28', '38', '0', '未知', '未知', '贝瓦', '保护自己最好的办法，就是别让自己受伤。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4220', '已亥杂诗', '22', '38', '0', '未知', '未知', '贝瓦', '“万马齐喑究可哀”一句，深刻地表现了龚自珍对清朝...', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4221', '寻猫布告', '19', '38', '0', '未知', '未知', '贝瓦', '别看年纪小，胡子可不少。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4222', '虹小仙子和小...', '19', '38', '0', '未知', '未知', '贝瓦', '充满魔法神奇的故事。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4223', '两个神秘的小...', '21', '38', '0', '未知', '未知', '贝瓦', '清晨窗前的礼物，如雪地里盛开的花，会让宝宝惊喜不...', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4224', '三兄弟', '21', '38', '0', '未知', '未知', '贝瓦', '桃花潭水深千尺，不及兄弟三人情。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4225', '月夜忆舍弟', '22', '38', '0', '未知', '未知', '贝瓦', '露从今夜白，月是故乡明。', '1545803653', '1545803653', '1', '2');
INSERT INTO `dp_books` VALUES ('4226', '呼噜猫和阿猜狗', '19', '38', '0', '未知', '未知', '贝瓦', '一对会作曲的小动物。', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4227', '颜回不迁怒不...', '22', '38', '0', '未知', '未知', '贝瓦', '能够做到“不迁怒”，就成为道德完善的一个外在标志...', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4228', '花园宝宝2', '27', '38', '0', '未知', '未知', '贝瓦', '奇怪的喇叭声。', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4229', '离家的小狗', '19', '38', '0', '未知', '未知', '贝瓦', '小狗也会离家出走了。', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4230', '列宁小的时候', '31', '38', '0', '未知', '未知', '贝瓦', '列宁小时候是一个认真学习的孩子。', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4231', '沈从文知错就改', '31', '38', '0', '未知', '未知', '贝瓦', '沈从文一直严格要求自己，长大后成了着名的作家。\r...', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4232', '小鹿与他的父亲', '24', '38', '0', '未知', '未知', '贝瓦', '相信自己，不要软弱地面对生活。', '1545803654', '1545803654', '1', '2');
INSERT INTO `dp_books` VALUES ('4233', '乌鸦喝水', '24', '38', '0', '未知', '未知', '贝瓦', '智慧往往胜过力气。', '1545803655', '1545803655', '1', '2');
INSERT INTO `dp_books` VALUES ('4234', '隋宫', '22', '38', '0', '未知', '未知', '贝瓦', '地下若逢陈后主，岂宜重问后庭花。', '1545803655', '1545803655', '1', '2');
INSERT INTO `dp_books` VALUES ('4235', '两只口袋', '19', '38', '0', '未知', '未知', '贝瓦', '人们往往喜欢挑剔别人的缺点，却无视自身的缺点。\r...', '1545803655', '1545803655', '1', '2');
INSERT INTO `dp_books` VALUES ('4236', '一鼓作气', '26', '38', '0', '未知', '未知', '贝瓦', '一鼓作气，再而衰，三而竭。', '1545803655', '1545803655', '1', '2');
INSERT INTO `dp_books` VALUES ('4237', '温故知新', '22', '38', '0', '未知', '未知', '贝瓦', '为政的人要师法过去的历史，这样有助于判断事物的发...', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4238', '小海兔的故事', '21', '38', '0', '未知', '未知', '贝瓦', '世上没有什么能逃脱公主的眼睛。', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4239', '陆游书巢勤学', '31', '38', '0', '未知', '未知', '贝瓦', '陆游他从小刻苦勤奋、敏而好学。成为一位杰出的大文...', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4240', '老妈妈', '19', '38', '0', '未知', '未知', '贝瓦', '一个可怜的母亲。', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4241', '报佳音的由来', '19', '38', '0', '未知', '未知', '贝瓦', '报佳音已经变成圣诞不可缺少的一个节目。', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4242', '水能点火吗？', '28', '38', '0', '未知', '未知', '贝瓦', '“探索”、想像的方向，有效地促进了孩子智力的开发...', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4243', '十二门徒', '21', '38', '0', '未知', '未知', '贝瓦', '妈妈都希望宝宝有一个守护天使。', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4244', '母狼高司普和...', '21', '38', '0', '未知', '未知', '贝瓦', '母狼请来狐狸当教父，会发生什么呢？', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4245', '躲在白杨树上', '28', '38', '0', '未知', '未知', '贝瓦', '猎手和猎物之间的博弈，取决于谁更有耐心、谁更敏锐...', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4246', '李密牛角挂书', '31', '38', '0', '未知', '未知', '贝瓦', '李密骑牛，出门看朋友。', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4247', '望娘滩', '19', '38', '0', '未知', '未知', '贝瓦', '变成蛟龙，报这血海深仇', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4248', '蚂蚁会游泳吗？', '28', '38', '0', '未知', '未知', '贝瓦', '自己动脑筋解决问题，而不是直接告诉答案。\r\n\r\n', '1545803657', '1545803657', '1', '2');
INSERT INTO `dp_books` VALUES ('4249', '乌龟与鹰', '24', '38', '0', '未知', '未知', '贝瓦', '那些好高骛远，不切实际的人必将失败。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4250', '亚当与夏娃', '23', '38', '0', '未知', '未知', '贝瓦', '亚当与夏娃的传说。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4251', '齐白石', '31', '38', '0', '未知', '未知', '贝瓦', '齐白石老人的画受到了世界人民的喜爱。\r\n', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4252', '准备过冬的动...', '28', '38', '0', '未知', '未知', '贝瓦', '寒冷的冬天就要来了，小动物都在储备着粮食。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4253', '强盗新郎', '21', '38', '0', '未知', '未知', '贝瓦', '这个里面的新郎官原来是个强盗。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4254', '牧鹅姑娘', '25', '38', '0', '未知', '未知', '贝瓦', '一个卑鄙而野心勃勃的女仆偷了公主的一切。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4255', '小羊羔与小鱼儿', '21', '38', '0', '未知', '未知', '贝瓦', '小弟弟变成了鱼，小妹变成了小羊羔，怎么办才好？', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4256', '李白的故事', '31', '38', '0', '未知', '未知', '贝瓦', '只要有恒心，铁棒一定能磨成针。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4257', '燕子与乌鸦', '19', '38', '0', '未知', '未知', '贝瓦', '健康的身体是最漂亮的外貌。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4258', '水滴石穿', '26', '38', '0', '未知', '未知', '贝瓦', '小小的水滴坚持不懈，也能产生巨大的力量。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4259', '星星为什么闪？', '28', '38', '0', '未知', '未知', '贝瓦', '星星其实不会眨眼。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4260', '囫囵吞枣', '26', '38', '0', '未知', '未知', '贝瓦', '好的东西需要慢慢吸收。', '1545803659', '1545803659', '1', '2');
INSERT INTO `dp_books` VALUES ('4261', '野猪先生的对...', '19', '38', '0', '未知', '未知', '贝瓦', '什么叫\"对不起\"?', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4262', '口若悬河', '26', '38', '0', '未知', '未知', '贝瓦', '就算你有很好的语言表达能力，也说不出我有多爱你。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4263', '一诺千金', '26', '38', '0', '未知', '未知', '贝瓦', '对你承诺是永恒的。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4264', '农夫与魔鬼', '21', '38', '0', '未知', '未知', '贝瓦', '聪明的农夫让魔鬼什么都没能得到。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4265', '三个小矮人', '21', '38', '0', '未知', '未知', '贝瓦', '三个小矮人和一个小女孩的故事。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4266', '会说话的卷心菜', '19', '38', '0', '未知', '未知', '贝瓦', '卷心菜会说话吗？', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4267', '蜗牛的友谊 ', '19', '38', '0', '未知', '未知', '贝瓦', '好朋友不吵架，开开心心手拉手。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4268', '聪明的小熊', '28', '38', '0', '未知', '未知', '贝瓦', '聪明小熊三次逃脱猎人的捕捉，安全的度过了冬眠。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4269', ' 司马光警枕...', '31', '38', '0', '未知', '未知', '贝瓦', '司马光是个贪玩贪睡的孩子，在老师的谆谆教诲下，他...', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4270', '听其言而观其行', '22', '38', '0', '未知', '未知', '贝瓦', '要观察一个人必须从观察其行为入手。', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4271', ' 周恩来妙语...', '31', '38', '0', '未知', '未知', '贝瓦', '对！牛弹琴！', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4272', '黄帝乘龙升天', '23', '38', '0', '未知', '未知', '贝瓦', '五千年前的一天，黄帝治下国泰民安，没有饥荒之灾，...', '1545803661', '1545803661', '1', '2');
INSERT INTO `dp_books` VALUES ('4273', '爱因斯坦的读...', '31', '38', '0', '未知', '未知', '贝瓦', '爱因斯坦取得这些成绩，并不是天上掉下的馅饼。\r\n...', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4274', '老鼠,小鸟和...', '21', '38', '0', '未知', '未知', '贝瓦', '每个人都有自己的优势。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4275', '披着狮皮的驴', '24', '38', '0', '未知', '未知', '贝瓦', '那些狐假虎威，仗势欺人的人必将遭到世人痛恨，自取...', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4276', '常见的益虫和...', '28', '38', '0', '未知', '未知', '贝瓦', '大自然真奇妙，昆虫世界种类多。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4277', '狼和狐狸', '21', '38', '0', '未知', '未知', '贝瓦', '狼丧身在自己的贪婪里。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4278', '偷东西的小孩', '24', '38', '0', '未知', '未知', '贝瓦', '小错起初不惩治，必将酿成大错。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4279', '风与太阳', '24', '38', '0', '未知', '未知', '贝瓦', '劝说往往比强迫更为有效。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4280', '知之、好之不...', '22', '38', '0', '未知', '未知', '贝瓦', '可以通过调整心理状态，调动学习的巨大积极性和潜力...', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4281', '孔子评子路', '22', '38', '0', '未知', '未知', '贝瓦', '摆脱各种名利的引诱，才能够维持自身的清白。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4282', '不学无术', '26', '38', '0', '未知', '未知', '贝瓦', '可以当一个平凡的人，但是别当不学无术的人。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4283', '撒切尔夫人', '31', '38', '0', '未知', '未知', '贝瓦', '过十字路口之前先四下看看。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4284', '游子吟', '22', '38', '0', '未知', '未知', '贝瓦', '慈母手中线，游子身上衣。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4285', '不患无位', '22', '38', '0', '未知', '未知', '贝瓦', '不怕别人不知道自己，要去追求可以让别人知道的本领...', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4286', '运盐的驴子', '24', '38', '0', '未知', '未知', '贝瓦', '有些人聪明反被聪明误，自己害了自己。', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4287', ' 菊花仙子', '23', '38', '0', '未知', '未知', '贝瓦', '孝心感动仙子，恩赐菊花帮助母亲复明。\r\n', '1545803663', '1545803663', '1', '2');
INSERT INTO `dp_books` VALUES ('4288', '春晓', '22', '38', '0', '未知', '未知', '贝瓦', '春眠不觉晓，处处闻啼鸟。', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4289', '鼹鼠', '24', '38', '0', '未知', '未知', '贝瓦', '那些爱吹牛说大话的人，往往微不足道的事情上暴露了...', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4290', '终南别业', '22', '38', '0', '未知', '未知', '贝瓦', '行到水穷处，坐看云起时', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4291', '李四光的故事', '31', '38', '0', '未知', '未知', '贝瓦', '李四光从小爱动脑。', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4292', '海鸥和鸢', '24', '38', '0', '未知', '未知', '贝瓦', '每个人都应该安分守己。', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4293', '狐狸和乌鸦', '28', '38', '0', '未知', '未知', '贝瓦', '好听的话，不一定都是发自内心的。', '1545803665', '1545803665', '1', '2');
INSERT INTO `dp_books` VALUES ('4294', '蚂蚁与屎壳郎', '24', '38', '0', '未知', '未知', '贝瓦', '尽管风云变化万千，未雨绸缪的人都能避免灾难。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4295', '歧途亡羊', '26', '38', '0', '未知', '未知', '贝瓦', '确定了目标就坚定地走下去。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4296', '狗,公鸡和狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '聪明的人临危不乱，巧妙而轻易地击败敌人。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4297', '九月九日忆山...', '22', '38', '0', '未知', '未知', '贝瓦', '独在异乡为异客，每逢佳节倍思亲。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4298', '赋得古原草送别', '22', '38', '0', '未知', '未知', '贝瓦', '野火烧不尽，春风吹又生。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4299', '姜太公钓鱼', '23', '38', '0', '未知', '未知', '贝瓦', '姜太公钓鱼—愿者上钩。', '1545803666', '1545803666', '1', '2');
INSERT INTO `dp_books` VALUES ('4300', '春夜喜雨', '22', '38', '0', '未知', '未知', '贝瓦', '随风潜入夜，润物细无声。', '1545803667', '1545803667', '1', '2');
INSERT INTO `dp_books` VALUES ('4301', ' 黑格尔逸闻...', '31', '38', '0', '未知', '未知', '贝瓦', '黑格尔欢欣鼓舞地度过了生命中的最后时光。', '1545803667', '1545803667', '1', '2');
INSERT INTO `dp_books` VALUES ('4302', '布谷鸟叫了', '28', '38', '0', '未知', '未知', '贝瓦', '布谷鸟唤醒了还在沉睡的大地。', '1545803667', '1545803667', '1', '2');
INSERT INTO `dp_books` VALUES ('4303', '瓦特的成长', '31', '38', '0', '未知', '未知', '贝瓦', '瓦特碰到了无数困难，走尽了人生坎坷。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4304', '小心翼翼', '26', '38', '0', '未知', '未知', '贝瓦', '做事应该谨慎，但是过分小心会适得其反。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4305', '学而时习之', '22', '38', '0', '未知', '未知', '贝瓦', '要随时随地的学习，不断地提高自己的修养。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4306', '望庐山瀑布', '22', '38', '0', '未知', '未知', '贝瓦', '飞流直下三千尺，疑是银河落九天。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4307', '仙山的传说', '23', '38', '0', '未知', '未知', '贝瓦', '漂浮在海面上的山。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4308', '孙敬', '31', '38', '0', '未知', '未知', '贝瓦', '孙敬从小勤奋好学，为了避免发困，他用绳子的一头拴...', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4309', '猫和鼠', '24', '38', '0', '未知', '未知', '贝瓦', '聪明人吃一堑，长一智，不会再受伪装的欺骗了。', '1545803668', '1545803668', '1', '2');
INSERT INTO `dp_books` VALUES ('4310', '三根绿枝', '21', '38', '0', '未知', '未知', '贝瓦', '干树枝上竟然长出了三根绿色的嫩枝。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4311', '巧言令色鲜仁', '22', '38', '0', '未知', '未知', '贝瓦', '仁爱不是表面上装样子,而是深深根植于人本心的真诚...', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4312', '智斩独角龙', '23', '38', '0', '未知', '未知', '贝瓦', '娇娇杀死了独角龙，为民除了害。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4313', '马与马夫', '19', '38', '0', '未知', '未知', '贝瓦', '一个关于处世态度的道理。\r\n', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4314', '张广厚吃书', '31', '38', '0', '未知', '未知', '贝瓦', '那不叫念书啊，简直是吃书。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4315', '烧炭人与漂布人', '24', '38', '0', '未知', '未知', '贝瓦', '道不同，不相为谋。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4316', '敕勒歌', '22', '38', '0', '未知', '未知', '贝瓦', '天苍苍，野茫茫，风吹草低见牛羊。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4317', '大森林的冬天', '28', '38', '0', '未知', '未知', '贝瓦', '动物们冬眠了，猎人们出发了。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4318', '水调歌头', '22', '38', '0', '未知', '未知', '贝瓦', '但愿人长久，千里共婵娟。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4319', '路灯下的读书人', '19', '38', '0', '未知', '未知', '贝瓦', '路灯下面读外语。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4320', '两只公鸡', '25', '38', '0', '未知', '未知', '贝瓦', '与其变得烦而倒下来，倒不如啼几声为好。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4321', '公鸡和宝玉', '24', '38', '0', '未知', '未知', '贝瓦', '自己需要的东西才是真正珍贵的。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4322', '杞人忧天', '26', '38', '0', '未知', '未知', '贝瓦', '不要担心那些假象的灾难。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4323', '野兔和刺猬', '21', '38', '0', '未知', '未知', '贝瓦', '想得到的结局，想不出的过程。', '1545803670', '1545803670', '1', '2');
INSERT INTO `dp_books` VALUES ('4324', '滥竽充数', '26', '38', '0', '未知', '未知', '贝瓦', '不用样样精通，但是得学好一种本领。', '1545803671', '1545803671', '1', '2');
INSERT INTO `dp_books` VALUES ('4325', '无题', '22', '38', '0', '未知', '未知', '贝瓦', '身无彩凤双飞翼，心有灵犀一点通。', '1545803671', '1545803671', '1', '2');
INSERT INTO `dp_books` VALUES ('4326', '春雨的色彩', '28', '38', '0', '未知', '未知', '贝瓦', '春雨没有颜色，却能给大地带来万紫千红。', '1545803671', '1545803671', '1', '2');
INSERT INTO `dp_books` VALUES ('4327', '对症下药', '26', '38', '0', '未知', '未知', '贝瓦', '要想解决一个问题，一定要先对它进行彻底分析。', '1545803671', '1545803671', '1', '2');
INSERT INTO `dp_books` VALUES ('4328', '麦草,煤块和...', '21', '38', '0', '未知', '未知', '贝瓦', '宝贝，你的笑声是世上最美的音乐。', '1545803671', '1545803671', '1', '2');
INSERT INTO `dp_books` VALUES ('4329', '少年李白', '31', '38', '0', '未知', '未知', '贝瓦', '李白自小志趣远大，禀性高洁。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4330', '小太阳', '28', '38', '0', '未知', '未知', '贝瓦', '红红的太阳暖洋洋，姥姥有个“小太阳。”', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4331', '三只公牛与狮子', '24', '38', '0', '未知', '未知', '贝瓦', '相信自己的朋友，团结友爱。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4332', '君子周急不继富', '22', '38', '0', '未知', '未知', '贝瓦', '能够在别人危难的时候挺身而出，才是真正的君子作风...', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4333', '爱迪生', '31', '38', '0', '未知', '未知', '贝瓦', '天才来自百分之九十九的勤奋和百分之一的灵感。	\r...', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4334', ' 著名作家—...', '31', '38', '0', '未知', '未知', '贝瓦', '张海迪在残酷的命运面前，她没有沮丧和沉沦，而是圆...', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4335', '君子无终食之...', '22', '38', '0', '未知', '未知', '贝瓦', '人应该对理想忠实不渝、保持高风亮节。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4336', '我当建筑师', '19', '38', '0', '未知', '未知', '贝瓦', '小刚想当建筑师原因，把教室变成圆形。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4337', '塞下曲', '22', '38', '0', '未知', '未知', '贝瓦', '平明寻白羽，没在石棱中。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4338', ' 春节的来历', '23', '38', '0', '未知', '未知', '贝瓦', '茱萸叶、菊花酒，重阳时节登高望远。\r\n', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4339', '可怕的脚印', '28', '38', '0', '未知', '未知', '贝瓦', '等天气暖和了，大家都出去散散步把。', '1545803672', '1545803672', '1', '2');
INSERT INTO `dp_books` VALUES ('4340', '吃饱的不怕冷', '28', '38', '0', '未知', '未知', '贝瓦', '森林里的日子没法过了！好饿啊！', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4341', '三个金色的雕塑', '19', '38', '0', '未知', '未知', '贝瓦', '三个雕像一个不年轻人的故事。', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4342', '夸父追日', '23', '38', '0', '未知', '未知', '贝瓦', '夸父死了，他并没捉住太阳。', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4343', '里仁为美', '22', '38', '0', '未知', '未知', '贝瓦', '没有达到仁的境界，就不算是有智慧。', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4344', '安徒生的童年', '31', '38', '0', '未知', '未知', '贝瓦', '孩子，别人不跟你玩，爸爸来陪你玩吧！', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4345', '受伤的狼与羊', '24', '38', '0', '未知', '未知', '贝瓦', '千万别上那些伪善的恶人的当。', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4346', '风', '22', '38', '0', '未知', '未知', '贝瓦', '让人看到了风的力量', '1545803674', '1545803674', '1', '2');
INSERT INTO `dp_books` VALUES ('4347', '过则勿惮改', '22', '38', '0', '未知', '未知', '贝瓦', '人要有勇气改正自己的错误，这才是真学问、真道德。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4348', '生命之水', '21', '38', '0', '未知', '未知', '贝瓦', '傲慢无礼、骄傲自大的人不会得到尊重。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4349', '铠甲勇士4', '27', '38', '0', '未知', '未知', '贝瓦', '第4集：丑将绑架启东至锅炉厂，引诱风鹰侠、炎龙侠...', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4350', '母狮与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '贵重的价值在于质，而不在量。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4351', '小毛驴', '21', '38', '0', '未知', '未知', '贝瓦', '小毛驴的皮下躲着那个英俊的王子。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4352', '忙碌的虫儿们', '28', '38', '0', '未知', '未知', '贝瓦', '小动物们都在跟冬天捉迷藏呢，你也来吧。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4353', '孔子论君臣之道', '22', '38', '0', '未知', '未知', '贝瓦', '领导如果对下属尽心，下属自然也会忠心。', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4354', ' 曹操', '31', '38', '0', '未知', '未知', '贝瓦', '悲悯宽厚的气质在曹冲身上体现出来，简直催人泪下。...', '1545803675', '1545803675', '1', '2');
INSERT INTO `dp_books` VALUES ('4355', '胃与脚', '24', '38', '0', '未知', '未知', '贝瓦', '人各有所长，要互相帮助。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4356', '花羽毛小松鸡', '19', '38', '0', '未知', '未知', '贝瓦', '一漂亮的小松鸡。\r\n', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4357', '百发百中', '26', '38', '0', '未知', '未知', '贝瓦', '我希望你能对自己的幸福百发百中。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4358', '农夫与他的儿...', '24', '38', '0', '未知', '未知', '贝瓦', '劳动是最好的宝物。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4359', '病鹿', '24', '38', '0', '未知', '未知', '贝瓦', '近朱者赤，近墨者黑。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4360', ' 荞麦', '25', '38', '0', '未知', '未知', '贝瓦', '荞麦自以为了不起，不听任何忠告，结果“被闪电烧得...', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4361', '蛇报恩', '19', '38', '0', '未知', '未知', '贝瓦', '动物之间也是有感情的，就像这条蛇。\r\n', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4362', '不入虎穴,焉...', '26', '38', '0', '未知', '未知', '贝瓦', '有的很多事，风险和收益是一样大的。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4363', '民歌的鸟儿', '25', '38', '0', '未知', '未知', '贝瓦', '民歌的鸟，“就使我们能够认识我们的祖国”。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4364', '农夫与鹰', '24', '38', '0', '未知', '未知', '贝瓦', '滴水之恩当涌泉相报。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4365', '电话里传来的...', '19', '38', '0', '未知', '未知', '贝瓦', '豪猪打电话给小白兔送“暖气”。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4366', '骆驼与宙斯', '24', '38', '0', '未知', '未知', '贝瓦', '许多人因为贪得无厌，不知不觉连自己已具有的东西也...', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4367', '人而不一 仁...', '22', '38', '0', '未知', '未知', '贝瓦', '假如不用仁爱之心来指导礼乐，终究是没有用处的。', '1545803676', '1545803676', '1', '2');
INSERT INTO `dp_books` VALUES ('4368', '铠甲勇士3', '27', '38', '0', '未知', '未知', '贝瓦', '第3集：启东的血液检查报告意外地发现，他拥有光影...', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4369', '唐伯虎潜心学画', '31', '38', '0', '未知', '未知', '贝瓦', '唐伯虎小的时候画画显示了超人的才华。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4370', '泊船瓜洲', '22', '38', '0', '未知', '未知', '贝瓦', '春风又绿江南岸，明月何时照我还？', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4371', '好可怕哟', '28', '38', '0', '未知', '未知', '贝瓦', '最恐怖的往往是自己的幻想。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4372', '诸葛亮教子', '31', '38', '0', '未知', '未知', '贝瓦', '失去坚强的信心那就会“永窜伏于凡庸，不免于下流矣...', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4373', '太阳结婚', '24', '38', '0', '未知', '未知', '贝瓦', '许多缺乏思想的人，只会跟随他人瞎起哄。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4374', '公牛与车轴', '24', '38', '0', '未知', '未知', '贝瓦', '不作声的人往往承担着全部重量。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4375', '花园宝宝3', '27', '38', '0', '未知', '未知', '贝瓦', '小点点的孩子们在唔西？', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4376', '夏道行', '31', '38', '0', '未知', '未知', '贝瓦', '穷人家孩子读书的故事。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4377', '茶祖宗', '23', '38', '0', '未知', '未知', '贝瓦', '据说那十八株茶树，是“龙井茶”的祖宗。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4378', '热天中午不浇花', '28', '38', '0', '未知', '未知', '贝瓦', '小峰后来养了许多种鲜花，成了有名的养花专家。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4379', '三种语言', '21', '38', '0', '未知', '未知', '贝瓦', '嘘，蛐蛐在说话，鸟儿在唱歌。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4380', '题西林壁', '22', '38', '0', '未知', '未知', '贝瓦', '不识庐山真面目，只缘身在此山中。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4381', '人而无信，不...', '22', '38', '0', '未知', '未知', '贝瓦', '没有信用的人最终会失去别人的信任，从而以害人始而...', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4382', '千里之行,始...', '26', '38', '0', '未知', '未知', '贝瓦', '一步一个脚印，稳稳地走自己的人生。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4383', ' 富兰克林发...', '31', '38', '0', '未知', '未知', '贝瓦', '富兰克林证实了雷电是一种自然现象，揭穿了有关雷电...', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4384', '冬天是一本书', '28', '38', '0', '未知', '未知', '贝瓦', '白雪覆盖大地，一片银装素裹。', '1545803678', '1545803678', '1', '2');
INSERT INTO `dp_books` VALUES ('4385', '一只眼睛的鹿', '24', '38', '0', '未知', '未知', '贝瓦', '事实常常与我们的预料相反。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4386', '袋鼠与笼子', '19', '38', '0', '未知', '未知', '贝瓦', '笼子里的袋鼠怎么跑出来的？', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4387', '完璧归赵', '26', '38', '0', '未知', '未知', '贝瓦', '你是我手心那块最完美的玉。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4388', '螳螂捕蝉', '26', '38', '0', '未知', '未知', '贝瓦', '不要只看见眼前的利益，小心身后的危机。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4389', '林肯－干活赔书', '31', '38', '0', '未知', '未知', '贝瓦', '林肯的少年时代家境困窘，他读的书，大都是借来的。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4390', '牛和蛙', '24', '38', '0', '未知', '未知', '贝瓦', '渺小无论如何也不能与伟大相比。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4391', '巨人和裁缝', '21', '38', '0', '未知', '未知', '贝瓦', '爱吹牛皮的裁缝打败了强壮的巨人。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4392', '食虫花', '28', '38', '0', '未知', '未知', '贝瓦', '小虫们，哪怕食虫花再美，也不要靠近它。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4393', ' 肖复兴', '31', '38', '0', '未知', '未知', '贝瓦', '肖复兴，曾经当过十年的记者。\r\n\r\n', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4394', '弄巧成拙', '26', '38', '0', '未知', '未知', '贝瓦', '三思而后行，不要鲁莽行事。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4395', '望天门山', '22', '38', '0', '未知', '未知', '贝瓦', '两岸青山相对出，孤帆一片日边来。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4396', '兔子新娘', '21', '38', '0', '未知', '未知', '贝瓦', '小姑娘当了新娘，但娶她的却是兔子。', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4397', ' 中元节的由来', '23', '38', '0', '未知', '未知', '贝瓦', '听听“鬼节”的由来。\r\n', '1545803679', '1545803679', '1', '2');
INSERT INTO `dp_books` VALUES ('4398', '夏娃的孩子们', '21', '38', '0', '未知', '未知', '贝瓦', '每一个宝宝都是妈妈心中的天使。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4399', '早发白帝城', '22', '38', '0', '未知', '未知', '贝瓦', '两岸猿声啼不住，轻舟已过万重山。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4400', '元日', '22', '38', '0', '未知', '未知', '贝瓦', '千门万户曈曈日，总把新桃换旧符。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4401', '小孩与栗子', '24', '38', '0', '未知', '未知', '贝瓦', '一次不要贪多，人一定要知足。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4402', '苍蝇与蜜', '24', '38', '0', '未知', '未知', '贝瓦', '贪婪是许多灾祸的根源。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4403', '草船借箭', '26', '38', '0', '未知', '未知', '贝瓦', '机智比身体上的力量更加强大。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4404', '狼的花招', '28', '38', '0', '未知', '未知', '贝瓦', '狼的纪律性总是能让人深深地佩服。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4405', '金玉其外,败...', '26', '38', '0', '未知', '未知', '贝瓦', '内涵如茶，越品越香。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4406', '两种蚊子', '28', '38', '0', '未知', '未知', '贝瓦', '宝宝乖乖睡觉觉，蚊子走开。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4407', '声东击西-孙膑', '31', '38', '0', '未知', '未知', '贝瓦', '孙膑围攻魏国解救赵国的危困，被后来的军事家们列为...', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4408', '望洋兴叹', '26', '38', '0', '未知', '未知', '贝瓦', '面对海洋、山川、和伟大的人，就会感到自己的渺小。', '1545803681', '1545803681', '1', '2');
INSERT INTO `dp_books` VALUES ('4409', '天下无双', '26', '38', '0', '未知', '未知', '贝瓦', '你是我独一无二的宝贝。', '1545803682', '1545803682', '1', '2');
INSERT INTO `dp_books` VALUES ('4410', '天上掉星星了', '28', '38', '0', '未知', '未知', '贝瓦', '华丽的流星，我们都曾向你许下过心愿。', '1545803682', '1545803682', '1', '2');
INSERT INTO `dp_books` VALUES ('4411', '人与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '生气时的我们，往往是最不理智的。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4412', '驴子和他的影子', '28', '38', '0', '未知', '未知', '贝瓦', '为小事争吵不休，往往会失去最重要的东西。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4413', '游园不值', '22', '38', '0', '未知', '未知', '贝瓦', '春色满园关不住，一枝红杏出墙来。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4414', '老房子', '25', '38', '0', '未知', '未知', '贝瓦', '对老夫妇所度过的一生，很平凡，但也充满了美和善。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4415', ' 杰克•伦敦...', '31', '38', '0', '未知', '未知', '贝瓦', '美国作家杰克•伦敦经过苦难磨练，十分珍视读书机会...', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4416', '潘和伏秃龙', '23', '38', '0', '未知', '未知', '贝瓦', '原来毁坏山林的癞头小孩是这秃龙变的。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4417', '铠甲勇士2', '27', '38', '0', '未知', '未知', '贝瓦', '第2集：利用手头掌握的最新异能兽资料引炎龙侠现身...', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4418', '森林的九月', '28', '38', '0', '未知', '未知', '贝瓦', '让宝宝像秋天的果实般饱满。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4419', '“空城计”的...', '31', '38', '0', '未知', '未知', '贝瓦', '有关诸葛亮智谋的故事。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4420', '屋顶的小山羊...', '24', '38', '0', '未知', '未知', '贝瓦', '地利与天机常常给人勇气去与强者抗争。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4421', '谁去给猫儿挂...', '19', '38', '0', '未知', '未知', '贝瓦', '老鼠给毛带铃铛，胆子不小。\r\n', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4422', '两个锅', '24', '38', '0', '未知', '未知', '贝瓦', '与强硬的人相伴是很不安全的。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4423', '江南春', '22', '38', '0', '未知', '未知', '贝瓦', '南朝四百八十寺，多少楼台烟雨中。', '1545803683', '1545803683', '1', '2');
INSERT INTO `dp_books` VALUES ('4424', '田鼠与家鼠', '24', '38', '0', '未知', '未知', '贝瓦', '人们宁愿过简单平稳的生活，而不愿享受那充满恐怖的...', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4425', '孺子可教', '26', '38', '0', '未知', '未知', '贝瓦', '孩子，希望你将来成为有用的人、幸福的人。', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4426', '雪地里的宝宝', '28', '38', '0', '未知', '未知', '贝瓦', '世上所有的宝贝，都是大家共同的孩子。', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4427', '笨汉汉斯', '25', '38', '0', '未知', '未知', '贝瓦', '“笨汉汉斯”尽管貌似粗笨，但实际上要比他们聪明得...', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4428', '为政以德', '22', '38', '0', '未知', '未知', '贝瓦', '统治者内心有道，表现在外的行为，就无懈可击。', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4429', '甜粥', '21', '38', '0', '未知', '未知', '贝瓦', '饿了就说“小锅，煮吧”，饱了就说“别煮了，小锅”...', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4430', '魔术药水', '28', '38', '0', '未知', '未知', '贝瓦', '可怜的杂草，碰到了坏坏的药水。', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4431', '牛顿与苹果', '28', '38', '0', '未知', '未知', '贝瓦', '一个苹果引出的惊天秘密。', '1545803684', '1545803684', '1', '2');
INSERT INTO `dp_books` VALUES ('4432', '渭城曲', '22', '38', '0', '未知', '未知', '贝瓦', '劝君更尽一杯酒，西出阳关无故人。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4433', '光脚在雪上爬', '28', '38', '0', '未知', '未知', '贝瓦', '冬天还没结束啊，我的小翅膀怎么还没长出来呢？', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4434', '南辕北辙', '26', '38', '0', '未知', '未知', '贝瓦', '不要埋头前行，抬起头来看看方向是否正确。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4435', '金沙滩上的金...', '28', '38', '0', '未知', '未知', '贝瓦', '让宝宝的双手创造出美好的明天。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4436', '别董大', '22', '38', '0', '未知', '未知', '贝瓦', '莫愁前路无知己，天下谁人不识君。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4437', '魔鬼的三根金发', '21', '38', '0', '未知', '未知', '贝瓦', '我也想拔掉魔鬼的一根头发，问一个秘密。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4438', '老猎狗', '24', '38', '0', '未知', '未知', '贝瓦', '生老病死是不可抗拒的规律。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4439', '不自量力', '26', '38', '0', '未知', '未知', '贝瓦', '很多事是无奈的，要学会坦然面对。', '1545803685', '1545803685', '1', '2');
INSERT INTO `dp_books` VALUES ('4440', '三片羽毛', '21', '38', '0', '未知', '未知', '贝瓦', '羽毛飞起来了，指向了三个方向，我该跟着谁走呢？', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4441', '男高音歌唱家...', '31', '38', '0', '未知', '未知', '贝瓦', '廖昌永一位著名的男高音歌唱家。\r\n', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4442', '狐狸和狮子', '24', '38', '0', '未知', '未知', '贝瓦', '平平安安地做百姓比胆颤心惊做国王好得多。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4443', '有趣的植物', '28', '38', '0', '未知', '未知', '贝瓦', '好想跟浮萍一样啊，自由自在的，到处旅行。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4444', '春天里的农事', '28', '38', '0', '未知', '未知', '贝瓦', '春天在田野洒下欢腾的阳光。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4445', '勇除三头妖', '23', '38', '0', '未知', '未知', '贝瓦', '妖精要喝男人血。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4446', '半途而废', '26', '38', '0', '未知', '未知', '贝瓦', '再坚持一下，那便是成功。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4447', '小蚊子的舞蹈', '28', '38', '0', '未知', '未知', '贝瓦', '它们不是叮人的蚊子，它们是蚊群。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4448', '百灵鸟和小鸟', '24', '38', '0', '未知', '未知', '贝瓦', '不寄希望于外力，自己亲自动手干了，才是真正下决心...', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4449', '夜莺与燕子', '24', '38', '0', '未知', '未知', '贝瓦', '不幸受过苦痛的人，总是回避那以前发生苦痛的地方。', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4450', '周总理的幽默', '31', '38', '0', '未知', '未知', '贝瓦', '有时候的幽默，可以用来玩，也可以用来维护尊严。 ', '1545803686', '1545803686', '1', '2');
INSERT INTO `dp_books` VALUES ('4451', '小燕子的家', '28', '38', '0', '未知', '未知', '贝瓦', '跟宝宝一起说“雄燕子可真懒啊”，呵呵。', '1545803687', '1545803687', '1', '2');
INSERT INTO `dp_books` VALUES ('4452', '木匠的祖师-...', '31', '38', '0', '未知', '未知', '贝瓦', '鲁班年少时，十分孝敬父母。', '1545803687', '1545803687', '1', '2');
INSERT INTO `dp_books` VALUES ('4453', '储藏蔬菜', '28', '38', '0', '未知', '未知', '贝瓦', '自己的东西，自己收拾好。', '1545803687', '1545803687', '1', '2');
INSERT INTO `dp_books` VALUES ('4454', '大自然的闹钟', '19', '38', '0', '未知', '未知', '贝瓦', '大自然的闹钟他知道白天昼夜。\r\n', '1545803687', '1545803687', '1', '2');
INSERT INTO `dp_books` VALUES ('4455', '生命泉', '19', '38', '0', '未知', '未知', '贝瓦', '魔法的城堡里有生命泉。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4456', '蜜蜂和花儿', '28', '38', '0', '未知', '未知', '贝瓦', '花儿的成长离不开虫儿的帮忙。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4457', '森林里冷，太...', '28', '38', '0', '未知', '未知', '贝瓦', '无情的冷风啊，别冻着小动物们的血液。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4458', '乌衣巷', '22', '38', '0', '未知', '未知', '贝瓦', '旧时王谢堂前燕，飞入寻常百姓家。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4459', '空中楼阁', '26', '38', '0', '未知', '未知', '贝瓦', '要学会舍弃那些虚无缥缈的东西。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4460', '善与恶', '24', '38', '0', '未知', '未知', '贝瓦', '人很不容易遇到善，却每日为恶所伤害。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4461', '蛇的尾巴与身体', '24', '38', '0', '未知', '未知', '贝瓦', '不自量力的人总会到处碰壁。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4462', '三国名将赵子龙', '31', '38', '0', '未知', '未知', '贝瓦', '虽非认义哥哥，也仿着关公秉烛。不学多情叔叔，羞杀...', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4463', '匡衡凿壁偷光', '31', '38', '0', '未知', '未知', '贝瓦', '匡衡凿透邻居文不识家的墙，偷来一缕烛光读书，终于...', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4464', '小鲈鱼', '28', '38', '0', '未知', '未知', '贝瓦', '小鲈鱼的做得天气预报很准的哦。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4465', '事半功倍', '26', '38', '0', '未知', '未知', '贝瓦', '学会合作，它能达到你想象不到的效果。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4466', '被狗咬的人', '24', '38', '0', '未知', '未知', '贝瓦', '纵容恶性，它就会变本加厉，为所欲为。', '1545803689', '1545803689', '1', '2');
INSERT INTO `dp_books` VALUES ('4467', '汉赛尔与格莱特', '21', '38', '0', '未知', '未知', '贝瓦', '月光下的小石头啊，请指引我回家的路。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4468', '雷锋的成长小...', '31', '38', '0', '未知', '未知', '贝瓦', '雷锋精神培育着一代又一代新人成长。\r\n', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4469', '星星白天去哪了', '28', '38', '0', '未知', '未知', '贝瓦', '一闪一闪亮晶晶，满天都是小星星。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4470', '当音乐家去', '21', '38', '0', '未知', '未知', '贝瓦', '童年在风里奔跑，别忘记窗外的风景和那些朋友。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4471', '明珠', '23', '38', '0', '未知', '未知', '贝瓦', '西湖明珠从天降，龙飞凤舞到钱塘。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4472', '出塞', '22', '38', '0', '未知', '未知', '贝瓦', '秦时明月汉时关，万里长征人未还。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4473', '宙斯和猴子', '24', '38', '0', '未知', '未知', '贝瓦', '每一个孩子都是妈妈最可爱的宝贝。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4474', '最早生蛋的鸟', '28', '38', '0', '未知', '未知', '贝瓦', '世上的妈妈都一样，只愿宝宝健康成长。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4475', '花园宝宝6', '27', '38', '0', '未知', '未知', '贝瓦', '依古•比古弄脏了。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4476', '文质彬彬 然...', '22', '38', '0', '未知', '未知', '贝瓦', '一个人只有两个方面均衡发展，那才是君子之人。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4477', '塞翁失马', '26', '38', '0', '未知', '未知', '贝瓦', '有得必有失，不要太计较。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4478', '寻隐者不遇', '22', '38', '0', '未知', '未知', '贝瓦', '松下问童子，言师采药去。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4479', '江雪', '22', '38', '0', '未知', '未知', '贝瓦', '千山鸟飞绝，万径人踪灭。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4480', '赴汤蹈火', '26', '38', '0', '未知', '未知', '贝瓦', '不管你遇到什么，我都会对你赴汤蹈火的。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4481', '月下老人', '23', '38', '0', '未知', '未知', '贝瓦', '月下老是民间家喻户晓的婚姻之神。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4482', '夜雨寄北', '22', '38', '0', '未知', '未知', '贝瓦', '何当共剪西窗烛，却话巴山夜雨时。', '1545803690', '1545803690', '1', '2');
INSERT INTO `dp_books` VALUES ('4483', ' 陈平忍辱苦...', '31', '38', '0', '未知', '未知', '贝瓦', '陈平少时家贫，与哥哥相依为命。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4484', '赠汪伦', '22', '38', '0', '未知', '未知', '贝瓦', '桃花潭水深千尺，不及汪伦送我情。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4485', '子路闻孔子之志', '22', '38', '0', '未知', '未知', '贝瓦', '理想的人格应当具有仁的内在，而且要自觉承担社会责...', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4486', '过河拆桥', '26', '38', '0', '未知', '未知', '贝瓦', '如果达不到大公无私的境界，也要做到利己不损人。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4487', '小池', '22', '38', '0', '未知', '未知', '贝瓦', '小荷才露尖尖角，早有蜻蜓立上头。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4488', '石灰吟', '22', '38', '0', '未知', '未知', '贝瓦', '粉身碎骨浑不怕，要留清白在人间。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4489', '古朗月行', '22', '38', '0', '未知', '未知', '贝瓦', '小时不识月，呼作白玉盘。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4490', '幸福的家庭', '25', '38', '0', '未知', '未知', '贝瓦', '白色蜗牛一家的事情。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4491', '惊弓之鸟', '26', '38', '0', '未知', '未知', '贝瓦', '面对灾难的时候，只有冷静才能自救。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4492', '咏柳', '22', '38', '0', '未知', '未知', '贝瓦', '不知细叶谁裁出，二月春风似剪刀。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4493', '蜘蛛飞行员', '28', '38', '0', '未知', '未知', '贝瓦', '会吐丝的蜘蛛变成了热气球驾驶员。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4494', '惠崇《春江晓...', '22', '38', '0', '未知', '未知', '贝瓦', '竹外桃花三两枝，春江水暖鸭先知。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4495', '滁州西涧', '22', '38', '0', '未知', '未知', '贝瓦', '春潮带雨晚来急，野渡无人舟自横。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4496', '忆江南', '22', '38', '0', '未知', '未知', '贝瓦', '日出江花红胜火，春来江水绿如蓝。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4497', '一串紫葡萄', '19', '38', '0', '未知', '未知', '贝瓦', '好看，又仿佛在说悄悄话的一串葡萄。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4498', '君子敏于事而...', '22', '38', '0', '未知', '未知', '贝瓦', '要接近有道德的人来作为自己的学习和行为标准。', '1545803692', '1545803692', '1', '2');
INSERT INTO `dp_books` VALUES ('4499', '众树与荆棘', '24', '38', '0', '未知', '未知', '贝瓦', '有些微不足道的人，在强者相互争斗中，也想表现一番...', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4500', '绿色朋友', '28', '38', '0', '未知', '未知', '贝瓦', '拉钩拉钩，保护森林好朋友。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4501', '忠狗送信记', '19', '38', '0', '未知', '未知', '贝瓦', '一个感动人的故事。\r\n', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4502', ' 刘勰佛殿借读', '31', '38', '0', '未知', '未知', '贝瓦', '“鬼”原来是一个叫刘勰的穷孩子。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4503', '井边的牧鹅女', '21', '38', '0', '未知', '未知', '贝瓦', '把那颗像珍珠般的眼泪还给宝宝。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4504', '捉小龙虾', '28', '38', '0', '未知', '未知', '贝瓦', '还记得儿时那些捉龙虾的小伙伴吗？', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4505', '己亥杂诗', '22', '38', '0', '未知', '未知', '贝瓦', '我劝天公重抖擞，不拘一格降人才。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4506', '长歌行', '22', '38', '0', '未知', '未知', '贝瓦', '少壮不努力，老大徒伤悲。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4507', '阳春白雪', '26', '38', '0', '未知', '未知', '贝瓦', '拥有高贵优雅的人格，幸福地生活。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4508', '绝句', '22', '38', '0', '未知', '未知', '贝瓦', '迟日江山丽，春风花草香。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4509', '小鬼和太太', '25', '38', '0', '未知', '未知', '贝瓦', '这是关于一个小鬼揶揄一条被链子套着的小狗的故事。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4510', '山行', '22', '38', '0', '未知', '未知', '贝瓦', '停车坐爱枫林晚，霜叶红于二月花。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4511', '老太婆和酒瓶', '24', '38', '0', '未知', '未知', '贝瓦', '美好的事物留下深远的影响，使人们永远难以忘记。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4512', '小蟹与母蟹', '24', '38', '0', '未知', '未知', '贝瓦', '教育者自己必须正直地生活，才能去教导别人。', '1545803693', '1545803693', '1', '2');
INSERT INTO `dp_books` VALUES ('4513', '小男孩与蝎子', '24', '38', '0', '未知', '未知', '贝瓦', '要分辨清好人和坏人，区别对待他们。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4514', '按图索骥', '26', '38', '0', '未知', '未知', '贝瓦', '过于死板的人，总是在原地绕圈。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4515', '冬季的中午', '28', '38', '0', '未知', '未知', '贝瓦', '冬天结束了吗？我还没睡醒呢。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4516', '小个子的竺可桢', '19', '38', '0', '未知', '未知', '贝瓦', '“言必行，行必果”', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4517', '余秋雨的读书法', '31', '38', '0', '未知', '未知', '贝瓦', '应该着力寻找高于自己的‘畏友’，使阅读成为一种既...', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4518', '埃及拥挤的鸟儿', '28', '38', '0', '未知', '未知', '贝瓦', '妈妈，我也想飞到埃及去过冬。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4519', '人与森林之神', '19', '38', '0', '未知', '未知', '贝瓦', '这故事是说，切不可与那些反复无常的人交朋友。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4520', '望洞庭', '22', '38', '0', '未知', '未知', '贝瓦', '遥望洞庭山水翠，白银盘里一青螺。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4521', '螳臂当车', '26', '38', '0', '未知', '未知', '贝瓦', '不要做自己力所不能及的事。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4522', '狐狸和樵夫', '24', '38', '0', '未知', '未知', '贝瓦', '有的人嘴里说要做好事，而行为上却作恶。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4523', ' 雷锋的故事', '31', '38', '0', '未知', '未知', '贝瓦', '雷锋精神培育着一代又一代新人成长。\r\n', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4524', '纺锤,梭子和针', '21', '38', '0', '未知', '未知', '贝瓦', '母亲指引着真爱的道路。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4525', '谢端与白水素女', '23', '38', '0', '未知', '未知', '贝瓦', '真是一个经典的神话故事。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4526', '唱歌的鸟', '19', '38', '0', '未知', '未知', '贝瓦', '一只喜欢安静也喜欢唱歌的小鸟……', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4527', '芙蓉楼送辛渐', '22', '38', '0', '未知', '未知', '贝瓦', '洛阳亲友如相问，一片冰心在玉壶。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4528', '换房间,换名字', '28', '38', '0', '未知', '未知', '贝瓦', '鱼妈妈有上万个宝宝，那可真热闹啊。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4529', '小燕雀和妈妈', '28', '38', '0', '未知', '未知', '贝瓦', '每个宝宝都有一个像燕雀妈妈一样的妈妈。', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4530', '北风呼呼叫', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803695', '1545803695', '1', '2');
INSERT INTO `dp_books` VALUES ('4531', '一言九鼎', '26', '38', '0', '未知', '未知', '贝瓦', '我对你的承诺永远是有效的。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4532', '老鼠与青蛙', '24', '38', '0', '未知', '未知', '贝瓦', '与别人关系太亲密，在灾难降临时，往往会受到牵连。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4533', '夏日绝句', '22', '38', '0', '未知', '未知', '贝瓦', '生当作人杰，死亦为鬼雄。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4534', '圣母的孩子', '21', '38', '0', '未知', '未知', '贝瓦', '女孩打开了那扇不该被开启的门，落入凡间。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4535', '晒太阳的蜥蜴', '28', '38', '0', '未知', '未知', '贝瓦', '找个地方，和宝宝一起去晒太阳吧。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4536', '夫子五十知天命', '22', '38', '0', '未知', '未知', '贝瓦', '孔子五十岁就懂得了上天赋予我的命运', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4537', '十二兄弟', '21', '38', '0', '未知', '未知', '贝瓦', '女孩用自己的声音和勇气救回了自己的哥哥们。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4538', '岳飞抗金的故事', '31', '38', '0', '未知', '未知', '贝瓦', '什么时候天下才能太平？', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4539', '春水来了', '28', '38', '0', '未知', '未知', '贝瓦', '太阳在田野里放了一把火，把积雪烤熟了。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4540', '乐游原', '22', '38', '0', '未知', '未知', '贝瓦', '夕阳无限好，只是近黄昏！', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4541', '百折不挠', '26', '38', '0', '未知', '未知', '贝瓦', '不管经历了多大的不幸，你的价值永远存在。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4542', '卖神像的人', '24', '38', '0', '未知', '未知', '贝瓦', '不择手段地求利的人，连神也不会尊敬的。', '1545803696', '1545803696', '1', '2');
INSERT INTO `dp_books` VALUES ('4543', '长大以后就造桥', '19', '38', '0', '未知', '未知', '贝瓦', '茅以升是“小桥迷”。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4544', '牛栏里的鹿', '24', '38', '0', '未知', '未知', '贝瓦', '在逃避一种危险时，不要忽视另一种危险。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4545', '天空中的喇叭声', '28', '38', '0', '未知', '未知', '贝瓦', '你听过天上传来的喇叭声吗？克噜噜！', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4546', '老鼠家族', '19', '38', '0', '未知', '未知', '贝瓦', '在老鼠的眼里，人类是庞然大物。\r\n', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4547', '如梦令', '22', '38', '0', '未知', '未知', '贝瓦', '昨夜雨疏风骤，浓睡不消残酒。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4548', '回乡偶书', '22', '38', '0', '未知', '未知', '贝瓦', '少小离家老大回，乡音无改鬓毛衰。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4549', '樵夫与赫耳墨斯', '24', '38', '0', '未知', '未知', '贝瓦', '诚实人会得到人们帮助，狡诈的人必遭到人们唾弃。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4550', '花园宝宝4', '27', '38', '0', '未知', '未知', '贝瓦', '飞飞鱼历险记。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4551', '李晟练成神箭手', '31', '38', '0', '未知', '未知', '贝瓦', '李晟偷偷学射箭，练成了百发百中的神箭手。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4552', '凉州词', '22', '38', '0', '未知', '未知', '贝瓦', '醉卧沙场君莫笑，古来征战几人回？', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4553', '豆豆兵去打仗', '19', '38', '0', '未知', '未知', '贝瓦', '长豇豆和蚕豆国要打仗！\r\n', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4554', '九牛一毛', '26', '38', '0', '未知', '未知', '贝瓦', '我们在大千世界中不过是微小的一个，但你是我眼中的...', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4555', '口渴的鸽子', '24', '38', '0', '未知', '未知', '贝瓦', '有些人急功近利，草率从事，就会身遭不幸。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4556', '南柯子', '22', '38', '0', '未知', '未知', '贝瓦', '十里青山远，潮平路带沙。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4557', '渔翁', '23', '38', '0', '未知', '未知', '贝瓦', '一位渔夫和龙王的故事。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4558', '宣州谢朓楼饯...', '22', '38', '0', '未知', '未知', '贝瓦', '抽刀断水水更流，举杯消愁愁更愁。', '1545803698', '1545803698', '1', '2');
INSERT INTO `dp_books` VALUES ('4559', '一剪梅', '22', '38', '0', '未知', '未知', '贝瓦', '雁字回时，月满西楼。', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4560', '雕虫小技', '26', '38', '0', '未知', '未知', '贝瓦', '不要因为一点成绩沾沾自喜，在别人面前或许只是雕虫...', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4561', '芦苇与橡树', '19', '38', '0', '未知', '未知', '贝瓦', '有时候不要硬与比自己强大的人去抗争，或许对自己更...', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4562', '屈原洞中苦读', '31', '38', '0', '未知', '未知', '贝瓦', '屈原躲到山洞里偷读《诗经》。', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4563', '打鱼郎治服鱼精', '23', '38', '0', '未知', '未知', '贝瓦', '唱对歌原来是治鱼精的。', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4564', '反客为主', '26', '38', '0', '未知', '未知', '贝瓦', '要当自己人生的主人。', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4565', '节气歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803699', '1545803699', '1', '2');
INSERT INTO `dp_books` VALUES ('4566', '闻官军收河南...', '22', '38', '0', '未知', '未知', '贝瓦', '白日放歌须纵酒，青春作伴好还乡。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4567', '老人与死神', '24', '38', '0', '未知', '未知', '贝瓦', '即使生活不幸，也要爱惜生命。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4568', '三生有幸', '26', '38', '0', '未知', '未知', '贝瓦', '孩子，能拥有你是我一生最大的幸事。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4569', '圣母的小酒杯', '19', '38', '0', '未知', '未知', '贝瓦', '小花便一直被人称作“圣母的小酒杯。”', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4570', '铠甲勇士8', '27', '38', '0', '未知', '未知', '贝瓦', '第8集：蚂蚁兽抵挡了多次风鹰弩的攻击。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4571', '手术费＝一杯...', '19', '38', '0', '未知', '未知', '贝瓦', '感恩是发自内心的、无言的永恒回报。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4572', '榛树枝', '19', '38', '0', '未知', '未知', '贝瓦', '一根绿色的榛树枝成了蝰蛇.', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4573', '少年包拯学断案', '31', '38', '0', '未知', '未知', '贝瓦', '包拯从小耳濡目染，学会了不少的断案知识。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4574', '桌子、金驴和...', '21', '38', '0', '未知', '未知', '贝瓦', '三个臭皮匠顶个诸葛亮。', '1545803700', '1545803700', '1', '2');
INSERT INTO `dp_books` VALUES ('4575', '孔雀和赫拉', '24', '38', '0', '未知', '未知', '贝瓦', '人要接受自己的优点，也要接受自己的缺点。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4576', '春日', '22', '38', '0', '未知', '未知', '贝瓦', '等闲识得东风面，万紫千红总是春。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4577', '朋友与熊', '24', '38', '0', '未知', '未知', '贝瓦', '不能共患难的人不是真正的朋友。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4578', '鹿柴', '22', '38', '0', '未知', '未知', '贝瓦', '空山不见人，但闻人语响。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4579', '朝闻道夕死可矣', '22', '38', '0', '未知', '未知', '贝瓦', '孔子对仁德、对知识的永不停歇地追求，', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4580', '四时田园杂兴', '22', '38', '0', '未知', '未知', '贝瓦', '昼出耘田夜绩麻，村庄儿女各当家。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4581', '得过且过', '26', '38', '0', '未知', '未知', '贝瓦', '不要在已有的成绩上原地踏步。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4582', '懒纺妇', '21', '38', '0', '未知', '未知', '贝瓦', '躲得了一时，逃不过一世。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4583', '梅花', '22', '38', '0', '未知', '未知', '贝瓦', '遥知不是雪，为有暗香来。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4584', '开诚布公', '26', '38', '0', '未知', '未知', '贝瓦', '希望你长大以后也能跟我讲讲真心话。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4585', '恭敬不如从命', '26', '38', '0', '未知', '未知', '贝瓦', '我会充满幸福地接受你的爱。', '1545803701', '1545803701', '1', '2');
INSERT INTO `dp_books` VALUES ('4586', '铠甲勇士11', '27', '38', '0', '未知', '未知', '贝瓦', '第11集：水之铠甲从丑将手中救出了炘南和小细。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4587', '才华横溢-李...', '31', '38', '0', '未知', '未知', '贝瓦', '13岁就有如此手笔，真是难能可贵！\r\n\r\n', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4588', '秋天的蘑菇', '28', '38', '0', '未知', '未知', '贝瓦', '观察身边的树木，看看上面有小蘑菇吗。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4589', '枫桥夜泊', '22', '38', '0', '未知', '未知', '贝瓦', '月落乌啼霜满天，江枫渔火对愁眠。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4590', '新年作', '22', '38', '0', '未知', '未知', '贝瓦', '老至居人下，春归在客先。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4591', '江畔独步寻花', '22', '38', '0', '未知', '未知', '贝瓦', '黄四娘家花满蹊，千朵万朵压枝低。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4592', '孔子论察人', '22', '38', '0', '未知', '未知', '贝瓦', '对于一个人的认识，需要全而。', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4593', '数星星', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803702', '1545803702', '1', '2');
INSERT INTO `dp_books` VALUES ('4594', '蛋到哪儿去了', '28', '38', '0', '未知', '未知', '贝瓦', '妈妈都很害怕宝宝受到一丝伤害。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4595', '年少志高-岳飞', '31', '38', '0', '未知', '未知', '贝瓦', '传说岳飞降生时，有一只像大雁一样的大鸟飞鸣而过。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4596', '彭总穿便服见...', '31', '38', '0', '未知', '未知', '贝瓦', '彭总说：“我今天是去见老师，学生见老师应该穿便服...', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4597', '秃头武士', '24', '38', '0', '未知', '未知', '贝瓦', '原本不是你的东西想留也留不住，是你的就永远跑不掉...', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4598', '骗子', '24', '38', '0', '未知', '未知', '贝瓦', '做一个诚实的好宝宝。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4599', '竹石', '22', '38', '0', '未知', '未知', '贝瓦', '千磨万击还坚劲，任尔东西南北风。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4600', '渔夫和他的妻子', '21', '38', '0', '未知', '未知', '贝瓦', '贪婪的人最后只会捅破幻想一无所获。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4601', '太阳雪', '28', '38', '0', '未知', '未知', '贝瓦', '阳光终究还是融化了整个冬天的寒冷。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4602', '风车', '25', '38', '0', '未知', '未知', '贝瓦', '这个故事有许多东西值得人们深思。', '1545803703', '1545803703', '1', '2');
INSERT INTO `dp_books` VALUES ('4603', '杯弓蛇影', '26', '38', '0', '未知', '未知', '贝瓦', '勇敢点，不要害怕伤害，它让我们成长。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4604', '三只小鸟', '21', '38', '0', '未知', '未知', '贝瓦', '小鸟天空飞，一语道破可怕的阴谋。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4605', '龙女拜观音', '23', '38', '0', '未知', '未知', '贝瓦', '看完还想看的感人神话。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4606', '三个纺纱女', '21', '38', '0', '未知', '未知', '贝瓦', ' 不要勉强宝宝做一些他们很不喜欢做的事。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4607', '乌龟与兔', '24', '38', '0', '未知', '未知', '贝瓦', '奋发图强的弱者也能战胜骄傲自满的强者。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4608', '郑人买履', '26', '38', '0', '未知', '未知', '贝瓦', '不要迷信教条，学会信任自己。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4609', '邯郸学步', '26', '38', '0', '未知', '未知', '贝瓦', '不要去效仿别人，做真实的自己就是最棒的。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4610', '逃进神庙的小羊', '24', '38', '0', '未知', '未知', '贝瓦', '对要死的人来说，应选择有价值的死。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4611', '钻木取火', '23', '38', '0', '未知', '未知', '贝瓦', '聪明的原始人。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4612', ' 聪明人的宝石', '25', '38', '0', '未知', '未知', '贝瓦', '依靠你自己，依靠上帝，上帝的意志总会实现，阿门！', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4613', '晓出净慈寺送...', '22', '38', '0', '未知', '未知', '贝瓦', '接天莲叶无穷碧，映日荷花别样红。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4614', '挑媳妇', '21', '38', '0', '未知', '未知', '贝瓦', '细心的宝宝总能给人留下深刻的印象。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4615', '负荆请罪', '26', '38', '0', '未知', '未知', '贝瓦', '敢于承认错误的人，是真的勇士。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4616', '山鼠', '28', '38', '0', '未知', '未知', '贝瓦', '狗狗竟然被小小的山鼠欺负了。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4617', '大公无私', '26', '38', '0', '未知', '未知', '贝瓦', '孩子，我对你的爱永远是无私的。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4618', '贼和看家狗', '24', '38', '0', '未知', '未知', '贝瓦', '每个人都应忠于职守，抵制诱惑。', '1545803704', '1545803704', '1', '2');
INSERT INTO `dp_books` VALUES ('4619', '蚯蚓走路', '28', '38', '0', '未知', '未知', '贝瓦', '蚯蚓虽然没有脚，却一样能走路。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4620', '义无反顾', '26', '38', '0', '未知', '未知', '贝瓦', '当你面对危险时，我会毫无考虑地挡在你面前。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4621', '观过知仁', '22', '38', '0', '未知', '未知', '贝瓦', '了解一个人，要看到他的优点和缺点。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4622', '狐狸和刺猬', '24', '38', '0', '未知', '未知', '贝瓦', '与其忍受两次折磨，不如将一次折磨忍受到底。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4623', '渔歌子', '22', '38', '0', '未知', '未知', '贝瓦', '西塞山前白鹭飞，桃花流水鳜鱼肥。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4624', '龙灯', '23', '38', '0', '未知', '未知', '贝瓦', '大蛟龙杀了荒淫无度的昏君。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4625', '在养鸭场里', '25', '38', '0', '未知', '未知', '贝瓦', '损人利己，小心眼，又要装得慷慨大方，做出一副正人...', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4626', '昆虫的节日', '28', '38', '0', '未知', '未知', '贝瓦', '柳絮漫天遍野，昆虫欢鸣其间。', '1545803705', '1545803705', '1', '2');
INSERT INTO `dp_books` VALUES ('4627', '好习惯“三字...', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803706', '1545803706', '1', '2');
INSERT INTO `dp_books` VALUES ('4628', '高山流水', '26', '38', '0', '未知', '未知', '贝瓦', '有知己是人生一件幸事。', '1545803706', '1545803706', '1', '2');
INSERT INTO `dp_books` VALUES ('4629', ' 朱德给老人...', '31', '38', '0', '未知', '未知', '贝瓦', '叶老师入座后，朱德自己才坐下。\r\n', '1545803706', '1545803706', '1', '2');
INSERT INTO `dp_books` VALUES ('4630', '马槽中的狗', '24', '38', '0', '未知', '未知', '贝瓦', '总是不愿别人得到好处的人，自已也会什么也得不到。', '1545803706', '1545803706', '1', '2');
INSERT INTO `dp_books` VALUES ('4631', '不耻下问', '26', '38', '0', '未知', '未知', '贝瓦', '不要害怕提问，只有这样你才会更强大。', '1545803706', '1545803706', '1', '2');
INSERT INTO `dp_books` VALUES ('4632', '最早开放的花', '28', '38', '0', '未知', '未知', '贝瓦', '当“稚气”脱落时，万物就都“成熟”了。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4633', '大家都躲起来了', '28', '38', '0', '未知', '未知', '贝瓦', '天气越来越冷了，小动物们都开始准备过冬了。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4634', '道听途说', '26', '38', '0', '未知', '未知', '贝瓦', '什么事都要尊重事实，不能道听途说。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4635', '石竹花', '21', '38', '0', '未知', '未知', '贝瓦', '每个孩子小时候都希望有一个如意棒。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4636', '边塞诗人-王...', '31', '38', '0', '未知', '未知', '贝瓦', '钻研学问，精益求精；写作诗文，落笔惊人。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4637', '举一反三', '26', '38', '0', '未知', '未知', '贝瓦', '懂得变通就能把学到的东西发挥出几倍的效果。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4638', '燕子与乌鸦', '24', '38', '0', '未知', '未知', '贝瓦', '健康的身体是最漂亮的外貌。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4639', '三人成虎', '26', '38', '0', '未知', '未知', '贝瓦', '每个人都应该对自己的言语负责。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4640', '念奴娇', '22', '38', '0', '未知', '未知', '贝瓦', '大江东去，浪淘尽、千古风流人物。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4641', ' 城堡上的一...', '25', '38', '0', '未知', '未知', '贝瓦', '当这位老小姐望着城堡的时候，在她眼前所展开出人生...', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4642', '森林里的新规矩', '28', '38', '0', '未知', '未知', '贝瓦', '夏天，森林里的居民们开始相互做客拜访。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4643', '居里夫人', '31', '38', '0', '未知', '未知', '贝瓦', '居里夫人类历史上最伟大的一个女性。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4644', '相见欢', '22', '38', '0', '未知', '未知', '贝瓦', '剪不断，理还乱。是离愁，别是一般滋味在心头。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4645', '千皮兽', '21', '38', '0', '未知', '未知', '贝瓦', '一面是美丽的公主，一面是披着斗篷的千皮兽。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4646', '李远哲', '31', '38', '0', '未知', '未知', '贝瓦', '李远哲坚定地说：“出路是靠自己打开的。”\r\n', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4647', '铠甲勇士51', '27', '38', '0', '未知', '未知', '贝瓦', '第51集：小嵩猜到了是代表团结的“结”字。', '1545803707', '1545803707', '1', '2');
INSERT INTO `dp_books` VALUES ('4648', '抛砖引玉', '26', '38', '0', '未知', '未知', '贝瓦', '我会引导你走向幸福的。', '1545803708', '1545803708', '1', '2');
INSERT INTO `dp_books` VALUES ('4649', '山鹰与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '对于背信弃义的人，神会惩治他的。', '1545803708', '1545803708', '1', '2');
INSERT INTO `dp_books` VALUES ('4650', '兔子的花招', '28', '38', '0', '未知', '未知', '贝瓦', '聪明兔子的小花招，躲过了一场激烈追捕。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4651', '牧人与海', '24', '38', '0', '未知', '未知', '贝瓦', '适当的挫折能让宝宝更茁壮的成长。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4652', '铠甲勇士36', '27', '38', '0', '未知', '未知', '贝瓦', '第36集：北淼将炘南的受伤推给了在虚拟实验室里训...', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4653', '挂铃的狗', '24', '38', '0', '未知', '未知', '贝瓦', '狗挂着铃铛，宣扬着自己的罪恶。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4654', '毛遂自荐', '26', '38', '0', '未知', '未知', '贝瓦', '当你拥有了一定积累以后才有信心推荐自己。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4655', '醉花阴', '22', '38', '0', '未知', '未知', '贝瓦', '莫道不消魂，帘卷西风，人比黄花瘦。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4656', '返老还童', '26', '38', '0', '未知', '未知', '贝瓦', '要是还能回到童年，你最想干什么呢？', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4657', '管宁割席分坐', '31', '38', '0', '未知', '未知', '贝瓦', '道不同不相为谋。', '1545803709', '1545803709', '1', '2');
INSERT INTO `dp_books` VALUES ('4658', '梦醒的母熊', '28', '38', '0', '未知', '未知', '贝瓦', '经过一个冬天，熊妈妈好饿好饿好饿啊。', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4659', '铠甲勇士52', '27', '38', '0', '未知', '未知', '贝瓦', '第52集：黑魔兽抢先冲向地球，等待火球的到来好彻...', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4660', '老狮子', '24', '38', '0', '未知', '未知', '贝瓦', '善恶终有报。', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4661', '铠甲勇士50', '28', '38', '0', '未知', '未知', '贝瓦', '第50集：铠甲勇士们中了黑帝的邪恶圈套。', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4662', '土地神', '21', '38', '0', '未知', '未知', '贝瓦', '傻办法有时候也能起大作用。', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4663', '肚胀的狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '贪婪和不知足容易让人忘乎所以。', '1545803710', '1545803710', '1', '2');
INSERT INTO `dp_books` VALUES ('4664', '聪明的格蕾特', '21', '38', '0', '未知', '未知', '贝瓦', '不要用小聪明来掩饰自己的错误。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4665', '蚂蚁与鸽子', '24', '38', '0', '未知', '未知', '贝瓦', '人应该学会知恩图报。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4666', '月下独酌', '22', '38', '0', '未知', '未知', '贝瓦', '举杯邀明月，对影成三人。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4667', '竹枝词', '22', '38', '0', '未知', '未知', '贝瓦', '东边日出西边雨，道是无晴却有晴。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4668', '印刷工富兰克林', '31', '38', '0', '未知', '未知', '贝瓦', '读书是富兰克林唯一的乐趣。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4669', '送元二使安西', '22', '38', '0', '未知', '未知', '贝瓦', '劝君更尽一杯酒，西出阳关无故人。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4670', '宙斯与乌龟', '24', '38', '0', '未知', '未知', '贝瓦', '即便永远驮着家行走，乌龟也并无怨言。 ', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4671', '夏天', '28', '38', '0', '未知', '未知', '贝瓦', ' 深深吸一口气，让宝宝闻一闻夏天的气息。', '1545803712', '1545803712', '1', '2');
INSERT INTO `dp_books` VALUES ('4672', '铠甲勇士46', '27', '38', '0', '未知', '未知', '贝瓦', '第46集：美真决定和北淼再回去进行调查。', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4673', '辋川闲居赠裴...', '22', '38', '0', '未知', '未知', '贝瓦', '倚杖柴门外，临风听暮蝉。', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4674', '墨梅', '22', '38', '0', '未知', '未知', '贝瓦', '不要人夸好颜色，只留清气满乾坤。', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4675', ' 博学多能-...', '31', '38', '0', '未知', '未知', '贝瓦', '渴求知识的张衡总是感到自己知识的不足，', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4676', '大笨牛行大运', '19', '38', '0', '未知', '未知', '贝瓦', '一个关于牛的故事。\r\n', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4677', '狼与母山羊', '24', '38', '0', '未知', '未知', '贝瓦', '坏人老奸巨滑，但在聪明人面前，他们的诡计是枉费心...', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4678', ' 伤心事', '25', '38', '0', '未知', '未知', '贝瓦', '一件真事写成的故事。	\r\n', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4679', '杀鸡吓猴', '26', '38', '0', '未知', '未知', '贝瓦', '看见别人收惩罚的时候，请自我反思。', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4680', '骆驼和阿拉伯人', '24', '38', '0', '未知', '未知', '贝瓦', '不了解事物的特性就不可能正确使用它。', '1545803713', '1545803713', '1', '2');
INSERT INTO `dp_books` VALUES ('4681', '神秘的茸毛', '28', '38', '0', '未知', '未知', '贝瓦', '冬末春初，一切都如此神秘。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4682', '松鼠的晒台', '28', '38', '0', '未知', '未知', '贝瓦', '小松鼠的过冬前的准备工作。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4683', '四面楚歌', '26', '38', '0', '未知', '未知', '贝瓦', '就算所有人都反对你，我也会在你身边的。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4684', '长干行•其二', '22', '38', '0', '未知', '未知', '贝瓦', '同是长干人，生小不相识。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4685', '驴子和驴夫', '24', '38', '0', '未知', '未知', '贝瓦', '事事争胜好斗不会有好下场。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4686', '声声慢', '22', '38', '0', '未知', '未知', '贝瓦', '寻寻觅觅，冷冷清清，凄凄惨惨戚戚。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4687', '兔子上树', '28', '38', '0', '未知', '未知', '贝瓦', '春水包围了兔子，春意包围了大地。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4688', '燕子与蟒蛇', '24', '38', '0', '未知', '未知', '贝瓦', '灾难来自最意想不到的地方时，最使人悲伤。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4689', '安居乐业', '26', '38', '0', '未知', '未知', '贝瓦', '大家都能安居乐业，这便是太平盛世。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4690', '天真烂漫', '26', '38', '0', '未知', '未知', '贝瓦', '你的天真浪漫如阳光般洒满我的双眼。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4691', '老太婆与医生', '24', '38', '0', '未知', '未知', '贝瓦', '贪得无厌的人，总会不知不觉地留下自己的罪证。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4692', '号兵', '24', '38', '0', '未知', '未知', '贝瓦', '人们痛恨那些怂恿他人作恶的人。', '1545803714', '1545803714', '1', '2');
INSERT INTO `dp_books` VALUES ('4693', '酿酒始祖杜康', '23', '38', '0', '未知', '未知', '贝瓦', '关于杜康的民间故事和传说流传不衰。', '1545803715', '1545803715', '1', '2');
INSERT INTO `dp_books` VALUES ('4694', ' 凤凰', '25', '38', '0', '未知', '未知', '贝瓦', '世界上唯一的凤凰。', '1545803715', '1545803715', '1', '2');
INSERT INTO `dp_books` VALUES ('4695', ' 玄奘苦学佛法', '31', '38', '0', '未知', '未知', '贝瓦', '玄奖唐代高僧，为了求取佛经原文，离开长安，万里跋...', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4696', '狒狒的雨', '19', '38', '0', '未知', '未知', '贝瓦', '别人向你提的建议，要想想是否适合自己，不要盲目听...', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4697', '森林的十月', '28', '38', '0', '未知', '未知', '贝瓦', '秋风扫完落叶，候鸟开始迁徙，冬天就快来到。', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4698', '花园宝宝20', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西去哪儿了？', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4699', '黔驴技穷', '26', '38', '0', '未知', '未知', '贝瓦', '不断地提升自己，不要书到用时方恨少。', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4700', '沙漠的秋天', '28', '38', '0', '未知', '未知', '贝瓦', '秋天到了，出来玩吧，小动物们。', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4701', '芽怎么过冬呢', '28', '38', '0', '未知', '未知', '贝瓦', '顽强的小芽，执着地等待春天的到来。', '1545803716', '1545803716', '1', '2');
INSERT INTO `dp_books` VALUES ('4702', '奋不顾身', '26', '38', '0', '未知', '未知', '贝瓦', '父母永远会为孩子奋不顾身的。', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4703', ' 雷锋小时候...', '31', '38', '0', '未知', '未知', '贝瓦', '雷锋精神培育着一代又一代新人成长。\r\n', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4704', '远水不救近火', '26', '38', '0', '未知', '未知', '贝瓦', '当我不在你身边的时候，一定要替我照顾好自己。', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4705', '森林的一月', '28', '38', '0', '未知', '未知', '贝瓦', '一月是从冬向春的转折，阳光很灿烂，天气却更加严寒...', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4706', '受气的蛇', '24', '38', '0', '未知', '未知', '贝瓦', '抵抗住第一个侵略者，其他的就会望而生畏。', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4707', '篱笆与葡萄园', '24', '38', '0', '未知', '未知', '贝瓦', '红花虽好，还要绿叶陪衬。', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4708', '八阵图', '22', '38', '0', '未知', '未知', '贝瓦', '功盖三分国，名成八阵图。', '1545803717', '1545803717', '1', '2');
INSERT INTO `dp_books` VALUES ('4709', '马与驴子', '24', '38', '0', '未知', '未知', '贝瓦', '强者与弱者应相互帮助，共同合作，各自才能更好地生...', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4710', '天堂里的农夫', '21', '38', '0', '未知', '未知', '贝瓦', '农夫与富人，为什么会有不一样的待遇呢？', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4711', '松鼠开荤', '28', '38', '0', '未知', '未知', '贝瓦', '春天，复苏的除了小动物，还有它们饿了很久的肚子。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4712', '水晶般的早晨', '28', '38', '0', '未知', '未知', '贝瓦', '小蜘蛛真是一个狡猾的小骗子！', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4713', '鹊桥仙', '22', '38', '0', '未知', '未知', '贝瓦', '两情若是久长时，又岂在朝朝暮暮！', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4714', '懒猪大逃亡', '19', '38', '0', '未知', '未知', '贝瓦', '一个神奇的故事。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4715', '一发千钧', '26', '38', '0', '未知', '未知', '贝瓦', '不要等到事情十分紧急了才进行处理。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4716', '迪生-借力', '31', '38', '0', '未知', '未知', '贝瓦', '爱迪生发明电灯、留声机，改良电话机。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4717', '石香炉', '23', '38', '0', '未知', '未知', '贝瓦', '焚香烧纸，以保平安。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4718', '剪羊毛的趣味', '19', '38', '0', '未知', '未知', '贝瓦', '宝贝，你的头发太长了，是不是也该剪剪了。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4719', '泊秦淮', '22', '38', '0', '未知', '未知', '贝瓦', '商女不知亡国恨，隔江犹唱后庭花。', '1545803718', '1545803718', '1', '2');
INSERT INTO `dp_books` VALUES ('4720', '才高八斗', '26', '38', '0', '未知', '未知', '贝瓦', '希望你的才华远远超越我。', '1545803719', '1545803719', '1', '2');
INSERT INTO `dp_books` VALUES ('4721', '飞鸟惊蛇', '26', '38', '0', '未知', '未知', '贝瓦', '身材矮小的人也能成为精神的巨人。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4722', '两只打架的公鸡', '24', '38', '0', '未知', '未知', '贝瓦', '傲慢给人带来危害，谦卑给人恩惠。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4723', '森林里的元旦...', '28', '38', '0', '未知', '未知', '贝瓦', '森林在冰雪下，等待着春风的呼唤。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4724', '麻雀风波', '28', '38', '0', '未知', '未知', '贝瓦', '爱护每个鸟宝宝的生命，就是爱护我们自己。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4725', '樵夫与橡树', '24', '38', '0', '未知', '未知', '贝瓦', '被亲人伤害，比被别人伤害更痛苦、更伤心。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4726', '玫瑰花精', '25', '38', '0', '未知', '未知', '贝瓦', '坏事不管做得多么隐蔽，但是总会暴露出来的。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4727', '两个小坏蛋', '21', '38', '0', '未知', '未知', '贝瓦', '一只公鸡+一只母鸡=两个小坏蛋', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4728', '鸟、兽和蝙蝠', '24', '38', '0', '未知', '未知', '贝瓦', '那些两面三刀的人，最终不会有好下场。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4729', '野鼠搬出了树林', '28', '38', '0', '未知', '未知', '贝瓦', '看好粮仓，千万不要被这些野鼠给偷走了哦！', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4730', '神像与木匠', '24', '38', '0', '未知', '未知', '贝瓦', '对有的人应该采取强硬的对策。', '1545803721', '1545803721', '1', '2');
INSERT INTO `dp_books` VALUES ('4731', '满江红', '22', '38', '0', '未知', '未知', '贝瓦', '怒发冲冠，凭栏处，潇潇雨歇。', '1545803722', '1545803722', '1', '2');
INSERT INTO `dp_books` VALUES ('4732', '蜗牛和玫瑰树', '25', '38', '0', '未知', '未知', '贝瓦', '你为什么要开花，你的花是怎样开出来的？', '1545803722', '1545803722', '1', '2');
INSERT INTO `dp_books` VALUES ('4733', '柳梢青', '22', '38', '0', '未知', '未知', '贝瓦', '门外秋千，墙头红粉，深院谁家。', '1545803722', '1545803722', '1', '2');
INSERT INTO `dp_books` VALUES ('4734', '空中飘来一种...', '28', '38', '0', '未知', '未知', '贝瓦', '空中飘来的，是翅膀扇动的一股清风。', '1545803722', '1545803722', '1', '2');
INSERT INTO `dp_books` VALUES ('4735', '捉强盗', '28', '38', '0', '未知', '未知', '贝瓦', '轻盈的鸟儿穿过层层树叶，钻进最隐秘的角落。', '1545803722', '1545803722', '1', '2');
INSERT INTO `dp_books` VALUES ('4736', '树和斧子', '24', '38', '0', '未知', '未知', '贝瓦', '不能帮助对自己造成威胁的对象，那怕是一个小小的帮...', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4737', '狐狸和鹤', '24', '38', '0', '未知', '未知', '贝瓦', '有的时候，最好的办法是以其人之道还治其人之身。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4738', '青蛙邻居', '24', '38', '0', '未知', '未知', '贝瓦', '习惯于环境不图变迁，常常会被就环境所困扰。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4739', '先声夺人', '26', '38', '0', '未知', '未知', '贝瓦', '相信自己能做好的人，才能做得好。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4740', '狐狸和豹', '24', '38', '0', '未知', '未知', '贝瓦', '智慧的美胜于形体之美。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4741', '八月阳光之月', '28', '38', '0', '未知', '未知', '贝瓦', '阳光袭来，世界五彩斑斓。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4742', '两虎相斗', '26', '38', '0', '未知', '未知', '贝瓦', '硬拼只会两败俱伤，学会智取。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4743', '花园宝宝44', '27', '38', '0', '未知', '未知', '贝瓦', '小点点去探小豆豆，可是小豆豆不在家。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4744', '灯', '24', '38', '0', '未知', '未知', '贝瓦', '灯在为自己的光芒而沾沾自喜的时候，被吹灭了。', '1545803723', '1545803723', '1', '2');
INSERT INTO `dp_books` VALUES ('4745', '胆小的熊', '28', '38', '0', '未知', '未知', '贝瓦', '当自己内心强大时，你会发现敌人会很渺小。', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4746', '铠甲勇士17', '27', '38', '0', '未知', '未知', '贝瓦', '第17集：小嵩进一步怀疑他就是雪獒铠甲的召唤人。', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4747', '打招呼', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4748', '白石化成羊', '19', '38', '0', '未知', '未知', '贝瓦', '一只善良的羊。\r\n', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4749', '中华医神-华佗', '31', '38', '0', '未知', '未知', '贝瓦', '华佗跟随师父刻苦钻研，注重实践，成为被人拥戴的一...', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4750', '鸟往什么地方飞', '28', '38', '0', '未知', '未知', '贝瓦', '有一些不怕冷的小鸟，竟然飞到北方去过冬了。', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4751', '饥饿的狗', '24', '38', '0', '未知', '未知', '贝瓦', '量力而行，适可而止。', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4752', ' 李珩', '31', '38', '0', '未知', '未知', '贝瓦', '在星星上做了大学问，他就是李珩。\r\n', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4753', '法拉第', '31', '38', '0', '未知', '未知', '贝瓦', '法拉第把自己的全部都献给了科学事业。', '1545803725', '1545803725', '1', '2');
INSERT INTO `dp_books` VALUES ('4754', '哲学家和蚂蚁', '24', '38', '0', '未知', '未知', '贝瓦', '不可苛求别人，自己也难免犯与别人同样的错误。', '1545803726', '1545803726', '1', '2');
INSERT INTO `dp_books` VALUES ('4755', '谜语', '21', '38', '0', '未知', '未知', '贝瓦', '周游世界的王子，一路坎坷曲折。', '1545803726', '1545803726', '1', '2');
INSERT INTO `dp_books` VALUES ('4756', '杀人凶手', '24', '38', '0', '未知', '未知', '贝瓦', '对于有罪的恶人，在哪儿都不会安全。', '1545803726', '1545803726', '1', '2');
INSERT INTO `dp_books` VALUES ('4757', '祖父和孙子', '21', '38', '0', '未知', '未知', '贝瓦', '不要嫌弃老人，因为你不可能永远年轻。', '1545803726', '1545803726', '1', '2');
INSERT INTO `dp_books` VALUES ('4758', '青蛙庸医', '24', '38', '0', '未知', '未知', '贝瓦', '判断人们的知识和才能需要听其言，观其行。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4759', '花园宝宝11', '27', '38', '0', '未知', '未知', '贝瓦', '小点点的孩子们在汤姆布利柏的裤子里。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4760', '气球飞天', '28', '38', '0', '未知', '未知', '贝瓦', '红红绿绿真好看，气球飞到天空转一转。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4761', '蝮蛇和水蛇', '24', '38', '0', '未知', '未知', '贝瓦', '别人需要帮助的时候，做远比说有用。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4762', ' 拿破仑', '31', '38', '0', '未知', '未知', '贝瓦', '自己的生命本应该是自己负责的。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4763', '送杜少府之任...', '22', '38', '0', '未知', '未知', '贝瓦', '海内存知己，天涯若比邻。', '1545803727', '1545803727', '1', '2');
INSERT INTO `dp_books` VALUES ('4764', '茶壶', '25', '38', '0', '未知', '未知', '贝瓦', '茶壶在做完了一系列好事以后，“被扔到院子里去了。', '1545803728', '1545803728', '1', '2');
INSERT INTO `dp_books` VALUES ('4765', '七只乌鸦', '21', '38', '0', '未知', '未知', '贝瓦', '父亲一句话，七个孩子都成了乌鸦！', '1545803728', '1545803728', '1', '2');
INSERT INTO `dp_books` VALUES ('4766', '蚊子与公牛', '24', '38', '0', '未知', '未知', '贝瓦', '对于那些既软弱又无知的人，存在与否，人们都觉得无...', '1545803728', '1545803728', '1', '2');
INSERT INTO `dp_books` VALUES ('4767', '曹禺真读书假...', '31', '38', '0', '未知', '未知', '贝瓦', '曹禺坐在澡盆里，一手拿着书看，另一只手拿着毛巾在...', '1545803728', '1545803728', '1', '2');
INSERT INTO `dp_books` VALUES ('4768', '凤凰山', '23', '38', '0', '未知', '未知', '贝瓦', '巧手姑娘绣出凤凰图，斗败贪心县令。\r\n', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4769', '一朵红玫瑰', '28', '38', '0', '未知', '未知', '贝瓦', '你帮我，我帮你，大家生活多快乐。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4770', '鹰与屎壳郎', '24', '38', '0', '未知', '未知', '贝瓦', '不要看不起任何人，因为没有人弱小到连自己受了侮辱...', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4771', '朱德的扁担', '31', '38', '0', '未知', '未知', '贝瓦', '朱军长的扁担再没有人“偷”了。\r\n', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4772', ' 爱打瞌睡的...', '31', '38', '0', '未知', '未知', '贝瓦', '魏鹤龄什么都容易忘，唯独周总理对他的关怀永不忘。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4773', '红鞋', '25', '38', '0', '未知', '未知', '贝瓦', '这是一起充满了宗教意味的小故事。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4774', '驴子的坏主意', '19', '38', '0', '未知', '未知', '贝瓦', '炉子注意失算了，害得自己更苦了。\r\n', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4775', '谁住在这儿', '28', '38', '0', '未知', '未知', '贝瓦', '保护小鸟们，保护它们的家园。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4776', '乘风破浪', '26', '38', '0', '未知', '未知', '贝瓦', '乘风破浪会有时，直挂云帆济沧海。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4777', '宙斯与阿波罗', '24', '38', '0', '未知', '未知', '贝瓦', '一山更比一山高，强中更有强中手。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4778', '冬眠苏醒月', '28', '38', '0', '未知', '未知', '贝瓦', '我们一直期盼着春天苏醒的那一天。', '1545803729', '1545803729', '1', '2');
INSERT INTO `dp_books` VALUES ('4779', '铠甲勇士45', '27', '38', '0', '未知', '未知', '贝瓦', '第45集：五人团结一心同时解除铠甲，但都身负重伤...', '1545803730', '1545803730', '1', '2');
INSERT INTO `dp_books` VALUES ('4780', '破阵子', '22', '38', '0', '未知', '未知', '贝瓦', '四十年来家国，三千里地山河。', '1545803730', '1545803730', '1', '2');
INSERT INTO `dp_books` VALUES ('4781', '山羊吃光了树林', '28', '38', '0', '未知', '未知', '贝瓦', '山羊没有了狼的威胁，就变成了树苗的天敌。', '1545803730', '1545803730', '1', '2');
INSERT INTO `dp_books` VALUES ('4782', '渔夫与小梭鱼', '24', '38', '0', '未知', '未知', '贝瓦', '愚蠢的人才会放弃已到手的小利，而去追求那种虚无的...', '1545803730', '1545803730', '1', '2');
INSERT INTO `dp_books` VALUES ('4783', '橡树与宙斯', '24', '38', '0', '未知', '未知', '贝瓦', '不能总把自己的不幸归咎到别人身上。', '1545803730', '1545803730', '1', '2');
INSERT INTO `dp_books` VALUES ('4784', '龙头金钗', '23', '38', '0', '未知', '未知', '贝瓦', '善与恶的斗争。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4785', '母山羊与葡萄树', '24', '38', '0', '未知', '未知', '贝瓦', '那些连嫩新芽都不知爱护的家伙只配承受责骂。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4786', '狼与马', '24', '38', '0', '未知', '未知', '贝瓦', '本性恶劣的人，尽管报告最好的消息，也是别有用心的...', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4787', '题临安邸', '22', '38', '0', '未知', '未知', '贝瓦', '山外青山楼外楼，西湖歌舞几时休。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4788', '定风波', '22', '38', '0', '未知', '未知', '贝瓦', '回首向来萧瑟处，归去，也无风雨也无晴。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4789', '采桑子', '22', '38', '0', '未知', '未知', '贝瓦', '西湖的暮春景色，是多么的清幽静谧。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4790', '少年游', '22', '38', '0', '未知', '未知', '贝瓦', '马滑霜浓，不如休去，直是少人行。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4791', '月亮阴晴圆缺', '23', '38', '0', '未知', '未知', '贝瓦', '原来这就是月亮阴晴圆缺的由来。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4792', '猎人与樵夫', '24', '38', '0', '未知', '未知', '贝瓦', '有些人的勇敢，仅停留在口头上。', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4793', '侯宝林抄书', '31', '38', '0', '未知', '未知', '贝瓦', '一部十多万字的书，终于被侯宝林抄录到手。\r\n', '1545803731', '1545803731', '1', '2');
INSERT INTO `dp_books` VALUES ('4794', '狐狸和狗', '24', '38', '0', '未知', '未知', '贝瓦', '狐狸假惺惺地抚摸着小羊羔。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4795', '智多星与糊涂神', '23', '38', '0', '未知', '未知', '贝瓦', '关于宝珠的故事。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4796', '生查子', '22', '38', '0', '未知', '未知', '贝瓦', '月上柳梢头，人约黄昏后。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4797', '打开春天的大门', '28', '38', '0', '未知', '未知', '贝瓦', '白嘴鸦打开了春天的大门。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4798', '铠甲勇士49', '27', '38', '0', '未知', '未知', '贝瓦', '第49集：黑帝召唤出远古四大恶兽，希望打败铠甲勇...', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4799', '貂追松鼠记', '28', '38', '0', '未知', '未知', '贝瓦', '森林里上演了一出福尔摩斯大戏。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4800', '客人神秘失踪', '28', '38', '0', '未知', '未知', '贝瓦', '神秘的亚麻花，迷路的女客人。', '1545803732', '1545803732', '1', '2');
INSERT INTO `dp_books` VALUES ('4801', '天鹅仙子与蛤...', '23', '38', '0', '未知', '未知', '贝瓦', '丑陋的阿琰与美丽的仙子，海枯石烂的爱情。\r\n', '1545803733', '1545803733', '1', '2');
INSERT INTO `dp_books` VALUES ('4802', ' 一串珍珠', '25', '38', '0', '未知', '未知', '贝瓦', '从哥本哈根到柯尔索尔的确是一串珍珠！', '1545803733', '1545803733', '1', '2');
INSERT INTO `dp_books` VALUES ('4803', '狐狸和猴子争...', '24', '38', '0', '未知', '未知', '贝瓦', '谎言开始了，便会一个接着一个。', '1545803733', '1545803733', '1', '2');
INSERT INTO `dp_books` VALUES ('4804', '沈括看桃花', '31', '38', '0', '未知', '未知', '贝瓦', '人间四月芳菲尽，山寺桃花始盛开。', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4805', '浪淘沙', '22', '38', '0', '未知', '未知', '贝瓦', '如今直上银河去， 同到牵牛织女家。', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4806', '千变万化', '26', '38', '0', '未知', '未知', '贝瓦', '就算世间万物都在变化，我对你的爱是恒久不变的。', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4807', '铠甲勇士5', '27', '38', '0', '未知', '未知', '贝瓦', '第5集：老者教授了东杉一套“静心屏气法”。', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4808', '驴子与农夫', '24', '38', '0', '未知', '未知', '贝瓦', '许多人总是抱怨自己的生活不好，却并不了解别人的生...', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4809', '雪下草场', '28', '38', '0', '未知', '未知', '贝瓦', '银白色世界里，潜藏着顽强的小生命。', '1545803734', '1545803734', '1', '2');
INSERT INTO `dp_books` VALUES ('4810', '扑朔迷离', '26', '38', '0', '未知', '未知', '贝瓦', '木兰生为女儿身，却拥有男子般的英勇。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4811', '七步诗', '22', '38', '0', '未知', '未知', '贝瓦', '本是同根生，相煎何太急？', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4812', '沙漠的回应', '28', '38', '0', '未知', '未知', '贝瓦', '沙漠的秋天，绽放着春天的景象。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4813', ' 书法界的泰...', '31', '38', '0', '未知', '未知', '贝瓦', '“青出于蓝而胜于蓝，这孩子将来一定要超过我了！”...', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4814', '小刺猬', '28', '38', '0', '未知', '未知', '贝瓦', '小小刺猬真的好勇敢啊，竟然赶走了大毒蛇。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4815', '六条腿的马', '28', '38', '0', '未知', '未知', '贝瓦', '六条腿的马竟然是捕捉大雁的一个陷阱。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4816', '浣溪沙', '22', '38', '0', '未知', '未知', '贝瓦', '无可奈何花落去，似曾相识燕归来。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4817', '勇敢的奇尼', '23', '38', '0', '未知', '未知', '贝瓦', '一个勇敢，孝顺年轻人的故事。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4818', '华而不实', '26', '38', '0', '未知', '未知', '贝瓦', '只有表里如一的美丽才能持久。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4819', '不穿布鞋的贺龙', '31', '38', '0', '未知', '未知', '贝瓦', '贺龙军长就这样，和战士们同样穿草鞋、喝稀菜汤同敌...', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4820', '渔夫与大鱼和...', '24', '38', '0', '未知', '未知', '贝瓦', '小人物容易得救，而那些名声大的却难以躲过危险。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4821', '老狮子与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '聪明的人常常能审时度势，根据迹象预见到危险，避免...', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4822', '两桃杀三士', '31', '38', '0', '未知', '未知', '贝瓦', '两个桃子，除掉了国家的隐患。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4823', '虞美人', '22', '38', '0', '未知', '未知', '贝瓦', '问君能有几多愁，恰是一江春水向东流。', '1545803735', '1545803735', '1', '2');
INSERT INTO `dp_books` VALUES ('4824', '望江南', '22', '38', '0', '未知', '未知', '贝瓦', '车如流水马如龙，花月正春风。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4825', '宙斯与蛇', '24', '38', '0', '未知', '未知', '贝瓦', '坏人的恩惠总是令人生畏。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4826', '呆若木鸡', '26', '38', '0', '未知', '未知', '贝瓦', '能淡然面对很多打击的时候，你就成熟了。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4827', '老鼠与黄鼠狼', '24', '38', '0', '未知', '未知', '贝瓦', '对于许多人来说，虚荣为不幸的根源。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4828', '魔草', '21', '38', '0', '未知', '未知', '贝瓦', '神秘的莴苣，好心的猎人。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4829', '乘邮车来的十...', '25', '38', '0', '未知', '未知', '贝瓦', '人类的创造，日新月异，时时刻刻都在变化。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4830', '好事近', '22', '38', '0', '未知', '未知', '贝瓦', '千里水天一色，看孤鸿明灭。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4831', '金丝雀与蝙蝠', '24', '38', '0', '未知', '未知', '贝瓦', '不幸的事发生之后，后悔是徒然的。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4832', '守财奴', '24', '38', '0', '未知', '未知', '贝瓦', '有时候，石头和金块能起到同样的作用。', '1545803736', '1545803736', '1', '2');
INSERT INTO `dp_books` VALUES ('4833', '猴子与渔夫', '24', '38', '0', '未知', '未知', '贝瓦', '不要不假思索地模仿不适合自己的行为。', '1545803737', '1545803737', '1', '2');
INSERT INTO `dp_books` VALUES ('4834', '祖母', '25', '38', '0', '未知', '未知', '贝瓦', '充满美丽而略带哀愁的关于一个平凡人的回忆。', '1545803737', '1545803737', '1', '2');
INSERT INTO `dp_books` VALUES ('4835', '高枕无忧', '26', '38', '0', '未知', '未知', '贝瓦', '我要你的生活过得无忧无虑，每晚都是一个美丽的梦。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4836', '卜算子', '22', '38', '0', '未知', '未知', '贝瓦', '日日思君不见君，共饮长江水。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4837', '草地上的罐头', '26', '38', '0', '未知', '未知', '贝瓦', '这个罐头不再是个废物。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4838', '狐狸与面具', '24', '38', '0', '未知', '未知', '贝瓦', '有的人是身体的巨人，思想的矮子。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4839', '铁匠与小狗', '24', '38', '0', '未知', '未知', '贝瓦', '那些唯利是图的人，对于自己有利的事才专心致志。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4840', '文明歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4841', '大逆不道', '26', '38', '0', '未知', '未知', '贝瓦', '不管遇到什么都不要做大逆不道的人。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4842', '春天里的小花招', '28', '38', '0', '未知', '未知', '贝瓦', '让宝宝一起来和小兔子捉迷藏吧。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4843', '菩萨蛮', '22', '38', '0', '未知', '未知', '贝瓦', '奴为出来难，教君恣意怜。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4844', '把小偷关在瓶里', '28', '38', '0', '未知', '未知', '贝瓦', '黄蜂在最爱的蜜里游泳，它会幸福吗？', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4845', '铠甲勇士14', '27', '38', '0', '未知', '未知', '贝瓦', '第14集：大家都怀疑这就是传说中的光影石。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4846', '先入为主', '26', '38', '0', '未知', '未知', '贝瓦', '首次的映像往往占据主导作用。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4847', '残留的冰块', '28', '38', '0', '未知', '未知', '贝瓦', '再厚的冰块，也会在阳光下变成柔软的水流。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4848', '剪头发', '31', '38', '0', '未知', '未知', '贝瓦', '墨西哥有名的诗人。', '1545803738', '1545803738', '1', '2');
INSERT INTO `dp_books` VALUES ('4849', '屠龙之技', '26', '38', '0', '未知', '未知', '贝瓦', '世间本没有龙，学得屠龙之技又有何用？', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4850', '苟延残喘', '26', '38', '0', '未知', '未知', '贝瓦', '生活有时很艰辛，但是我会笑着去接受自己的人生。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4851', '小猪与羊群', '24', '38', '0', '未知', '未知', '贝瓦', '真正的危险不是关系钱财，而是关系生命。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4852', '徐文长智慧故事', '31', '38', '0', '未知', '未知', '贝瓦', '徐文长，和呱呱呱的搞笑故事。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4853', '喜鹊', '28', '38', '0', '未知', '未知', '贝瓦', '宝宝都希望有一个像魔法师一样的好伙伴。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4854', ' 诗圣-杜甫', '31', '38', '0', '未知', '未知', '贝瓦', '凤凰鸟是什么样的？', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4855', '铠甲勇士15', '27', '38', '0', '未知', '未知', '贝瓦', '第15集：影霸再次召唤地虎铠甲，还是被魔蚕兽打得...', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4856', '农夫和树', '24', '38', '0', '未知', '未知', '贝瓦', '树木是小动物们的家，我们要保护它。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4857', '清明', '22', '38', '0', '未知', '未知', '贝瓦', '借问酒家何处有，牧童遥指杏花村。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4858', '英雄', '24', '38', '0', '未知', '未知', '贝瓦', '许多人由于自己的无知遇到了不幸，却归咎于神。', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4859', '小鬼和小商人', '25', '38', '0', '未知', '未知', '贝瓦', '“这话说得很近人情！” ', '1545803740', '1545803740', '1', '2');
INSERT INTO `dp_books` VALUES ('4860', '塞下曲•其二', '22', '38', '0', '未知', '未知', '贝瓦', '饮马渡秋水，水寒风似刀。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4861', '闭门思过', '26', '38', '0', '未知', '未知', '贝瓦', '不要马不停蹄地赶路，停下来反思一下自己。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4862', '无所畏惧的王子', '21', '38', '0', '未知', '未知', '贝瓦', '跟着无所畏惧的王子一起去逛逛大千世界吧。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4863', '父亲与女儿', '24', '38', '0', '未知', '未知', '贝瓦', '三心二意的人，必然一件事都干不成。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4864', '兴高采烈', '26', '38', '0', '未知', '未知', '贝瓦', '希望每天都能兴高采烈地生活。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4865', '谁的住宅最好', '28', '38', '0', '未知', '未知', '贝瓦', '森里有好多好玩的住宅啊，我们也去建一个吧。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4866', '兔子和猎狗', '24', '38', '0', '未知', '未知', '贝瓦', '无论人或动物都具有求生的本能，这个本能蕴藏着巨大...', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4867', '蝮蛇和锉刀', '24', '38', '0', '未知', '未知', '贝瓦', '守财奴总是取之于人，却从不施舍。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4868', '示儿', '22', '38', '0', '未知', '未知', '贝瓦', '王师北定中原日，家祭无忘告乃翁。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4869', '银白的海底世界', '28', '38', '0', '未知', '未知', '贝瓦', '聪明的小动物们总是能很好地适应恶劣的环境。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4870', '诗成泣鬼神-...', '31', '38', '0', '未知', '未知', '贝瓦', '李贺很小就有“神童”之称。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4871', '狐狸和猴子大王', '24', '38', '0', '未知', '未知', '贝瓦', '凡事不要轻率。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4872', '登金陵凤凰台', '22', '38', '0', '未知', '未知', '贝瓦', '总为浮云能蔽日，长安不见使人愁。', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4873', '待客歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4874', '女人与酗酒的...', '24', '38', '0', '未知', '未知', '贝瓦', '杜绝不良习惯，从小做起', '1545803741', '1545803741', '1', '2');
INSERT INTO `dp_books` VALUES ('4875', '十二个猎人', '21', '38', '0', '未知', '未知', '贝瓦', '人既然找到了旧钥匙，就没必要再配新的了。', '1545803744', '1545803744', '1', '2');
INSERT INTO `dp_books` VALUES ('4876', '雕花弓', '19', '38', '0', '未知', '未知', '贝瓦', '新的、漂亮的东西就是最好的吗？\r\n', '1545803744', '1545803744', '1', '2');
INSERT INTO `dp_books` VALUES ('4877', '独坐敬亭山', '22', '38', '0', '未知', '未知', '贝瓦', '相看两不厌，只有敬亭山。', '1545803744', '1545803744', '1', '2');
INSERT INTO `dp_books` VALUES ('4878', '花园宝宝30', '27', '38', '0', '未知', '未知', '贝瓦', '大家慢一点。', '1545803744', '1545803744', '1', '2');
INSERT INTO `dp_books` VALUES ('4879', '演说家', '24', '38', '0', '未知', '未知', '贝瓦', '不务正业，只图安乐的人是十分愚蠢的。', '1545803744', '1545803744', '1', '2');
INSERT INTO `dp_books` VALUES ('4880', '画眉嘴国王', '21', '38', '0', '未知', '未知', '贝瓦', '你的傲慢无礼，别人将加倍奉还。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4881', '狼与老太婆', '24', '38', '0', '未知', '未知', '贝瓦', '有些人说的是一套，做的又是另一套。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4882', '秋风吹到南山坡', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4883', '商山早行', '22', '38', '0', '未知', '未知', '贝瓦', '晨起动征铎，客行悲故乡。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4884', '铠甲勇士10', '27', '38', '0', '未知', '未知', '贝瓦', '第10集：杏木兽与百合兽被封印了。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4885', '宋濂冒雪访师', '31', '38', '0', '未知', '未知', '贝瓦', '宋濂拜访老师，掉入了雪坑中，幸被人救起。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4886', '林中小屋', '21', '38', '0', '未知', '未知', '贝瓦', '善待别人、善待动物就是善待我们自己。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4887', '神奇的储藏室', '28', '38', '0', '未知', '未知', '贝瓦', '胖乎乎的动物，在身体里储藏了过冬的能量。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4888', '农夫与命运女神', '24', '38', '0', '未知', '未知', '贝瓦', '学会感恩。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4889', '铠甲勇士7', '27', '38', '0', '未知', '未知', '贝瓦', '第7集：两侠与异能兽激烈决斗。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4890', '兔与青蛙', '24', '38', '0', '未知', '未知', '贝瓦', '那些不幸的人们往往会以他人的更大的不幸来聊以自慰...', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4891', '医生与病人', '24', '38', '0', '未知', '未知', '贝瓦', '当朋友处于困难的时候，应及时给与帮助。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4892', '送崔九', '22', '38', '0', '未知', '未知', '贝瓦', '归山深浅去，须尽丘壑美。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4893', '铠甲勇士30', '27', '38', '0', '未知', '未知', '贝瓦', '第30集：西钊向坤中表示想加入铠甲勇士的愿望。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4894', '一星期的日子', '25', '38', '0', '未知', '未知', '贝瓦', '极有风趣的故事。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4895', '登幽州台歌', '22', '38', '0', '未知', '未知', '贝瓦', '前不见古人，后不见来者。', '1545803754', '1545803754', '1', '2');
INSERT INTO `dp_books` VALUES ('4896', '丈夫与妻子', '24', '38', '0', '未知', '未知', '贝瓦', '事情常常可以由小见大，由表及里。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4897', '狐狸和公山羊', '24', '38', '0', '未知', '未知', '贝瓦', '聪明的人会考虑清楚事情的结果，然后才去做。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4898', '牛和屠夫', '24', '38', '0', '未知', '未知', '贝瓦', '如果灾难和死亡是不可避免时，就要勇敢地面对它。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4899', '赌鬼汉塞尔', '21', '38', '0', '未知', '未知', '贝瓦', '现实中的每一个赌鬼都依附着汉塞尔的灵魂碎片。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4900', '山羊与牧羊人', '24', '38', '0', '未知', '未知', '贝瓦', '明显的罪状是无法隐瞒的。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4901', '骡子', '24', '38', '0', '未知', '未知', '贝瓦', '不要自以为是，去做那些超越自己范围的事。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4902', '神奇的白桦树', '28', '38', '0', '未知', '未知', '贝瓦', '气候的骤变让白桦树的变化充满了神秘色彩。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4903', '木兰花', '22', '38', '0', '未知', '未知', '贝瓦', '绿杨芳草几时休，泪眼愁肠先已断。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4904', '夏天开始了', '28', '38', '0', '未知', '未知', '贝瓦', '整个世界都在享受着夏天的热情。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4905', '杜鹃啼血', '23', '38', '0', '未知', '未知', '贝瓦', '不打杜鹃的传说原来是这样。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4906', '金枪鱼与海豚', '24', '38', '0', '未知', '未知', '贝瓦', '看见别人不幸的人，便容易忍受不幸给自己带来的痛苦...', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4907', '牛皮靴', '21', '38', '0', '未知', '未知', '贝瓦', '勇敢的士兵，足蹬一双牛皮靴，无所畏惧。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4908', '秋夜曲', '22', '38', '0', '未知', '未知', '贝瓦', '桂魄初生秋露微，轻罗已薄未更衣。', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4909', '海尔是个大坏蛋', '21', '38', '0', '未知', '未知', '贝瓦', '海尔是个大坏蛋吗？', '1545803759', '1545803759', '1', '2');
INSERT INTO `dp_books` VALUES ('4910', '铠甲勇士6', '27', '38', '0', '未知', '未知', '贝瓦', '第6集：岩石兽不敌风鹰侠，吐黑烟掩护逃脱。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4911', ' 七岁咏鹅-...', '31', '38', '0', '未知', '未知', '贝瓦', '骆宾王七岁信口吟出了一首四句诗《咏鹅》。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4912', '狐狸和鳄鱼', '24', '38', '0', '未知', '未知', '贝瓦', '事实胜于雄辩。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4913', '退避三舍', '26', '38', '0', '未知', '未知', '贝瓦', '很多事往往退一步海阔天空。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4914', '铠甲勇士29', '27', '38', '0', '未知', '未知', '贝瓦', '第29集：听说S学院有许多光影村的后人。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4915', '夜莺与雀鹰', '24', '38', '0', '未知', '未知', '贝瓦', '那些为贪图更大的利益，而放弃已到手的东西的人很愚...', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4916', '鹞子与蛇', '24', '38', '0', '未知', '未知', '贝瓦', '不自量力的鹞子。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4917', '向跳甲虫进攻', '28', '38', '0', '未知', '未知', '贝瓦', '跳甲虫总是伤害蔬菜，准备和它战斗吧。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4918', '分庭抗礼', '26', '38', '0', '未知', '未知', '贝瓦', '世间万物皆平等。', '1545803763', '1545803763', '1', '2');
INSERT INTO `dp_books` VALUES ('4919', '杂技演员真厉...', '28', '38', '0', '未知', '未知', '贝瓦', '好奇让小西长了知识。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4920', '龙外孙的故事', '23', '38', '0', '未知', '未知', '贝瓦', '经典的神话龙女传说。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4921', '朱洗', '31', '38', '0', '未知', '未知', '贝瓦', '没有藏玉，没有分文，真是一贫如洗！', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4922', '关山月', '22', '38', '0', '未知', '未知', '贝瓦', '由来征战地，不见有人还。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4923', '酬张少府', '22', '38', '0', '未知', '未知', '贝瓦', '松风吹解带，山月照弹琴。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4924', '饮湖上初晴后雨', '22', '38', '0', '未知', '未知', '贝瓦', '欲把西湖比西子，淡妆浓抹总相宜。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4925', '神奇的桦皮篓', '23', '38', '0', '未知', '未知', '贝瓦', '感人的神话故事。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4926', '覆水难收', '26', '38', '0', '未知', '未知', '贝瓦', '在做决定前请思考，因为覆水难收。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4927', '敬鬼神而远之...', '22', '38', '0', '未知', '未知', '贝瓦', '人间的事情不要以鬼神为主，要敬鬼神而远之。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4928', '花园宝宝5', '27', '38', '0', '未知', '未知', '贝瓦', '玛卡•巴卡的积木塔。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4929', '三个幸运儿', '21', '38', '0', '未知', '未知', '贝瓦', '人们总是对自己没见过的东西充满好奇。', '1545803765', '1545803765', '1', '2');
INSERT INTO `dp_books` VALUES ('4930', '兵车行', '22', '38', '0', '未知', '未知', '贝瓦', '生女犹得嫁比邻，生男埋没随百草。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4931', '三个手艺人', '24', '38', '0', '未知', '未知', '贝瓦', '人们都习惯于从自身角度考虑问题。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4932', '二十四节气民歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4933', '报恩的老鼠', '24', '38', '0', '未知', '未知', '贝瓦', '时运交替变更，强者也会有需要弱者的时候。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4934', '春泛若耶溪 ', '22', '38', '0', '未知', '未知', '贝瓦', '潭烟飞溶溶，林月低向后。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4935', '小弟弟和小姐姐', '21', '38', '0', '未知', '未知', '贝瓦', ' 善良的小姐姐，对弟弟始终不离不弃。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4936', '花园宝宝8', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西在唱歌。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4937', '称心如意的汉斯', '21', '38', '0', '未知', '未知', '贝瓦', '一路上不断地失去与获得。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4938', '没有手的姑娘', '21', '38', '0', '未知', '未知', '贝瓦', '善良虔诚的小姑娘，备受上天的眷顾。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4939', '庸人自扰', '26', '38', '0', '未知', '未知', '贝瓦', '很多担忧都是自己想象出来的。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4940', '铠甲勇士21', '27', '38', '0', '未知', '未知', '贝瓦', '第21集：北淼和东杉出现后立刻召唤铠甲开始战斗。', '1545803767', '1545803767', '1', '2');
INSERT INTO `dp_books` VALUES ('4941', '捕鸟人和冠雀', '24', '38', '0', '未知', '未知', '贝瓦', '残暴的统治者会使人们宁愿舍弃城市和家园。', '1545803768', '1545803768', '1', '2');
INSERT INTO `dp_books` VALUES ('4942', '扬扬得意', '26', '38', '0', '未知', '未知', '贝瓦', '当你得意地时候，别人可能就将你超越了。', '1545803768', '1545803768', '1', '2');
INSERT INTO `dp_books` VALUES ('4943', ' 宋濂', '31', '38', '0', '未知', '未知', '贝瓦', '宋濂拜访老师，掉入了雪坑中，幸被人救起。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4944', ' 神童王阳明', '31', '38', '0', '未知', '未知', '贝瓦', '火光冲天，定出贵人。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4945', '亚历山大的三...', '31', '38', '0', '未知', '未知', '贝瓦', '空着手来到这个世界的，空着手离开了这个世界。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4946', '飞毛腿白兔', '19', '38', '0', '未知', '未知', '贝瓦', '得来全不费功夫。\r\n', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4947', '三个军医', '21', '38', '0', '未知', '未知', '贝瓦', '三个军医医治了别人，却错乱了自己的人生。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4948', '狼与狮子', '24', '38', '0', '未知', '未知', '贝瓦', '窃贼和强盗都是一丘之貉，没有好坏之分。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4949', '会跳的敌人', '28', '38', '0', '未知', '未知', '贝瓦', '跳甲虫在菜叶上跳起了最可怕的舞蹈。', '1545803769', '1545803769', '1', '2');
INSERT INTO `dp_books` VALUES ('4950', '农夫与狼', '24', '38', '0', '未知', '未知', '贝瓦', '有时候有的人做的事并非出于本意。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4951', '铠甲勇士9', '27', '38', '0', '未知', '未知', '贝瓦', '第9集：风鹰侠和炘南开始了正义的战斗。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4952', '铠甲勇士23', '27', '38', '0', '未知', '未知', '贝瓦', '第23集：杨阳被铠甲勇士的英姿深深折服，从此有了...', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4953', '八仙斗花龙', '23', '38', '0', '未知', '未知', '贝瓦', '花龙原来是龙王的七个儿子。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4954', '戏弄“关帝老...', '31', '38', '0', '未知', '未知', '贝瓦', '唯一与毛泽东一生共事的元帅。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4955', '湘妃竹的由来', '23', '38', '0', '未知', '未知', '贝瓦', '湘妃竹上的血斑原来是舜的两个妃子的眼泪。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4956', '赤膊上阵', '26', '38', '0', '未知', '未知', '贝瓦', '面对敌人的时候要先学会武装自己。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4957', '太阳系九兄弟', '28', '38', '0', '未知', '未知', '贝瓦', ' 九个孪生兄弟，特征各有不同。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4958', '钉子', '21', '38', '0', '未知', '未知', '贝瓦', '越是着急，越不能把事情做好，欲速则不达。', '1545803770', '1545803770', '1', '2');
INSERT INTO `dp_books` VALUES ('4959', '宙斯与狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '即使穿上华丽的服装，坏人也不会改变本性。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4960', ' 厉归真学画虎', '31', '38', '0', '未知', '未知', '贝瓦', '五代画虎名家历归真从小喜欢画画。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4961', '懒鬼哈利和特...', '21', '38', '0', '未知', '未知', '贝瓦', '我不要像哈利一样，我要做一个勤劳的宝宝。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4962', '森林中的圣约瑟', '21', '38', '0', '未知', '未知', '贝瓦', '每个好孩子都有自己的保护天使。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4963', '登楼', '22', '38', '0', '未知', '未知', '贝瓦', '花近高楼伤客心，万方多难此登临。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4964', '森林快报', '28', '38', '0', '未知', '未知', '贝瓦', '树林的第一个蘑菇，如同一个新生儿般纯净。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4965', '蓝灯', '21', '38', '0', '未知', '未知', '贝瓦', '我也想要一个有神奇魔力的蓝灯。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4966', '春天到了', '28', '38', '0', '未知', '未知', '贝瓦', '春水弥漫开一种生机勃勃的气息。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4967', '瓦特研究蒸汽', '31', '38', '0', '未知', '未知', '贝瓦', '一次失火让瓦特研究出了蒸汽。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4968', '夏日南亭怀辛...', '22', '38', '0', '未知', '未知', '贝瓦', '荷风送香气，竹露滴清响。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4969', '花园宝宝13', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西躲在大树后面。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4970', '丛林中的守财奴', '21', '38', '0', '未知', '未知', '贝瓦', '是你的永远是你的，不是你的抢也抢不到。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4971', ' 纪少瑜', '31', '38', '0', '未知', '未知', '贝瓦', '纪少瑜一位著名的作家，深受当时读书人的钦佩。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4972', '蜻蜓的飞行日记', '28', '38', '0', '未知', '未知', '贝瓦', '蜻蜓的飞行高度代表着天气的变化。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4973', '木木和木儿', '19', '38', '0', '未知', '未知', '贝瓦', '知道纸是用什么做的吗？\r\n', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4974', '吹牛的运动员', '24', '38', '0', '未知', '未知', '贝瓦', '用事实就能证明的事，说得再多都是多余的。', '1545803772', '1545803772', '1', '2');
INSERT INTO `dp_books` VALUES ('4975', '黑人', '24', '38', '0', '未知', '未知', '贝瓦', '生来就有的东西始终会保留着原始的样子。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4976', '铠甲勇士13', '27', '38', '0', '未知', '未知', '贝瓦', '第13集：北淼正式成为铠甲勇士的一份子。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4977', '黄帝主宰宇宙', '23', '38', '0', '未知', '未知', '贝瓦', '了不起的黄帝。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4978', '鸡鸣狗盗', '26', '38', '0', '未知', '未知', '贝瓦', '一个堂堂正正的人所学所做都应该是光明磊落的。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4979', '捕到石头的渔夫', '24', '38', '0', '未知', '未知', '贝瓦', '人生变化万千，不要因挫折而苦恼。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4980', '森林的冬季', '28', '38', '0', '未知', '未知', '贝瓦', '森林的十二月是万物积蓄力量、等待来年的季节。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4981', ' 在辽远的海极', '25', '38', '0', '未知', '未知', '贝瓦', '“信心”和“希望”的化身。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4982', '铠甲勇士25', '27', '38', '0', '未知', '未知', '贝瓦', '第25集：西钊一看冰儿被擒，只好放了炎龙侠。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4983', '蜜蜂与宙斯', '24', '38', '0', '未知', '未知', '贝瓦', '那些不怀好意的人、终将自食恶果。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4984', '运动着钓鱼', '28', '38', '0', '未知', '未知', '贝瓦', '肉食鱼凶狠狠咬住那条鱼其实一条假鱼。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4985', '争吵的儿子们', '24', '38', '0', '未知', '未知', '贝瓦', '团结就是不可征服的力量，而内讧却只能耗损自己。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4986', '为了看书不吃...', '31', '38', '0', '未知', '未知', '贝瓦', '爱书的小伯尔成了一个写书的人，还获得了诺贝尔文学...', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4987', '新任主宰神帝', '23', '38', '0', '未知', '未知', '贝瓦', '十个太阳儿子。', '1545803773', '1545803773', '1', '2');
INSERT INTO `dp_books` VALUES ('4988', '登乐游原', '22', '38', '0', '未知', '未知', '贝瓦', '夕阳无限好，只是近黄昏。', '1545803776', '1545803776', '1', '2');
INSERT INTO `dp_books` VALUES ('4989', '琴歌', '22', '38', '0', '未知', '未知', '贝瓦', '一声已动物皆静，四座无言星欲稀。', '1545803776', '1545803776', '1', '2');
INSERT INTO `dp_books` VALUES ('4990', '塞下曲•其一', '22', '38', '0', '未知', '未知', '贝瓦', '从来幽并客，皆向沙场老。', '1545803776', '1545803776', '1', '2');
INSERT INTO `dp_books` VALUES ('4991', '小母牛与公牛', '24', '38', '0', '未知', '未知', '贝瓦', '危险等着那些游手好闲的人。', '1545803777', '1545803777', '1', '2');
INSERT INTO `dp_books` VALUES ('4992', '铠甲勇士12', '27', '38', '0', '未知', '未知', '贝瓦', '第12集：东杉恶狼兽进行激烈的打斗。', '1545803777', '1545803777', '1', '2');
INSERT INTO `dp_books` VALUES ('4993', '严谨治学-竺...', '31', '38', '0', '未知', '未知', '贝瓦', '竺可桢发奋读书，加倍用功，发誓要为中国人争气。\r...', '1545803777', '1545803777', '1', '2');
INSERT INTO `dp_books` VALUES ('4994', '鹿与狮子', '24', '38', '0', '未知', '未知', '贝瓦', '为了躲避较小的危险，容易陷入到更大的危险里。', '1545803777', '1545803777', '1', '2');
INSERT INTO `dp_books` VALUES ('4995', '渔家傲', '22', '38', '0', '未知', '未知', '贝瓦', '塞下秋来风景异，衡阳雁去无留意', '1545803777', '1545803777', '1', '2');
INSERT INTO `dp_books` VALUES ('4996', '雪下鸟群', '28', '38', '0', '未知', '未知', '贝瓦', '藏在雪下沼泽里的山鸡，吓坏了兔子。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('4997', '寄全椒山中道...', '22', '38', '0', '未知', '未知', '贝瓦', '落叶满空山，何处寻行迹。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('4998', '感遇•其二', '22', '38', '0', '未知', '未知', '贝瓦', '江南有丹桔，经冬犹绿林。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('4999', '溪居', '22', '38', '0', '未知', '未知', '贝瓦', '晓耕翻露草，夜榜响溪石。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5000', ' 张曜拜妻为师', '31', '38', '0', '未知', '未知', '贝瓦', '张曜勤奋好学，死后皇帝谥他为“勤果”。\r\n', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5001', '感遇•其一', '22', '38', '0', '未知', '未知', '贝瓦', '草木有本心，何求美人折？', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5002', '夕次盱眙县', '22', '38', '0', '未知', '未知', '贝瓦', '泊岸停宿，客居不眠，顿生乡思。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5003', '秋夜将晓出篱...', '22', '38', '0', '未知', '未知', '贝瓦', '三万里河东入海，五千仞岳上摩天。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5004', '技艺高超的猎人', '21', '38', '0', '未知', '未知', '贝瓦', '善良的猎人,保持着最初的那份纯真。', '1545803778', '1545803778', '1', '2');
INSERT INTO `dp_books` VALUES ('5005', '花园宝宝7', '27', '38', '0', '未知', '未知', '贝瓦', '飞飞鱼的怪声。', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5006', '演木偶戏的人', '25', '38', '0', '未知', '未知', '贝瓦', '一个班子的演出，他们走到哪个城市都很受欢迎。', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5007', ' 杨振宁的“...', '31', '38', '0', '未知', '未知', '贝瓦', '渗透性学习方法，会使我们的视野开阔，思路活跃，大...', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5008', '狮子、熊和狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '双方相争往往让第三者得了利。', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5009', '白雪歌送武判...', '22', '38', '0', '未知', '未知', '贝瓦', '忽如一夜春风来，千树万树梨花开。', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5010', '城堡上的一幅画', '25', '38', '0', '未知', '未知', '贝瓦', '当这位老小姐望着城堡的时候，在她眼前所展开出人生...', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5011', '恋爱的狮子与...', '24', '38', '0', '未知', '未知', '贝瓦', '不要轻易相信别人的话，抛弃自己特有的长处。', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5012', '墨子的故事', '31', '38', '0', '未知', '未知', '贝瓦', '墨子凭自己的机智和勇敢解除了宋国的一场灾难。\r\n', '1545803779', '1545803779', '1', '2');
INSERT INTO `dp_books` VALUES ('5013', '安然无羔', '26', '38', '0', '未知', '未知', '贝瓦', '心存善念的人通常能安然无恙的。', '1545803780', '1545803780', '1', '2');
INSERT INTO `dp_books` VALUES ('5014', '赤壁', '22', '38', '0', '未知', '未知', '贝瓦', '东风不与周郎便，铜雀春深锁二乔。', '1545803780', '1545803780', '1', '2');
INSERT INTO `dp_books` VALUES ('5015', '来自天堂的连枷', '21', '38', '0', '未知', '未知', '贝瓦', '天堂是什么样子呢？', '1545803780', '1545803780', '1', '2');
INSERT INTO `dp_books` VALUES ('5016', '汗流浃背', '26', '38', '0', '未知', '未知', '贝瓦', '犯了错也不要害怕，鼓起勇气一切都会好起来的。', '1545803780', '1545803780', '1', '2');
INSERT INTO `dp_books` VALUES ('5017', '发现金狮子的人', '24', '38', '0', '未知', '未知', '贝瓦', '生活总是让人很纠结。', '1545803780', '1545803780', '1', '2');
INSERT INTO `dp_books` VALUES ('5018', ' 雏菊', '25', '38', '0', '未知', '未知', '贝瓦', '雏菊是一种最普通的花儿，但它却有一颗伟大、美丽、...', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5019', '天衣无缝', '26', '38', '0', '未知', '未知', '贝瓦', '一卷书生遇见婷婷仙女。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5020', '陶弘景菜园求学', '31', '38', '0', '未知', '未知', '贝瓦', '凡事最好亲自观察，绝不能人云亦云。\r\n', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5021', '小手', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5022', '伊索在造船厂', '24', '38', '0', '未知', '未知', '贝瓦', '嘲弄比自己高明的人，往往会自讨没趣。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5023', '夏天里的农事', '28', '38', '0', '未知', '未知', '贝瓦', '饱满的麦粒装满着人们收获的快乐。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5024', '狮子与驴子合...', '24', '38', '0', '未知', '未知', '贝瓦', '那些在行家面前自吹自擂的人，自然会被世人讥笑。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5025', '天文学家', '24', '38', '0', '未知', '未知', '贝瓦', '脚踏实地做好身边的事。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5026', '铠甲勇士16', '27', '38', '0', '未知', '未知', '贝瓦', '第16集：小嵩以为经过的西钊是无辜的路人，阻止他...', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5027', '猎狗与野兔', '24', '38', '0', '未知', '未知', '贝瓦', '态度暧昧的人，终将失去朋友。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5028', '马嵬坡', '22', '38', '0', '未知', '未知', '贝瓦', '玄宗回马杨妃死，云雨难忘日月新。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5029', '天堂之路', '21', '38', '0', '未知', '未知', '贝瓦', '贫穷和谦卑指引着天堂之路。', '1545803781', '1545803781', '1', '2');
INSERT INTO `dp_books` VALUES ('5030', '好奇的雁', '28', '38', '0', '未知', '未知', '贝瓦', '无为的好奇让大雁失去了生命。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5031', '顽皮的孩子', '25', '38', '0', '未知', '未知', '贝瓦', '一位老诗人中上这爱情的一箭。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5032', '聪明的小裁缝', '21', '38', '0', '未知', '未知', '贝瓦', '小裁缝用智慧收获了幸福。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5033', '驴子与小狗', '24', '38', '0', '未知', '未知', '贝瓦', '同样的事情不一定适合于所有的人。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5034', '智者神偷', '21', '38', '0', '未知', '未知', '贝瓦', '把弯曲的小树靠在树桩上，它就慢慢长直了。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5035', '一代名人-郭...', '31', '38', '0', '未知', '未知', '贝瓦', '要振兴中华多读书，为富国强兵读好书。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5036', '铠甲勇士28', '27', '38', '0', '未知', '未知', '贝瓦', '第28集：一番打斗后，坤中成功封印了一只异能兽。', '1545803783', '1545803783', '1', '2');
INSERT INTO `dp_books` VALUES ('5037', '一个故事', '25', '38', '0', '未知', '未知', '贝瓦', '好好把人类认识一下吧。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5038', '人杰地灵', '26', '38', '0', '未知', '未知', '贝瓦', '我希望的怀抱是你最好的家，能赋予你力量。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5039', '昭君', '22', '38', '0', '未知', '未知', '贝瓦', '聚作水银窝，泛清波。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5040', '白山雀', '28', '38', '0', '未知', '未知', '贝瓦', '洁白的白山雀，是跳跃在柳丛间的精灵。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5041', '两个姑娘', '25', '38', '0', '未知', '未知', '贝瓦', '这篇讽刺作品，在有趣之余，还略带一点哀愁。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5042', '父亲育儿', '31', '38', '0', '未知', '未知', '贝瓦', '三十和孩子们做朋友。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5043', ' 女子篮球赛', '19', '38', '0', '未知', '未知', '贝瓦', '女孩玩篮球也很精彩哦！', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5044', '张静琪', '31', '38', '0', '未知', '未知', '贝瓦', '西族的第一“千里眼”和“顺风耳”\r\n', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5045', '沧海桑田', '26', '38', '0', '未知', '未知', '贝瓦', '纵使沧海桑田，我依然在你身边。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5046', '惩前毖后', '26', '38', '0', '未知', '未知', '贝瓦', '在一个地方不要跌倒两次。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5047', '寿命', '21', '38', '0', '未知', '未知', '贝瓦', '小小的故事，深刻的道理。', '1545803784', '1545803784', '1', '2');
INSERT INTO `dp_books` VALUES ('5048', '铠甲勇士44', '27', '38', '0', '未知', '未知', '贝瓦', '第44集：炘南与张健进行了最后的对决。', '1545803785', '1545803785', '1', '2');
INSERT INTO `dp_books` VALUES ('5049', '气壮山河', '26', '38', '0', '未知', '未知', '贝瓦', '气壮山河之势让人感慨万分的。', '1545803785', '1545803785', '1', '2');
INSERT INTO `dp_books` VALUES ('5050', '雾凇', '28', '38', '0', '未知', '未知', '贝瓦', '寒冷的冬天，让雾凇给您“取暖”', '1545803785', '1545803785', '1', '2');
INSERT INTO `dp_books` VALUES ('5051', '墓里的孩子', '25', '38', '0', '未知', '未知', '贝瓦', '一场灾难让家人伤痛，失去孩子的亲人痛苦。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5052', '金鹅', '21', '38', '0', '未知', '未知', '贝瓦', '抱着金鹅的小傻瓜，逗笑了美丽的公主。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5053', '人人自危', '26', '38', '0', '未知', '未知', '贝瓦', '我会给你最安稳的爱。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5054', '宙斯做判官', '24', '38', '0', '未知', '未知', '贝瓦', '不必因那些恶事和坏人暂时没有受到惩罚而不快。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5055', '花园宝宝18', '27', '38', '0', '未知', '未知', '贝瓦', '快醒醒，依古•比古！', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5056', ' 钟声', '25', '38', '0', '未知', '未知', '贝瓦', '“钟声”居然能吸引那么多人？王子和贫民都去追寻它...', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5057', '金缕衣', '22', '38', '0', '未知', '未知', '贝瓦', '花开堪折直须折，莫待无花空折枝。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5058', '宙斯与众神', '24', '38', '0', '未知', '未知', '贝瓦', '世界上没有十全十美、完美无缺的东西。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5059', '农夫和狗', '24', '38', '0', '未知', '未知', '贝瓦', '对于家人都要伤害的人，须要特别警惕。', '1545803786', '1545803786', '1', '2');
INSERT INTO `dp_books` VALUES ('5060', '结勾勾', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5061', '人与宙斯', '24', '38', '0', '未知', '未知', '贝瓦', '思想是上天给人最大的赏赐。', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5062', '一根了不起的...', '19', '38', '0', '未知', '未知', '贝瓦', '我现在是一棵挺威风、最神气的树，正在干一番了起的...', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5063', '小杜克', '25', '38', '0', '未知', '未知', '贝瓦', '当你最后走进坟墓里去的时候，你将会睡得很平安。', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5064', '花园宝宝10', '27', '38', '0', '未知', '未知', '贝瓦', '依古•比古的毯子自己走路。', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5065', '花园宝宝43', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们和玛卡巴卡乘坐叮叮车。', '1545803787', '1545803787', '1', '2');
INSERT INTO `dp_books` VALUES ('5066', '狮子和野驴', '24', '38', '0', '未知', '未知', '贝瓦', '人们对自己的力量和能力须实事求是，正确估量。', '1545803789', '1545803789', '1', '2');
INSERT INTO `dp_books` VALUES ('5067', '天罗地网', '26', '38', '0', '未知', '未知', '贝瓦', '就算你迷路了，我也能撒下天罗地网找寻到你。', '1545803789', '1545803789', '1', '2');
INSERT INTO `dp_books` VALUES ('5068', '磨坊主、儿子...', '24', '38', '0', '未知', '未知', '贝瓦', '任何事物都不可能使人人都满意。', '1545803789', '1545803789', '1', '2');
INSERT INTO `dp_books` VALUES ('5069', '驴子、狐狸与...', '24', '38', '0', '未知', '未知', '贝瓦', '那些出卖朋友，背叛友谊的人也得不到好下场。', '1545803789', '1545803789', '1', '2');
INSERT INTO `dp_books` VALUES ('5070', '宿建德江', '22', '38', '0', '未知', '未知', '贝瓦', '野旷天低树，江清月近人。', '1545803789', '1545803789', '1', '2');
INSERT INTO `dp_books` VALUES ('5071', '古从军行', '22', '38', '0', '未知', '未知', '贝瓦', '年年战骨埋荒外，空见葡萄入汉家。', '1545803790', '1545803790', '1', '2');
INSERT INTO `dp_books` VALUES ('5072', '铠甲勇士35', '27', '38', '0', '未知', '未知', '贝瓦', '第35集：美真和博士怀疑最近出现的异能兽来自宇宙...', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5073', '铁道专家-詹...', '31', '38', '0', '未知', '未知', '贝瓦', '詹天佑发誓一定要让中国有自己的火车、轮船。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5074', '万斯同闭门苦读', '31', '38', '0', '未知', '未知', '贝瓦', '万斯同勤学苦读，成为一位通晓历史遍览群书的著名学...', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5075', '秋日赴阙题潼...', '22', '38', '0', '未知', '未知', '贝瓦', '红叶晚萧萧，长亭酒一瓢。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5076', '准备过冬', '28', '38', '0', '未知', '未知', '贝瓦', '森林里的动物，都按照自己的方式准备过冬。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5077', '狼与羊群', '24', '38', '0', '未知', '未知', '贝瓦', '人们如失去保护自己的人，很快就会被敌人征服。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5078', '将进酒', '22', '38', '0', '未知', '未知', '贝瓦', '天生我材必有用，千金散尽还复来。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5079', '铁炉', '21', '38', '0', '未知', '未知', '贝瓦', '困在铁炉里的王子等待着美丽的公主。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5080', '尔尼雪夫斯基', '31', '38', '0', '未知', '未知', '贝瓦', '7岁的车尔尼雪夫斯基,读书入了迷。', '1545803791', '1545803791', '1', '2');
INSERT INTO `dp_books` VALUES ('5081', '三戏海龙王', '23', '38', '0', '未知', '未知', '贝瓦', '在这黑暗之中经过了一万八千年，孕育出了一个力大无...', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5082', '年少诗精-白...', '31', '38', '0', '未知', '未知', '贝瓦', '白居易读书、作文、学习写诗，一日也不间断。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5083', '金陵图', '22', '38', '0', '未知', '未知', '贝瓦', '无情最是台城柳，依旧烟笼十里堤。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5084', '赫拉克勒斯与...', '24', '38', '0', '未知', '未知', '贝瓦', '生活需要和平共处，对抗往往会带来更大的危害。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5085', '女主人与侍女们', '24', '38', '0', '未知', '未知', '贝瓦', '许多人的不幸往往是自己造成的。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5086', '黄鼠狼与锉刀', '24', '38', '0', '未知', '未知', '贝瓦', '好斗的人最终会害了自己。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5087', '宙斯与善', '24', '38', '0', '未知', '未知', '贝瓦', '善良散布在人间各地。', '1545803792', '1545803792', '1', '2');
INSERT INTO `dp_books` VALUES ('5088', '鸬鹚和戴胜', '21', '38', '0', '未知', '未知', '贝瓦', '如果不加选择，“牛”就放不好。', '1545803793', '1545803793', '1', '2');
INSERT INTO `dp_books` VALUES ('5089', '山雀和熊', '21', '38', '0', '未知', '未知', '贝瓦', '当你们看到我竖起尾巴时，就是要你们去赢得战斗了。', '1545803793', '1545803793', '1', '2');
INSERT INTO `dp_books` VALUES ('5090', '海角天涯', '26', '38', '0', '未知', '未知', '贝瓦', '孩子，就算你走到还交天涯，我依然是你的家。', '1545803793', '1545803793', '1', '2');
INSERT INTO `dp_books` VALUES ('5091', '赛跑者', '25', '38', '0', '未知', '未知', '贝瓦', '略带讽刺性小品。\r\n', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5092', '康熙题匾', '23', '38', '0', '未知', '未知', '贝瓦', '康熙皇帝下南，来到了杭州，替山寺题匾。', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5093', '逢雪宿芙蓉山...', '22', '38', '0', '未知', '未知', '贝瓦', '柴门闻犬吠，风雪夜归人。', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5094', '鹰与乌鸦', '24', '38', '0', '未知', '未知', '贝瓦', '仿效别人却做自己力所不能及的事，只会得到世人的嘲...', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5095', '送杨氏女', '22', '38', '0', '未知', '未知', '贝瓦', '贫俭诚所尚，资从岂待周。', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5096', '六个人走遍天下', '21', '38', '0', '未知', '未知', '贝瓦', '六个身怀绝技的人，团结起来就能闯天下。', '1545803794', '1545803794', '1', '2');
INSERT INTO `dp_books` VALUES ('5097', '八卦田', '23', '38', '0', '未知', '未知', '贝瓦', '南宋年间皇帝亲自开辟的“籍田”\r\n', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5098', '赫耳墨斯与地神', '24', '38', '0', '未知', '未知', '贝瓦', '轻易借债的人，必将辛苦偿还。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5099', '秋浦歌', '22', '38', '0', '未知', '未知', '贝瓦', '白发三千丈，缘愁似个长。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5100', '望岳 ', '22', '38', '0', '未知', '未知', '贝瓦', '会当凌绝顶，一览众山小。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5101', '金陵酒肆留别', '22', '38', '0', '未知', '未知', '贝瓦', '请君试问东流水，别意与之谁短长', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5102', '从军行', '22', '38', '0', '未知', '未知', '贝瓦', '黄沙百战穿金甲，不破楼兰终不还。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5103', '竹里馆', '22', '38', '0', '未知', '未知', '贝瓦', '深林人不知，明月来相照。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5104', '狐狸和笼里的...', '24', '38', '0', '未知', '未知', '贝瓦', '身遭不幸的强者往往会受到地位低下的小人的蔑视。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5105', '无题•其三', '22', '38', '0', '未知', '未知', '贝瓦', '来是空言去绝踪，月斜楼上五更钟。', '1545803795', '1545803795', '1', '2');
INSERT INTO `dp_books` VALUES ('5106', '还不了愿的人', '24', '38', '0', '未知', '未知', '贝瓦', '信口许愿的人往往还不了愿。', '1545803796', '1545803796', '1', '2');
INSERT INTO `dp_books` VALUES ('5107', ' 刘罗锅智告...', '31', '38', '0', '未知', '未知', '贝瓦', '刘墉揭露和坤当众出丑。\r\n\r\n', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5108', '春望之作', '22', '38', '0', '未知', '未知', '贝瓦', '云里帝城双凤阙，雨中春树万人家。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5109', '山羊与驴', '24', '38', '0', '未知', '未知', '贝瓦', '凡是策划作恶的人，将自食其果。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5110', '坟中的穷少年', '21', '38', '0', '未知', '未知', '贝瓦', '命运悲惨的少年，牵动着我们心底的纯真。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5111', '郑板桥教子', '31', '38', '0', '未知', '未知', '贝瓦', '人生，幸福不是目的，品德才是准绳。\r\n\r\n', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5112', '那个伟大的倒...', '31', '38', '0', '未知', '未知', '贝瓦', '塞万提斯把倒霉化为生命的财富。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5113', '值日生', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5114', '第欧根尼与秃子', '24', '38', '0', '未知', '未知', '贝瓦', '幽默与讽刺是最好的回击。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5115', '走进天堂的裁缝', '21', '38', '0', '未知', '未知', '贝瓦', '在天堂除了上帝，谁也没权治别人的罪。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5116', '将赴吴兴登乐...', '22', '38', '0', '未知', '未知', '贝瓦', '清时有味是无能，闲爱孤云静爱僧。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5117', '旅行的第欧根尼', '24', '38', '0', '未知', '未知', '贝瓦', '不加审慎地行善，他们得到的不一定赞誉。', '1545803797', '1545803797', '1', '2');
INSERT INTO `dp_books` VALUES ('5118', ' 跳高者', '25', '38', '0', '未知', '未知', '贝瓦', '跳蚤跳得非常高，谁也看不见它，因此大家就说它完全...', '1545803799', '1545803799', '1', '2');
INSERT INTO `dp_books` VALUES ('5119', '萨维奇的一生', '31', '38', '0', '未知', '未知', '贝瓦', '幽默搞笑的故事。', '1545803799', '1545803799', '1', '2');
INSERT INTO `dp_books` VALUES ('5120', '铠甲勇士38', '27', '38', '0', '未知', '未知', '贝瓦', '第38集：如果再有机会，我会用生命来维护一辈子保...', '1545803799', '1545803799', '1', '2');
INSERT INTO `dp_books` VALUES ('5121', '魔鬼的邋遢兄弟', '21', '38', '0', '未知', '未知', '贝瓦', '士兵当了魔鬼的邋遢兄弟，七年没洗脸了。', '1545803799', '1545803799', '1', '2');
INSERT INTO `dp_books` VALUES ('5122', '年息花的传说', '23', '38', '0', '未知', '未知', '贝瓦', '原来人们为了纪念年息姑娘啊！', '1545803799', '1545803799', '1', '2');
INSERT INTO `dp_books` VALUES ('5123', '候鸟告别月', '28', '38', '0', '未知', '未知', '贝瓦', '当秋天到来的时候，记得跟候鸟说再见哦。', '1545803800', '1545803800', '1', '2');
INSERT INTO `dp_books` VALUES ('5124', '庐山谣寄卢侍...', '22', '38', '0', '未知', '未知', '贝瓦', '我本楚狂人，凤歌笑孔丘。', '1545803800', '1545803800', '1', '2');
INSERT INTO `dp_books` VALUES ('5125', '小孩和苎麻', '24', '38', '0', '未知', '未知', '贝瓦', '许多人都是服硬不服软的。', '1545803800', '1545803800', '1', '2');
INSERT INTO `dp_books` VALUES ('5126', ' 瓦尔都窗前...', '25', '38', '0', '未知', '未知', '贝瓦', '骗术最终产生了实惠，受惠者是“教授”和“跳蚤”。', '1545803800', '1545803800', '1', '2');
INSERT INTO `dp_books` VALUES ('5127', '铠甲勇士42', '27', '38', '0', '未知', '未知', '贝瓦', '第42集：敏慈与西钊成为了好朋友。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5128', '铠甲勇士27', '27', '38', '0', '未知', '未知', '贝瓦', '第27集：界王基地中，界王发现卫星又重新被美真等...', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5129', '点绛唇', '22', '38', '0', '未知', '未知', '贝瓦', '余花落处，满地和烟雨。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5130', '一千年之内', '25', '38', '0', '未知', '未知', '贝瓦', '古代文明与现代文明的紧密结合，怀有美丽幢憬。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5131', '雪崩', '28', '38', '0', '未知', '未知', '贝瓦', '灾难面前，母亲总是会奋不顾身。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5132', '天上落下来的...', '25', '38', '0', '未知', '未知', '贝瓦', '片叶子却得到了一个女孩的喜爱。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5133', '铠甲勇士43', '27', '38', '0', '未知', '未知', '贝瓦', '第43集：大家都知道了张健是叛徒。', '1545803802', '1545803802', '1', '2');
INSERT INTO `dp_books` VALUES ('5134', '铠甲勇士18', '27', '38', '0', '未知', '未知', '贝瓦', '第18集：北淼速战速决将水母兽封印。', '1545803803', '1545803803', '1', '2');
INSERT INTO `dp_books` VALUES ('5135', ' 活字印刷之...', '31', '38', '0', '未知', '未知', '贝瓦', '毕升活字印刷的“祖师爷。”', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5136', '桃花溪', '22', '38', '0', '未知', '未知', '贝瓦', '桃花尽日随流水，洞在清溪何处边。', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5137', ' 乌龙', '23', '38', '0', '未知', '未知', '贝瓦', '从前，爹欢喜他，娘欢喜他，把他起个名字叫喜儿。', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5138', '任弼时脱险', '31', '38', '0', '未知', '未知', '贝瓦', '任弼时望着手枪，眨眨眼睛说：“长官，我确实是个理...', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5139', '四季常青的森林', '28', '38', '0', '未知', '未知', '贝瓦', '世界因这些可爱的生命而美丽。 ', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5140', '铠甲勇士26', '27', '38', '0', '未知', '未知', '贝瓦', '第26集：美真带小嵩参观了实验室，让其十分惊讶。', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5141', '赠花卿', '22', '38', '0', '未知', '未知', '贝瓦', '此曲只应天上有，人间能得几回闻。', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5142', '铠甲勇士19', '27', '38', '0', '未知', '未知', '贝瓦', '第19集：丑将向界王报告，西钊最近经常与坤中打球...', '1545803804', '1545803804', '1', '2');
INSERT INTO `dp_books` VALUES ('5143', '十二个懒汉', '21', '38', '0', '未知', '未知', '贝瓦', '十二个懒汉躺着，吹嘘着自己的懒劲。', '1545803806', '1545803806', '1', '2');
INSERT INTO `dp_books` VALUES ('5144', '江南逢李龟年', '22', '38', '0', '未知', '未知', '贝瓦', '正是江南好风景，落花时节又逢君。', '1545803806', '1545803806', '1', '2');
INSERT INTO `dp_books` VALUES ('5145', '铠甲勇士20', '27', '38', '0', '未知', '未知', '贝瓦', '第20集：界王看到年度科学贡献奖揭晓的新闻，陷入...', '1545803806', '1545803806', '1', '2');
INSERT INTO `dp_books` VALUES ('5146', '马和鹿', '24', '38', '0', '未知', '未知', '贝瓦', '不假思索地答应别人提出的条件，往往达不到自己的目...', '1545803806', '1545803806', '1', '2');
INSERT INTO `dp_books` VALUES ('5147', '抚摸', '28', '38', '0', '未知', '未知', '贝瓦', '那抚摸的指尖，是妈妈对宝宝满满的爱。', '1545803806', '1545803806', '1', '2');
INSERT INTO `dp_books` VALUES ('5148', '江南曲', '22', '38', '0', '未知', '未知', '贝瓦', '早知潮有信，嫁与弄潮儿。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5149', '河边的狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '喜欢卖弄、吹嘘的人常常给自己招来不幸。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5150', '狡猾的人', '24', '38', '0', '未知', '未知', '贝瓦', '撒谎是世上最不可原谅的事。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5151', '花园宝宝9', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏爱刷牙。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5152', '主人和他的狗', '24', '38', '0', '未知', '未知', '贝瓦', '有些人不检点自己，还常常把过失归咎于别人。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5153', '塞下曲•其三', '22', '38', '0', '未知', '未知', '贝瓦', '月黑雁飞高，单于夜遁逃。', '1545803807', '1545803807', '1', '2');
INSERT INTO `dp_books` VALUES ('5154', '新嫁娘', '22', '38', '0', '未知', '未知', '贝瓦', '未谙姑食性，先遣小姑尝。', '1545803808', '1545803808', '1', '2');
INSERT INTO `dp_books` VALUES ('5155', '要挨饿了', '28', '38', '0', '未知', '未知', '贝瓦', '小动物们别再躲起来了，我们好饿好饿呀。', '1545803808', '1545803808', '1', '2');
INSERT INTO `dp_books` VALUES ('5156', '铠甲勇士32', '27', '38', '0', '未知', '未知', '贝瓦', '第32集：炘南继续练琴，但却在乐音中找不到音韵。', '1545803808', '1545803808', '1', '2');
INSERT INTO `dp_books` VALUES ('5157', '堆雪人', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5158', ' 两兄弟', '25', '38', '0', '未知', '未知', '贝瓦', '他们在学问上取得成就的基础。\r\n', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5159', '登柳州城楼', '22', '38', '0', '未知', '未知', '贝瓦', '岭树重遮千里目，江流曲似九回肠。', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5160', '谁游过来了', '28', '38', '0', '未知', '未知', '贝瓦', '积雪融化，小动物们又出来玩了。', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5161', '断尾的狐狸', '24', '38', '0', '未知', '未知', '贝瓦', '虚伪的人，为了自己利益而劝告他人。', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5162', '河流与海', '24', '38', '0', '未知', '未知', '贝瓦', '要看到事物发展的总趋势，不要纠缠在枝节问题上。', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5163', ' 织补针', '25', '38', '0', '未知', '未知', '贝瓦', '它所表现的内容一看就清楚。', '1545803809', '1545803809', '1', '2');
INSERT INTO `dp_books` VALUES ('5164', '白发男人', '24', '38', '0', '未知', '未知', '贝瓦', '刻意的改变，只会适得其反。', '1545803811', '1545803811', '1', '2');
INSERT INTO `dp_books` VALUES ('5165', '送梓州李使君', '22', '38', '0', '未知', '未知', '贝瓦', '万壑树参天，千山响杜鹃。', '1545803811', '1545803811', '1', '2');
INSERT INTO `dp_books` VALUES ('5166', '跳绳圈', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803812', '1545803812', '1', '2');
INSERT INTO `dp_books` VALUES ('5167', '老太婆和羊', '24', '38', '0', '未知', '未知', '贝瓦', '最少的费用并不一定会获得最大的利益。', '1545803812', '1545803812', '1', '2');
INSERT INTO `dp_books` VALUES ('5168', '逢入京使', '22', '38', '0', '未知', '未知', '贝瓦', '马上相逢无纸笔，凭君传语报平安。', '1545803812', '1545803812', '1', '2');
INSERT INTO `dp_books` VALUES ('5169', '旅夜书怀', '22', '38', '0', '未知', '未知', '贝瓦', '飘飘何所似，天地一沙鸥。', '1545803812', '1545803812', '1', '2');
INSERT INTO `dp_books` VALUES ('5170', '森林中的老妇人', '21', '38', '0', '未知', '未知', '贝瓦', '树枝变成了手臂抱住小女孩，那是王子的怀抱。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5171', '妙算惊人-华...', '31', '38', '0', '未知', '未知', '贝瓦', '华罗庚是自学成材的大数学家。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5172', '雪花，雪花', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5173', '牧羊女和扫烟...', '25', '38', '0', '未知', '未知', '贝瓦', '略带讽刺性小品。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5174', '霍勒大妈', '21', '38', '0', '未知', '未知', '贝瓦', '勤劳、善良将带给我们无穷的财富。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5175', ' 猪倌', '25', '38', '0', '未知', '未知', '贝瓦', '无聊、头脑愚蠢的生动而又深刻的素描。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5176', '洗澡的小男孩', '24', '38', '0', '未知', '未知', '贝瓦', '该说的时候说，该做的时候做。', '1545803814', '1545803814', '1', '2');
INSERT INTO `dp_books` VALUES ('5177', '雨霖铃', '22', '38', '0', '未知', '未知', '贝瓦', '执手相看泪眼，竟无语凝噎。', '1545803815', '1545803815', '1', '2');
INSERT INTO `dp_books` VALUES ('5178', '寄令狐郎中', '22', '38', '0', '未知', '未知', '贝瓦', '休问梁园旧宾客，茂陵秋雨病相如。', '1545803815', '1545803815', '1', '2');
INSERT INTO `dp_books` VALUES ('5179', '鹅与鹤', '24', '38', '0', '未知', '未知', '贝瓦', '不要让自己被那些身外之物所累。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5180', '饯别王十一南游', '22', '38', '0', '未知', '未知', '贝瓦', '飞鸟没何处，青山空向人。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5181', '铠甲勇士24', '27', '38', '0', '未知', '未知', '贝瓦', '第24集：界王站在屏幕前，盯着北淼、东杉、坤中的...', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5182', '花园宝宝51', '27', '38', '0', '未知', '未知', '贝瓦', '幸好他们发现唔西迪西回来了，平安回到了家，真是太...', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5183', '行经华阴', '22', '38', '0', '未知', '未知', '贝瓦', '借问路旁名利客，何如此处学长生。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5184', '寄扬州韩绰判官', '22', '38', '0', '未知', '未知', '贝瓦', '青山隐隐水迢迢，秋尽江南草未凋。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5185', '吴孟举遇仙', '23', '38', '0', '未知', '未知', '贝瓦', '弃富贵从清贫，吴孟举虽未成仙却能百世流芳。\r\n', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5186', '遣怀', '22', '38', '0', '未知', '未知', '贝瓦', '十年一觉扬州梦，赢得青楼薄幸名。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5187', '酒泉子', '22', '38', '0', '未知', '未知', '贝瓦', '弄潮儿向涛头立，手把红旗旗不湿。', '1545803816', '1545803816', '1', '2');
INSERT INTO `dp_books` VALUES ('5188', '鹳鸟', '25', '38', '0', '未知', '未知', '贝瓦', '所有的鹳鸟都叫彼得。', '1545803817', '1545803817', '1', '2');
INSERT INTO `dp_books` VALUES ('5189', '锦线女龙', '23', '38', '0', '未知', '未知', '贝瓦', '原来锦龙是绣花姑娘变的。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5190', '玉阶怨', '22', '38', '0', '未知', '未知', '贝瓦', '玉阶生白露，夜久侵罗袜。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5191', '不远千里', '26', '38', '0', '未知', '未知', '贝瓦', '不管你离我多远，我都会来到你身边。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5192', '铠甲勇士47', '27', '38', '0', '未知', '未知', '贝瓦', '第47集：雪獒铠甲被恶金引入了黑域。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5193', '上下楼', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5194', '蝴蝶', '25', '38', '0', '未知', '未知', '贝瓦', '一个人不应该相信这些盆里的花儿的话。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5195', '花园宝宝31', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们小心！', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5196', ' 陆羽弃佛从文', '31', '38', '0', '未知', '未知', '贝瓦', '著名学者陆羽，从小是个孤儿。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5197', '分道扬镳', '26', '38', '0', '未知', '未知', '贝瓦', '和朋友分道扬镳的时候，也请祝福对方。', '1545803818', '1545803818', '1', '2');
INSERT INTO `dp_books` VALUES ('5198', '雪上冰壳', '28', '38', '0', '未知', '未知', '贝瓦', '冰雪融化时，天气更加严寒。\r\n', '1545803819', '1545803819', '1', '2');
INSERT INTO `dp_books` VALUES ('5199', '花园宝宝62', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西今天好想唱歌，她拿出扩音器，唱了起来。', '1545803820', '1545803820', '1', '2');
INSERT INTO `dp_books` VALUES ('5200', '鲽鱼', '21', '38', '0', '未知', '未知', '贝瓦', '宝宝要做一只讲文明、守纪律的好“鱼儿”。', '1545803820', '1545803820', '1', '2');
INSERT INTO `dp_books` VALUES ('5201', '奉济驿重送严...', '22', '38', '0', '未知', '未知', '贝瓦', '远送从此别，青山空复情。', '1545803821', '1545803821', '1', '2');
INSERT INTO `dp_books` VALUES ('5202', '鹿与葡萄藤', '24', '38', '0', '未知', '未知', '贝瓦', '那些恩将仇报的人将会被神惩罚。', '1545803821', '1545803821', '1', '2');
INSERT INTO `dp_books` VALUES ('5203', '寒食', '22', '38', '0', '未知', '未知', '贝瓦', '日暮汉宫传蜡烛，轻烟散入五侯家。', '1545803823', '1545803823', '1', '2');
INSERT INTO `dp_books` VALUES ('5204', '遇难的人', '24', '38', '0', '未知', '未知', '贝瓦', '自食其力远胜过祈求神灵。', '1545803823', '1545803823', '1', '2');
INSERT INTO `dp_books` VALUES ('5205', '被射伤的鹰', '24', '38', '0', '未知', '未知', '贝瓦', '因自己而受到受害，更令人难受。', '1545803823', '1545803823', '1', '2');
INSERT INTO `dp_books` VALUES ('5206', '小鹿', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803824', '1545803824', '1', '2');
INSERT INTO `dp_books` VALUES ('5207', '积雨辋川庄作', '22', '38', '0', '未知', '未知', '贝瓦', '野老与人争席罢，海鸥何事更相疑。', '1545803824', '1545803824', '1', '2');
INSERT INTO `dp_books` VALUES ('5208', '花园宝宝14', '27', '38', '0', '未知', '未知', '贝瓦', '玛卡•巴卡在花园里迭了5个石头的石头堆。', '1545803824', '1545803824', '1', '2');
INSERT INTO `dp_books` VALUES ('5209', '击水的渔夫', '24', '38', '0', '未知', '未知', '贝瓦', '有些人为了自己的私利，不惜把事情搞混搞乱，再从中...', '1545803824', '1545803824', '1', '2');
INSERT INTO `dp_books` VALUES ('5210', '欠债的雅典人', '24', '38', '0', '未知', '未知', '贝瓦', '有些人为了自己的利益，会不惜为不可能的事情作伪证...', '1545803824', '1545803824', '1', '2');
INSERT INTO `dp_books` VALUES ('5211', '踏莎行', '22', '38', '0', '未知', '未知', '贝瓦', '一场愁梦酒醒时，斜阳却照深深院。', '1545803825', '1545803825', '1', '2');
INSERT INTO `dp_books` VALUES ('5212', '好交易 ', '21', '38', '0', '未知', '未知', '贝瓦', '一个奇怪的农夫，他是聪明呢？还是傻傻的呢？', '1545803826', '1545803826', '1', '2');
INSERT INTO `dp_books` VALUES ('5213', '两个费迪南', '21', '38', '0', '未知', '未知', '贝瓦', '每一匹白马前世都是一个英俊的王子。', '1545803826', '1545803826', '1', '2');
INSERT INTO `dp_books` VALUES ('5214', '梦游天姥吟留别', '22', '38', '0', '未知', '未知', '贝瓦', '安能摧眉折腰事权贵，使我不得开心颜！', '1545803827', '1545803827', '1', '2');
INSERT INTO `dp_books` VALUES ('5215', '洛阳女儿行', '22', '38', '0', '未知', '未知', '贝瓦', '谁怜越女颜如玉，贫贱江头自浣沙。', '1545803827', '1545803827', '1', '2');
INSERT INTO `dp_books` VALUES ('5216', '阁夜', '22', '38', '0', '未知', '未知', '贝瓦', '卧龙跃马终黄土，人事音书漫寂寥。', '1545803827', '1545803827', '1', '2');
INSERT INTO `dp_books` VALUES ('5217', '狮子与公牛', '24', '38', '0', '未知', '未知', '贝瓦', '生活中的一些细节往往能给我们最大的警示。', '1545803828', '1545803828', '1', '2');
INSERT INTO `dp_books` VALUES ('5218', '六月二十七日...', '22', '38', '0', '未知', '未知', '贝瓦', '卷地风来忽吹散，望湖楼下水如天。', '1545803828', '1545803828', '1', '2');
INSERT INTO `dp_books` VALUES ('5219', '小小手', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803828', '1545803828', '1', '2');
INSERT INTO `dp_books` VALUES ('5220', '士兵与乌鸦', '24', '38', '0', '未知', '未知', '贝瓦', '胆小的人无法摆脱内心的恐惧。', '1545803829', '1545803829', '1', '2');
INSERT INTO `dp_books` VALUES ('5221', '赠孟浩然', '22', '38', '0', '未知', '未知', '贝瓦', '吾爱孟夫子，风流天下闻。', '1545803829', '1545803829', '1', '2');
INSERT INTO `dp_books` VALUES ('5222', '嫦娥', '22', '38', '0', '未知', '未知', '贝瓦', '嫦娥应悔偷灵药，碧海青天夜夜心。', '1545803830', '1545803830', '1', '2');
INSERT INTO `dp_books` VALUES ('5223', '花园宝宝52', '27', '38', '0', '未知', '未知', '贝瓦', '玛卡巴卡帮汤姆布利柏洗脸的时间到了。', '1545803830', '1545803830', '1', '2');
INSERT INTO `dp_books` VALUES ('5224', '祁红之父', '31', '38', '0', '未知', '未知', '贝瓦', '所制红茶（含尧渡红茶庄）统称“祁红”。', '1545803831', '1545803831', '1', '2');
INSERT INTO `dp_books` VALUES ('5225', '穷磨房小工和猫', '21', '38', '0', '未知', '未知', '贝瓦', '傻瓜也能成为重要的人物哟！', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5226', '滚皮球', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5227', '冬天到', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5228', '花园宝宝19', '27', '38', '0', '未知', '未知', '贝瓦', '洗洗哈呼呼们。', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5229', '孩子和青蛙', '24', '38', '0', '未知', '未知', '贝瓦', '不要把自己的快乐建筑在别人的痛苦上。', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5230', '渔夫与金枪鱼', '24', '38', '0', '未知', '未知', '贝瓦', '依靠技术往往得不到的，却可以碰运气得到。', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5231', '侏儒妖', '21', '38', '0', '未知', '未知', '贝瓦', '奇怪的小矮人，长长的名字。', '1545803832', '1545803832', '1', '2');
INSERT INTO `dp_books` VALUES ('5232', '铠甲勇士22', '27', '38', '0', '未知', '未知', '贝瓦', '第22集：东杉与美真通过统计怪兽出现区域，发现了...', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5233', '三个小伙计', '21', '38', '0', '未知', '未知', '贝瓦', '跟着三个小伙计一起去游历吧！', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5234', '黄鼠狼与爱神', '30', '38', '0', '未知', '未知', '贝瓦', '本性恶劣的人，即使外形变了，本性仍难改。\r\n', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5235', '舞吧,舞吧,...', '25', '38', '0', '未知', '未知', '贝瓦', '“一支无聊的歌！”', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5236', '下终南山过斛...', '22', '38', '0', '未知', '未知', '贝瓦', '我醉君复乐，陶然共忘机。', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5237', '喜见外弟又言别', '22', '38', '0', '未知', '未知', '贝瓦', '十年离乱后，长大一相逢。', '1545803834', '1545803834', '1', '2');
INSERT INTO `dp_books` VALUES ('5238', '野望', '22', '38', '0', '未知', '未知', '贝瓦', '跨马出郊时极目，不堪人事日萧条。', '1545803835', '1545803835', '1', '2');
INSERT INTO `dp_books` VALUES ('5239', ' 鹳鸟', '25', '38', '0', '未知', '未知', '贝瓦', '所有的鹳鸟都叫彼得。', '1545803835', '1545803835', '1', '2');
INSERT INTO `dp_books` VALUES ('5240', '守夜人的故事', '25', '38', '0', '未知', '未知', '贝瓦', '这真是一个丑恶的梦！', '1545803835', '1545803835', '1', '2');
INSERT INTO `dp_books` VALUES ('5241', '青蛙求王', '24', '38', '0', '未知', '未知', '贝瓦', '迷信统治者，不相信自己的力量，只能受制于人，招致...', '1545803835', '1545803835', '1', '2');
INSERT INTO `dp_books` VALUES ('5242', '斑鸠与人', '24', '38', '0', '未知', '未知', '贝瓦', '加害亲人的人，必将得到正义的惩罚。', '1545803835', '1545803835', '1', '2');
INSERT INTO `dp_books` VALUES ('5243', '花园宝宝40', '27', '38', '0', '未知', '未知', '贝瓦', '小点点一家想找个好地方来野餐。', '1545803837', '1545803837', '1', '2');
INSERT INTO `dp_books` VALUES ('5244', '花园宝宝12', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西大声唱。', '1545803837', '1545803837', '1', '2');
INSERT INTO `dp_books` VALUES ('5245', '农夫和鹳', '24', '38', '0', '未知', '未知', '贝瓦', '切莫与坏人交朋友。', '1545803838', '1545803838', '1', '2');
INSERT INTO `dp_books` VALUES ('5246', '经邹鲁祭孔子...', '22', '38', '0', '未知', '未知', '贝瓦', '夫子何为者，栖栖一代中。', '1545803838', '1545803838', '1', '2');
INSERT INTO `dp_books` VALUES ('5247', '渡汉江', '22', '38', '0', '未知', '未知', '贝瓦', '岭外音书绝，经冬复立春。', '1545803838', '1545803838', '1', '2');
INSERT INTO `dp_books` VALUES ('5248', '为虎作伥', '26', '38', '0', '未知', '未知', '贝瓦', '不要做坏事，也不要帮助坏人。', '1545803839', '1545803839', '1', '2');
INSERT INTO `dp_books` VALUES ('5249', '拍汽球', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803839', '1545803839', '1', '2');
INSERT INTO `dp_books` VALUES ('5250', '管家龙', '23', '38', '0', '未知', '未知', '贝瓦', '有危不救，讨封争先，真乃小人也！', '1545803840', '1545803840', '1', '2');
INSERT INTO `dp_books` VALUES ('5251', '送綦毋潜落第...', '22', '38', '0', '未知', '未知', '贝瓦', '远树带行客，孤城当落晖。吾谋适不用，勿谓知音稀。', '1545803840', '1545803840', '1', '2');
INSERT INTO `dp_books` VALUES ('5252', '八月十五夜赠...', '22', '38', '0', '未知', '未知', '贝瓦', '一年明月今宵多，人生由命非由他。', '1545803840', '1545803840', '1', '2');
INSERT INTO `dp_books` VALUES ('5253', '衬衫领子', '25', '38', '0', '未知', '未知', '贝瓦', '一个经典的故事一件衬衫领子的经历。', '1545803841', '1545803841', '1', '2');
INSERT INTO `dp_books` VALUES ('5254', '闺怨', '22', '38', '0', '未知', '未知', '贝瓦', '闺中少妇不知愁，春日凝妆上翠楼。', '1545803841', '1545803841', '1', '2');
INSERT INTO `dp_books` VALUES ('5255', '秋天的原始森林', '28', '38', '0', '未知', '未知', '贝瓦', '鸟儿飞吧，总会有一个阳光普照的地方。', '1545803841', '1545803841', '1', '2');
INSERT INTO `dp_books` VALUES ('5256', '送友人', '22', '38', '0', '未知', '未知', '贝瓦', '浮云游子意，落日故人情。', '1545803842', '1545803842', '1', '2');
INSERT INTO `dp_books` VALUES ('5257', '铠甲勇士34', '27', '38', '0', '未知', '未知', '贝瓦', '第34集：界王被消灭后，恶五行护法准备亲自出马来...', '1545803842', '1545803842', '1', '2');
INSERT INTO `dp_books` VALUES ('5258', '老墓碑', '25', '38', '0', '未知', '未知', '贝瓦', '这是一篇极有风趣的小品，有许多语句值得玩味和深思...', '1545803842', '1545803842', '1', '2');
INSERT INTO `dp_books` VALUES ('5259', '花园宝宝60', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西和依古•比古今天一起在花园里玩球。', '1545803842', '1545803842', '1', '2');
INSERT INTO `dp_books` VALUES ('5260', '花园宝宝15', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们造了座拱门', '1545803843', '1545803843', '1', '2');
INSERT INTO `dp_books` VALUES ('5261', '轻轻的', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803843', '1545803843', '1', '2');
INSERT INTO `dp_books` VALUES ('5262', '子夜秋歌', '22', '38', '0', '未知', '未知', '贝瓦', '何日平胡虏，良人罢远征。', '1545803843', '1545803843', '1', '2');
INSERT INTO `dp_books` VALUES ('5263', '吹萧会龙女', '23', '38', '0', '未知', '未知', '贝瓦', '海渔民至今还常常听到海上有深沈的萧声。', '1545803846', '1545803846', '1', '2');
INSERT INTO `dp_books` VALUES ('5264', '范仲淹', '31', '38', '0', '未知', '未知', '贝瓦', '“当先天下之忧而忧，后天下之乐而乐。”\r\n\r\n', '1545803846', '1545803846', '1', '2');
INSERT INTO `dp_books` VALUES ('5265', '小种子会走路', '28', '38', '0', '未知', '未知', '贝瓦', '大自然中万物的成长，都需要大家来帮忙。', '1545803846', '1545803846', '1', '2');
INSERT INTO `dp_books` VALUES ('5266', '列女操', '22', '38', '0', '未知', '未知', '贝瓦', '梧桐相待老，鸳鸯会双死。', '1545803847', '1545803847', '1', '2');
INSERT INTO `dp_books` VALUES ('5267', '蜀相', '22', '38', '0', '未知', '未知', '贝瓦', '出师未捷身先死，长使英雄泪满襟。', '1545803847', '1545803847', '1', '2');
INSERT INTO `dp_books` VALUES ('5268', '清平调•其一', '22', '38', '0', '未知', '未知', '贝瓦', '若非群玉山头见，会向瑶台月下逢。', '1545803847', '1545803847', '1', '2');
INSERT INTO `dp_books` VALUES ('5269', '清平调•其三', '22', '38', '0', '未知', '未知', '贝瓦', '名花倾国两相欢，常得君王带笑看。', '1545803849', '1545803849', '1', '2');
INSERT INTO `dp_books` VALUES ('5270', '花园宝宝58', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏咦不小心弄倒了汤姆布利柏哦的积木塔。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5271', '孩子们的闲话', '25', '38', '0', '未知', '未知', '贝瓦', '他们都是一样的人。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5272', ' 彗星', '25', '38', '0', '未知', '未知', '贝瓦', '在泡影里来看“未来”。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5273', '天工神笔-顾...', '31', '38', '0', '未知', '未知', '贝瓦', '顾恺之的“天工神笔”是从小练的。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5274', '近试上张水部', '22', '38', '0', '未知', '未知', '贝瓦', '妆罢低声问夫婿，画眉深浅入时无。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5275', '铠甲勇士48', '27', '38', '0', '未知', '未知', '贝瓦', '第48集：新金在黑域与恶金法的打斗中，被打成重伤...', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5276', ' 童年时代的...', '31', '38', '0', '未知', '未知', '贝瓦', '充满回忆，快乐的童年故事。', '1545803850', '1545803850', '1', '2');
INSERT INTO `dp_books` VALUES ('5277', '花园宝宝39', '27', '38', '0', '未知', '未知', '贝瓦', '唔西迪西的小床决定跟着他们走。', '1545803851', '1545803851', '1', '2');
INSERT INTO `dp_books` VALUES ('5278', '苏幕遮', '22', '38', '0', '未知', '未知', '贝瓦', '酒入愁肠，化作相思泪。', '1545803852', '1545803852', '1', '2');
INSERT INTO `dp_books` VALUES ('5279', '夜上受降城闻笛', '22', '38', '0', '未知', '未知', '贝瓦', '不知何处吹芦管，一夜征人尽望乡。', '1545803852', '1545803852', '1', '2');
INSERT INTO `dp_books` VALUES ('5280', '花园宝宝61', '27', '38', '0', '未知', '未知', '贝瓦', '今天小点点和小豆豆在玩捉迷藏。', '1545803852', '1545803852', '1', '2');
INSERT INTO `dp_books` VALUES ('5281', '铠甲勇士37', '27', '38', '0', '未知', '未知', '贝瓦', '第37集：恶护法们蓄谋一项更庞大的计划对付铠甲勇...', '1545803852', '1545803852', '1', '2');
INSERT INTO `dp_books` VALUES ('5282', '篱笆国王', '21', '38', '0', '未知', '未知', '贝瓦', '每一种声音都有它的意义。', '1545803852', '1545803852', '1', '2');
INSERT INTO `dp_books` VALUES ('5283', '笑傲王侯-梁...', '31', '38', '0', '未知', '未知', '贝瓦', '行千里路，读万卷书，侠士有志傲王侯。', '1545803853', '1545803853', '1', '2');
INSERT INTO `dp_books` VALUES ('5284', '爱人罗兰', '21', '38', '0', '未知', '未知', '贝瓦', '坏巫婆无法阻止坚贞不渝的姑娘和爱人罗兰。', '1545803854', '1545803854', '1', '2');
INSERT INTO `dp_books` VALUES ('5285', '鼓手', '21', '38', '0', '未知', '未知', '贝瓦', '留在宝宝右脸颊上的吻，是妈妈所有的爱。', '1545803854', '1545803854', '1', '2');
INSERT INTO `dp_books` VALUES ('5286', '铠甲勇士41', '27', '38', '0', '未知', '未知', '贝瓦', '第41集：雪獒侠在加入战斗时反而被张健打伤。', '1545803854', '1545803854', '1', '2');
INSERT INTO `dp_books` VALUES ('5287', '轮台歌奉送封...', '22', '38', '0', '未知', '未知', '贝瓦', '古来青史谁不见，今见功名胜古人。', '1545803854', '1545803854', '1', '2');
INSERT INTO `dp_books` VALUES ('5288', '“吾谓耕者比...', '31', '38', '0', '未知', '未知', '贝瓦', '六岁就会做诗的吴晗。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5289', '寻西山隐者不遇', '22', '38', '0', '未知', '未知', '贝瓦', '虽无宾主意，颇得清净理。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5290', '花园宝宝24', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏的裤子。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5291', ' 烛', '25', '38', '0', '未知', '未知', '贝瓦', '这个故事是来自现实生活。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5292', '亲亲，洞洞', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5293', '梦李白•其一 ', '22', '38', '0', '未知', '未知', '贝瓦', '故人来入梦，明我长相忆。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5294', '寄人', '22', '38', '0', '未知', '未知', '贝瓦', '多情只有春庭月，犹为离人照落花。', '1545803859', '1545803859', '1', '2');
INSERT INTO `dp_books` VALUES ('5295', '石蚕', '28', '38', '0', '未知', '未知', '贝瓦', '爬过了马路，就可以到房屋的墙壁上晒太阳了。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5296', '约丽丹和约雷...', '21', '38', '0', '未知', '未知', '贝瓦', '神奇的花朵拯救了所有禁锢的“鸟儿”。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5297', '老苏丹', '21', '38', '0', '未知', '未知', '贝瓦', '有一条忠诚的狗叫老苏丹。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5298', '猫和生病的鸡', '24', '38', '0', '未知', '未知', '贝瓦', '坏人即使装出十分善良的样子，聪明的人也会识破的。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5299', '飞箱', '25', '38', '0', '未知', '未知', '贝瓦', '这个故事有许多东西值得人们深思。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5300', '晨诣超师院读...', '22', '38', '0', '未知', '未知', '贝瓦', '汲井漱寒齿，清心拂尘服。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5301', '拉斯廷老兄', '21', '38', '0', '未知', '未知', '贝瓦', '善良与知足引领着人们进入天堂。', '1545803861', '1545803861', '1', '2');
INSERT INTO `dp_books` VALUES ('5302', '花园宝宝22', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西走累了。', '1545803862', '1545803862', '1', '2');
INSERT INTO `dp_books` VALUES ('5303', '玉楼春', '22', '38', '0', '未知', '未知', '贝瓦', '绿杨烟外晓寒轻，红杏枝头春意闹。', '1545803864', '1545803864', '1', '2');
INSERT INTO `dp_books` VALUES ('5304', '春雨', '22', '38', '0', '未知', '未知', '贝瓦', '红楼隔雨相望冷，珠箔飘灯独自归。', '1545803864', '1545803864', '1', '2');
INSERT INTO `dp_books` VALUES ('5305', '铠甲勇士31', '27', '38', '0', '未知', '未知', '贝瓦', '第31集：坤中和北淼说服西钊加入铠甲组织，摆脱界...', '1545803864', '1545803864', '1', '2');
INSERT INTO `dp_books` VALUES ('5306', '狼与鹭鸶', '24', '38', '0', '未知', '未知', '贝瓦', '对坏人行善的报酬，就是认识坏人不讲信用的本质。', '1545803865', '1545803865', '1', '2');
INSERT INTO `dp_books` VALUES ('5307', '铠甲勇士33', '27', '38', '0', '未知', '未知', '贝瓦', '第33集：自己要掌握自己的命运，要脱离界王的控制...', '1545803865', '1545803865', '1', '2');
INSERT INTO `dp_books` VALUES ('5308', '好心境', '25', '38', '0', '未知', '未知', '贝瓦', '这个故事反映了现实却是既深刻又尖锐的。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5309', '人与同行的狮子', '24', '38', '0', '未知', '未知', '贝瓦', '那些自己毫无本事的人却喜欢常常在别人面前炫耀自己...', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5310', ' 诸葛亮', '31', '38', '0', '未知', '未知', '贝瓦', '毁树容易栽树难哪！', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5311', '东郊', '22', '38', '0', '未知', '未知', '贝瓦', '杨柳散和风，青山澹吾虑。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5312', '秋日登吴公台...', '22', '38', '0', '未知', '未知', '贝瓦', '古台摇落后，秋入望乡心。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5313', '赋得暮雨送李胄', '22', '38', '0', '未知', '未知', '贝瓦', '相送情无限，沾襟比散丝。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5314', '铠甲勇士39', '27', '38', '0', '未知', '未知', '贝瓦', '第39集：新闻中报道山区出现怪兽的消息。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5315', '灰鹤的舞蹈', '28', '38', '0', '未知', '未知', '贝瓦', '快来看啊，灰鹤舞会开始咯。', '1545803866', '1545803866', '1', '2');
INSERT INTO `dp_books` VALUES ('5316', '墨汁当小菜', '31', '38', '0', '未知', '未知', '贝瓦', '黄侃看书入迷，把馒头伸进了砚台、朱砂盒。', '1545803867', '1545803867', '1', '2');
INSERT INTO `dp_books` VALUES ('5317', '和贾至舍人早...', '22', '38', '0', '未知', '未知', '贝瓦', '日色才临仙掌动，香烟欲傍衮龙浮。', '1545803869', '1545803869', '1', '2');
INSERT INTO `dp_books` VALUES ('5318', ' 张衡制造地...', '31', '38', '0', '未知', '未知', '贝瓦', '文人雅士、帝王将相，的科学家，张衡就是其中很著名...', '1545803869', '1545803869', '1', '2');
INSERT INTO `dp_books` VALUES ('5319', ' 恋人', '25', '38', '0', '未知', '未知', '贝瓦', '这是一篇极有风趣的小品，有许多语句值得玩味和深思...', '1545803869', '1545803869', '1', '2');
INSERT INTO `dp_books` VALUES ('5320', '弗雷德里克和...', '21', '38', '0', '未知', '未知', '贝瓦', '“我不知道啊，你应该告诉我的。”', '1545803869', '1545803869', '1', '2');
INSERT INTO `dp_books` VALUES ('5321', '花园宝宝56', '27', '38', '0', '未知', '未知', '贝瓦', '小点点也搬来了1块石头送给玛卡•巴卡，真是太棒了...', '1545803871', '1545803871', '1', '2');
INSERT INTO `dp_books` VALUES ('5322', '蜀先主庙', '22', '38', '0', '未知', '未知', '贝瓦', '天地英雄气，千秋尚凛然。', '1545803871', '1545803871', '1', '2');
INSERT INTO `dp_books` VALUES ('5323', '长沙过贾谊宅', '22', '38', '0', '未知', '未知', '贝瓦', '秋草独寻人去后，寒林空见日斜时。', '1545803872', '1545803872', '1', '2');
INSERT INTO `dp_books` VALUES ('5324', '病鸢', '24', '38', '0', '未知', '未知', '贝瓦', '只有在平时缔结友谊，才能在患难中得到朋友的帮助。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5325', '夜泊牛渚怀古', '22', '38', '0', '未知', '未知', '贝瓦', '余亦能高咏，斯人不可闻。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5326', '花园宝宝23', '27', '38', '0', '未知', '未知', '贝瓦', '依古比古去作客。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5327', '花园宝宝16', '27', '38', '0', '未知', '未知', '贝瓦', '玛卡•巴卡的石头音乐会。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5328', '猴子与海豚', '24', '38', '0', '未知', '未知', '贝瓦', '不要信任那些信口雌黄的人。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5329', '令人叫绝的乐师', '21', '38', '0', '未知', '未知', '贝瓦', '音乐能让人忘乎所以。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5330', '狮子和海豚', '24', '38', '0', '未知', '未知', '贝瓦', '我们结交盟友，应当选择那些能共患难的人。', '1545803874', '1545803874', '1', '2');
INSERT INTO `dp_books` VALUES ('5331', '小山羊与吹箫...', '24', '38', '0', '未知', '未知', '贝瓦', '有些人不守本分，最终往往会失败。', '1545803876', '1545803876', '1', '2');
INSERT INTO `dp_books` VALUES ('5332', '夜归鹿门山歌', '22', '38', '0', '未知', '未知', '贝瓦', '山寺钟鸣昼已昏，渔梁渡头争渡喧。', '1545803876', '1545803876', '1', '2');
INSERT INTO `dp_books` VALUES ('5333', '花园宝宝27', '27', '38', '0', '未知', '未知', '贝瓦', '依古比古的喷泉。', '1545803876', '1545803876', '1', '2');
INSERT INTO `dp_books` VALUES ('5334', '赫耳墨斯与雕...', '24', '38', '0', '未知', '未知', '贝瓦', '那些爱慕虚荣的人，往往被别人看不起。', '1545803877', '1545803877', '1', '2');
INSERT INTO `dp_books` VALUES ('5335', '花园宝宝53', '27', '38', '0', '未知', '未知', '贝瓦', '依古比古去搭叮叮车，他向唔西迪西挥挥手。', '1545803877', '1545803877', '1', '2');
INSERT INTO `dp_books` VALUES ('5336', '望蓟门', '22', '38', '0', '未知', '未知', '贝瓦', '少小虽非投笔吏，论功还欲请长缨。', '1545803877', '1545803877', '1', '2');
INSERT INTO `dp_books` VALUES ('5337', '题大庾岭北驿', '22', '38', '0', '未知', '未知', '贝瓦', '我行殊未已，何日复归来。', '1545803877', '1545803877', '1', '2');
INSERT INTO `dp_books` VALUES ('5338', '花园宝宝29', '27', '38', '0', '未知', '未知', '贝瓦', '唔西迪西在睡觉。', '1545803878', '1545803878', '1', '2');
INSERT INTO `dp_books` VALUES ('5339', '赠别•其二', '22', '38', '0', '未知', '未知', '贝瓦', '多情却似总无情，唯觉尊前笑不成。', '1545803879', '1545803879', '1', '2');
INSERT INTO `dp_books` VALUES ('5340', '蝶恋花', '22', '38', '0', '未知', '未知', '贝瓦', '独上高楼，望尽天涯路。', '1545803879', '1545803879', '1', '2');
INSERT INTO `dp_books` VALUES ('5341', '和晋陵陆丞相...', '22', '38', '0', '未知', '未知', '贝瓦', '忽闻歌古调，归思欲沾襟。', '1545803880', '1545803880', '1', '2');
INSERT INTO `dp_books` VALUES ('5342', '终南望余雪', '22', '38', '0', '未知', '未知', '贝瓦', '林表明霁色，城中增暮寒。', '1545803880', '1545803880', '1', '2');
INSERT INTO `dp_books` VALUES ('5343', '狼与牧羊人', '24', '38', '0', '未知', '未知', '贝瓦', '把财物托付给不应托付的人，自然会上当。', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5344', '采莲令', '22', '38', '0', '未知', '未知', '贝瓦', '你乘着那一叶扁舟，竟是如此匆忙地驶向远方。', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5345', '外婆笑了', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5346', '丑陋的女仆', '24', '38', '0', '未知', '未知', '贝瓦', '想象出来的美丽终将幻灭。', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5347', '冬爷爷', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5348', '哥舒歌', '22', '38', '0', '未知', '未知', '贝瓦', '至今窥牧马，不敢过临洮。', '1545803881', '1545803881', '1', '2');
INSERT INTO `dp_books` VALUES ('5349', '花园宝宝33', '27', '38', '0', '未知', '未知', '贝瓦', '小点点的孩子们在车顶上', '1545803882', '1545803882', '1', '2');
INSERT INTO `dp_books` VALUES ('5350', '史家之绝唱-...', '31', '38', '0', '未知', '未知', '贝瓦', '司马迁从小立志做一名历史学家。\r\n', '1545803882', '1545803882', '1', '2');
INSERT INTO `dp_books` VALUES ('5351', '长信怨', '22', '38', '0', '未知', '未知', '贝瓦', '玉颜不及寒鸦色，犹带昭阳日影来。', '1545803883', '1545803883', '1', '2');
INSERT INTO `dp_books` VALUES ('5352', '花园宝宝55', '27', '38', '0', '未知', '未知', '贝瓦', '　依古•比古在花园里玩耍的时候，不小心迷路了。', '1545803883', '1545803883', '1', '2');
INSERT INTO `dp_books` VALUES ('5353', '吹箫的渔夫', '24', '38', '0', '未知', '未知', '贝瓦', '只有在对的时机才能成功。', '1545803883', '1545803883', '1', '2');
INSERT INTO `dp_books` VALUES ('5354', '丹麦人荷尔格', '25', '38', '0', '未知', '未知', '贝瓦', '这是一篇洋溢着爱国主义激情的散文诗。', '1545803883', '1545803883', '1', '2');
INSERT INTO `dp_books` VALUES ('5355', ' 小小的绿东西', '25', '38', '0', '未知', '未知', '贝瓦', '不良的破坏性的东西往往可以用种种的美名出现。', '1545803884', '1545803884', '1', '2');
INSERT INTO `dp_books` VALUES ('5356', ' 列夫•托尔...', '31', '38', '0', '未知', '未知', '贝瓦', '托尔斯泰改作品总是不厌其烦。\r\n\r\n', '1545803885', '1545803885', '1', '2');
INSERT INTO `dp_books` VALUES ('5357', '妙拟华章-柳...', '31', '38', '0', '未知', '未知', '贝瓦', '柳宗元刻苦地博览群书反复研读，批判地吸收，不断丰...', '1545803885', '1545803885', '1', '2');
INSERT INTO `dp_books` VALUES ('5358', '九九歌', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803885', '1545803885', '1', '2');
INSERT INTO `dp_books` VALUES ('5359', ' 跳蚤和教授', '25', '38', '0', '未知', '未知', '贝瓦', '骗术最终产生了实惠，受惠者是“教授”和“跳蚤”。', '1545803885', '1545803885', '1', '2');
INSERT INTO `dp_books` VALUES ('5360', '花园宝宝28', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏咦迷路了。', '1545803886', '1545803886', '1', '2');
INSERT INTO `dp_books` VALUES ('5361', '古意', '22', '38', '0', '未知', '未知', '贝瓦', '今为羌笛出塞声，使我三军泪如雨。', '1545803887', '1545803887', '1', '2');
INSERT INTO `dp_books` VALUES ('5362', '秋夜寄邱员外', '22', '38', '0', '未知', '未知', '贝瓦', '空山松子落，幽人应未眠。', '1545803887', '1545803887', '1', '2');
INSERT INTO `dp_books` VALUES ('5363', '长相思', '22', '38', '0', '未知', '未知', '贝瓦', '两岸青山相对迎，谁知离别情？', '1545803888', '1545803888', '1', '2');
INSERT INTO `dp_books` VALUES ('5364', '上车', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803888', '1545803888', '1', '2');
INSERT INTO `dp_books` VALUES ('5365', '送上人', '22', '38', '0', '未知', '未知', '贝瓦', '孤云将野鹤，岂向人间住。', '1545803888', '1545803888', '1', '2');
INSERT INTO `dp_books` VALUES ('5366', ' 贝脱、比脱...', '25', '38', '0', '未知', '未知', '贝瓦', '等我们活了足够长的时间以后，死神就会接到一个命令...', '1545803888', '1545803888', '1', '2');
INSERT INTO `dp_books` VALUES ('5367', '不可多得', '26', '38', '0', '未知', '未知', '贝瓦', '让自己如珍贵的玉石一样，高洁又不可多得。', '1545803890', '1545803890', '1', '2');
INSERT INTO `dp_books` VALUES ('5368', '同从弟南斋玩...', '22', '38', '0', '未知', '未知', '贝瓦', '玩月思友，由月忆人。清光依旧、人生无常。', '1545803890', '1545803890', '1', '2');
INSERT INTO `dp_books` VALUES ('5369', '行人与斧头', '24', '38', '0', '未知', '未知', '贝瓦', '那些有福不愿与人同享的人，有祸也没人与他同担。', '1545803890', '1545803890', '1', '2');
INSERT INTO `dp_books` VALUES ('5370', '梦李白•其二', '22', '38', '0', '未知', '未知', '贝瓦', '三夜频梦君，情亲见君意。', '1545803890', '1545803890', '1', '2');
INSERT INTO `dp_books` VALUES ('5371', '蜀道难', '22', '38', '0', '未知', '未知', '贝瓦', '蜀道难，难于上青天。', '1545803890', '1545803890', '1', '2');
INSERT INTO `dp_books` VALUES ('5372', '客至', '22', '38', '0', '未知', '未知', '贝瓦', '花径不曾缘客扫，蓬门今始为君开。', '1545803892', '1545803892', '1', '2');
INSERT INTO `dp_books` VALUES ('5373', '同题仙游观', '22', '38', '0', '未知', '未知', '贝瓦', '仙台初见五城楼，风物凄凄宿雨收。', '1545803892', '1545803892', '1', '2');
INSERT INTO `dp_books` VALUES ('5374', '赠别•其一', '22', '38', '0', '未知', '未知', '贝瓦', '春风十里扬州路，卷上珠帘总不如。', '1545803893', '1545803893', '1', '2');
INSERT INTO `dp_books` VALUES ('5375', '花园宝宝17', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们，快点！', '1545803894', '1545803894', '1', '2');
INSERT INTO `dp_books` VALUES ('5376', '迁居的日子', '25', '38', '0', '未知', '未知', '贝瓦', '如果妈妈知道我的弟弟在这样受难，她将会心痛得死去...', '1545803894', '1545803894', '1', '2');
INSERT INTO `dp_books` VALUES ('5377', '晚次鄂州', '22', '38', '0', '未知', '未知', '贝瓦', '估客昼眠知浪静，舟人夜语觉潮生。', '1545803894', '1545803894', '1', '2');
INSERT INTO `dp_books` VALUES ('5378', ' 接骨木树妈妈', '25', '38', '0', '未知', '未知', '贝瓦', '曾经有一个人砍掉这棵树，很快他就暴死了。', '1545803894', '1545803894', '1', '2');
INSERT INTO `dp_books` VALUES ('5379', '张良巧计解危难', '31', '38', '0', '未知', '未知', '贝瓦', '张良一计策，平息了将要发生的叛乱。\r\n\r\n', '1545803894', '1545803894', '1', '2');
INSERT INTO `dp_books` VALUES ('5380', '清平乐', '22', '38', '0', '未知', '未知', '贝瓦', '双燕欲归时节，银屏昨夜微寒。', '1545803897', '1545803897', '1', '2');
INSERT INTO `dp_books` VALUES ('5381', ' 恩格斯的读...', '31', '38', '0', '未知', '未知', '贝瓦', '读书关键是要自学，并掌握有效的自学方法。\r\n\r\n', '1545803898', '1545803898', '1', '2');
INSERT INTO `dp_books` VALUES ('5382', '送魏万之京', '22', '38', '0', '未知', '未知', '贝瓦', '鸿雁不堪愁里听，云山况是客中过。', '1545803898', '1545803898', '1', '2');
INSERT INTO `dp_books` VALUES ('5383', '咏怀古迹•其三', '22', '38', '0', '未知', '未知', '贝瓦', '一去紫台连朔漠，独留青冢向黄昏，', '1545803899', '1545803899', '1', '2');
INSERT INTO `dp_books` VALUES ('5384', '瑶瑟怨', '22', '38', '0', '未知', '未知', '贝瓦', '雁声远过潇湘去，十二楼中月自明。', '1545803899', '1545803899', '1', '2');
INSERT INTO `dp_books` VALUES ('5385', '花园宝宝38', '27', '38', '0', '未知', '未知', '贝瓦', '唔西迪西把她的幸运石交给依古比古照料。', '1545803900', '1545803900', '1', '2');
INSERT INTO `dp_books` VALUES ('5386', '郡斋雨中与诸...', '22', '38', '0', '未知', '未知', '贝瓦', '自惭居处崇，未睹斯民康。', '1545803901', '1545803901', '1', '2');
INSERT INTO `dp_books` VALUES ('5387', '塞下曲•其四', '22', '38', '0', '未知', '未知', '贝瓦', '醉和金甲舞，雷鼓动山川。', '1545803901', '1545803901', '1', '2');
INSERT INTO `dp_books` VALUES ('5388', '雪花', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803901', '1545803901', '1', '2');
INSERT INTO `dp_books` VALUES ('5389', '初发扬子寄元...', '22', '38', '0', '未知', '未知', '贝瓦', '今朝为此别，何处还相遇。', '1545803902', '1545803902', '1', '2');
INSERT INTO `dp_books` VALUES ('5390', '鹦鹉洲的由来', '23', '38', '0', '未知', '未知', '贝瓦', '昔登江上黄鹤楼,遥看江中鹦鹉洲。', '1545803903', '1545803903', '1', '2');
INSERT INTO `dp_books` VALUES ('5391', '春怨', '22', '38', '0', '未知', '未知', '贝瓦', '啼时惊妾梦，不得到辽西。', '1545803903', '1545803903', '1', '2');
INSERT INTO `dp_books` VALUES ('5392', '花园宝宝25', '27', '38', '0', '未知', '未知', '贝瓦', '玛卡巴卡的吹风机哪儿去了？', '1545803903', '1545803903', '1', '2');
INSERT INTO `dp_books` VALUES ('5393', '万事通大夫', '21', '38', '0', '未知', '未知', '贝瓦', '一个贫穷的农夫居然成了万事通大夫。', '1545803903', '1545803903', '1', '2');
INSERT INTO `dp_books` VALUES ('5394', '赠阙下裴舍人', '22', '38', '0', '未知', '未知', '贝瓦', '长乐钟声花外尽，龙池柳色雨中深。', '1545803903', '1545803903', '1', '2');
INSERT INTO `dp_books` VALUES ('5395', '清平调•其二', '22', '38', '0', '未知', '未知', '贝瓦', '借问汉宫谁得似，可怜飞燕倚新妆。', '1545803904', '1545803904', '1', '2');
INSERT INTO `dp_books` VALUES ('5396', '池中水妖', '21', '38', '0', '未知', '未知', '贝瓦', '一支优美而略带伤感的曲子，吹出了幸福人生。', '1545803905', '1545803905', '1', '2');
INSERT INTO `dp_books` VALUES ('5397', '运神像的驴子', '24', '38', '0', '未知', '未知', '贝瓦', '那些依靠别人获得尊敬的人太不自量了。', '1545803905', '1545803905', '1', '2');
INSERT INTO `dp_books` VALUES ('5398', '公鸡与野鸡', '24', '38', '0', '未知', '未知', '贝瓦', '若邻里与家人还不能互相宽容，还有什么是可以宽容的...', '1545803905', '1545803905', '1', '2');
INSERT INTO `dp_books` VALUES ('5399', '一丛花令', '22', '38', '0', '未知', '未知', '贝瓦', '梯横画阁黄昏后，又还是、斜月帘栊。', '1545803905', '1545803905', '1', '2');
INSERT INTO `dp_books` VALUES ('5400', ' 茶壶', '25', '38', '0', '未知', '未知', '贝瓦', '茶壶在做完了一系列好事以后，“被扔到院子里去了。', '1545803905', '1545803905', '1', '2');
INSERT INTO `dp_books` VALUES ('5401', '宿业师山房待...', '22', '38', '0', '未知', '未知', '贝瓦', '松月生夜凉，风泉满清听。', '1545803906', '1545803906', '1', '2');
INSERT INTO `dp_books` VALUES ('5402', '花园宝宝59', '27', '38', '0', '未知', '未知', '贝瓦', '唔西•迪西，依古•比古，三个汤姆布利柏，就连小点...', '1545803907', '1545803907', '1', '2');
INSERT INTO `dp_books` VALUES ('5403', '大力神和车夫', '24', '38', '0', '未知', '未知', '贝瓦', '自力更生是克服困难的最好办法。', '1545803907', '1545803907', '1', '2');
INSERT INTO `dp_books` VALUES ('5404', '谒衡岳庙遂宿...', '22', '38', '0', '未知', '未知', '贝瓦', '我来正逢秋雨节，阴气晦味无清风。', '1545803908', '1545803908', '1', '2');
INSERT INTO `dp_books` VALUES ('5405', '万死不辞', '26', '38', '0', '未知', '未知', '贝瓦', '至少得有一个人为你万死不辞，才是成功的人生。', '1545803910', '1545803910', '1', '2');
INSERT INTO `dp_books` VALUES ('5406', '花园宝宝21', '27', '38', '0', '未知', '未知', '贝瓦', '下落。', '1545803912', '1545803912', '1', '2');
INSERT INTO `dp_books` VALUES ('5407', ' 区别', '25', '38', '0', '未知', '未知', '贝瓦', '“植物与植物之间是有区别的，正如人与人之间有区别...', '1545803912', '1545803912', '1', '2');
INSERT INTO `dp_books` VALUES ('5408', '花园宝宝49', '27', '38', '0', '未知', '未知', '贝瓦', '唔西迪西没办法做出决定要做什么。', '1545803912', '1545803912', '1', '2');
INSERT INTO `dp_books` VALUES ('5409', '花园宝宝26', '27', '38', '0', '未知', '未知', '贝瓦', '叮叮车上的晚餐。', '1545803912', '1545803912', '1', '2');
INSERT INTO `dp_books` VALUES ('5410', '青溪', '22', '38', '0', '未知', '未知', '贝瓦', '让我留在这盘石上好了，终日垂钓一直终老到头！', '1545803914', '1545803914', '1', '2');
INSERT INTO `dp_books` VALUES ('5411', '登高', '22', '38', '0', '未知', '未知', '贝瓦', '无边落木萧萧下，不尽长江滚滚来。', '1545803914', '1545803914', '1', '2');
INSERT INTO `dp_books` VALUES ('5412', '行路难', '22', '38', '0', '未知', '未知', '贝瓦', '长风破浪会有时，直挂云帆济沧海。', '1545803917', '1545803917', '1', '2');
INSERT INTO `dp_books` VALUES ('5413', '与诸子登岘山', '22', '38', '0', '未知', '未知', '贝瓦', '江山留胜迹，我辈复登临。', '1545803917', '1545803917', '1', '2');
INSERT INTO `dp_books` VALUES ('5414', '宫词', '22', '38', '0', '未知', '未知', '贝瓦', '十二楼中尽晓妆，望仙楼上望君王。', '1545803917', '1545803917', '1', '2');
INSERT INTO `dp_books` VALUES ('5415', '花园宝宝34', '27', '38', '0', '未知', '未知', '贝瓦', '唔西迪西和飞飞鱼跳舞。', '1545803918', '1545803918', '1', '2');
INSERT INTO `dp_books` VALUES ('5416', '司法官的遭遇', '25', '38', '0', '未知', '未知', '贝瓦', '亚瑟王的圆桌骑士是在欧洲流传很广的关于一群骑士的...', '1545803918', '1545803918', '1', '2');
INSERT INTO `dp_books` VALUES ('5417', '荀灌娘请救兵', '31', '38', '0', '未知', '未知', '贝瓦', '同是一死，何不死里求生。', '1545803918', '1545803918', '1', '2');
INSERT INTO `dp_books` VALUES ('5418', '宿府', '22', '38', '0', '未知', '未知', '贝瓦', '风尘荏苒音书绝，关塞萧条行路难。', '1545803919', '1545803919', '1', '2');
INSERT INTO `dp_books` VALUES ('5419', '天仙子', '22', '38', '0', '未知', '未知', '贝瓦', '风不定，人初静，明日落红应满径。', '1545803920', '1545803920', '1', '2');
INSERT INTO `dp_books` VALUES ('5420', ' “杂交水稻...', '31', '38', '0', '未知', '未知', '贝瓦', '袁隆平为改变我国粮食生产的落后状态打了一个翻身仗...', '1545803921', '1545803921', '1', '2');
INSERT INTO `dp_books` VALUES ('5421', '乡心', '22', '38', '0', '未知', '未知', '贝瓦', '共看明月应垂泪，一夜乡心五处同。', '1545803923', '1545803923', '1', '2');
INSERT INTO `dp_books` VALUES ('5422', '花园宝宝41', '27', '38', '0', '未知', '未知', '贝瓦', '集玛卡巴卡三块石头的石堆。', '1545803923', '1545803923', '1', '2');
INSERT INTO `dp_books` VALUES ('5423', '怎么办好呢', '28', '38', '0', '未知', '未知', '贝瓦', '实话永远比谎言简单得多。', '1545803923', '1545803923', '1', '2');
INSERT INTO `dp_books` VALUES ('5424', '叔父', '25', '38', '0', '未知', '未知', '贝瓦', '他是一个可怜的傻孩子。', '1545803924', '1545803924', '1', '2');
INSERT INTO `dp_books` VALUES ('5425', '亚麻', '25', '38', '0', '未知', '未知', '贝瓦', '一颗亚麻的经历。', '1545803924', '1545803924', '1', '2');
INSERT INTO `dp_books` VALUES ('5426', '走小桥', '29', '38', '0', '未知', '未知', '贝瓦', ' ', '1545803924', '1545803924', '1', '2');
INSERT INTO `dp_books` VALUES ('5427', '鹰窠', '25', '38', '0', '未知', '未知', '贝瓦', '山路上有一阵愉快的歌声飘来。', '1545803926', '1545803926', '1', '2');
INSERT INTO `dp_books` VALUES ('5428', '周穆王西游', '23', '38', '0', '未知', '未知', '贝瓦', '周穆王游天下。', '1545803926', '1545803926', '1', '2');
INSERT INTO `dp_books` VALUES ('5429', '寄李儋元锡', '22', '38', '0', '未知', '未知', '贝瓦', '去年花里逢君别，今日花开又一年。', '1545803926', '1545803926', '1', '2');
INSERT INTO `dp_books` VALUES ('5430', '无题•其二', '22', '38', '0', '未知', '未知', '贝瓦', '春心莫共花争发，一寸相思一寸灰。', '1545803927', '1545803927', '1', '2');
INSERT INTO `dp_books` VALUES ('5431', '“志在鸿鹄”...', '31', '38', '0', '未知', '未知', '贝瓦', '一只大鸟展翅高飞，嘲笑下边仰着脸，无可奈何的猎人...', '1545803927', '1545803927', '1', '2');
INSERT INTO `dp_books` VALUES ('5432', '玉台体', '22', '38', '0', '未知', '未知', '贝瓦', '昨夜裙带解，今朝蟢子飞。', '1545803927', '1545803927', '1', '2');
INSERT INTO `dp_books` VALUES ('5433', '破山寺后禅院', '22', '38', '0', '未知', '未知', '贝瓦', '曲径通幽处，禅房花木深。', '1545803929', '1545803929', '1', '2');
INSERT INTO `dp_books` VALUES ('5434', '岁暮归南山', '22', '38', '0', '未知', '未知', '贝瓦', '永怀愁不寐，松月夜窗虚。', '1545803930', '1545803930', '1', '2');
INSERT INTO `dp_books` VALUES ('5435', '苏武庙', '22', '38', '0', '未知', '未知', '贝瓦', '茂陵不见封侯印，空向秋波哭逝川。', '1545803930', '1545803930', '1', '2');
INSERT INTO `dp_books` VALUES ('5436', '送灵澈', '22', '38', '0', '未知', '未知', '贝瓦', '苍苍竹林寺，杳杳钟声晚。', '1545803930', '1545803930', '1', '2');
INSERT INTO `dp_books` VALUES ('5437', '走马川行奉送...', '22', '38', '0', '未知', '未知', '贝瓦', '将军金甲夜不脱，半夜军行戈相拨，风头如刀面如割。...', '1545803932', '1545803932', '1', '2');
INSERT INTO `dp_books` VALUES ('5438', '金山王', '21', '38', '0', '未知', '未知', '贝瓦', '最需要帮助的时候，往往是最容易犯迷糊的时候。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5439', '姑妈', '25', '38', '0', '未知', '未知', '贝瓦', '“麻将迷”或“吃喝迷”——毫无文化。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5440', '诉衷情', '22', '38', '0', '未知', '未知', '贝瓦', '凭高目断，鸿雁来时，无限思量。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5441', '长相思•其二', '22', '38', '0', '未知', '未知', '贝瓦', '此曲有意无人传，愿随春风寄燕然。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5442', '何满子', '22', '38', '0', '未知', '未知', '贝瓦', '故国三千里，深宫二十年。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5443', '铠甲勇士40', '27', '38', '0', '未知', '未知', '贝瓦', '第40集：西钊也为打伤坤中后悔不已。', '1545803933', '1545803933', '1', '2');
INSERT INTO `dp_books` VALUES ('5444', '花园宝宝46', '27', '38', '0', '未知', '未知', '贝瓦', '　汤姆布利柏哦把球带进树屋里，所以汤姆布利柏就在...', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5445', '狮子和他的顾问', '24', '38', '0', '未知', '未知', '贝瓦', '模棱两可，暧昧含糊可以让人抓不着把柄。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5446', '报春的歌声', '28', '38', '0', '未知', '未知', '贝瓦', '脱掉你厚厚的外套吧，春天来啦。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5447', '破归', '22', '38', '0', '未知', '未知', '贝瓦', '无才日衰老，驻马望千门。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5448', '花园宝宝57', '27', '38', '0', '未知', '未知', '贝瓦', '今天汤姆布利柏搭上了飞飞鱼，后来碰碰警铃响了。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5449', '听筝', '22', '38', '0', '未知', '未知', '贝瓦', '欲得周郎顾，时时误拂弦。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5450', '驴子、公鸡与...', '24', '38', '0', '未知', '未知', '贝瓦', '要知道自己有多大能耐，不要在强大的对手面前逞能。', '1545803940', '1545803940', '1', '2');
INSERT INTO `dp_books` VALUES ('5451', '江州重别薛六...', '22', '38', '0', '未知', '未知', '贝瓦', '江上月明胡雁过，淮南木落楚山多。', '1545803942', '1545803942', '1', '2');
INSERT INTO `dp_books` VALUES ('5452', '秦中感秋寄远...', '22', '38', '0', '未知', '未知', '贝瓦', '黄金燃桂尽，壮志逐年衰。', '1545803943', '1545803943', '1', '2');
INSERT INTO `dp_books` VALUES ('5453', '赠卫八处士', '22', '38', '0', '未知', '未知', '贝瓦', '人生不相见，动如参与商。少壮能几时，鬓发各已苍。', '1545803944', '1545803944', '1', '2');
INSERT INTO `dp_books` VALUES ('5454', '咏怀古迹•其一', '22', '38', '0', '未知', '未知', '贝瓦', '支离东北风尘际，飘泊西南天地间。', '1545803944', '1545803944', '1', '2');
INSERT INTO `dp_books` VALUES ('5455', '贫女', '22', '38', '0', '未知', '未知', '贝瓦', '苦恨年年压金线，为他人作嫁衣裳。', '1545803946', '1545803946', '1', '2');
INSERT INTO `dp_books` VALUES ('5456', '牧人和丢失的牛', '24', '38', '0', '未知', '未知', '贝瓦', '有些人在强大的敌人面前吓破了胆，忘掉了自己的誓言...', '1545803946', '1545803946', '1', '2');
INSERT INTO `dp_books` VALUES ('5457', '咏怀古迹•其五', '22', '38', '0', '未知', '未知', '贝瓦', '伯仲之间见伊吕，指挥若定失萧曹。', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5458', '狮子与农夫', '24', '38', '0', '未知', '未知', '贝瓦', '去激怒比自己更强大的人，必然会自讨苦吃。', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5459', '春思', '22', '38', '0', '未知', '未知', '贝瓦', '当君怀归日，是妾断肠时。春风不相识，何事入罗帏？', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5460', '山石', '22', '38', '0', '未知', '未知', '贝瓦', '天明独去无道路，出入高下穷烟霏。', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5461', '听董大弹胡笳...', '22', '38', '0', '未知', '未知', '贝瓦', '胡人落泪沾边草，汉使断肠对归客。', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5462', '奉和中书舍人...', '22', '38', '0', '未知', '未知', '贝瓦', '花迎剑佩星初落，柳拂旌旗露未干。', '1545803949', '1545803949', '1', '2');
INSERT INTO `dp_books` VALUES ('5463', '花园宝宝36', '27', '38', '0', '未知', '未知', '贝瓦', '依古比古踢球。', '1545803950', '1545803950', '1', '2');
INSERT INTO `dp_books` VALUES ('5464', '韦讽录事宅观...', '22', '38', '0', '未知', '未知', '贝瓦', '可怜九马争神骏，顾视清高气深稳。', '1545803952', '1545803952', '1', '2');
INSERT INTO `dp_books` VALUES ('5465', '鹦鹉洲夕望岳阳', '22', '38', '0', '未知', '未知', '贝瓦', '汀洲无浪复无烟，楚客相思益渺然。', '1545803952', '1545803952', '1', '2');
INSERT INTO `dp_books` VALUES ('5466', '花园宝宝35', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们交换裤子。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5467', '鹧鸪天', '22', '38', '0', '未知', '未知', '贝瓦', '金作屋，玉为笼，车如流水马游龙。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5468', '长干行', '22', '38', '0', '未知', '未知', '贝瓦', '郎骑竹马来，绕床弄青梅。同居长干里，两小无嫌猜。...', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5469', '花园宝宝50', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏想要搭叮叮车，可是却追不上叮叮车。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5470', '花园宝宝45', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏裤子吹到了屋顶上去。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5471', '西施咏', '22', '38', '0', '未知', '未知', '贝瓦', '朝为越溪女，暮作吴宫妃。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5472', '花园宝宝48', '27', '38', '0', '未知', '未知', '贝瓦', '小点点爸爸好高兴，因为他好爱他的胡子。', '1545803953', '1545803953', '1', '2');
INSERT INTO `dp_books` VALUES ('5473', '遣悲怀•其三', '22', '38', '0', '未知', '未知', '贝瓦', '惟将终夜常开眼，报答平生未展眉。', '1545803954', '1545803954', '1', '2');
INSERT INTO `dp_books` VALUES ('5474', '咏怀古迹•其二', '22', '38', '0', '未知', '未知', '贝瓦', '怅望千秋一洒泪，萧条异代不同时。', '1545803961', '1545803961', '1', '2');
INSERT INTO `dp_books` VALUES ('5475', '遣悲怀•其一', '22', '38', '0', '未知', '未知', '贝瓦', '顾我无衣搜荩箧，泥他沽酒拔金钗。', '1545803961', '1545803961', '1', '2');
INSERT INTO `dp_books` VALUES ('5476', '咏怀古迹•其四', '22', '38', '0', '未知', '未知', '贝瓦', '武侯祠屋常邻近，一体君臣祭祀同。', '1545803961', '1545803961', '1', '2');
INSERT INTO `dp_books` VALUES ('5477', '花园宝宝37', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏们的牙刷哪儿去了？', '1545803961', '1545803961', '1', '2');
INSERT INTO `dp_books` VALUES ('5478', '锦瑟', '22', '38', '0', '未知', '未知', '贝瓦', '此情可待成追忆，只是当时已惘然。', '1545803961', '1545803961', '1', '2');
INSERT INTO `dp_books` VALUES ('5479', '送李少府贬峡...', '22', '38', '0', '未知', '未知', '贝瓦', '圣代即今多雨露，暂时分手莫踌躇。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5480', '九月登望仙台', '22', '38', '0', '未知', '未知', '贝瓦', '且欲近寻彭泽宰，陶然共醉菊花杯。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5481', '花园宝宝54', '27', '38', '0', '未知', '未知', '贝瓦', '好小的小点点吃晚餐的时间到了。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5482', '花园宝宝42', '27', '38', '0', '未知', '未知', '贝瓦', '大家聚在一起让玛卡巴卡洗脸。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5483', '渭川田家', '22', '38', '0', '未知', '未知', '贝瓦', '斜光照墟落，穷巷牛羊归。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5484', '留别王维', '22', '38', '0', '未知', '未知', '贝瓦', '当路谁相假，知音世所稀。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5485', '秋夕', '22', '38', '0', '未知', '未知', '贝瓦', '天阶夜色凉如水，坐看牵牛织女星。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5486', '喜见外弟卢纶...', '22', '38', '0', '未知', '未知', '贝瓦', '以我独沉久，愧君相见频。', '1545803968', '1545803968', '1', '2');
INSERT INTO `dp_books` VALUES ('5487', '遇难的人与海', '24', '38', '0', '未知', '未知', '贝瓦', '有些人惯于找借口，推却自己的责任。', '1545803970', '1545803970', '1', '2');
INSERT INTO `dp_books` VALUES ('5488', '草', '22', '38', '0', '未知', '未知', '贝瓦', '野火烧不尽，春风吹又生。', '1545803970', '1545803970', '1', '2');
INSERT INTO `dp_books` VALUES ('5489', '丽人行', '22', '38', '0', '未知', '未知', '贝瓦', '杨花雪落覆白苹，青鸟飞去衔红巾。', '1545803970', '1545803970', '1', '2');
INSERT INTO `dp_books` VALUES ('5490', '哀江头', '22', '38', '0', '未知', '未知', '贝瓦', '黄昏胡骑尘满城，欲往城南望城北。', '1545803970', '1545803970', '1', '2');
INSERT INTO `dp_books` VALUES ('5491', '桃源行', '22', '38', '0', '未知', '未知', '贝瓦', '春来遍是桃花水，不辨仙源何处寻。', '1545803971', '1545803971', '1', '2');
INSERT INTO `dp_books` VALUES ('5492', '归嵩山作', '22', '38', '0', '未知', '未知', '贝瓦', '荒城临古渡，落日满秋山。', '1545803971', '1545803971', '1', '2');
INSERT INTO `dp_books` VALUES ('5493', '无题•其一', '22', '38', '0', '未知', '未知', '贝瓦', '斑骓只系垂杨岸，何处西南任好风。', '1545803971', '1545803971', '1', '2');
INSERT INTO `dp_books` VALUES ('5494', '花园宝宝32', '27', '38', '0', '未知', '未知', '贝瓦', '依古比古喧闹的一天。', '1545803972', '1545803972', '1', '2');
INSERT INTO `dp_books` VALUES ('5495', '行宫', '22', '38', '0', '未知', '未知', '贝瓦', '寥落古行宫，宫花寂寞红。', '1545803973', '1545803973', '1', '2');
INSERT INTO `dp_books` VALUES ('5496', '与高适薛据登...', '22', '38', '0', '未知', '未知', '贝瓦', '登塔望物，忽悟佛理，决意辞官，以求济世。', '1545803973', '1545803973', '1', '2');
INSERT INTO `dp_books` VALUES ('5497', '阙题', '22', '38', '0', '未知', '未知', '贝瓦', '闲门向山路，深柳读书堂。', '1545803973', '1545803973', '1', '2');
INSERT INTO `dp_books` VALUES ('5498', '利州南渡', '22', '38', '0', '未知', '未知', '贝瓦', '数丛沙草群鸥散，万顷江田一鹭飞。', '1545803973', '1545803973', '1', '2');
INSERT INTO `dp_books` VALUES ('5499', '琵琶行•并序', '22', '38', '0', '未知', '未知', '贝瓦', '同是天涯沦落人，相逢何必曾相识。', '1545803974', '1545803974', '1', '2');
INSERT INTO `dp_books` VALUES ('5500', '长相思•其一', '22', '38', '0', '未知', '未知', '贝瓦', '天长地远魂飞苦，梦魂不到关山难。', '1545803974', '1545803974', '1', '2');
INSERT INTO `dp_books` VALUES ('5501', '作客的狗', '24', '38', '0', '未知', '未知', '贝瓦', '对那些慷他人之慨的人不可信任。', '1545803974', '1545803974', '1', '2');
INSERT INTO `dp_books` VALUES ('5502', '送陈章甫', '22', '38', '0', '未知', '未知', '贝瓦', '青山朝别暮还见，嘶马出门思旧乡。', '1545803974', '1545803974', '1', '2');
INSERT INTO `dp_books` VALUES ('5503', '御街行', '22', '38', '0', '未知', '未知', '贝瓦', '都来此事，眉间心上，无计相回避。', '1545803974', '1545803974', '1', '2');
INSERT INTO `dp_books` VALUES ('5504', '哀王孙', '22', '38', '0', '未知', '未知', '贝瓦', '金鞭断折九马死，骨肉不待同驰驱。', '1545803975', '1545803975', '1', '2');
INSERT INTO `dp_books` VALUES ('5505', '秋登兰山寄张...', '22', '38', '0', '未知', '未知', '贝瓦', '愁因薄暮起，兴是清秋发。', '1545803975', '1545803975', '1', '2');
INSERT INTO `dp_books` VALUES ('5506', '长安遇冯著', '22', '38', '0', '未知', '未知', '贝瓦', '读来一览无余，品尝则又回味不尽。', '1545803975', '1545803975', '1', '2');
INSERT INTO `dp_books` VALUES ('5507', '观公孙大娘弟...', '22', '38', '0', '未知', '未知', '贝瓦', '昔有佳人公孙氏，一舞剑器动四方。', '1545803975', '1545803975', '1', '2');
INSERT INTO `dp_books` VALUES ('5508', '佳人', '22', '38', '0', '未知', '未知', '贝瓦', '但见新人笑，那闻旧人哭。在山泉水清，出山泉水浊。', '1545803976', '1545803976', '1', '2');
INSERT INTO `dp_books` VALUES ('5509', '花园宝宝47', '27', '38', '0', '未知', '未知', '贝瓦', '汤姆布利柏搭上了叮叮车，唔西迪西他们看到了好玩的...', '1545803977', '1545803977', '1', '2');
INSERT INTO `dp_books` VALUES ('5510', '赠郭给事', '22', '38', '0', '未知', '未知', '贝瓦', '禁里疏钟官舍晚，省中啼鸟吏人稀。', '1545803977', '1545803977', '1', '2');
INSERT INTO `dp_books` VALUES ('5511', '牧人与野山羊', '24', '38', '0', '未知', '未知', '贝瓦', '喜新厌旧的人的友谊是不可信的。', '1545803977', '1545803977', '1', '2');
INSERT INTO `dp_books` VALUES ('5512', '燕歌行•并序', '22', '38', '0', '未知', '未知', '贝瓦', '君不见沙场征战苦，至今犹忆李将军。', '1545803977', '1545803977', '1', '2');
INSERT INTO `dp_books` VALUES ('5513', '丹青引赠曹霸...', '22', '38', '0', '未知', '未知', '贝瓦', '英雄割据虽已矣，文彩风流今尚存。', '1545803977', '1545803977', '1', '2');
INSERT INTO `dp_books` VALUES ('5514', '遣悲怀•其二', '22', '38', '0', '未知', '未知', '贝瓦', '诚知此恨人人有，贫贱夫妻百事哀。', '1545803978', '1545803978', '1', '2');
INSERT INTO `dp_books` VALUES ('5515', '创造', '25', '38', '0', '未知', '未知', '贝瓦', '一个人能创造的东西真多！', '1545803979', '1545803979', '1', '2');
INSERT INTO `dp_books` VALUES ('5516', '寄韩谏议', '22', '38', '0', '未知', '未知', '贝瓦', '美人胡为隔秋水，焉得置之贡玉堂。', '1545803979', '1545803979', '1', '2');
INSERT INTO `dp_books` VALUES ('5517', '月夜', '22', '38', '0', '未知', '未知', '贝瓦', '何时倚虚幌，双照泪痕干！', '1545803980', '1545803980', '1', '2');
INSERT INTO `dp_books` VALUES ('5518', '老将行', '22', '38', '0', '未知', '未知', '贝瓦', '射杀山中白额虎，肯数邺下黄须儿。', '1545803980', '1545803980', '1', '2');
INSERT INTO `dp_books` VALUES ('5519', '筹笔驿', '22', '38', '0', '未知', '未知', '贝瓦', '管乐有才原不忝，关张无命欲何如。', '1545803981', '1545803981', '1', '2');
INSERT INTO `dp_books` VALUES ('5520', '花期', '28', '38', '0', '未知', '未知', '贝瓦', '春天，真是个生命初始的季节。', '1545803981', '1545803981', '1', '2');
INSERT INTO `dp_books` VALUES ('5521', '谷口书斋寄杨...', '22', '38', '0', '未知', '未知', '贝瓦', '竹怜新雨后，山爱夕阳时。', '1545803981', '1545803981', '1', '2');
INSERT INTO `dp_books` VALUES ('5522', '宿王昌龄隐居', '22', '38', '0', '未知', '未知', '贝瓦', '茅亭宿花影，药院滋苔纹。', '1545803981', '1545803981', '1', '2');
INSERT INTO `dp_books` VALUES ('5523', '贼退示官吏•...', '22', '38', '0', '未知', '未知', '贝瓦', '不染污泥、芳洁自好。', '1545803983', '1545803983', '1', '2');
INSERT INTO `dp_books` VALUES ('5524', '石鼓歌', '22', '38', '0', '未知', '未知', '贝瓦', '大开明堂受朝贺，诸侯剑佩鸣相磨。', '1545803984', '1545803984', '1', '2');
INSERT INTO `dp_books` VALUES ('5525', '古柏行', '22', '38', '0', '未知', '未知', '贝瓦', '志士幽人草怨嗟，古来材大难为用。', '1545803990', '1545803990', '1', '2');
INSERT INTO `dp_books` VALUES ('5526', '渔翁 ', '22', '38', '0', '未知', '未知', '贝瓦', '回看天际下中流，岩上无心云相逐。', '1545803999', '1545803999', '1', '2');
INSERT INTO `dp_books` VALUES ('5527', '蜂', '22', '38', '0', '未知', '未知', '贝瓦', '蜂与蝶在诗人词客笔下，成为风韵的象征。', '1545803999', '1545803999', '1', '2');

-- ----------------------------
-- Table structure for `dp_categories`
-- ----------------------------
DROP TABLE IF EXISTS `dp_categories`;
CREATE TABLE `dp_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类的名称',
  `img` int(11) NOT NULL COMMENT '图片的id 对用 attenment表id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不可用',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父分类的id',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of dp_categories
-- ----------------------------
INSERT INTO `dp_categories` VALUES ('2', '故事', '38', '1', '0', '1542269975', '1544685738');
INSERT INTO `dp_categories` VALUES ('3', '民间故事', '2', '1', '2', '1542270554', '1542270554');
INSERT INTO `dp_categories` VALUES ('4', '音乐', '39', '1', '0', '1542461849', '1544685836');
INSERT INTO `dp_categories` VALUES ('6', '早教音乐', '25', '1', '4', '1542461897', '1544014846');
INSERT INTO `dp_categories` VALUES ('7', '潜脑音乐', '26', '1', '4', '1542461935', '1544014890');
INSERT INTO `dp_categories` VALUES ('8', '英语', '40', '1', '0', '1542461966', '1544685849');
INSERT INTO `dp_categories` VALUES ('9', '幼儿英语', '27', '1', '8', '1542461990', '1544014937');
INSERT INTO `dp_categories` VALUES ('10', '国学', '41', '1', '0', '1542462021', '1544685861');
INSERT INTO `dp_categories` VALUES ('11', '启蒙国学', '28', '1', '10', '1542462038', '1544014969');
INSERT INTO `dp_categories` VALUES ('12', '三字经', '29', '1', '10', '1542462057', '1544014995');
INSERT INTO `dp_categories` VALUES ('13', '唐诗三百首', '30', '1', '10', '1542462079', '1544015021');
INSERT INTO `dp_categories` VALUES ('14', '经典名著', '31', '1', '10', '1542462115', '1544015057');
INSERT INTO `dp_categories` VALUES ('15', '胎教音乐', '24', '1', '4', '1544013943', '1544013943');
INSERT INTO `dp_categories` VALUES ('16', '棒棒糖英语', '42', '1', '8', '1544712822', '1544712822');
INSERT INTO `dp_categories` VALUES ('17', '洪恩三只小猪进阶英语', '43', '1', '8', '1544712860', '1544712860');
INSERT INTO `dp_categories` VALUES ('18', '剑桥幼儿英语', '44', '1', '8', '1544712890', '1544712890');
INSERT INTO `dp_categories` VALUES ('19', '睡前故事', '0', '1', '0', '1545205658', '1545205658');
INSERT INTO `dp_categories` VALUES ('31', '名人故事', '0', '1', '0', '1545206264', '1545206264');
INSERT INTO `dp_categories` VALUES ('21', '格林童话', '0', '1', '0', '1545205659', '1545205659');
INSERT INTO `dp_categories` VALUES ('22', '国学故事', '0', '1', '0', '1545205659', '1545205659');
INSERT INTO `dp_categories` VALUES ('23', '神话故事', '0', '1', '0', '1545205659', '1545205659');
INSERT INTO `dp_categories` VALUES ('24', '伊索寓言', '0', '1', '0', '1545205659', '1545205659');
INSERT INTO `dp_categories` VALUES ('25', '安徒生童话', '0', '1', '0', '1545205659', '1545205659');
INSERT INTO `dp_categories` VALUES ('26', '成语故事', '0', '1', '0', '1545205660', '1545205660');
INSERT INTO `dp_categories` VALUES ('27', '动画片大全', '0', '1', '0', '1545205661', '1545205661');
INSERT INTO `dp_categories` VALUES ('28', '贝瓦为什么', '0', '1', '0', '1545205723', '1545205723');
INSERT INTO `dp_categories` VALUES ('29', '儿歌大全', '0', '1', '0', '1545205727', '1545205727');
INSERT INTO `dp_categories` VALUES ('30', '童话故事', '0', '1', '0', '1545205768', '1545205768');

-- ----------------------------
-- Table structure for `dp_users`
-- ----------------------------
DROP TABLE IF EXISTS `dp_users`;
CREATE TABLE `dp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email_code` varchar(255) NOT NULL,
  `email_check` smallint(6) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `head_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_users
-- ----------------------------
INSERT INTO `dp_users` VALUES ('1', 'pbkdf2_sha256$120000$XhuQ4pcDvFNY$8C2ZRyrQPuS5A5KSOmy9ydLJesBFpzGrWf+ykYksNEg=', '2019-01-09 09:15:20.148154', '0', 'weifei528', '', '', 'weifei528@163.com', '0', '1', '2019-01-09 05:45:04.068649', '', '0', '', '');

-- ----------------------------
-- Table structure for `dp_users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `dp_users_groups`;
CREATE TABLE `dp_users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dp_users_groups_user_id_group_id_a79ceeea_uniq` (`user_id`,`group_id`),
  KEY `dp_users_groups_group_id_f8e94754_fk_auth_group_id` (`group_id`),
  CONSTRAINT `dp_users_groups_group_id_f8e94754_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `dp_users_groups_user_id_9753acb1_fk_dp_users_id` FOREIGN KEY (`user_id`) REFERENCES `dp_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_users_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `dp_users_user_permissions`;
CREATE TABLE `dp_users_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dp_users_user_permissions_user_id_permission_id_09c444a4_uniq` (`user_id`,`permission_id`),
  KEY `dp_users_user_permis_permission_id_dafb2de6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `dp_users_user_permis_permission_id_dafb2de6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `dp_users_user_permissions_user_id_816d7d86_fk_dp_users_id` FOREIGN KEY (`user_id`) REFERENCES `dp_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_users_user_permissions
-- ----------------------------
