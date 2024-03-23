/*
 Navicat Premium Data Transfer

 Source Server         : MScetar
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : lyadmin_db

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 23/03/2024 09:55:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add captcha store', 6, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (22, 'Can change captcha store', 6, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (23, 'Can delete captcha store', 6, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (24, 'Can view captcha store', 6, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户表', 7, 'add_users');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户表', 7, 'change_users');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户表', 7, 'delete_users');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户表', 7, 'view_users');
INSERT INTO `auth_permission` VALUES (29, 'Can add 部门表', 8, 'add_dept');
INSERT INTO `auth_permission` VALUES (30, 'Can change 部门表', 8, 'change_dept');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 部门表', 8, 'delete_dept');
INSERT INTO `auth_permission` VALUES (32, 'Can view 部门表', 8, 'view_dept');
INSERT INTO `auth_permission` VALUES (33, 'Can add 字典表', 9, 'add_dictionary');
INSERT INTO `auth_permission` VALUES (34, 'Can change 字典表', 9, 'change_dictionary');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 字典表', 9, 'delete_dictionary');
INSERT INTO `auth_permission` VALUES (36, 'Can view 字典表', 9, 'view_dictionary');
INSERT INTO `auth_permission` VALUES (37, 'Can add 菜单表', 10, 'add_menu');
INSERT INTO `auth_permission` VALUES (38, 'Can change 菜单表', 10, 'change_menu');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 菜单表', 10, 'delete_menu');
INSERT INTO `auth_permission` VALUES (40, 'Can view 菜单表', 10, 'view_menu');
INSERT INTO `auth_permission` VALUES (41, 'Can add 菜单权限表', 11, 'add_menubutton');
INSERT INTO `auth_permission` VALUES (42, 'Can change 菜单权限表', 11, 'change_menubutton');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 菜单权限表', 11, 'delete_menubutton');
INSERT INTO `auth_permission` VALUES (44, 'Can view 菜单权限表', 11, 'view_menubutton');
INSERT INTO `auth_permission` VALUES (45, 'Can add 字典详细表', 12, 'add_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (46, 'Can change 字典详细表', 12, 'change_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 字典详细表', 12, 'delete_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (48, 'Can view 字典详细表', 12, 'view_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (49, 'Can add 角色表', 13, 'add_role');
INSERT INTO `auth_permission` VALUES (50, 'Can change 角色表', 13, 'change_role');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 角色表', 13, 'delete_role');
INSERT INTO `auth_permission` VALUES (52, 'Can view 角色表', 13, 'view_role');
INSERT INTO `auth_permission` VALUES (53, 'Can add 岗位表', 14, 'add_post');
INSERT INTO `auth_permission` VALUES (54, 'Can change 岗位表', 14, 'change_post');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 岗位表', 14, 'delete_post');
INSERT INTO `auth_permission` VALUES (56, 'Can view 岗位表', 14, 'view_post');
INSERT INTO `auth_permission` VALUES (57, 'Can add 操作日志', 15, 'add_operationlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change 操作日志', 15, 'change_operationlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 操作日志', 15, 'delete_operationlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view 操作日志', 15, 'view_operationlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add 登录日志', 16, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (62, 'Can change 登录日志', 16, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 登录日志', 16, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (64, 'Can view 登录日志', 16, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (65, 'Can add 权限标识表', 17, 'add_button');
INSERT INTO `auth_permission` VALUES (66, 'Can change 权限标识表', 17, 'change_button');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 权限标识表', 17, 'delete_button');
INSERT INTO `auth_permission` VALUES (68, 'Can view 权限标识表', 17, 'view_button');
INSERT INTO `auth_permission` VALUES (69, 'Can add 消息中心', 18, 'add_mymessage');
INSERT INTO `auth_permission` VALUES (70, 'Can change 消息中心', 18, 'change_mymessage');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 消息中心', 18, 'delete_mymessage');
INSERT INTO `auth_permission` VALUES (72, 'Can view 消息中心', 18, 'view_mymessage');
INSERT INTO `auth_permission` VALUES (73, 'Can add 消息模板', 19, 'add_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (74, 'Can change 消息模板', 19, 'change_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 消息模板', 19, 'delete_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (76, 'Can view 消息模板', 19, 'view_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (77, 'Can add 用户消息', 20, 'add_mymessageuser');
INSERT INTO `auth_permission` VALUES (78, 'Can change 用户消息', 20, 'change_mymessageuser');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 用户消息', 20, 'delete_mymessageuser');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户消息', 20, 'view_mymessageuser');
INSERT INTO `auth_permission` VALUES (81, 'Can add 省市区', 21, 'add_area');
INSERT INTO `auth_permission` VALUES (82, 'Can change 省市区', 21, 'change_area');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 省市区', 21, 'delete_area');
INSERT INTO `auth_permission` VALUES (84, 'Can view 省市区', 21, 'view_area');
INSERT INTO `auth_permission` VALUES (85, 'Can add 用户地址', 22, 'add_address');
INSERT INTO `auth_permission` VALUES (86, 'Can change 用户地址', 22, 'change_address');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 用户地址', 22, 'delete_address');
INSERT INTO `auth_permission` VALUES (88, 'Can view 用户地址', 22, 'view_address');
INSERT INTO `auth_permission` VALUES (89, 'Can add 微信登录用户数据', 23, 'add_oauthwxuser');
INSERT INTO `auth_permission` VALUES (90, 'Can change 微信登录用户数据', 23, 'change_oauthwxuser');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 微信登录用户数据', 23, 'delete_oauthwxuser');
INSERT INTO `auth_permission` VALUES (92, 'Can view 微信登录用户数据', 23, 'view_oauthwxuser');
INSERT INTO `auth_permission` VALUES (93, 'Can add 参数设置', 24, 'add_othermanage');
INSERT INTO `auth_permission` VALUES (94, 'Can change 参数设置', 24, 'change_othermanage');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 参数设置', 24, 'delete_othermanage');
INSERT INTO `auth_permission` VALUES (96, 'Can view 参数设置', 24, 'view_othermanage');
INSERT INTO `auth_permission` VALUES (97, 'Can add 轮播图设置', 25, 'add_lunbotumanage');
INSERT INTO `auth_permission` VALUES (98, 'Can change 轮播图设置', 25, 'change_lunbotumanage');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 轮播图设置', 25, 'delete_lunbotumanage');
INSERT INTO `auth_permission` VALUES (100, 'Can view 轮播图设置', 25, 'view_lunbotumanage');
INSERT INTO `auth_permission` VALUES (101, 'Can add 用户反馈', 26, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (102, 'Can change 用户反馈', 26, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 用户反馈', 26, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (104, 'Can view 用户反馈', 26, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (105, 'Can add 系统配置表', 27, 'add_systemconfig');
INSERT INTO `auth_permission` VALUES (106, 'Can change 系统配置表', 27, 'change_systemconfig');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 系统配置表', 27, 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES (108, 'Can view 系统配置表', 27, 'view_systemconfig');
INSERT INTO `auth_permission` VALUES (109, 'Can add 服务监控', 28, 'add_monitormanage');
INSERT INTO `auth_permission` VALUES (110, 'Can change 服务监控', 28, 'change_monitormanage');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 服务监控', 28, 'delete_monitormanage');
INSERT INTO `auth_permission` VALUES (112, 'Can view 服务监控', 28, 'view_monitormanage');
INSERT INTO `auth_permission` VALUES (113, 'Can add 交通违章信息', 29, 'add_trafficviolation');
INSERT INTO `auth_permission` VALUES (114, 'Can change 交通违章信息', 29, 'change_trafficviolation');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 交通违章信息', 29, 'delete_trafficviolation');
INSERT INTO `auth_permission` VALUES (116, 'Can view 交通违章信息', 29, 'view_trafficviolation');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (2, '5*4=', '20', '6edc66e1cceea16522d31f2a5b3923b04467730d', '2024-03-16 15:37:58.531143');
INSERT INTO `captcha_captchastore` VALUES (5, '7*6=', '42', '052bb1dc35ee92381d8c1bddad34a70b14f19eed', '2024-03-18 16:48:16.199768');
INSERT INTO `captcha_captchastore` VALUES (8, '4*9=', '36', '356d92602da7a5f00801fdc2668ded874a5c72bb', '2024-03-21 13:01:35.542022');
INSERT INTO `captcha_captchastore` VALUES (10, '3+8=', '11', 'c2a6475eb9465639d2c9d1276f4ff5c00f96fbec', '2024-03-21 13:03:05.477221');
INSERT INTO `captcha_captchastore` VALUES (14, '8-7=', '1', '2a811a099addab5545d9a28098ab83ab1c27c865', '2024-03-22 21:56:02.223844');
INSERT INTO `captcha_captchastore` VALUES (17, '7+10=', '17', '925ec4efffe6e4776ba0fa9786568aa8f0b87dd0', '2024-03-23 00:55:52.915168');
INSERT INTO `captcha_captchastore` VALUES (20, '7-2=', '5', '69d9a9f17a47ab736ae776e20754c48d11d46d96', '2024-03-23 01:30:59.223374');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (22, 'address', 'address');
INSERT INTO `django_content_type` VALUES (21, 'address', 'area');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (6, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (18, 'lymessages', 'mymessage');
INSERT INTO `django_content_type` VALUES (19, 'lymessages', 'mymessagetemplate');
INSERT INTO `django_content_type` VALUES (20, 'lymessages', 'mymessageuser');
INSERT INTO `django_content_type` VALUES (28, 'lymonitor', 'monitormanage');
INSERT INTO `django_content_type` VALUES (17, 'mysystem', 'button');
INSERT INTO `django_content_type` VALUES (8, 'mysystem', 'dept');
INSERT INTO `django_content_type` VALUES (9, 'mysystem', 'dictionary');
INSERT INTO `django_content_type` VALUES (16, 'mysystem', 'loginlog');
INSERT INTO `django_content_type` VALUES (10, 'mysystem', 'menu');
INSERT INTO `django_content_type` VALUES (11, 'mysystem', 'menubutton');
INSERT INTO `django_content_type` VALUES (15, 'mysystem', 'operationlog');
INSERT INTO `django_content_type` VALUES (14, 'mysystem', 'post');
INSERT INTO `django_content_type` VALUES (13, 'mysystem', 'role');
INSERT INTO `django_content_type` VALUES (12, 'mysystem', 'sysdictionarylist');
INSERT INTO `django_content_type` VALUES (7, 'mysystem', 'users');
INSERT INTO `django_content_type` VALUES (23, 'oauth', 'oauthwxuser');
INSERT INTO `django_content_type` VALUES (25, 'platformsettings', 'lunbotumanage');
INSERT INTO `django_content_type` VALUES (24, 'platformsettings', 'othermanage');
INSERT INTO `django_content_type` VALUES (27, 'platformsettings', 'systemconfig');
INSERT INTO `django_content_type` VALUES (26, 'platformsettings', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (29, 'violation', 'trafficviolation');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-03-15 12:10:29.569333');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2024-03-15 12:10:29.660090');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2024-03-15 12:10:29.940941');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2024-03-15 12:10:29.998786');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2024-03-15 12:10:30.005766');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2024-03-15 12:10:30.012749');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2024-03-15 12:10:30.019729');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2024-03-15 12:10:30.022721');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-15 12:10:30.033694');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2024-03-15 12:10:30.040673');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-15 12:10:30.047655');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2024-03-15 12:10:30.063612');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2024-03-15 12:10:30.071591');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-15 12:10:30.078572');
INSERT INTO `django_migrations` VALUES (15, 'mysystem', '0001_initial', '2024-03-15 12:10:31.466038');
INSERT INTO `django_migrations` VALUES (16, 'address', '0001_initial', '2024-03-15 12:10:31.613644');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0001_initial', '2024-03-15 12:10:31.798151');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0002_logentry_remove_auto_add', '2024-03-15 12:10:31.818099');
INSERT INTO `django_migrations` VALUES (19, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-15 12:10:31.840039');
INSERT INTO `django_migrations` VALUES (20, 'captcha', '0001_initial', '2024-03-15 12:10:31.881520');
INSERT INTO `django_migrations` VALUES (21, 'captcha', '0002_alter_captchastore_id', '2024-03-15 12:10:31.886508');
INSERT INTO `django_migrations` VALUES (22, 'lymessages', '0001_initial', '2024-03-15 12:10:31.983247');
INSERT INTO `django_migrations` VALUES (23, 'lymessages', '0002_initial', '2024-03-15 12:10:32.268485');
INSERT INTO `django_migrations` VALUES (24, 'lymonitor', '0001_initial', '2024-03-15 12:10:32.320347');
INSERT INTO `django_migrations` VALUES (25, 'mysystem', '0002_alter_users_identity_alter_users_mobile', '2024-03-15 12:10:32.439029');
INSERT INTO `django_migrations` VALUES (26, 'mysystem', '0003_remove_users_description_remove_users_modifier_and_more', '2024-03-15 12:10:34.769873');
INSERT INTO `django_migrations` VALUES (27, 'oauth', '0001_initial', '2024-03-15 12:10:34.880165');
INSERT INTO `django_migrations` VALUES (28, 'oauth', '0002_alter_oauthwxuser_mobilephonenumber', '2024-03-15 12:10:34.915597');
INSERT INTO `django_migrations` VALUES (29, 'platformsettings', '0001_initial', '2024-03-15 12:10:35.098719');
INSERT INTO `django_migrations` VALUES (30, 'platformsettings', '0002_lunbotumanage_link_type_alter_lunbotumanage_link_and_more', '2024-03-15 12:10:35.419862');
INSERT INTO `django_migrations` VALUES (31, 'platformsettings', '0003_alter_othermanage_type', '2024-03-15 12:10:35.445912');
INSERT INTO `django_migrations` VALUES (32, 'platformsettings', '0004_alter_othermanage_options', '2024-03-15 12:10:35.470867');
INSERT INTO `django_migrations` VALUES (33, 'platformsettings', '0005_systemconfig', '2024-03-15 12:10:35.579555');
INSERT INTO `django_migrations` VALUES (34, 'platformsettings', '0006_alter_systemconfig_form_item_type', '2024-03-15 12:10:35.610473');
INSERT INTO `django_migrations` VALUES (35, 'platformsettings', '0007_alter_systemconfig_data_options_and_more', '2024-03-15 12:10:35.957218');
INSERT INTO `django_migrations` VALUES (36, 'platformsettings', '0008_alter_systemconfig_form_item_type', '2024-03-15 12:10:36.050967');
INSERT INTO `django_migrations` VALUES (37, 'sessions', '0001_initial', '2024-03-15 12:10:36.083880');
INSERT INTO `django_migrations` VALUES (38, 'violation', '0001_initial', '2024-03-22 22:52:20.336601');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_button
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_button`;
CREATE TABLE `lyadmin_button`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_button_creator_id_8ed6f8c5`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_button
-- ----------------------------
INSERT INTO `lyadmin_button` VALUES ('09134d7643504804a6c7cc3d16e06684', NULL, NULL, NULL, '2024-03-15 12:10:49.273851', '2024-03-15 12:10:49.273851', '日志', 'Logs', NULL);
INSERT INTO `lyadmin_button` VALUES ('2d763a6d6dcf409d87056efd06aace0a', NULL, NULL, NULL, '2024-03-15 12:10:49.254903', '2024-03-15 12:10:49.254903', '修改密码', 'Changepassword', NULL);
INSERT INTO `lyadmin_button` VALUES ('43d89c33967545a387a3ac27c02460b6', NULL, NULL, NULL, '2024-03-15 12:10:49.269863', '2024-03-15 12:10:49.269863', '统计', 'Statistics', NULL);
INSERT INTO `lyadmin_button` VALUES ('4547b93a-36b9-410d-987c-3c52a9b51156', NULL, NULL, NULL, '2024-03-15 12:10:49.229969', '2024-03-15 12:10:49.229969', '编辑', 'Update', NULL);
INSERT INTO `lyadmin_button` VALUES ('4a410769-6b0a-4ed3-90f0-b5d89a6f802c', NULL, NULL, NULL, '2024-03-15 12:10:49.233959', '2024-03-15 12:10:49.233959', '删除', 'Delete', NULL);
INSERT INTO `lyadmin_button` VALUES ('5bf695439e9d4c4d9601bf4fb558b3a2', NULL, NULL, NULL, '2024-03-15 12:10:49.277841', '2024-03-15 12:10:49.277841', '任务列表', 'Tasklist', NULL);
INSERT INTO `lyadmin_button` VALUES ('644e9c34-e3d6-4518-b795-a603a6e9a137', NULL, NULL, NULL, '2024-03-15 12:10:49.238945', '2024-03-15 12:10:49.238945', '单例', 'Retrieve', NULL);
INSERT INTO `lyadmin_button` VALUES ('6e0a41e5308c44a8b0d2785e05b2c07a', NULL, NULL, NULL, '2024-03-15 12:10:49.259889', '2024-03-15 12:10:49.259889', '禁用', 'Disable', NULL);
INSERT INTO `lyadmin_button` VALUES ('80cb145b-5035-4517-a28a-7d59426f73f8', NULL, NULL, NULL, '2024-03-15 12:10:49.242935', '2024-03-15 12:10:49.242935', '新增', 'Create', NULL);
INSERT INTO `lyadmin_button` VALUES ('83a9b774-4669-4d2f-b61d-8ee4944c2316', NULL, NULL, NULL, '2024-03-15 12:10:49.250913', '2024-03-15 12:10:49.250913', '保存', 'Save', NULL);
INSERT INTO `lyadmin_button` VALUES ('c66a0ab23a6044189ae0beb530ac68cf', NULL, NULL, NULL, '2024-03-15 12:10:49.266870', '2024-03-15 12:10:49.266870', '发货', 'Deliver', NULL);
INSERT INTO `lyadmin_button` VALUES ('ccc3f35f-c80c-4929-b8cc-67531698f397', NULL, NULL, NULL, '2024-03-15 12:10:49.246924', '2024-03-15 12:10:49.246924', '查询', 'Search', NULL);
INSERT INTO `lyadmin_button` VALUES ('f3f365e9bfab44f587cbd91e3691ef0f', NULL, NULL, NULL, '2024-03-15 12:10:49.263879', '2024-03-15 12:10:49.263879', '终端', 'Terminal', NULL);

-- ----------------------------
-- Table structure for lyadmin_dept
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dept`;
CREATE TABLE `lyadmin_dept`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `owner` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_dept_creator_id_bb4dafb6`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dept_parent_id_c856ab90`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dept
-- ----------------------------
INSERT INTO `lyadmin_dept` VALUES ('cae96ade-7483-4827-bb0d-d2bd63ec1cc4', NULL, NULL, NULL, '2024-03-15 12:10:49.215009', '2024-03-15 12:10:49.215009', '财务部门', 1, NULL, NULL, NULL, 1, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_dept` VALUES ('d2c03bd9-dad0-4262-88ca-c3681d224fc3', NULL, NULL, NULL, '2024-03-15 12:10:49.220993', '2024-03-15 12:10:49.220993', 'lyadmin团队', 1, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `lyadmin_dept` VALUES ('fd8230ca-67bd-4347-8a9b-57eb19be5d9e', NULL, NULL, NULL, '2024-03-15 12:10:49.224983', '2024-03-15 12:10:49.224983', '研发部门', 2, NULL, NULL, NULL, 1, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');

-- ----------------------------
-- Table structure for lyadmin_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dictionary`;
CREATE TABLE `lyadmin_dictionary`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `lyadmin_dictionary_creator_id_f75d1c0b`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dictionary_parent_id_9d47f813`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_dictionary_detail
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dictionary_detail`;
CREATE TABLE `lyadmin_dictionary_detail`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `dict_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_dictionary_detail_creator_id_6422260d`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dictionary_detail_dict_id_418a11f9`(`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dictionary_detail
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_login_log`;
CREATE TABLE `lyadmin_login_log`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `agent` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `browser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `os` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_type` int NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_login_log_creator_id_2aae8b60`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_login_log
-- ----------------------------
INSERT INTO `lyadmin_login_log` VALUES ('1a4ef8fbf6ca4f2e94c59055ab50639d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-15 18:50:08.810675', '2024-03-15 18:50:08.810675', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('41b43151d93d42ea9ae690914bcc0985', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:55:03.195723', '2024-03-23 00:55:03.195723', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('55170ba10cdb4e5a938a38d6b41f8a0f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:01:14.595377', '2024-03-21 13:01:14.595377', 'admin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 2);
INSERT INTO `lyadmin_login_log` VALUES ('5a5f22f6617d4b64a894612adc4e40d4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:30:05.351657', '2024-03-23 01:30:05.351657', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('a100d50b32fc4586a006bf7dc8cb1d06', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:02:37.217170', '2024-03-21 13:02:37.217170', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('a3cc7e20913c46f18917f29b67615b09', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-18 17:13:50.195383', '2024-03-18 17:13:50.195383', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('af75301c57b4439f8e3a59e4b0af659f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:56:53.797264', '2024-03-22 21:56:53.797264', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('e7b6bd45caf2436e98e60192add9a03c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-16 15:37:23.274873', '2024-03-16 15:37:23.274873', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);
INSERT INTO `lyadmin_login_log` VALUES ('f7ccef5f7f27468fad89f0768933a505', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:55:09.569135', '2024-03-22 21:55:09.569135', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 122.0.0', 'Chrome 122.0.0', 'Windows 10', 1, 1);

-- ----------------------------
-- Table structure for lyadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_menu`;
CREATE TABLE `lyadmin_menu`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `is_link` smallint NOT NULL,
  `web_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `isautopm` smallint NOT NULL,
  `cache` smallint NOT NULL,
  `visible` smallint NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_menu_creator_id_39b95522`(`creator_id`) USING BTREE,
  INDEX `lyadmin_menu_parent_id_4a6f3129`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_menu
-- ----------------------------
INSERT INTO `lyadmin_menu` VALUES ('012265f1e0a040bdaa0a66b184ba9381', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:20:39.727351', '2024-03-22 22:11:01.839150', 'WarnTriangleFilled', '交通违规管理', 15, 0, 'violationManageCRUD', NULL, NULL, 1, 1, 0, 1, 1, NULL);
INSERT INTO `lyadmin_menu` VALUES ('02c24003527546359b5a77ae07adc7d5', NULL, '1', NULL, '2024-03-21 09:43:30.511839', '2024-03-15 12:10:49.358625', '', '地区管理', 7, 0, 'areaManage', NULL, NULL, 0, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('151035da-77a3-4a62-b474-fce6824571fb', NULL, '1', NULL, '2024-03-21 09:41:29.037818', '2024-03-15 12:10:49.353638', '', '按钮管理', 6, 0, 'buttonManage', 'system/button', 'buttonManage', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('15c9ebc5-d12f-470a-a560-938a7dc57570', NULL, NULL, NULL, '2024-03-15 12:10:49.344663', '2024-03-15 12:10:49.344663', '', '角色管理', 3, 0, 'roleManage', 'system/role', 'role', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('244b28685cd14a39a383189981510d4a', NULL, NULL, NULL, '2024-03-15 12:10:49.293798', '2024-03-15 12:10:49.293798', 'user-filled', '用户管理', 5, 0, 'userManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('25735adb-d051-4b7b-bbb7-1154526f3e4c', NULL, NULL, NULL, '2024-03-15 12:10:49.367602', '2024-03-15 12:10:49.367602', 'user', '个人中心', 13, 0, 'personalCenter', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('2e3438c8-3ddc-43ff-b8d8-cca328e4856e', NULL, NULL, NULL, '2024-03-15 12:10:49.288812', '2024-03-15 12:10:49.288812', 'avatar', '管理员管理', 3, 0, 'adminManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('3171db16eda048ae92b16536fc1241b6', NULL, '1', NULL, '2024-03-22 12:50:57.030317', '2024-03-15 12:10:49.313746', '', '平台公告', 5, 0, 'messagNotice', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('3c13161f70f1469a913d539e7616c577', NULL, '1', NULL, '2024-03-21 09:42:36.048618', '2024-03-15 12:10:49.384556', '', '意见反馈', 8, 0, 'userFeekback', NULL, NULL, 0, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('4236eb70-1558-43a0-9cf2-037230c547f9', NULL, NULL, NULL, '2024-03-15 12:10:49.326711', '2024-03-15 12:10:49.326711', '', '部门管理', 1, 0, 'departmentManage', 'system/dept', 'dept', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('49160b589f004e44b3920c82583c2581', NULL, NULL, NULL, '2024-03-15 12:10:49.321723', '2024-03-15 12:10:49.321723', '', '系统配置', 15, 0, 'systemConfig', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('4ba07859-8b73-4524-a1a6-bbff36d98337', NULL, NULL, NULL, '2024-03-15 12:10:49.331697', '2024-03-15 12:10:49.331697', '', '操作日志', 1, 0, 'journalManage', 'system/log/operationLog', 'operationLog', 1, 0, 0, 1, NULL, 'c236fb6b-ddaa-4deb-b79b-16e42d9f347f');
INSERT INTO `lyadmin_menu` VALUES ('54f769b0-3dff-416c-8102-e55ec44827cc', NULL, NULL, NULL, '2024-03-15 12:10:49.362615', '2024-03-15 12:10:49.362615', 'tools', '系统管理', 990, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('56c3f341-4f46-4b04-9cfc-c8a14701707e', NULL, NULL, NULL, '2024-03-15 12:10:49.335686', '2024-03-15 12:10:49.335686', '', '菜单管理', 2, 0, 'menuManage', 'system/menu', 'menu', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('77edf447326b4e0dbc6f9719c1de8a12', NULL, '1', NULL, '2024-03-21 09:42:58.818784', '2024-03-15 12:10:49.376577', 'TrendCharts', '系统监控', 888, 0, '', NULL, NULL, 0, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('80a340eae92b430abe17635468c2df1d', NULL, NULL, NULL, '2024-03-15 12:10:49.317735', '2024-03-15 12:10:49.317735', '', '参数设置', 12, 0, 'platformSettingsother', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('9065cb5445ac42ef93eb9e75e6287792', NULL, NULL, NULL, '2024-03-15 12:10:49.282828', '2024-03-15 12:10:49.282828', 'DataLine', 'DashBoard', 1, 0, 'analysis', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('a607e820-36e5-45c0-aabf-85a8e4e2c7ac', NULL, NULL, NULL, '2024-03-15 12:10:49.349648', '2024-03-15 12:10:49.349648', '', '权限管理', 4, 0, 'authorityManage', 'system/rolePermission', 'rolePermission', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('ae5629946df4497cbec10419e8375dd9', NULL, '1', NULL, '2024-03-21 09:42:24.724355', '2024-03-15 12:10:49.308758', '', '轮播图设置', 1, 0, 'carouselSettingsimg', NULL, NULL, 0, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('bcbeeee5c91a4e2ea2c2a31237e33616', NULL, NULL, NULL, '2024-03-15 12:10:49.380567', '2024-03-15 12:10:49.380567', '', '服务监控', 10, 0, 'server', NULL, NULL, 1, 0, 0, 1, NULL, '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_menu` VALUES ('c236fb6b-ddaa-4deb-b79b-16e42d9f347f', NULL, NULL, NULL, '2024-03-15 12:10:49.371591', '2024-03-15 12:10:49.371591', 'info-filled', '日志管理', 999, 0, 'journalManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('d4e2fe169a8b40f3846421ac04e4fccb', NULL, NULL, NULL, '2024-03-15 12:10:49.303772', '2024-03-15 12:10:49.303772', 'platform', '平台设置', 9, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('d73f73a399af48cea6a8490ac508d7a0', NULL, '1', NULL, '2024-03-23 01:26:18.842496', '2024-03-15 12:10:49.298785', 'user-filled', '用户管理CRUD', 7, 0, 'userManageCrud', NULL, NULL, 0, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('e0f53902-e901-490c-83f3-331e60b97fcf', NULL, '1', NULL, '2024-03-21 09:43:58.698565', '2024-03-15 12:10:49.340675', '', '按钮配置', 2, 0, 'buttonConfig/:id/:name', 'system/ menuButton', NULL, 1, 0, 0, 0, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');

-- ----------------------------
-- Table structure for lyadmin_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_menu_button`;
CREATE TABLE `lyadmin_menu_button`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `api` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `method` smallint NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `menu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_menu_button_creator_id_e2b5a076`(`creator_id`) USING BTREE,
  INDEX `lyadmin_menu_button_menu_id_74205633`(`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_menu_button
-- ----------------------------
INSERT INTO `lyadmin_menu_button` VALUES ('0088e172566f4ee388092ec2be3584ee', NULL, NULL, NULL, '2024-03-15 12:10:49.631912', '2024-03-15 12:10:49.631912', '删除', 'Delete', '/api/platformsettings/lunboimg/{id}/', 3, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('0209de89-6b9f-4d8a-84d3-ccfc3cc8b4da', NULL, NULL, NULL, '2024-03-15 12:10:49.398519', '2024-03-15 12:10:49.398519', '编辑', 'Update', '/api/system/button/{id}/', 2, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('04896a47-0f3a-4e2f-a111-bfe15f9e31c5', NULL, NULL, NULL, '2024-03-15 12:10:49.402508', '2024-03-15 12:10:49.402508', '编辑', 'Update', '/api/system/menu/{id}/', 2, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('05932c39ad444ac5aaf880d281620611', NULL, NULL, NULL, '2024-03-15 12:10:49.516221', '2024-03-15 12:10:49.516221', '查询', 'Search', '/api/platformsettings/userfeeckback/', 0, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('0d931efc-2f80-418f-b4a0-5251f0a88f69', NULL, NULL, NULL, '2024-03-15 12:10:49.530184', '2024-03-15 12:10:49.530184', '新增', 'Create', '/api/system/operation_log/', 1, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('103d4310b98e4ff1ba71336af8d4c6c2', NULL, NULL, NULL, '2024-03-15 12:10:49.569080', '2024-03-15 12:10:49.569080', '新增', 'Create', '/api/platformsettings/sysconfig/', 1, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('10610c56-cec2-4774-9468-e1c763e59e70', NULL, NULL, NULL, '2024-03-15 12:10:49.533176', '2024-03-15 12:10:49.533176', '新增', 'Create', '/api/system/dept/', 1, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('11d334fcadf1490e85e6a045126dea78', NULL, NULL, NULL, '2024-03-15 12:10:49.624930', '2024-03-15 12:10:49.624930', '单例', 'Retrieve', '/api/platformsettings/userfeeckback/{id}/', 0, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('140166e2-471e-455e-9dcd-05cebbbab95d', NULL, NULL, NULL, '2024-03-15 12:10:49.463363', '2024-03-15 12:10:49.463363', '查询', 'Search', '/api/system/role/', 0, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('14514da3c11441c2b63f2331e3f897d0', NULL, NULL, NULL, '2024-03-15 12:10:49.628921', '2024-03-15 12:10:49.628921', '单例', 'Retrieve', '/api/platformsettings/sysconfig/{id}/', 0, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('14e7088f-a39b-47ae-bd67-b9bbcabae96b', NULL, NULL, NULL, '2024-03-15 12:10:49.579054', '2024-03-15 12:10:49.579054', '单例', 'Retrieve', '/api/users/users/{id}/', 0, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('14e7088fa39b47aebd67b9bbcabae96b', NULL, NULL, NULL, '2024-03-15 12:10:49.582045', '2024-03-15 12:10:49.582045', '单例', 'Retrieve', '/api/users/users/{id}/', 0, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('1a0c96cf-09a6-43b4-b08a-0c5b6e2f7bb8', NULL, NULL, NULL, '2024-03-15 12:10:49.692750', '2024-03-15 12:10:49.692750', '保存', 'Save', '/api/system/permission/{id}/', 2, NULL, 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_menu_button` VALUES ('1b4f27a7-8ab8-4388-ae57-46e29976cf0e', NULL, NULL, NULL, '2024-03-15 12:10:49.538163', '2024-03-15 12:10:49.538163', '新增', 'Create', '/api/system/button/', 1, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('1d4441fdc418499f856c23aa4e1be2c0', NULL, NULL, NULL, '2024-03-15 12:10:49.576062', '2024-03-15 12:10:49.576062', '单例', 'Retrieve', '/api/platformsettings/other/{id}/', 0, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('25ef2854d37d4b1ba8639741f837c70f', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:03:05.381401', '2024-03-22 23:03:05.381401', '禁用', 'Disable', '/api/violation/pay_traffic_violation/{id}/', 2, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('264cc3d69f7a46d5a117997e9c78506c', NULL, NULL, NULL, '2024-03-15 12:10:49.634905', '2024-03-15 12:10:49.634905', '删除', 'Delete', '/api/platformsettings/other/{id}/', 3, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('2a3d4756-4d51-4129-b3c4-b2c7a00dbb8a', NULL, NULL, NULL, '2024-03-15 12:10:49.541155', '2024-03-15 12:10:49.541155', '新增', 'Create', '/api/system/role/', 1, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('2c53efc8-e6a4-4192-8688-03baed0874a4', NULL, NULL, NULL, '2024-03-15 12:10:49.639892', '2024-03-15 12:10:49.639892', '删除', 'Delete', '/api/system/user/{id}/', 3, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('324776a3-48ec-4bca-bdd9-1838e2b6f7cc', NULL, NULL, NULL, '2024-03-15 12:10:49.466354', '2024-03-15 12:10:49.466354', '查询', 'Search', '/api/system/user/', 0, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('353595a28cb1463b830cfbf79fea60b5', NULL, NULL, NULL, '2024-03-15 12:10:49.699731', '2024-03-15 12:10:49.699731', '禁用', 'Disable', '/api/users/users/disableuser/{id}/', 2, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('3688b715-4689-468f-bf3e-6f910259f837', NULL, NULL, NULL, '2024-03-15 12:10:49.470344', '2024-03-15 12:10:49.470344', '查询', 'Search', '/api/system/user/user_info/', 0, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('37462e31-3cdf-4576-af10-5958f53b1bef', NULL, NULL, NULL, '2024-03-15 12:10:49.474333', '2024-03-15 12:10:49.474333', '查询', 'Search', '/api/system/operation_log/', 0, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('3e11db64-b8e8-4558-963b-71d063a7db16', NULL, NULL, NULL, '2024-03-15 12:10:49.407495', '2024-03-15 12:10:49.407495', '编辑', 'Update', '/api/system/dept/{id}/', 2, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('3fd6ae6c-fd76-4465-b2b6-db672f4bd79e', NULL, NULL, NULL, '2024-03-15 12:10:49.643881', '2024-03-15 12:10:49.643881', '删除', 'Delete', '/api/system/role/{id}/', 3, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('42ad6e05-7c84-444f-bcae-09de84f4988b', NULL, NULL, NULL, '2024-03-15 12:10:49.479321', '2024-03-15 12:10:49.479321', '查询', 'Search', '/api/system/menu/', 0, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('43696212-ecba-4e66-8678-33c9bc935c76', NULL, NULL, NULL, '2024-03-15 12:10:49.483310', '2024-03-15 12:10:49.483310', '查询', 'Search', '/api/users/users/', 0, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('43696212ecba4e66867833c9bc935c76', NULL, NULL, NULL, '2024-03-15 12:10:49.488296', '2024-03-15 12:10:49.488296', '查询', 'Search', '/api/users/users/', 0, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('4fe4b7f5-0bc8-4375-9f39-747e06ec285a', NULL, NULL, NULL, '2024-03-15 12:10:49.646872', '2024-03-15 12:10:49.646872', '删除', 'Delete', '/api/system/menu_button/{id}/', 3, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('51085c21-2279-490f-8878-594f059f7616', NULL, NULL, NULL, '2024-03-15 12:10:49.650860', '2024-03-15 12:10:49.650860', '删除', 'Delete', '/api/system/button/{id}/', 3, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('59db5099a03f44c8adb883faa340c15a', NULL, NULL, NULL, '2024-03-15 12:10:49.456381', '2024-03-15 12:10:49.456381', '查询', 'Search', '/api/platformsettings/lunboimg/', 0, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('5aac29b0-5a32-45fb-81c5-437b48f4a5df', NULL, NULL, NULL, '2024-03-15 12:10:49.492285', '2024-03-15 12:10:49.492285', '查询', 'Search', '/api/system/menu_button/', 0, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('5d77d14e-b199-481f-a97d-6e4c0e84fe71', NULL, NULL, NULL, '2024-03-15 12:10:49.413479', '2024-03-15 12:10:49.413479', '修改密码', 'Changepassword', '/api/system/user/change_password/{id}/', 2, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('5f0018ea9cdb4d09b1ddcc6c519af337', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:02:02.529214', '2024-03-22 23:02:02.529214', '删除', 'Delete', '/api/violation/violation/{id}/', 3, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('6208f412-6bca-4d7b-a5a0-0103b7ba6091', NULL, NULL, NULL, '2024-03-15 12:10:49.587033', '2024-03-15 12:10:49.587033', '单例', 'Retrieve', '/api/system/button/{id}/', 0, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('6300774a-d19c-43ad-8102-d7bf341eff33', NULL, NULL, NULL, '2024-03-15 12:10:49.591021', '2024-03-15 12:10:49.591021', '单例', 'Retrieve', '/api/system/dept/{id}/', 0, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('646e9790-24f5-4606-abc4-0b5eede12f66', NULL, NULL, NULL, '2024-03-15 12:10:49.495277', '2024-03-15 12:10:49.495277', '查询', 'Search', '/api/system/dept/', 0, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('6570defa84d04a1484242747c248b45a', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:01:27.392226', '2024-03-22 23:01:27.392226', '新增', 'Create', '/api/violation/violation/', 1, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('6b88361b326a4e55a8a5135c08ba66f1', NULL, NULL, NULL, '2024-03-15 12:10:49.610968', '2024-03-15 12:10:49.610968', '单例', 'Retrieve', '/api/messages/messagenotice/{id}/', 0, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('6d6b6689d1224900b09c8101b3344f42', NULL, NULL, NULL, '2024-03-15 12:10:49.613961', '2024-03-15 12:10:49.613961', '单例', 'Retrieve', '/api/system/role_id_to_menu/{id}/', 0, NULL, 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_menu_button` VALUES ('6e4251a948f348ccaa419a777a118048', NULL, NULL, NULL, '2024-03-15 12:10:49.393532', '2024-03-15 12:10:49.393532', '编辑', 'Update', '/api/platformsettings/other/{id}/', 2, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('77096cd56a6441699345e6e4f22d0ec3', NULL, NULL, NULL, '2024-03-15 12:10:49.526195', '2024-03-15 12:10:49.526195', '新增', 'Create', '/api/platformsettings/other/', 1, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('7790f4259a8748e08532cc681d60e72f', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:58:50.708603', '2024-03-22 22:58:50.708603', '编辑', 'Update', '/api/violation/violation/{id}/', 2, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('7aef1da4647844e3944a2745cef1bc6d', NULL, NULL, NULL, '2024-03-15 12:10:49.523202', '2024-03-15 12:10:49.523202', '新增', 'Create', '/api/platformsettings/lunboimg/', 1, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('80c8eb6939a245e9890dede241b5d1d6', NULL, NULL, NULL, '2024-03-15 12:10:49.702723', '2024-03-15 12:10:49.702723', '禁用', 'Disable', '/api/users/users/disableuser/{id}/', 2, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('80efc041695a42e4a9a04c010c6c7004', NULL, NULL, NULL, '2024-03-15 12:10:49.459373', '2024-03-15 12:10:49.459373', '查询', 'Search', '/api/platformsettings/other/', 0, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('8228955d67bc4dc89638b523f58108ee', NULL, NULL, NULL, '2024-03-15 12:10:49.566088', '2024-03-15 12:10:49.566088', '新增', 'Create', '/api/address/area/', 1, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('875bdfeb-0c34-441d-8ee3-bb93c21e17dd', NULL, NULL, NULL, '2024-03-15 12:10:49.417468', '2024-03-15 12:10:49.417468', '编辑', 'Update', '/api/users/users/{id}/', 2, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('875bdfeb0c34441d8ee3bb93c21e17dd', NULL, NULL, NULL, '2024-03-15 12:10:49.420459', '2024-03-15 12:10:49.420459', '编辑', 'Update', '/api/users/users/{id}/', 2, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('8ae924bd-576c-4ae1-92eb-b0a98148baae', NULL, NULL, NULL, '2024-03-15 12:10:49.654852', '2024-03-15 12:10:49.654852', '删除', 'Delete', '/api/system/menu/{id}/', 3, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('8b7a0e79-a6ef-4946-87c6-8c042b887e1c', NULL, NULL, NULL, '2024-03-15 12:10:49.594013', '2024-03-15 12:10:49.594013', '单例', 'Retrieve', '/api/system/operation_log/{id}/', 0, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('8f465aa674744313890cc8c59d3d0fd2', NULL, NULL, NULL, '2024-03-15 12:10:49.512232', '2024-03-15 12:10:49.512232', '查询', 'Search', '/api/address/area/area_root/', 0, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('9565c5888bd4414c84ecede7af7d1554', NULL, NULL, NULL, '2024-03-15 12:10:49.688760', '2024-03-15 12:10:49.688760', '删除', 'Delete', '/api/platformsettings/sysconfig/{id}/', 3, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('96022ae5-6425-47b9-8f89-01edc33eb2b7', NULL, NULL, NULL, '2024-03-15 12:10:49.598003', '2024-03-15 12:10:49.598003', '单例', 'Retrieve', '/api/system/role/{id}/', 0, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('989ad685ce654dd1b367f41dedfdd0b9', NULL, NULL, NULL, '2024-03-15 12:10:49.684773', '2024-03-15 12:10:49.684773', '删除', 'Delete', '/api/platformsettings/userfeeckback/{id}/', 3, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('9e6b2376-1ab0-4966-8d5d-4ad4f911d13c', NULL, NULL, NULL, '2024-03-15 12:10:49.545144', '2024-03-15 12:10:49.545144', '新增', 'Create', '/api/system/user/', 1, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('9fc8436a-1996-478f-a155-5de7939a54dc', NULL, NULL, NULL, '2024-03-15 12:10:49.548136', '2024-03-15 12:10:49.548136', '新增', 'Create', '/api/users/users/', 1, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('9fc8436a1996478fa1555de7939a54dc', NULL, NULL, NULL, '2024-03-15 12:10:49.552126', '2024-03-15 12:10:49.552126', '新增', 'Create', '/api/users/users/', 1, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('a20a200c721c489b9925cdd5b5e6708c', NULL, NULL, NULL, '2024-03-15 12:10:49.679786', '2024-03-15 12:10:49.679786', '删除', 'Delete', '/api/address/area/{id}/', 3, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('a3088120763d49ad93498eb515c7c244', NULL, NULL, NULL, '2024-03-15 12:10:49.573069', '2024-03-15 12:10:49.573069', '单例', 'Retrieve', '/api/platformsettings/lunboimg/{id}/', 0, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('a69fb746c0aa4bd0b31b1480c9e4dcc0', NULL, NULL, NULL, '2024-03-15 12:10:49.509239', '2024-03-15 12:10:49.509239', '查询', 'Search', '/api/monitor/getsysteminfo/', 0, NULL, 'bcbeeee5c91a4e2ea2c2a31237e33616');
INSERT INTO `lyadmin_menu_button` VALUES ('abe5c07f-0cab-4053-ac24-e782792e9d7f', NULL, NULL, NULL, '2024-03-15 12:10:49.555118', '2024-03-15 12:10:49.555118', '新增', 'Create', '/api/system/menu/', 1, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('acfde861-1872-47e2-a1f1-abeda5175b7f', NULL, NULL, NULL, '2024-03-15 12:10:49.658841', '2024-03-15 12:10:49.658841', '删除', 'Delete', '/api/system/operation_log/{id}/', 3, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('af60d628-73b1-4c5d-b34e-7c70ab9bd87e', NULL, NULL, NULL, '2024-03-15 12:10:49.499266', '2024-03-15 12:10:49.499266', '查询', 'Search', '/api/system/button/', 0, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('b10f7d08-2592-4b54-8557-b5ca864a029a', NULL, NULL, NULL, '2024-03-15 12:10:49.662830', '2024-03-15 12:10:49.662830', '删除', 'Delete', '/api/system/dept/{id}/', 3, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('bb7de9ee-5fd1-46f5-9849-088c522f49c7', NULL, NULL, NULL, '2024-03-15 12:10:49.666818', '2024-03-15 12:10:49.666818', '删除', 'Delete', '/api/users/users/{id}/', 3, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('bb7de9ee5fd146f59849088c522f49c7', NULL, NULL, NULL, '2024-03-15 12:10:49.670809', '2024-03-15 12:10:49.670809', '删除', 'Delete', '/api/users/users/{id}/', 3, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('bc114580-e62d-4e08-b707-843759817344', NULL, NULL, NULL, '2024-03-15 12:10:49.425447', '2024-03-15 12:10:49.425447', '编辑', 'Update', '/api/system/user/{id}/', 2, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('bc6104a0-f487-4dfd-a368-fb587d6d57d8', NULL, NULL, NULL, '2024-03-15 12:10:49.429437', '2024-03-15 12:10:49.429437', '编辑', 'Update', '/api/system/menu_button/{id}/', 2, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('c2490dfba1644cae8f8ff85e2d6f1d3d', NULL, NULL, NULL, '2024-03-15 12:10:49.506247', '2024-03-15 12:10:49.506247', '查询', 'Search', '', 0, NULL, '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_menu_button` VALUES ('c495f072282949d59c084f5b4ffce859', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:01:46.652071', '2024-03-22 23:01:46.652071', '单例', 'Retrieve', '/api/violation/violation/{id}/', 0, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('c8eee7f68c1845169b8d2af946502077', NULL, NULL, NULL, '2024-03-15 12:10:49.674798', '2024-03-15 12:10:49.674798', '删除', 'Delete', '/api/messages/messagenotice/{id}/', 3, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('ca69833045ed4cf78c8586f7e55ba6db', NULL, NULL, NULL, '2024-03-15 12:10:49.445411', '2024-03-15 12:10:49.445411', '编辑', 'Update', '/api/messages/messagenotice/{id}/', 2, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('cf50028007164569a136fbdeaff7619c', NULL, NULL, NULL, '2024-03-15 12:10:49.448404', '2024-03-15 12:10:49.449400', '编辑', 'Update', '/api/address/area/{id}/', 2, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('d1b3c15f0c664857aeca1d9065d9c499', NULL, NULL, NULL, '2024-03-15 12:10:49.502258', '2024-03-15 12:10:49.502258', '查询', 'Search', '/api/messages/messagenotice/', 0, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('d22c0176-96e0-48b3-b81e-13443f306af5', NULL, NULL, NULL, '2024-03-15 12:10:49.433426', '2024-03-15 12:10:49.433426', '编辑', 'Update', '/api/system/role/{id}/', 2, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('d2e0608b5b4941ef8c3ff834977caeef', NULL, NULL, NULL, '2024-03-15 12:10:49.562099', '2024-03-15 12:10:49.562099', '新增', 'Create', '/api/messages/messagenotice/', 1, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('d419393d77e34f8e9c1eda5893f3bc87', NULL, NULL, NULL, '2024-03-15 12:10:49.452392', '2024-03-15 12:10:49.452392', '编辑', 'Update', '/api/platformsettings/sysconfig/{id}/', 2, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('dcc58831-08d1-4469-8b01-fca71e0f497f', NULL, NULL, NULL, '2024-03-15 12:10:49.437919', '2024-03-15 12:10:49.438425', '编辑', 'Update', '/api/system/user/user_info/', 2, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('e6b93920-2236-46ec-841b-cff6f63ce788', NULL, NULL, NULL, '2024-03-15 12:10:49.441421', '2024-03-15 12:10:49.441421', '编辑', 'Update', '/api/system/operation_log/{id}/', 2, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('e7fa30290d37447585ea7583d9d01f1b', NULL, NULL, NULL, '2024-03-15 12:10:49.389542', '2024-03-15 12:10:49.389542', '编辑', 'Update', '/api/platformsettings/lunboimg/{id}/', 2, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('efcbf104971a4266a26d9469e58c1327', NULL, NULL, NULL, '2024-03-15 12:10:49.620942', '2024-03-15 12:10:49.620942', '单例', 'Retrieve', '/api/address/area/{id}/', 0, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('f0e080c0-275d-4085-b56c-735b49510eff', NULL, NULL, NULL, '2024-03-15 12:10:49.600995', '2024-03-15 12:10:49.600995', '单例', 'Retrieve', '/api/system/user/{id}/', 0, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('f19826f7df9842089cee94a795681b2e', NULL, NULL, NULL, '2024-03-15 12:10:49.616954', '2024-03-15 12:10:49.616954', '单例', 'Retrieve', '', 0, NULL, '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_menu_button` VALUES ('f4e0b4aa230b4afba10a7ba58af3c454', NULL, NULL, NULL, '2024-03-15 12:10:49.696739', '2024-03-15 12:10:49.696739', '保存', 'Save', '/api/platformsettings/sysconfig/save_content/{id}/', 2, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('f8815b929d194728ab4daa8bc0c134e2', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:00:44.752930', '2024-03-22 23:00:44.752930', '查询', 'Search', '/api/violation/violation/', 0, 1, '012265f1e0a040bdaa0a66b184ba9381');
INSERT INTO `lyadmin_menu_button` VALUES ('fa7c32c9397c46b8821b62aae5512af0', NULL, NULL, NULL, '2024-03-15 12:10:49.520210', '2024-03-15 12:10:49.520210', '查询', 'Search', '/api/platformsettings/sysconfig/', 0, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('fc71b446-fde1-439f-ab41-c38f30230caa', NULL, NULL, NULL, '2024-03-15 12:10:49.559107', '2024-03-15 12:10:49.559107', '新增', 'Create', '/api/system/menu_button/', 1, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('fcbe4cec-cc2d-436d-92ba-023f8c9ad31c', NULL, NULL, NULL, '2024-03-15 12:10:49.603987', '2024-03-15 12:10:49.603987', '单例', 'Retrieve', '/api/system/menu/{id}/', 0, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('fe96f32c-6124-4b24-b809-4964186f5163', NULL, NULL, NULL, '2024-03-15 12:10:49.606979', '2024-03-15 12:10:49.607976', '单例', 'Retrieve', '/api/system/menu_button/{id}/', 0, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');

-- ----------------------------
-- Table structure for lyadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_operation_log`;
CREATE TABLE `lyadmin_operation_log`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `request_modular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_operation_log_creator_id_7b08f4e1`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_operation_log
-- ----------------------------
INSERT INTO `lyadmin_operation_log` VALUES ('003920749189482694cf5d9788d2df65', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:00:02.545157', '2024-03-23 01:00:02.545157', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('00a5540e293d40bfa86ff832fa87a3ae', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-15 18:50:08.816658', '2024-03-15 18:50:08.816658', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'4\', \'captchaKey\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('01b10d0b09c54cc0a3e981f3f84b78d5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:02.765117', '2024-03-23 01:37:02.765117', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('032da2e37d5648a99c09bf9f0fc81c53', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:08:53.001395', '2024-03-23 01:08:53.001395', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0468ce94d9f04c4faff548535d7e7744', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:15:07.087300', '2024-03-23 01:15:07.087300', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0498f72e655d4e8cb715bedcfa77490f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:43:30.514830', '2024-03-21 09:43:30.514830', '菜单表', '/api/system/menu/02c24003527546359b5a77ae07adc7d5/', '{\'id\': \'02c24003527546359b5a77ae07adc7d5\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'地区管理\', \'sort\': 7, \'is_link\': 0, \'web_path\': \'areaManage\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('04fc8dde41e646a68eaf39bc0be5cd5b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:24.382060', '2024-03-23 01:05:24.382060', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0687bd38f7054d64bef048d6e479cab1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 16:33:43.031021', '2024-03-21 16:33:43.031021', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('06ecf40ed9a644dbab85b01ebfe27743', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:00:57.643620', '2024-03-23 01:00:57.643620', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'123123\', \'violation_type\': \'1231231\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0863d4d9a2124c5fa6a7675b49a6f34f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-18 17:13:50.205354', '2024-03-18 17:13:50.205354', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'0\', \'captchaKey\': 7}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0a2b39b9bb2b4eb6a4bf5925eca9bb62', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:56.749786', '2024-03-23 00:53:56.749786', '菜单权限表', '/api/system/menu_button/81bb61dedb1f4f978bdd9a35bf2ac6cf/', '{\'id\': \'81bb61dedb1f4f978bdd9a35bf2ac6cf\', \'create_datetime\': \'2024-03-23 00:47:59\', \'update_datetime\': \'2024-03-23 00:47:59\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'单例\', \'value\': \'Retrieve\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 0, \'creator\': None, \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0a87ab51d961486799bf373b170cc94e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:01:46.657057', '2024-03-22 23:01:46.657057', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'单例\', \'api\': \'/api/violation/violation/{id}/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 0, \'value\': \'Retrieve\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0adebc3598cc4e89ad94d29b83851e9e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-15 18:53:13.952300', '2024-03-15 18:53:13.952300', '用户表', '/api/users/users/', '{\'name\': \'MScetar\', \'nickname\': \'MScetar\', \'username\': \'MScetar\', \'mobile\': \'18888888888\', \'is_active\': True, \'avatar\': \'\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('0c23273e038041bf98b151dde632b56f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 17:26:25.050156', '2024-03-22 17:26:25.050156', '用户表', '/api/users/users/4/', '{\'id\': 4, \'create_datetime\': \'2024-03-15 18:53:13\', \'update_datetime\': \'2024-03-21 17:24:44\', \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': False, \'date_joined\': \'2024-03-15 18:53:13\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'username\': \'MScetar\', \'email\': None, \'mobile\': \'18888888888\', \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'name\': \'MScetar\', \'nickname\': \'MScetar\', \'gender\': None, \'identity\': 2, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': 1, \'groups\': [], \'user_permissions\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1291aa7b4d49451080e6f58974191c46', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:43:36.341396', '2024-03-21 09:43:36.341396', '菜单表', '/api/system/menu/e0f53902-e901-490c-83f3-331e60b97fcf/', '{\'id\': \'e0f53902-e901-490c-83f3-331e60b97fcf\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'按钮配置\', \'sort\': 2, \'is_link\': 0, \'web_path\': \'buttonConfig/:id/:name\', \'component\': \'system/ menuButton\', \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('13fd54c623d74b31ae16ec58ce2a25e9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:58:41.770467', '2024-03-23 00:58:41.770467', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('14e6350b503b41bdb3d5d1d0a9dbb974', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 18:12:48.616661', '2024-03-22 18:12:48.616661', '菜单表', '/api/system/menu/d73f73a399af48cea6a8490ac508d7a0/', '{\'id\': \'d73f73a399af48cea6a8490ac508d7a0\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-21 17:20:54\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'user-filled\', \'name\': \'用户管理CRUD\', \'sort\': 7, \'is_link\': 0, \'web_path\': \'userManageCrud\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('187ee93784254af688d3faafa350adbe', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:55:20.627307', '2024-03-23 00:55:20.627307', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1a6b1db7ac9741c3baaff40be2eba108', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:42:24.728345', '2024-03-21 09:42:24.728345', '菜单表', '/api/system/menu/ae5629946df4497cbec10419e8375dd9/', '{\'id\': \'ae5629946df4497cbec10419e8375dd9\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'轮播图设置\', \'sort\': 1, \'is_link\': 0, \'web_path\': \'carouselSettingsimg\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'d4e2fe169a8b40f3846421ac04e4fccb\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1a9ef250e0764b0d85e95b0a4dc17e5f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:10:15.251095', '2024-03-23 01:10:15.251095', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1b399b0d38d543ff9e2a52c3248c54e3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:26.559422', '2024-03-23 01:37:26.559422', '交通违章信息', '/api/violation/violation/fad8349e2d4b4575b05fa807e4087dcf,708be1d45a8a4fb38b04707e63fc21bc/', '{\'id\': [\'fad8349e2d4b4575b05fa807e4087dcf\', \'708be1d45a8a4fb38b04707e63fc21bc\']}', 'DELETE', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1bbee7aa37d84b77a77102cb8a1ebea6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-16 15:37:23.279875', '2024-03-16 15:37:23.279875', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'1\', \'captchaKey\': 4}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('1ddc3eab96f843f7a723802a831bc08f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:12:35.286980', '2024-03-23 01:12:35.286980', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': False, \'violation_time\': \' 2024-03-22 22:53:49\', \'car_number\': \'ddd\', \'violation_type\': \'qwe\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:日期时间格式错误。请从这些格式中选择：YYYY-MM-DDThh:mm[:ss[.uuuuuu]][+HH:MM|-HH:MM|Z]。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('20f7237470e840d982732dfee3403f44', NULL, NULL, NULL, '2024-03-16 15:37:11.817020', '2024-03-16 15:37:11.817020', '登录模块', '/api/token/', '{\'username\': \'test\', \'password\': \'******\', \'captcha\': \'50\', \'captchaKey\': 3}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'您没有权限登录后台\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('227840d6da354a5b873c3d5d45614739', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 17:30:31.863593', '2024-03-21 17:30:31.863593', '权限标识表', '/api/system/button/', '{\'name\': \'大萨达\', \'value\': \'123123132\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2458cc0acfd84d6493ee1bf41e72f4ca', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:21.451241', '2024-03-23 01:05:21.451241', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('29207338b2fa4aa4850f22531af56bbe', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 17:24:42.988590', '2024-03-21 17:24:42.988590', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('29f3059159e44674a5b969ad51823f72', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:55:09.581101', '2024-03-22 21:55:09.581101', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'27\', \'captchaKey\': 15}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2a5dc996f608458680fb8a3f59ebdc25', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:16:16.241256', '2024-03-23 01:16:16.242255', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2c8cde223f4142c18d9bece4eeb596e5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:19:37.744201', '2024-03-23 01:19:37.744201', '菜单表', '/api/system/menu/012265f1e0a040bdaa0a66b184ba9381/', '{\'id\': \'012265f1e0a040bdaa0a66b184ba9381\', \'create_datetime\': \'2024-03-22 22:11:01\', \'update_datetime\': \'2024-03-22 22:16:27\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'Avatar\', \'name\': \'交通违规管理\', \'sort\': 15, \'is_link\': 0, \'web_path\': \'violationManageCRUD\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 1, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2c967f70c30a442b8999376b4d75eb91', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:02:11.748419', '2024-03-23 01:02:11.748419', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2daaae6d56cb4b9ba34f2d86b3495df2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:01.546436', '2024-03-23 01:37:01.546436', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('2e02c6de30f04760bee07c7a838e69b7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:00.094850', '2024-03-23 01:37:00.094850', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('32fc4c8fa0e34416a50b7302112148e4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:22.849640', '2024-03-23 01:05:22.849640', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3473b3cd3cd94377b8e629c5710ab3a3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:11:01.844137', '2024-03-22 22:11:01.844137', '菜单表', '/api/system/menu/', '{\'parent\': \'\', \'name\': \'测试\', \'visible\': 1, \'icon\': \'Avatar\', \'status\': 1, \'sort\': 15, \'web_path\': \'ceshi\', \'menuPermission\': [], \'isautopm\': 0}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('38496d41e1954eddad833b936d6fa4c9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:02.208665', '2024-03-23 01:37:02.208665', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('38de79b199d343b791fe823ed0877012', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:44:42.385638', '2024-03-21 09:44:42.385638', '前端API关闭开启', '/api/super/operate/', '{\'is_allow\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'设置成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3b378cec91cf4a27bdda1ccf78dfb263', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:20:20.277569', '2024-03-23 01:20:20.277569', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\'}', 'DELETE', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3b7728f46f674df289e5d95fb5a7d519', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:49:01.878162', '2024-03-23 00:49:01.878162', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3bce4bce3b124facb21295e9734eb65b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:19.292119', '2024-03-23 01:05:19.292119', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3e949ff52ad94e75bb74e9ec8e5bdb62', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:15:11.791322', '2024-03-22 23:15:11.791322', '用户表', '/api/users/users/4/', '{\'id\': 4, \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'username\': \'MScetar\', \'nickname\': \'MScetar\', \'mobile\': \'18888888888\', \'is_active\': False}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('3f7a3ba0c4954764b5dce2f3f12dd204', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:02.398620', '2024-03-23 01:37:02.398620', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('401e5bced90b4fecae5b7fde05194fd5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:27:52.348676', '2024-03-22 21:27:52.348676', '菜单表', '/api/system/menu/', '{\'parent\': \'\', \'name\': \'交通违章信息管理\', \'visible\': 1, \'icon\': \'WarnTriangleFilled\', \'status\': 1, \'sort\': 0, \'web_path\': \'violation\', \'menuPermission\': [], \'isautopm\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('40407c0c9bb148a5af2c6ea086ad5912', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:10:15.962507', '2024-03-23 01:10:15.962507', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('40aceba5ba85427fae780ad535b4f465', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:35:23.753528', '2024-03-22 21:35:23.753528', '菜单权限表', '/api/system/menu_button/4b58d0c5b50044b19954d55f926b9d38/', '{\'id\': \'4b58d0c5b50044b19954d55f926b9d38\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'删除\', \'value\': \'Delete\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 3, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('41dd5e2024374861bd8fd7632b0f81ba', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 12:50:57.036297', '2024-03-22 12:50:57.036297', '菜单表', '/api/system/menu/3171db16eda048ae92b16536fc1241b6/', '{\'id\': \'3171db16eda048ae92b16536fc1241b6\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-21 09:42:31\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'平台公告\', \'sort\': 5, \'is_link\': 0, \'web_path\': \'messagNotice\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'d4e2fe169a8b40f3846421ac04e4fccb\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4354e0b2962c4a519fb3c0750a7e9ea2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:12:45.001054', '2024-03-23 01:12:45.001054', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': False, \'violation_time\': \'2024-03-22 22:53:49\', \'car_number\': \'ddd\', \'violation_type\': \'qwe\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4ca5891fd1434b5390ac65267b5b7cd8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:09:41.218823', '2024-03-23 01:09:41.218823', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4d828fd0fe6f454693e6b2982665b007', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:30:12.518709', '2024-03-23 01:30:12.518709', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4ee7c41dc0064eecabc31279b6682842', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:26:18.847482', '2024-03-23 01:26:18.847482', '菜单表', '/api/system/menu/d73f73a399af48cea6a8490ac508d7a0/', '{\'id\': \'d73f73a399af48cea6a8490ac508d7a0\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-22 18:12:48\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'user-filled\', \'name\': \'用户管理CRUD\', \'sort\': 7, \'is_link\': 0, \'web_path\': \'userManageCrud\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4f7ad7d892934b92bb8f6cfb36d1eee7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 17:24:44.460552', '2024-03-21 17:24:44.460552', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('4f8fda2c97f24697876faca10f47438e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-15 18:53:05.027570', '2024-03-15 18:53:05.027570', '用户表', '/api/users/users/', '{\'name\': \'\', \'nickname\': \'MScetar\', \'username\': \'MScetar\', \'mobile\': \'18888888888\', \'is_active\': True, \'avatar\': \'\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'name:该字段不能为空。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('51d35d5756e64a81a0eaa7e86c3dab76', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:18.593824', '2024-03-23 01:05:18.593824', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('58c741af39224284b33523f958128b9a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:49:02.476562', '2024-03-23 00:49:02.476562', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('594004690a7a444cad2bbcf94db7c96a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:00.558612', '2024-03-23 01:37:00.558612', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('59d7e32da84b4895899efd3616fcdffb', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:11:21.768704', '2024-03-23 01:11:21.768704', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('5a1f56abf5de4edb9059386800d3f89a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:20:25.037373', '2024-03-23 01:20:25.037373', '菜单表', '/api/system/menu/5ff1bf69701d4a0a83585028d350a2e1/', '{\'id\': \'5ff1bf69701d4a0a83585028d350a2e1\'}', 'DELETE', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('5ba65ed00397400f9096e67a49f3cf8d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 12:45:33.978668', '2024-03-21 12:45:33.978668', '用户表', '/api/users/users/3/', '{\'id\': 3, \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-16 15:36:42\', \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2024-03-15 12:10:49\', \'dept_belong_id\': None, \'username\': \'test\', \'email\': None, \'mobile\': \'18888888888\', \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124532_785.png\', \'name\': \'测试用户\', \'nickname\': \'测试用户\', \'gender\': None, \'identity\': 2, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': None, \'groups\': [], \'user_permissions\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('5bbe9e78100d497db5a9c64dd1199807', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:17:02.388540', '2024-03-22 22:17:02.388540', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 22:05:38\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违章信息管理\', \'sort\': 14, \'is_link\': 0, \'web_path\': \'ceshi2\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('5c4aa126c0144a4f981873e213ef1ab0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:03.115734', '2024-03-23 01:37:03.115734', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('5d2b2be9f56340a49fcab64af1eec155', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:54:55.253221', '2024-03-22 21:54:55.253221', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:37:35\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违章信息管理\', \'sort\': 0, \'is_link\': 0, \'web_path\': \'violationMangeCrud\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('60682d147c6245a1abb9b995fe66481b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:59.917996', '2024-03-23 00:53:59.917996', '菜单权限表', '/api/system/menu_button/96b314e6817d40379db7fa484c8547b3/', '{\'id\': \'96b314e6817d40379db7fa484c8547b3\', \'create_datetime\': \'2024-03-23 00:47:59\', \'update_datetime\': \'2024-03-23 00:47:59\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'删除\', \'value\': \'Delete\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 3, \'creator\': None, \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('647cb361bf43494293c6d9f379f9dc62', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:17.815903', '2024-03-23 01:05:17.815903', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('653bd8fba0bd4dd98f83412f65812349', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:36:58.608308', '2024-03-23 01:36:58.608308', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('6739f5e88d41414d933f312885bf16db', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:14:35.845006', '2024-03-22 23:14:35.845006', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('67cd860a3c404bec9d89b63ec4dc0d02', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:20:10.328181', '2024-03-23 01:20:10.328181', '菜单表', '/api/system/menu/03feb65c538b41e28f4f5387cfab94b6/', '{\'id\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'DELETE', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('6ae86de2824e4d16ba42fcc7652242a3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:29:53.442635', '2024-03-23 01:29:53.442635', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('6bc3166d391842538a665b504c58a37f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:49:00.310763', '2024-03-23 00:49:00.310763', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('6cc5d433303e440ebc4e6adc73ee3b93', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:16:17.691362', '2024-03-23 01:16:17.691362', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('6e717cebfc294cd4a36509408f72dcd4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:34.888622', '2024-03-23 00:53:34.888622', '菜单权限表', '/api/system/menu_button/ff7999e111b7466fab4b9545764000f0/', '{\'id\': \'ff7999e111b7466fab4b9545764000f0\', \'create_datetime\': \'2024-03-23 00:47:59\', \'update_datetime\': \'2024-03-23 00:47:59\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'编辑\', \'value\': \'Update\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 2, \'creator\': None, \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7197cc949bfe4467bd6a50b1a591b6ec', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:01.958334', '2024-03-23 01:37:01.958334', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('75fdb24fe31a4061942d4617daded83c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:44:37.477837', '2024-03-21 09:44:37.477837', '前端API关闭开启', '/api/super/operate/', '{\'is_allow\': 0}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'设置成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7643b1f0126648d3addae6d86c1598af', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:02:37.220161', '2024-03-21 13:02:37.220161', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'6\', \'captchaKey\': 13}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('76b88a387e1940dfa2aa717d45e34fe7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:20.489311', '2024-03-23 01:05:20.489311', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7c5478f4c7e94be08e47edeb88c0f89f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:17:38.402422', '2024-03-22 22:17:38.402422', '菜单表', '/api/system/menu/', '{\'parent\': \'\', \'name\': \'测试2\', \'visible\': 1, \'icon\': \'\', \'status\': 1, \'sort\': 19, \'web_path\': \'ceshi2\', \'menuPermission\': [], \'isautopm\': 0}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7c74d0c7e2874a04aae44d59274f7e85', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:23.897838', '2024-03-23 01:05:23.897838', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7d5e06558f7246bd957d88fa447a9364', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 16:33:44.459956', '2024-03-21 16:33:44.459956', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7d798563030c4c2e9e131447cba18927', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:36:37.037513', '2024-03-22 21:36:37.037513', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违章信息管理\', \'sort\': 0, \'is_link\': 0, \'web_path\': \'violationMange\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 1, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('7fbb393aa2904c438703cda864a187cf', NULL, NULL, NULL, '2024-03-21 13:02:23.606441', '2024-03-21 13:02:23.606441', '登录模块', '/api/token/', '{\'username\': \'MScetar\', \'password\': \'******\', \'captcha\': \'8\', \'captchaKey\': 12}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'您没有权限登录后台\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('804a2b283b97432bad9180ff76536850', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:00:44.757917', '2024-03-22 23:00:44.757917', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'查询\', \'api\': \'/api/violation/violation/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 0, \'value\': \'Search\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('811faa3aa866499ab535a023cedd6673', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:47:59.539703', '2024-03-23 00:47:59.539703', '菜单表', '/api/system/menu/', '{\'parent\': \'\', \'name\': \'测试1111\', \'visible\': 1, \'icon\': \'Bell\', \'status\': 1, \'sort\': 16, \'web_path\': \'violationManage\', \'menuPermission\': [], \'isautopm\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('84603db5e1164035bb26c6bce1e24b9e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 12:44:29.628433', '2024-03-21 12:44:29.629431', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('88026eadbf164a11965721904dadc8e3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 17:30:42.198619', '2024-03-21 17:30:42.198619', '权限标识表', '/api/system/button/f475ab9b787e4268bd63bc221f077a0b/', '{\'id\': \'f475ab9b787e4268bd63bc221f077a0b\'}', 'DELETE', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('8a921dc18715475b8aabfb49ee3bb4df', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:20.965459', '2024-03-23 01:05:20.965459', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('8bec666b0b5145fcb54ad7feb4b9eea1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:41:29.046750', '2024-03-21 09:41:29.046750', '菜单表', '/api/system/menu/151035da-77a3-4a62-b474-fce6824571fb/', '{\'id\': \'151035da-77a3-4a62-b474-fce6824571fb\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'按钮管理\', \'sort\': 6, \'is_link\': 0, \'web_path\': \'buttonManage\', \'component\': \'system/button\', \'component_name\': \'buttonManage\', \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('8e63b742cd5e4832a8da5175abb84048', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:20:39.732337', '2024-03-23 01:20:39.732337', '菜单表', '/api/system/menu/012265f1e0a040bdaa0a66b184ba9381/', '{\'id\': \'012265f1e0a040bdaa0a66b184ba9381\', \'create_datetime\': \'2024-03-22 22:11:01\', \'update_datetime\': \'2024-03-23 01:19:37\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违规管理\', \'sort\': 15, \'is_link\': 0, \'web_path\': \'violationManageCRUD\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 1, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('8f681f1ff1184c93985d796d9ba6478d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:15:17.530351', '2024-03-23 01:15:17.530351', '交通违章信息', '/api/violation/violation/pay_traffic_violation/f5d4201adc5e468e95ba8759f9cdaabc/', '{\'id\': \'f5d4201adc5e468e95ba8759f9cdaabc\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('913c9b5367d1458abca65dc7422d3f18', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:05:38.081695', '2024-03-22 22:05:38.081695', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:54:55\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违章信息管理\', \'sort\': 14, \'is_link\': 0, \'web_path\': \'violationMangeCrud\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('9295e87ab3b04ccb8535150fefd0ac18', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:01:48.554562', '2024-03-21 13:01:48.554562', '用户表', '/api/users/users/4/', '{\'id\': 4, \'create_datetime\': \'2024-03-15 18:53:13\', \'update_datetime\': \'2024-03-21 12:44:31\', \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2024-03-15 18:53:13\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'username\': \'MScetar\', \'email\': None, \'mobile\': \'18888888888\', \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'name\': \'MScetar\', \'nickname\': \'MScetar\', \'gender\': None, \'identity\': 2, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': 1, \'groups\': [], \'user_permissions\': [], \'password\': \'******\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 2);
INSERT INTO `lyadmin_operation_log` VALUES ('94b2a752b93b4eb5b6a192700464218d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:55:21.137039', '2024-03-23 00:55:21.138037', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('954c859691054f8cbe82fa24b556333f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:59:00.768627', '2024-03-23 00:59:00.768627', '交通违章信息', '/api/violation/violation/1/', '{\'id\': \'1\', \'car_number\': \'鲁A123123\', \'violation_type\': \'闯红灯\', \'has_paid\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('963c277c90f149a0b68f3177f6b50cb5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:02:02.532206', '2024-03-22 23:02:02.532206', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'删除\', \'api\': \'/api/violation/violation/{id}/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 3, \'value\': \'Delete\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('96d91a31e26e4339a7c6ca3b8d388a34', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:12:48.136765', '2024-03-23 01:12:48.136765', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('98b180b7877f440abfa82d8895b7ba2b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:01:14.602381', '2024-03-21 13:01:14.602381', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'45\', \'captchaKey\': 9}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 2);
INSERT INTO `lyadmin_operation_log` VALUES ('98e11bd8723d4ecea37c3223d3d9450a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:45.673865', '2024-03-23 00:53:45.673865', '菜单权限表', '/api/system/menu_button/71c1ad2929634b8a85e91624020c5588/', '{\'id\': \'71c1ad2929634b8a85e91624020c5588\', \'create_datetime\': \'2024-03-23 00:47:59\', \'update_datetime\': \'2024-03-23 00:47:59\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'查询\', \'value\': \'Search\', \'api\': \'/api/violation/violation/\', \'method\': 0, \'creator\': None, \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('99af12dee0dc4b46969de3c13cb248c2', NULL, NULL, NULL, '2024-03-21 13:02:19.489449', '2024-03-21 13:02:19.489449', '登录模块', '/api/token/', '{\'username\': \'MScetar\', \'password\': \'******\', \'captcha\': \'63\', \'captchaKey\': 11}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'图片验证码错误\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('a1b5ac2877d147919c0a84f63b213000', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 12:45:32.848724', '2024-03-21 12:45:32.848724', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('a3f176b0dd704517be1a4675788295ac', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:52.836195', '2024-03-23 00:53:52.836195', '菜单权限表', '/api/system/menu_button/4dc121e479db47fa85e0d8d59aa57bf3/', '{\'id\': \'4dc121e479db47fa85e0d8d59aa57bf3\', \'create_datetime\': \'2024-03-23 00:47:59\', \'update_datetime\': \'2024-03-23 00:47:59\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'新增\', \'value\': \'Create\', \'api\': \'/api/violation/violation/\', \'method\': 1, \'creator\': None, \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('a49e06d2fe094c918daadf9d96874b2a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:08:07.508267', '2024-03-23 01:08:07.508267', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('a52551aecafe4b45bb34833ce21f9ff1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:29:52.075464', '2024-03-23 01:29:52.076462', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('a730897f4c8f42e0940d4ef8b31931b7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:33:54.165525', '2024-03-22 21:33:54.165525', '菜单权限表', '/api/system/menu_button/6549b7c433a54037808506cf30c69e43/', '{\'id\': \'6549b7c433a54037808506cf30c69e43\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'编辑\', \'value\': \'Update\', \'api\': \'/api/violation/violation/\', \'method\': 2, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('a7a7ead48dc743c8b0d2a4de9d84c1a4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:09:39.362222', '2024-03-23 01:09:39.362222', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('abc5510b514544278641b5be02a48787', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:36:17.095862', '2024-03-22 21:36:17.095862', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'禁用\', \'api\': \'/api/violation/pay_traffic_violation/{id}/\', \'menu\': \'987fcad8ace84bd3867749a88627ef85\', \'method\': 2, \'value\': \'Disable\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ac9b617a509a48e6a04f5271b3b40214', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:03:05.386387', '2024-03-22 23:03:05.386387', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'禁用\', \'api\': \'/api/violation/pay_traffic_violation/{id}/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 2, \'value\': \'Disable\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('adc5308a1e004cee922a3db866e25d6a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:02.583719', '2024-03-23 01:37:02.583719', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('af09932664b947698a1be1f587e0fe81', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 17:26:28.486504', '2024-03-22 17:26:28.486504', '用户表', '/api/users/users/4/', '{\'id\': 4, \'create_datetime\': \'2024-03-15 18:53:13\', \'update_datetime\': \'2024-03-22 17:26:25\', \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2024-03-15 18:53:13\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'username\': \'MScetar\', \'email\': None, \'mobile\': \'18888888888\', \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'name\': \'MScetar\', \'nickname\': \'MScetar\', \'gender\': None, \'identity\': 2, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': 1, \'groups\': [], \'user_permissions\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('af8ae6287d4b47848589285669fca648', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:16:02.608623', '2024-03-22 22:16:02.608623', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b0d3f93c784b4c94910c8130e96d0b3f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:15:03.343889', '2024-03-23 01:15:03.343889', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b0f8add2648149aab1550e3f90556bb5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:11:50.270523', '2024-03-23 01:11:50.270523', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'asdasd\', \'violation_type\': \'asdada\', \'violation_time\': \'ddd\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:日期时间格式错误。请从这些格式中选择：YYYY-MM-DDThh:mm[:ss[.uuuuuu]][+HH:MM|-HH:MM|Z]。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b4df4b73ec1a4eabae984b40c034d1a6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:15:08.876729', '2024-03-23 01:15:08.876729', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b61928bba6ce4ccbb1eb767970e43796', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:14:57.857681', '2024-03-23 01:14:57.857681', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': False, \'car_number\': \'fsfasf\', \'violation_time\': \'2024-03-22 22:53:49\', \'violation_type\': \'dd\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b654957a5a0549bf887f852bdf3df254', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:11:24.178718', '2024-03-23 01:11:24.178718', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b8aa3ec1df174e7da5fcf2bcc6011eb5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:36:59.618607', '2024-03-23 01:36:59.618607', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b90973e918e04be8a93475e64d8b2465', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:53:22.700004', '2024-03-23 00:53:22.700004', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'禁用\', \'api\': \'/api/violation/pay_traffic_violation/{id}/\', \'menu\': \'03feb65c538b41e28f4f5387cfab94b6\', \'method\': 2, \'value\': \'Disable\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('b981eaa775bb410ca9d3434d2c894747', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:16:04.487598', '2024-03-22 22:16:04.487598', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('bd3c24ee92454ed9b6522ae72ce53689', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:23.376232', '2024-03-23 01:05:23.376232', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('be5ea04051ff4a168ec18f8f9a564a13', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:37:02.939205', '2024-03-23 01:37:02.939205', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'car_number\': \'上述\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c022409994d440d994f62083047caae3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:55:03.203703', '2024-03-23 00:55:03.203703', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'5\', \'captchaKey\': 19}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c288929f8c314831ac14e8fbdcee80b5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:34:41.387904', '2024-03-22 21:34:41.387904', '菜单权限表', '/api/system/menu_button/6549b7c433a54037808506cf30c69e43/', '{\'id\': \'6549b7c433a54037808506cf30c69e43\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:33:54\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'编辑\', \'value\': \'Update\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 2, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c30397629d3f4dbbafe912d6ba4b9fd8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:10:36.002517', '2024-03-23 01:10:36.002517', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c320958fc105469887c3506f6730b11c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:34:57.450325', '2024-03-22 21:34:57.450325', '菜单权限表', '/api/system/menu_button/aa638fd4c3ce40f0ba02f015c95e36b4/', '{\'id\': \'aa638fd4c3ce40f0ba02f015c95e36b4\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'查询\', \'value\': \'Search\', \'api\': \'/api/violation/violation/\', \'method\': 0, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c38d9c2863d74084ab478228506779f8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:21.900043', '2024-03-23 01:05:21.900043', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c582f5140ad14eb7859e8af97ff3e6fa', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:35:17.079916', '2024-03-22 21:35:17.079916', '菜单权限表', '/api/system/menu_button/5e4089c38f3543baa33c5c872ed8642c/', '{\'id\': \'5e4089c38f3543baa33c5c872ed8642c\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'单例\', \'value\': \'Retrieve\', \'api\': \'/api/violation/violation/{id}/\', \'method\': 0, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('c5c7a7d1b48e4b3db8c04db4b03b4467', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:48:59.577279', '2024-03-23 00:48:59.577279', '用户表', '/api/users/users/disableuser/3/', '{\'id\': 3}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('cc78950d07e6447196fd761b858afc7f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:12:10.604857', '2024-03-23 01:12:10.604857', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': True, \'violation_time\': \'2024-03-22 22:53:49\', \'car_number\': \'asdasd\', \'violation_type\': \'dasdasd\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ce034a7e21b54f9ca859e5161477a2ba', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:08:06.493074', '2024-03-23 01:08:06.493074', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ce32f198729e42cf95ec7d781d4a6fee', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:14:35.024988', '2024-03-22 23:14:35.024988', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ceec13a3e3cb454994183cea5f44b494', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:25.265698', '2024-03-23 01:05:25.265698', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('cf1b026d2ba340b891105843232f235a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:15:17.289573', '2024-03-22 23:15:17.289573', '用户表', '/api/users/users/4/', '{\'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'id\': 4, \'username\': \'MScetar\', \'nickname\': \'MScetar\', \'mobile\': \'18888888888\', \'is_active\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('d051e3d763ff4249a2559eda861212b6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-16 15:36:42.342294', '2024-03-16 15:36:42.342294', '用户表', '/api/users/users/3/', '{\'id\': 3, \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2024-03-15 12:10:49\', \'dept_belong_id\': None, \'username\': \'test\', \'email\': None, \'mobile\': \'18888888888\', \'avatar\': None, \'name\': \'测试用户\', \'nickname\': \'测试用户\', \'gender\': None, \'identity\': 2, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': None, \'groups\': [], \'user_permissions\': [], \'password\': \'******\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('d0adcb81850f4f948c0671243dd55556', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:12:47.088244', '2024-03-23 01:12:47.088244', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('d158ceab1fef4fad9c776d7da5a545ac', NULL, NULL, NULL, '2024-03-23 00:54:59.320971', '2024-03-23 00:54:59.320971', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'30\', \'captchaKey\': 18}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'图片验证码错误\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('d4ecd0baedd744b99031ac24c75ff854', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 12:44:31.192253', '2024-03-21 12:44:31.192253', '用户表', '/api/users/users/4/', '{\'id\': 4, \'avatar\': \'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png\', \'username\': \'MScetar\', \'nickname\': \'MScetar\', \'mobile\': \'18888888888\', \'is_active\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('d632eaa263e14345903fabe3b20f74a6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:35:04.149020', '2024-03-22 21:35:04.149020', '菜单权限表', '/api/system/menu_button/76f1e278188a456db0556652971e3cb7/', '{\'id\': \'76f1e278188a456db0556652971e3cb7\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:27:52\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'新增\', \'value\': \'Create\', \'api\': \'/api/violation/violation/\', \'method\': 1, \'creator\': None, \'menu\': \'987fcad8ace84bd3867749a88627ef85\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('da05a89b8b0e4414bdadb415a0d3b819', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:59:47.809151', '2024-03-23 00:59:47.809151', '交通违章信息', '/api/violation/violation/1/', '{\'id\': \'1\', \'car_number\': \'鲁A123123\', \'violation_type\': \'闯红灯\', \'has_paid\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('df9febcedee545a2af505405c9709aeb', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:17:08.414474', '2024-03-23 01:17:08.414474', '交通违章信息', '/api/violation/violation/pay_traffic_violation/fad8349e2d4b4575b05fa807e4087dcf/', '{\'id\': \'fad8349e2d4b4575b05fa807e4087dcf\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('e0f565680ce74a03a7ae7a04b44249e6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:02:13.184881', '2024-03-23 01:02:13.184881', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('e235c6e04f044b74ad6253e3640e810f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:37:35.063040', '2024-03-22 21:37:35.063040', '菜单表', '/api/system/menu/987fcad8ace84bd3867749a88627ef85/', '{\'id\': \'987fcad8ace84bd3867749a88627ef85\', \'create_datetime\': \'2024-03-22 21:27:52\', \'update_datetime\': \'2024-03-22 21:36:37\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'WarnTriangleFilled\', \'name\': \'交通违章信息管理\', \'sort\': 0, \'is_link\': 0, \'web_path\': \'violationMange\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('e35de0d97a5b4454aec29985d4a0f7bf', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 13:00:31.615097', '2024-03-21 13:00:31.615097', '用户表', '/api/system/user/2/', '{\'id\': 2, \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'rolekey\': [\'admin\'], \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2024-03-15 12:10:49\', \'dept_belong_id\': None, \'username\': \'admin\', \'email\': None, \'mobile\': None, \'avatar\': None, \'name\': \'管理员\', \'nickname\': \'管理员\', \'gender\': None, \'identity\': 1, \'balance\': \'0.00\', \'is_delete\': False, \'creator\': None, \'dept\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'groups\': [], \'user_permissions\': [], \'role\': [\'36001d1a-1b3e-4413-bdfe-b3bc04375f46\'], \'password\': \'******\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('e5f99356e4624462bddff3a173a0d303', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:59:52.028509', '2024-03-23 00:59:52.028509', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('e922fb98675c4cdcb0269df890180059', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:16:27.770045', '2024-03-22 22:16:27.770045', '菜单表', '/api/system/menu/012265f1e0a040bdaa0a66b184ba9381/', '{\'id\': \'012265f1e0a040bdaa0a66b184ba9381\', \'create_datetime\': \'2024-03-22 22:11:01\', \'update_datetime\': \'2024-03-22 22:11:01\', \'menuPermission\': None, \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'icon\': \'Avatar\', \'name\': \'测试\', \'sort\': 15, \'is_link\': 0, \'web_path\': \'ceshi\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 1, \'cache\': 0, \'visible\': 1, \'creator\': 1, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ede37406d80a471293e9604a528c52c0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:30:05.356643', '2024-03-23 01:30:05.356643', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'50\', \'captchaKey\': 21}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f00e9ba8ae55462d9b8fb2e7e3acb92e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:42:58.821776', '2024-03-21 09:42:58.821776', '菜单表', '/api/system/menu/77edf447326b4e0dbc6f9719c1de8a12/', '{\'id\': \'77edf447326b4e0dbc6f9719c1de8a12\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': None, \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'TrendCharts\', \'name\': \'系统监控\', \'sort\': 888, \'is_link\': 0, \'web_path\': \'\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'\', \'children\': [{\'id\': \'bcbeeee5c91a4e2ea2c2a31237e33616\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'查询\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'服务监控\', \'sort\': 10, \'is_link\': 0, \'web_path\': \'server\', \'component\': None, \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'77edf447326b4e0dbc6f9719c1de8a12\', \'children\': []}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f0de3f9b797b455abe4e322e874e2375', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:58:56.508643', '2024-03-23 00:58:56.508643', '交通违章信息', '/api/violation/violation/1/', '{\'id\': \'1\', \'car_number\': \'鲁A123123\', \'violation_type\': \'闯红灯\', \'has_paid\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'violation_time:该字段是必填项。\'}', 0, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f174626418c44a518aec89977b5b8310', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:22.381768', '2024-03-23 01:05:22.381768', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f348c5e1d2b0472a95a38b9cffced585', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 21:56:53.804245', '2024-03-22 21:56:53.804245', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'32\', \'captchaKey\': 16}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f3620c16a43c46ef81d9d98a434c6c02', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:19.972691', '2024-03-23 01:05:19.972691', '用户表', '/api/users/users/disableuser/4/', '{\'id\': 4}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f4502bbaad0446a8b666d8c0dd4e909a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 00:58:38.929174', '2024-03-23 00:58:38.929174', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f574bc9d2a5944a689fceeed73e2dd21', NULL, NULL, NULL, '2024-03-18 17:13:43.139557', '2024-03-18 17:13:43.139557', '登录模块', '/api/token/', '{\'username\': \'superadmin\', \'password\': \'******\', \'captcha\': \'1\', \'captchaKey\': 6}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'验证码过期\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('f641ab149bbd46b3b19ddca21bdd4999', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 17:20:54.579983', '2024-03-21 17:20:54.579983', '菜单表', '/api/system/menu/d73f73a399af48cea6a8490ac508d7a0/', '{\'id\': \'d73f73a399af48cea6a8490ac508d7a0\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'禁用\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'user-filled\', \'name\': \'用户管理CRUD\', \'sort\': 7, \'is_link\': 0, \'web_path\': \'userManageCrud\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f766346b7d3c40e8a9e5bf1f8cecaa37', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:43:58.702554', '2024-03-21 09:43:58.702554', '菜单表', '/api/system/menu/e0f53902-e901-490c-83f3-331e60b97fcf/', '{\'id\': \'e0f53902-e901-490c-83f3-331e60b97fcf\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-21 09:43:36\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'按钮配置\', \'sort\': 2, \'is_link\': 0, \'web_path\': \'buttonConfig/:id/:name\', \'component\': \'system/ menuButton\', \'component_name\': None, \'status\': 1, \'isautopm\': 0, \'cache\': 0, \'visible\': 0, \'creator\': None, \'parent\': \'54f769b0-3dff-416c-8102-e55ec44827cc\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f8d9a2bef19b4b9e8938d412f7d1318f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:10:27.836957', '2024-03-23 01:10:27.836957', '交通违章信息', '/api/violation/violation/pay_traffic_violation/1/', '{\'id\': \'1\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('f9aabaf9aaae462a9e4f36802b5317fa', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:42:36.053606', '2024-03-21 09:42:36.053606', '菜单表', '/api/system/menu/3c13161f70f1469a913d539e7616c577/', '{\'id\': \'3c13161f70f1469a913d539e7616c577\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'查询\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'意见反馈\', \'sort\': 8, \'is_link\': 0, \'web_path\': \'userFeekback\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'d4e2fe169a8b40f3846421ac04e4fccb\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('fd0a964691684328a82a0c06cb512b2a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 23:01:27.395462', '2024-03-22 23:01:27.395462', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'新增\', \'api\': \'/api/violation/violation/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 1, \'value\': \'Create\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('fdb88d75de8643c49b08005205b116ba', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-21 09:42:31.555444', '2024-03-21 09:42:31.555444', '菜单表', '/api/system/menu/3171db16eda048ae92b16536fc1241b6/', '{\'id\': \'3171db16eda048ae92b16536fc1241b6\', \'create_datetime\': \'2024-03-15 12:10:49\', \'update_datetime\': \'2024-03-15 12:10:49\', \'menuPermission\': [\'编辑\', \'查询\', \'新增\', \'单例\', \'删除\'], \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'\', \'name\': \'平台公告\', \'sort\': 5, \'is_link\': 0, \'web_path\': \'messagNotice\', \'component\': None, \'component_name\': None, \'status\': 0, \'isautopm\': 0, \'cache\': 0, \'visible\': 1, \'creator\': None, \'parent\': \'d4e2fe169a8b40f3846421ac04e4fccb\', \'children\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('fe2a1b7029594350b413693623ad3248', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:34:09.096934', '2024-03-23 01:34:09.096934', '交通违章信息', '/api/violation/violation/', '{\'has_paid\': False, \'violation_time\': \'2024-03-22 22:53:49\', \'car_number\': \'啊是打算打算\', \'violation_type\': \'反反复复\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `lyadmin_operation_log` VALUES ('ffcdc6aaee664fb383c5bbf8f9c366ec', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-22 22:58:50.713589', '2024-03-22 22:58:50.713589', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'编辑\', \'api\': \'/api/violation/violation/{id}/\', \'menu\': \'012265f1e0a040bdaa0a66b184ba9381\', \'method\': 2, \'value\': \'Update\'}', 'POST', NULL, '127.0.0.1', 'Chrome 122.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);

-- ----------------------------
-- Table structure for lyadmin_post
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_post`;
CREATE TABLE `lyadmin_post`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `status` int NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_post_creator_id_15f90961`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_post
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_role
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role`;
CREATE TABLE `lyadmin_role`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `status` smallint NOT NULL,
  `admin` smallint NOT NULL,
  `data_range` smallint NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_role_creator_id_858b8a61`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role
-- ----------------------------
INSERT INTO `lyadmin_role` VALUES ('35b58d98-b506-4f93-be79-ed1e109da071', NULL, NULL, NULL, '2024-03-15 12:10:49.727657', '2024-03-15 12:10:49.727657', '普通用户', 'public', 2, 1, 0, 4, NULL, NULL);
INSERT INTO `lyadmin_role` VALUES ('36001d1a-1b3e-4413-bdfe-b3bc04375f46', NULL, NULL, NULL, '2024-03-15 12:10:49.706713', '2024-03-15 12:10:49.706713', '管理员', 'admin', 1, 1, 1, 3, NULL, NULL);

-- ----------------------------
-- Table structure for lyadmin_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_dept`;
CREATE TABLE `lyadmin_role_dept`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_dept_role_id_dept_id_75a8409d_uniq`(`role_id`, `dept_id`) USING BTREE,
  INDEX `lyadmin_role_dept_role_id_bf2e0106`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_dept_dept_id_4efa5a2b`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_dept
-- ----------------------------
INSERT INTO `lyadmin_role_dept` VALUES (1, '35b58d98-b506-4f93-be79-ed1e109da071', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_role_dept` VALUES (2, '35b58d98-b506-4f93-be79-ed1e109da071', 'fd8230ca-67bd-4347-8a9b-57eb19be5d9e');

-- ----------------------------
-- Table structure for lyadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_menu`;
CREATE TABLE `lyadmin_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `menu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_menu_role_id_menu_id_ee3d26d9_uniq`(`role_id`, `menu_id`) USING BTREE,
  INDEX `lyadmin_role_menu_role_id_68ec079a`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_menu_menu_id_27af6f62`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_menu
-- ----------------------------
INSERT INTO `lyadmin_role_menu` VALUES (25, '35b58d98-b506-4f93-be79-ed1e109da071', '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_role_menu` VALUES (27, '35b58d98-b506-4f93-be79-ed1e109da071', '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_role_menu` VALUES (28, '35b58d98-b506-4f93-be79-ed1e109da071', '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_role_menu` VALUES (26, '35b58d98-b506-4f93-be79-ed1e109da071', '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_role_menu` VALUES (24, '35b58d98-b506-4f93-be79-ed1e109da071', '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_role_menu` VALUES (4, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_role_menu` VALUES (2, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_role_menu` VALUES (19, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_role_menu` VALUES (5, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_role_menu` VALUES (12, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_role_menu` VALUES (3, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_role_menu` VALUES (6, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_role_menu` VALUES (14, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_role_menu` VALUES (11, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_role_menu` VALUES (7, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_role_menu` VALUES (10, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_role_menu` VALUES (20, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_role_menu` VALUES (18, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_role_menu` VALUES (16, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_role_menu` VALUES (23, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_role_menu` VALUES (15, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_role_menu` VALUES (21, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_role_menu` VALUES (13, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_role_menu` VALUES (22, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bcbeeee5c91a4e2ea2c2a31237e33616');
INSERT INTO `lyadmin_role_menu` VALUES (8, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c236fb6b-ddaa-4deb-b79b-16e42d9f347f');
INSERT INTO `lyadmin_role_menu` VALUES (1, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_role_menu` VALUES (17, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_role_menu` VALUES (9, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e0f53902-e901-490c-83f3-331e60b97fcf');

-- ----------------------------
-- Table structure for lyadmin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_permission`;
CREATE TABLE `lyadmin_role_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `menubutton_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_permission_role_id_menubutton_id_dfd195d1_uniq`(`role_id`, `menubutton_id`) USING BTREE,
  INDEX `lyadmin_role_permission_role_id_610a95e1`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_permission_menubutton_id_539eb394`(`menubutton_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_permission
-- ----------------------------
INSERT INTO `lyadmin_role_permission` VALUES (55, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0088e172566f4ee388092ec2be3584ee');
INSERT INTO `lyadmin_role_permission` VALUES (22, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0209de89-6b9f-4d8a-84d3-ccfc3cc8b4da');
INSERT INTO `lyadmin_role_permission` VALUES (78, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '04896a47-0f3a-4e2f-a111-bfe15f9e31c5');
INSERT INTO `lyadmin_role_permission` VALUES (58, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '05932c39ad444ac5aaf880d281620611');
INSERT INTO `lyadmin_role_permission` VALUES (77, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0d931efc-2f80-418f-b4a0-5251f0a88f69');
INSERT INTO `lyadmin_role_permission` VALUES (57, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '103d4310b98e4ff1ba71336af8d4c6c2');
INSERT INTO `lyadmin_role_permission` VALUES (25, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '10610c56-cec2-4774-9468-e1c763e59e70');
INSERT INTO `lyadmin_role_permission` VALUES (62, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '11d334fcadf1490e85e6a045126dea78');
INSERT INTO `lyadmin_role_permission` VALUES (10, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '140166e2-471e-455e-9dcd-05cebbbab95d');
INSERT INTO `lyadmin_role_permission` VALUES (42, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14514da3c11441c2b63f2331e3f897d0');
INSERT INTO `lyadmin_role_permission` VALUES (50, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14e7088f-a39b-47ae-bd67-b9bbcabae96b');
INSERT INTO `lyadmin_role_permission` VALUES (67, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14e7088fa39b47aebd67b9bbcabae96b');
INSERT INTO `lyadmin_role_permission` VALUES (16, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1a0c96cf-09a6-43b4-b08a-0c5b6e2f7bb8');
INSERT INTO `lyadmin_role_permission` VALUES (54, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1b4f27a7-8ab8-4388-ae57-46e29976cf0e');
INSERT INTO `lyadmin_role_permission` VALUES (31, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1d4441fdc418499f856c23aa4e1be2c0');
INSERT INTO `lyadmin_role_permission` VALUES (29, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '264cc3d69f7a46d5a117997e9c78506c');
INSERT INTO `lyadmin_role_permission` VALUES (23, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2a3d4756-4d51-4129-b3c4-b2c7a00dbb8a');
INSERT INTO `lyadmin_role_permission` VALUES (71, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2c53efc8-e6a4-4192-8688-03baed0874a4');
INSERT INTO `lyadmin_role_permission` VALUES (15, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '324776a3-48ec-4bca-bdd9-1838e2b6f7cc');
INSERT INTO `lyadmin_role_permission` VALUES (73, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '353595a28cb1463b830cfbf79fea60b5');
INSERT INTO `lyadmin_role_permission` VALUES (43, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3688b715-4689-468f-bf3e-6f910259f837');
INSERT INTO `lyadmin_role_permission` VALUES (61, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '37462e31-3cdf-4576-af10-5958f53b1bef');
INSERT INTO `lyadmin_role_permission` VALUES (9, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3e11db64-b8e8-4558-963b-71d063a7db16');
INSERT INTO `lyadmin_role_permission` VALUES (33, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3fd6ae6c-fd76-4465-b2b6-db672f4bd79e');
INSERT INTO `lyadmin_role_permission` VALUES (52, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '42ad6e05-7c84-444f-bcae-09de84f4988b');
INSERT INTO `lyadmin_role_permission` VALUES (69, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '43696212-ecba-4e66-8678-33c9bc935c76');
INSERT INTO `lyadmin_role_permission` VALUES (64, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '43696212ecba4e66867833c9bc935c76');
INSERT INTO `lyadmin_role_permission` VALUES (84, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4fe4b7f5-0bc8-4375-9f39-747e06ec285a');
INSERT INTO `lyadmin_role_permission` VALUES (12, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '51085c21-2279-490f-8878-594f059f7616');
INSERT INTO `lyadmin_role_permission` VALUES (17, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '59db5099a03f44c8adb883faa340c15a');
INSERT INTO `lyadmin_role_permission` VALUES (51, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '5aac29b0-5a32-45fb-81c5-437b48f4a5df');
INSERT INTO `lyadmin_role_permission` VALUES (59, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '5d77d14e-b199-481f-a97d-6e4c0e84fe71');
INSERT INTO `lyadmin_role_permission` VALUES (24, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6208f412-6bca-4d7b-a5a0-0103b7ba6091');
INSERT INTO `lyadmin_role_permission` VALUES (32, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6300774a-d19c-43ad-8102-d7bf341eff33');
INSERT INTO `lyadmin_role_permission` VALUES (21, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '646e9790-24f5-4606-abc4-0b5eede12f66');
INSERT INTO `lyadmin_role_permission` VALUES (26, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6b88361b326a4e55a8a5135c08ba66f1');
INSERT INTO `lyadmin_role_permission` VALUES (27, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6d6b6689d1224900b09c8101b3344f42');
INSERT INTO `lyadmin_role_permission` VALUES (18, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6e4251a948f348ccaa419a777a118048');
INSERT INTO `lyadmin_role_permission` VALUES (41, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '77096cd56a6441699345e6e4f22d0ec3');
INSERT INTO `lyadmin_role_permission` VALUES (38, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '7aef1da4647844e3944a2745cef1bc6d');
INSERT INTO `lyadmin_role_permission` VALUES (7, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80c8eb6939a245e9890dede241b5d1d6');
INSERT INTO `lyadmin_role_permission` VALUES (80, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80efc041695a42e4a9a04c010c6c7004');
INSERT INTO `lyadmin_role_permission` VALUES (36, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8228955d67bc4dc89638b523f58108ee');
INSERT INTO `lyadmin_role_permission` VALUES (63, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '875bdfeb-0c34-441d-8ee3-bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (4, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '875bdfeb0c34441d8ee3bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (82, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8ae924bd-576c-4ae1-92eb-b0a98148baae');
INSERT INTO `lyadmin_role_permission` VALUES (79, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8b7a0e79-a6ef-4946-87c6-8c042b887e1c');
INSERT INTO `lyadmin_role_permission` VALUES (81, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8f465aa674744313890cc8c59d3d0fd2');
INSERT INTO `lyadmin_role_permission` VALUES (8, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9565c5888bd4414c84ecede7af7d1554');
INSERT INTO `lyadmin_role_permission` VALUES (75, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '96022ae5-6425-47b9-8f89-01edc33eb2b7');
INSERT INTO `lyadmin_role_permission` VALUES (48, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '989ad685ce654dd1b367f41dedfdd0b9');
INSERT INTO `lyadmin_role_permission` VALUES (30, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9e6b2376-1ab0-4966-8d5d-4ad4f911d13c');
INSERT INTO `lyadmin_role_permission` VALUES (45, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9fc8436a-1996-478f-a155-5de7939a54dc');
INSERT INTO `lyadmin_role_permission` VALUES (74, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9fc8436a1996478fa1555de7939a54dc');
INSERT INTO `lyadmin_role_permission` VALUES (66, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a20a200c721c489b9925cdd5b5e6708c');
INSERT INTO `lyadmin_role_permission` VALUES (14, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a3088120763d49ad93498eb515c7c244');
INSERT INTO `lyadmin_role_permission` VALUES (60, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a69fb746c0aa4bd0b31b1480c9e4dcc0');
INSERT INTO `lyadmin_role_permission` VALUES (37, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'abe5c07f-0cab-4053-ac24-e782792e9d7f');
INSERT INTO `lyadmin_role_permission` VALUES (76, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'acfde861-1872-47e2-a1f1-abeda5175b7f');
INSERT INTO `lyadmin_role_permission` VALUES (1, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'af60d628-73b1-4c5d-b34e-7c70ab9bd87e');
INSERT INTO `lyadmin_role_permission` VALUES (47, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'b10f7d08-2592-4b54-8557-b5ca864a029a');
INSERT INTO `lyadmin_role_permission` VALUES (34, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bb7de9ee-5fd1-46f5-9849-088c522f49c7');
INSERT INTO `lyadmin_role_permission` VALUES (56, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bb7de9ee5fd146f59849088c522f49c7');
INSERT INTO `lyadmin_role_permission` VALUES (28, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bc114580-e62d-4e08-b707-843759817344');
INSERT INTO `lyadmin_role_permission` VALUES (40, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bc6104a0-f487-4dfd-a368-fb587d6d57d8');
INSERT INTO `lyadmin_role_permission` VALUES (72, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c2490dfba1644cae8f8ff85e2d6f1d3d');
INSERT INTO `lyadmin_role_permission` VALUES (39, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c8eee7f68c1845169b8d2af946502077');
INSERT INTO `lyadmin_role_permission` VALUES (44, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ca69833045ed4cf78c8586f7e55ba6db');
INSERT INTO `lyadmin_role_permission` VALUES (6, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'cf50028007164569a136fbdeaff7619c');
INSERT INTO `lyadmin_role_permission` VALUES (3, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd1b3c15f0c664857aeca1d9065d9c499');
INSERT INTO `lyadmin_role_permission` VALUES (11, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd22c0176-96e0-48b3-b81e-13443f306af5');
INSERT INTO `lyadmin_role_permission` VALUES (46, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd2e0608b5b4941ef8c3ff834977caeef');
INSERT INTO `lyadmin_role_permission` VALUES (2, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd419393d77e34f8e9c1eda5893f3bc87');
INSERT INTO `lyadmin_role_permission` VALUES (5, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'dcc58831-08d1-4469-8b01-fca71e0f497f');
INSERT INTO `lyadmin_role_permission` VALUES (65, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e6b93920-2236-46ec-841b-cff6f63ce788');
INSERT INTO `lyadmin_role_permission` VALUES (70, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e7fa30290d37447585ea7583d9d01f1b');
INSERT INTO `lyadmin_role_permission` VALUES (68, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'efcbf104971a4266a26d9469e58c1327');
INSERT INTO `lyadmin_role_permission` VALUES (19, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f0e080c0-275d-4085-b56c-735b49510eff');
INSERT INTO `lyadmin_role_permission` VALUES (13, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f19826f7df9842089cee94a795681b2e');
INSERT INTO `lyadmin_role_permission` VALUES (53, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f4e0b4aa230b4afba10a7ba58af3c454');
INSERT INTO `lyadmin_role_permission` VALUES (35, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fa7c32c9397c46b8821b62aae5512af0');
INSERT INTO `lyadmin_role_permission` VALUES (83, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fc71b446-fde1-439f-ab41-c38f30230caa');
INSERT INTO `lyadmin_role_permission` VALUES (20, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fcbe4cec-cc2d-436d-92ba-023f8c9ad31c');
INSERT INTO `lyadmin_role_permission` VALUES (49, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fe96f32c-6124-4b24-b809-4964186f5163');

-- ----------------------------
-- Table structure for lyadmin_system_config
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_system_config`;
CREATE TABLE `lyadmin_system_config`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `data_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `form_item_type` smallint NULL DEFAULT NULL,
  `rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `placeholder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `setting` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `creator_id` int NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_system_config_key_parent_id_97f056cc_uniq`(`key`, `parent_id`) USING BTREE,
  INDEX `lyadmin_system_config_key_7aeced64`(`key`) USING BTREE,
  INDEX `lyadmin_system_config_creator_id_bd4f327e`(`creator_id`) USING BTREE,
  INDEX `lyadmin_system_config_parent_id_2c3a27d0`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_system_config
-- ----------------------------
INSERT INTO `lyadmin_system_config` VALUES ('0e5ed3b69fd94a6daabff47d08244eb0', NULL, NULL, NULL, '2024-03-15 12:10:49.968622', '2024-03-15 12:10:49.968622', '客服电话', 'phone', '1888888888x', 1, 1, NULL, 0, NULL, '请输入电话号码', NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');
INSERT INTO `lyadmin_system_config` VALUES ('9c3e3670d4ee4898a1374cf780bcdc42', NULL, NULL, NULL, '2024-03-15 12:10:49.956657', '2024-03-15 12:10:49.956657', '基础配置', 'base', NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lyadmin_system_config` VALUES ('ae2987ded9d04dd7bc6a3aebfaf83f5f', NULL, NULL, NULL, '2024-03-15 12:10:49.976600', '2024-03-15 12:10:49.976600', '隐私协议', 'privatexy', '<p>隐私内容</p>', 2, 1, NULL, 14, NULL, '请输入内容', NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');
INSERT INTO `lyadmin_system_config` VALUES ('bbcabe17837d4233ac2a24a907dd27c3', NULL, NULL, NULL, '2024-03-15 12:10:49.982585', '2024-03-15 12:10:49.982585', 'logo', 'logo', 'http://127.0.0.1:8000/media/platform/2022-04-07/20220407120605_298.png', 3, 1, NULL, 7, NULL, NULL, NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');

-- ----------------------------
-- Table structure for lyadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users`;
CREATE TABLE `lyadmin_users`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` smallint NULL DEFAULT NULL,
  `identity` smallint NULL DEFAULT NULL,
  `balance` decimal(10, 2) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `lyadmin_users_creator_id_92824513`(`creator_id`) USING BTREE,
  INDEX `lyadmin_users_dept_id_ba5fbf41`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users
-- ----------------------------
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$dKYSRetDlOxAiXhbBO9UI6$iQL+4uGpDbd8ZzBSYRobvSMCuSsQbkta27fel8wl7Dc=', NULL, 1, '', '', 1, 1, '2024-03-15 12:10:49.752590', 1, NULL, '2024-03-15 12:10:49.752590', '2024-03-15 12:10:49.752590', 'superadmin', NULL, NULL, NULL, '超级管理员', '', NULL, 0, 0.00, 0, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$xXr2lWjHrTi03bWSxSdtIv$glstOQN684Ou0cvx4vO+8rJjHjxPD2hrrRzviOfZCyg=', NULL, 0, '', '', 1, 1, '2024-03-15 12:10:49.000000', 2, NULL, '2024-03-21 13:00:31.601134', '2024-03-15 12:10:49.786498', 'admin', NULL, NULL, NULL, '管理员', '管理员', NULL, 1, 0.00, 0, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$2JweHcy2hWtYOLie8HdjdR$piL2G0k1fu6YAJlooa7EDscSn8mOmQHKo1b/SqMhiR0=', NULL, 0, '', '', 0, 1, '2024-03-15 12:10:49.000000', 3, NULL, '2024-03-23 00:55:21.134049', '2024-03-15 12:10:49.870275', 'test', NULL, '18888888888', 'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124532_785.png', '测试用户', '测试用户', NULL, 2, 0.00, 0, NULL, '');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$TTYnGf5uR2Il8KfqUqBhjN$G39wFuEXsws4gc1aYakF5djoBZvZg0XvbXtLq4Ge8LA=', NULL, 0, '', '', 0, 1, '2024-03-15 18:53:13.000000', 4, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:05:25.260711', '2024-03-15 18:53:13.942328', 'MScetar', NULL, '18888888888', 'http://127.0.0.1:8000/media/platform/2024-03-21/20240321124429_257.png', 'MScetar', 'MScetar', NULL, 2, 0.00, 0, 1, NULL);

-- ----------------------------
-- Table structure for lyadmin_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_groups`;
CREATE TABLE `lyadmin_users_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_groups_users_id_group_id_a79dc867_uniq`(`users_id`, `group_id`) USING BTREE,
  INDEX `lyadmin_users_groups_group_id_c57fd8d6_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `lyadmin_users_groups_group_id_c57fd8d6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lyadmin_users_groups_users_id_8bf861d7_fk` FOREIGN KEY (`users_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_users_post
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_post`;
CREATE TABLE `lyadmin_users_post`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `post_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_post_users_id_post_id_b358d223_uniq`(`users_id`, `post_id`) USING BTREE,
  INDEX `lyadmin_users_post_users_id_f3295aea`(`users_id`) USING BTREE,
  INDEX `lyadmin_users_post_post_id_67f9ae2a`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_post
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_users_role
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_role`;
CREATE TABLE `lyadmin_users_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_role_users_id_role_id_475ae0d5_uniq`(`users_id`, `role_id`) USING BTREE,
  INDEX `lyadmin_users_role_users_id_25f578a0`(`users_id`) USING BTREE,
  INDEX `lyadmin_users_role_role_id_0f927f87`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_role
-- ----------------------------
INSERT INTO `lyadmin_users_role` VALUES (1, 2, '36001d1a-1b3e-4413-bdfe-b3bc04375f46');

-- ----------------------------
-- Table structure for lyadmin_users_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_user_permissions`;
CREATE TABLE `lyadmin_users_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_user_permi_users_id_permission_id_b174f27e_uniq`(`users_id`, `permission_id`) USING BTREE,
  INDEX `lyadmin_users_user_p_permission_id_0555113f_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `lyadmin_users_user_p_permission_id_0555113f_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lyadmin_users_user_permissions_users_id_7212a3dc_fk` FOREIGN KEY (`users_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `receiver` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `street` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `longitude` double NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_address_user_id_476bb898_fk`(`user_id`) USING BTREE,
  CONSTRAINT `tb_address_user_id_476bb898_fk` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_areas
-- ----------------------------
DROP TABLE IF EXISTS `tb_areas`;
CREATE TABLE `tb_areas`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `citycode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_areas_citycode_00cc8f3f`(`citycode`) USING BTREE,
  INDEX `tb_areas_creator_id_d3691ab2`(`creator_id`) USING BTREE,
  INDEX `tb_areas_parent_id_bae67575`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_areas
-- ----------------------------

-- ----------------------------
-- Table structure for tb_lunbo_manage
-- ----------------------------
DROP TABLE IF EXISTS `tb_lunbo_manage`;
CREATE TABLE `tb_lunbo_manage`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `creator_id` int NULL DEFAULT NULL,
  `link_type` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_lunbo_manage_creator_id_61e86919`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lunbo_manage
-- ----------------------------
INSERT INTO `tb_lunbo_manage` VALUES ('e86adc251eb348c1bc0d1534cb130d3e', NULL, NULL, NULL, '2024-03-15 12:10:49.889833', '2024-03-15 12:10:49.889833', '首页轮播图1', 1, 1, 1, 'http://127.0.0.1:8000/media/platform/2021-10-27/20211027110807_498.jpg', 'http://www.xxx.com', NULL, 0);

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `msg_chanel` int NOT NULL,
  `public` tinyint(1) NOT NULL,
  `msg_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `msg_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `to_path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `msg_type_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_message_msg_type_id_b4072045_fk_tb_message_template_id`(`msg_type_id`) USING BTREE,
  INDEX `tb_message_creator_id_3214601d`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_message_msg_type_id_b4072045_fk_tb_message_template_id` FOREIGN KEY (`msg_type_id`) REFERENCES `tb_message_template` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('7210a59d19fe406bbd237510344334bf', NULL, NULL, NULL, '2024-03-15 12:10:49.901800', '2024-03-15 12:10:49.902798', 2, 1, '测试消息', '<p>消息内容实体部分</p>', '/index/path', 1, NULL, NULL);

-- ----------------------------
-- Table structure for tb_message_template
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_template`;
CREATE TABLE `tb_message_template`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `tb_message_template_creator_id_3ec11b83`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message_template
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_user`;
CREATE TABLE `tb_message_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `read_at` datetime(6) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `messageid_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `revuserid_id` int NOT NULL,
  `senduserid_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_message_user_messageid_id_e64702d8_fk_tb_message_id`(`messageid_id`) USING BTREE,
  INDEX `tb_message_user_revuserid_id_b63a4813_fk`(`revuserid_id`) USING BTREE,
  INDEX `tb_message_user_senduserid_id_cb96b84f_fk`(`senduserid_id`) USING BTREE,
  CONSTRAINT `tb_message_user_messageid_id_e64702d8_fk_tb_message_id` FOREIGN KEY (`messageid_id`) REFERENCES `tb_message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_message_user_revuserid_id_b63a4813_fk` FOREIGN KEY (`revuserid_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_message_user_senduserid_id_cb96b84f_fk` FOREIGN KEY (`senduserid_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_monitor
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitor`;
CREATE TABLE `tb_monitor`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `online` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `days` smallint NOT NULL,
  `interval` smallint NOT NULL,
  `islocal` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_monitor_creator_id_27f410f2`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_monitor
-- ----------------------------

-- ----------------------------
-- Table structure for tb_oauth_wx
-- ----------------------------
DROP TABLE IF EXISTS `tb_oauth_wx`;
CREATE TABLE `tb_oauth_wx`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `xcx_openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gzh_openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nick` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unionId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `session_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xcx_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gzh_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gzh_refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gzh_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobilePhoneNumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `tb_oauth_wx_xcx_openid_86e639c2`(`xcx_openid`) USING BTREE,
  INDEX `tb_oauth_wx_gzh_openid_534fea1f`(`gzh_openid`) USING BTREE,
  CONSTRAINT `tb_oauth_wx_user_id_2a271e12_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_oauth_wx
-- ----------------------------

-- ----------------------------
-- Table structure for tb_other_manage
-- ----------------------------
DROP TABLE IF EXISTS `tb_other_manage`;
CREATE TABLE `tb_other_manage`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `type` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_other_manage_creator_id_125ff1a6`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_other_manage
-- ----------------------------
INSERT INTO `tb_other_manage` VALUES ('34799dd05d094458bd2b200d3f211eda', NULL, NULL, NULL, '2024-03-15 12:10:49.929725', '2024-03-15 12:10:49.929725', 1, 1, '客服电话', 'customerservicephone', '4006668888', 1, NULL);
INSERT INTO `tb_other_manage` VALUES ('4ef8d8c46f2649438bddaba3628e3271', NULL, NULL, NULL, '2024-03-15 12:10:49.938701', '2024-03-15 12:10:49.938701', 1, 2, '关于我们', 'aboutus', '<p>我是关于我们的简介，请写在这里</p>', 2, NULL);
INSERT INTO `tb_other_manage` VALUES ('6261abf71d3b4ead9b1213225933b50f', NULL, NULL, NULL, '2024-03-15 12:10:49.945684', '2024-03-15 12:10:49.945684', 1, 3, '公司logo', 'companylogo', 'http://127.0.0.1:8000/media/platform/2022-04-07/20220407120605_298.png', 2, NULL);

-- ----------------------------
-- Table structure for tb_traffic_violation
-- ----------------------------
DROP TABLE IF EXISTS `tb_traffic_violation`;
CREATE TABLE `tb_traffic_violation`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `car_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `violation_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `violation_time` datetime(6) NULL DEFAULT NULL,
  `has_paid` tinyint(1) NOT NULL,
  `creator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_traffic_violation_creator_id_e38aa832`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_traffic_violation
-- ----------------------------
INSERT INTO `tb_traffic_violation` VALUES ('1', NULL, NULL, NULL, '2024-03-23 01:30:12.511727', NULL, '鲁A123123', '闯红灯', '2024-03-22 22:53:49.000000', 0, NULL);
INSERT INTO `tb_traffic_violation` VALUES ('24bbf985a74845adbe19b9180e8c8eb3', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:34:09.091947', '2024-03-23 01:34:09.092946', '啊是打算打算', '反反复复', '2024-03-22 22:53:49.000000', 0, 1);
INSERT INTO `tb_traffic_violation` VALUES ('f5d4201adc5e468e95ba8759f9cdaabc', NULL, '1', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2024-03-23 01:15:17.527360', '2024-03-23 01:14:57.854689', 'fsfasf', 'dd', '2024-03-22 22:53:49.000000', 1, 1);

-- ----------------------------
-- Table structure for tb_user_leaving
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_leaving`;
CREATE TABLE `tb_user_leaving`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `message_type` smallint NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_user_leaving_user_id_44ed0394_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  INDEX `tb_user_leaving_creator_id_13389dc5`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_user_leaving_user_id_44ed0394_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_leaving
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
