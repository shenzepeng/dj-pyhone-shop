/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/04/2021 19:01:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (25, 'Can add 商品信息', 7, 'add_goods');
INSERT INTO `auth_permission` VALUES (26, 'Can change 商品信息', 7, 'change_goods');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 商品信息', 7, 'delete_goods');
INSERT INTO `auth_permission` VALUES (28, 'Can view 商品信息', 7, 'view_goods');
INSERT INTO `auth_permission` VALUES (29, 'Can add 商品类别', 8, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (30, 'Can change 商品类别', 8, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 商品类别', 8, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (32, 'Can view 商品类别', 8, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (33, 'Can add 热搜排行', 9, 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES (34, 'Can change 热搜排行', 9, 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 热搜排行', 9, 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES (36, 'Can view 热搜排行', 9, 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES (37, 'Can add 首页广告', 10, 'add_indexad');
INSERT INTO `auth_permission` VALUES (38, 'Can change 首页广告', 10, 'change_indexad');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 首页广告', 10, 'delete_indexad');
INSERT INTO `auth_permission` VALUES (40, 'Can view 首页广告', 10, 'view_indexad');
INSERT INTO `auth_permission` VALUES (41, 'Can add 商品轮播', 11, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (42, 'Can change 商品轮播', 11, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 商品轮播', 11, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (44, 'Can view 商品轮播', 11, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (45, 'Can add 宣传品牌', 12, 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (46, 'Can change 宣传品牌', 12, 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 宣传品牌', 12, 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (48, 'Can view 宣传品牌', 12, 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (49, 'Can add 首页轮播', 13, 'add_banner');
INSERT INTO `auth_permission` VALUES (50, 'Can change 首页轮播', 13, 'change_banner');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 首页轮播', 13, 'delete_banner');
INSERT INTO `auth_permission` VALUES (52, 'Can view 首页轮播', 13, 'view_banner');
INSERT INTO `auth_permission` VALUES (53, 'Can add 订单商品', 14, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (54, 'Can change 订单商品', 14, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 订单商品', 14, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (56, 'Can view 订单商品', 14, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (57, 'Can add 订单信息', 15, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (58, 'Can change 订单信息', 15, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 订单信息', 15, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (60, 'Can view 订单信息', 15, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (61, 'Can add 购物车', 16, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (62, 'Can change 购物车', 16, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 购物车', 16, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (64, 'Can view 购物车', 16, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (65, 'Can add 收货地址', 17, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (66, 'Can change 收货地址', 17, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 收货地址', 17, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (68, 'Can view 收货地址', 17, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (69, 'Can add 用户收藏', 18, 'add_userfav');
INSERT INTO `auth_permission` VALUES (70, 'Can change 用户收藏', 18, 'change_userfav');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 用户收藏', 18, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (72, 'Can view 用户收藏', 18, 'view_userfav');
INSERT INTO `auth_permission` VALUES (73, 'Can add 用户留言', 19, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (74, 'Can change 用户留言', 19, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 用户留言', 19, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户留言', 19, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (77, 'Can add Token', 20, 'add_token');
INSERT INTO `auth_permission` VALUES (78, 'Can change Token', 20, 'change_token');
INSERT INTO `auth_permission` VALUES (79, 'Can delete Token', 20, 'delete_token');
INSERT INTO `auth_permission` VALUES (80, 'Can view Token', 20, 'view_token');
INSERT INTO `auth_permission` VALUES (81, 'Can add association', 21, 'add_association');
INSERT INTO `auth_permission` VALUES (82, 'Can change association', 21, 'change_association');
INSERT INTO `auth_permission` VALUES (83, 'Can delete association', 21, 'delete_association');
INSERT INTO `auth_permission` VALUES (84, 'Can view association', 21, 'view_association');
INSERT INTO `auth_permission` VALUES (85, 'Can add code', 22, 'add_code');
INSERT INTO `auth_permission` VALUES (86, 'Can change code', 22, 'change_code');
INSERT INTO `auth_permission` VALUES (87, 'Can delete code', 22, 'delete_code');
INSERT INTO `auth_permission` VALUES (88, 'Can view code', 22, 'view_code');
INSERT INTO `auth_permission` VALUES (89, 'Can add nonce', 23, 'add_nonce');
INSERT INTO `auth_permission` VALUES (90, 'Can change nonce', 23, 'change_nonce');
INSERT INTO `auth_permission` VALUES (91, 'Can delete nonce', 23, 'delete_nonce');
INSERT INTO `auth_permission` VALUES (92, 'Can view nonce', 23, 'view_nonce');
INSERT INTO `auth_permission` VALUES (93, 'Can add user social auth', 24, 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES (94, 'Can change user social auth', 24, 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES (95, 'Can delete user social auth', 24, 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES (96, 'Can view user social auth', 24, 'view_usersocialauth');
INSERT INTO `auth_permission` VALUES (97, 'Can add partial', 25, 'add_partial');
INSERT INTO `auth_permission` VALUES (98, 'Can change partial', 25, 'change_partial');
INSERT INTO `auth_permission` VALUES (99, 'Can delete partial', 25, 'delete_partial');
INSERT INTO `auth_permission` VALUES (100, 'Can view partial', 25, 'view_partial');
INSERT INTO `auth_permission` VALUES (101, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (104, 'Can view captcha store', 26, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (105, 'Can add TyAdmin邮箱验证码', 27, 'add_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (106, 'Can change TyAdmin邮箱验证码', 27, 'change_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (107, 'Can delete TyAdmin邮箱验证码', 27, 'delete_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (108, 'Can view TyAdmin邮箱验证码', 27, 'view_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (109, 'Can add 系统日志', 28, 'add_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (110, 'Can change 系统日志', 28, 'change_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 系统日志', 28, 'delete_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (112, 'Can view 系统日志', 28, 'view_tyadminsyslog');

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token`  (
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (1, 'KRWE', 'krwe', 'd9fb81a3b740741b41610c2cce5258af09b963f5', '2021-04-23 16:19:22.072911');
INSERT INTO `captcha_captchastore` VALUES (2, 'HJZD', 'hjzd', '019772ba98069a1dd891d10698e7aabc125b9bac', '2021-04-23 16:20:44.277554');
INSERT INTO `captcha_captchastore` VALUES (3, 'LRZJ', 'lrzj', '7be77ead8869450c6e9bcacefaa9ac42aad4e97c', '2021-04-23 16:31:30.430855');
INSERT INTO `captcha_captchastore` VALUES (4, 'ZVIZ', 'zviz', '4a4a4098cce10454516c5e2608c7c44d22d05242', '2021-04-23 16:31:45.320224');
INSERT INTO `captcha_captchastore` VALUES (5, 'MMDT', 'mmdt', 'f65a7a2c65cdf9bc0456c1a995866bc28652c7f8', '2021-04-23 16:31:50.753612');
INSERT INTO `captcha_captchastore` VALUES (7, 'NGUJ', 'nguj', '9d3036956d01987d68779d19ed6ddc6ea16d67e5', '2021-04-23 16:32:01.107669');
INSERT INTO `captcha_captchastore` VALUES (9, 'KCKZ', 'kckz', '5ab529eb871ecb623508d42699f384a8cd309ae8', '2021-04-23 16:32:35.334105');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (20, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'goods', 'banner');
INSERT INTO `django_content_type` VALUES (7, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (8, 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES (12, 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES (11, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (9, 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES (10, 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (21, 'social_django', 'association');
INSERT INTO `django_content_type` VALUES (22, 'social_django', 'code');
INSERT INTO `django_content_type` VALUES (23, 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES (25, 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES (24, 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES (14, 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES (15, 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES (16, 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (27, 'tyadmin_api', 'tyadminemailverifyrecord');
INSERT INTO `django_content_type` VALUES (28, 'tyadmin_api', 'tyadminsyslog');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (17, 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES (18, 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES (19, 'user_operation', 'userleavingmessage');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-04-23 15:56:24.612746');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2021-04-23 15:56:26.589142');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2021-04-23 15:56:28.184900');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2021-04-23 15:56:33.040492');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2021-04-23 15:56:33.141021');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2021-04-23 15:56:33.203483');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2021-04-23 15:56:33.266923');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2021-04-23 15:56:33.358671');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2021-04-23 15:56:33.428940');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2021-04-23 15:56:33.499213');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2021-04-23 15:56:33.559723');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2021-04-23 15:56:34.559147');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2021-04-23 15:56:34.612826');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2021-04-23 15:56:34.813882');
INSERT INTO `django_migrations` VALUES (15, 'users', '0001_initial', '2021-04-23 15:56:36.182231');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2021-04-23 15:56:41.640991');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2021-04-23 15:56:44.036093');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-23 15:56:44.108315');
INSERT INTO `django_migrations` VALUES (19, 'authtoken', '0001_initial', '2021-04-23 15:56:44.681228');
INSERT INTO `django_migrations` VALUES (20, 'authtoken', '0002_auto_20160226_1747', '2021-04-23 15:56:47.163191');
INSERT INTO `django_migrations` VALUES (21, 'captcha', '0001_initial', '2021-04-23 15:56:47.781974');
INSERT INTO `django_migrations` VALUES (22, 'goods', '0001_initial', '2021-04-23 15:56:51.616673');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2021-04-23 15:57:00.793986');
INSERT INTO `django_migrations` VALUES (24, 'default', '0001_initial', '2021-04-23 15:57:04.854142');
INSERT INTO `django_migrations` VALUES (25, 'social_auth', '0001_initial', '2021-04-23 15:57:04.897087');
INSERT INTO `django_migrations` VALUES (26, 'default', '0002_add_related_name', '2021-04-23 15:57:08.124713');
INSERT INTO `django_migrations` VALUES (27, 'social_auth', '0002_add_related_name', '2021-04-23 15:57:08.245737');
INSERT INTO `django_migrations` VALUES (28, 'default', '0003_alter_email_max_length', '2021-04-23 15:57:09.937142');
INSERT INTO `django_migrations` VALUES (29, 'social_auth', '0003_alter_email_max_length', '2021-04-23 15:57:10.003509');
INSERT INTO `django_migrations` VALUES (30, 'default', '0004_auto_20160423_0400', '2021-04-23 15:57:10.195783');
INSERT INTO `django_migrations` VALUES (31, 'social_auth', '0004_auto_20160423_0400', '2021-04-23 15:57:10.347061');
INSERT INTO `django_migrations` VALUES (32, 'social_auth', '0005_auto_20160727_2333', '2021-04-23 15:57:10.664261');
INSERT INTO `django_migrations` VALUES (33, 'social_django', '0006_partial', '2021-04-23 15:57:11.403091');
INSERT INTO `django_migrations` VALUES (34, 'social_django', '0007_code_timestamp', '2021-04-23 15:57:12.320530');
INSERT INTO `django_migrations` VALUES (35, 'social_django', '0008_partial_timestamp', '2021-04-23 15:57:13.337559');
INSERT INTO `django_migrations` VALUES (36, 'social_django', '0009_auto_20191118_0520', '2021-04-23 15:57:14.722501');
INSERT INTO `django_migrations` VALUES (37, 'social_django', '0010_uid_db_index', '2021-04-23 15:57:15.011399');
INSERT INTO `django_migrations` VALUES (38, 'trade', '0001_initial', '2021-04-23 15:57:17.028786');
INSERT INTO `django_migrations` VALUES (39, 'trade', '0002_auto_20210423_1556', '2021-04-23 15:57:24.316604');
INSERT INTO `django_migrations` VALUES (40, 'user_operation', '0001_initial', '2021-04-23 15:57:26.007036');
INSERT INTO `django_migrations` VALUES (41, 'user_operation', '0002_auto_20210423_1556', '2021-04-23 15:57:31.949890');
INSERT INTO `django_migrations` VALUES (42, 'social_django', '0004_auto_20160423_0400', '2021-04-23 15:57:32.006496');
INSERT INTO `django_migrations` VALUES (43, 'social_django', '0003_alter_email_max_length', '2021-04-23 15:57:32.178271');
INSERT INTO `django_migrations` VALUES (44, 'social_django', '0002_add_related_name', '2021-04-23 15:57:32.304176');
INSERT INTO `django_migrations` VALUES (45, 'social_django', '0001_initial', '2021-04-23 15:57:32.475954');
INSERT INTO `django_migrations` VALUES (46, 'social_django', '0005_auto_20160727_2333', '2021-04-23 15:57:32.557938');
INSERT INTO `django_migrations` VALUES (47, 'tyadmin_api', '0001_initial', '2021-04-23 16:27:27.498702');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('qtvokmff6cw6iqw25uxpcgsrzcijjcqt', '.eJxVjMEOwiAQRP-FsyFloWvx6N1vIAsLUjWQlPZk_Hdp0oOeJnnzZt7C0bZmt7W4uJnFRShx-mWewjOWveAHlXuVoZZ1mb3cFXm0Td4qx9f1cP8OMrXc10DWTOQTw6hN8jaiNmGyFEkzoCGbOgW0ASHhiGcFAXjQalDYE1B8vu0cN2w:1lZrA0:kbv3E6MBgIlVPip0ftxf6lYTyTjTRZMGx1uQdohyUYo', '2021-05-07 16:27:36.715145');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_banner_goods_id_99e23129_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
INSERT INTO `goods_banner` VALUES (2, 'banner/l2.jpg', 0, '2021-04-23 14:25:55.957025', 1);
INSERT INTO `goods_banner` VALUES (3, 'banner/l1_QNqheAX.jpg', 0, '2021-04-23 14:26:05.184327', 1);

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int NOT NULL,
  `sold_num` int NOT NULL,
  `fav_num` int NOT NULL,
  `goods_num` int NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES (1, '', '小熊卫衣春秋薄款2020新款宽松韩版潮ins白色短款圆领女上衣衣服', 9, 0, 0, 49, 55, 55, '小熊', '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-22-b434a8e8-4fd4-487e-9810-89922a27f8bc-O1CN01xVysjJ1orN38F7RP9_!!3073065278.jpg\"/></div><p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-22-a6a016d4-dd3b-4d03-985f-203afbec8640-O1CN01Bk7z361orN38IpIyc_!!3073065278.jpg\"/></div><p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-22-d63c8287-d12b-4185-98a9-57e8e2eb0cd9-O1CN01slhnHZ1orN37awsLK_!!3073065278.jpg\"/></div><p></p>', 1, 'goods/images/微信截图_20210422172514_50J1IZD.png', 1, 1, '2021-04-22 17:28:09.000000', 5);
INSERT INTO `goods_goods` VALUES (2, '', '华为/HUAWEI Mate X2折叠旗舰5nm麒麟9000芯片折叠屏', 12, 3, 0, 100, 17799, 17799, '华为/HUAWEI Mate X2', '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-50406db4-3027-4275-a080-ce35ba8af654-O1CN01Ha1wJe1VubBf1uiMY_!!2838892713.jpg\"/></div><p></p>', 1, 'goods/images/微信截图_20210423143112.png', 1, 1, '2021-04-23 14:31:55.921005', 38);
INSERT INTO `goods_goods` VALUES (3, '', '侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女', 77, 55, 23, 200, 12, 12, 'iphone手机壳', '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>', 1, 'goods/images/微信截图_20210423163307_7e8vOwh.png', 0, 0, '2021-04-23 16:34:50.000000', 51);
INSERT INTO `goods_goods` VALUES (4, '', '情侣新款打工人男女孩卡通适用iPhone12/mini/11/pro/max手机壳苹果11/xr/x/xs创意个性防摔8Plus/7p/SE2韩潮', 126, 23, 22, 153, 15, 15, 'iphone手机壳', '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-91e706e0-7cca-4687-85d6-a7a740f49584-O1CN01hW912d27ftrBqCp2h_!!2206951447825.jpg\"/></div><p></p><p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-f7ab94f3-4ee1-4646-9e0c-cda6d50bb382-O1CN01JR36Fh27fts4FKzYy_!!2206951447825.jpg\"/></div><p></p><p></p>', 1, 'goods/images/微信截图_20210423183542.png', 0, 1, '2021-04-23 18:37:45.888092', 51);

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------
INSERT INTO `goods_goodsbrand` VALUES (2, '华为', '', 'brands/微信截图_20210423143704_7lMN4Mw.png', '2021-04-23 14:37:12.000000', 31);
INSERT INTO `goods_goodsbrand` VALUES (4, 'vivo', '', 'brands/微信截图_20210423184203.png', '2021-04-23 18:42:18.928863', 31);
INSERT INTO `goods_goodsbrand` VALUES (5, 'oppo', '', 'brands/微信截图_20210423184208.png', '2021-04-23 18:42:40.283975', 31);
INSERT INTO `goods_goodsbrand` VALUES (6, 'iphone', '', 'brands/微信截图_20210423184707.png', '2021-04-23 18:47:35.062452', 31);

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_type` int NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo`(`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES (1, '女装', 'nvzhuang', '', 1, 1, '2021-04-22 16:06:47.981250', NULL);
INSERT INTO `goods_goodscategory` VALUES (2, '男装', 'nanzhuang', '', 1, 1, '2021-04-22 16:07:08.106027', NULL);
INSERT INTO `goods_goodscategory` VALUES (3, '箱包', 'xiangbao', '', 1, 1, '2021-04-22 16:08:09.666635', NULL);
INSERT INTO `goods_goodscategory` VALUES (4, '上装', 'shangzhuang', '', 2, 1, '2021-04-22 16:10:04.000000', 1);
INSERT INTO `goods_goodscategory` VALUES (5, '卫衣', 'weiyi', '', 3, 1, '2021-04-22 16:11:20.000000', 4);
INSERT INTO `goods_goodscategory` VALUES (6, '毛衣', 'maoyi', '', 3, 1, '2021-04-22 16:19:00.000000', 4);
INSERT INTO `goods_goodscategory` VALUES (7, '裤子', 'kuzi', '', 2, 1, '2021-04-22 16:20:02.337845', 2);
INSERT INTO `goods_goodscategory` VALUES (8, '休闲长裤', 'xiuxianchangku', '', 3, 1, '2021-04-22 16:20:35.810309', 7);
INSERT INTO `goods_goodscategory` VALUES (9, '牛仔长裤', 'niuzaichangku', '', 3, 1, '2021-04-22 16:21:09.305579', 7);
INSERT INTO `goods_goodscategory` VALUES (10, '卫裤', 'weiku', '', 3, 1, '2021-04-22 16:21:38.950587', 7);
INSERT INTO `goods_goodscategory` VALUES (11, '女士包袋', 'nvshibaodai', '', 2, 1, '2021-04-22 16:22:13.989824', 3);
INSERT INTO `goods_goodscategory` VALUES (12, '男士包袋', 'nanshibaodai', '', 2, 1, '2021-04-22 16:22:28.692050', 3);
INSERT INTO `goods_goodscategory` VALUES (13, '功能类箱包', 'gongnengleixiangbao', '', 2, 1, '2021-04-22 16:22:58.000000', 3);
INSERT INTO `goods_goodscategory` VALUES (14, '女士斜挎包', 'nvshixiekuabao', '', 3, 1, '2021-04-22 16:23:36.105646', 11);
INSERT INTO `goods_goodscategory` VALUES (15, '男士胸包', 'nanshixiongbao', '', 3, 1, '2021-04-22 16:25:07.683194', 12);
INSERT INTO `goods_goodscategory` VALUES (16, '男士斜挎包', 'nanshixiekuabao', '', 3, 1, '2021-04-22 16:25:34.936852', 12);
INSERT INTO `goods_goodscategory` VALUES (17, '女士单肩包', 'nvshidanjianbao', '', 3, 1, '2021-04-22 16:26:11.105740', 11);
INSERT INTO `goods_goodscategory` VALUES (18, '双肩背包', 'shuangjianbeibao', '', 3, 1, '2021-04-22 16:26:50.457436', 13);
INSERT INTO `goods_goodscategory` VALUES (19, '旅行箱', 'lvxingxiang', '', 3, 1, '2021-04-22 16:27:05.950868', 13);
INSERT INTO `goods_goodscategory` VALUES (20, '钱包', 'qianbao', '', 3, 1, '2021-04-22 16:27:27.800626', 13);
INSERT INTO `goods_goodscategory` VALUES (21, '鞋', 'xie', '', 1, 1, '2021-04-22 16:27:55.214691', NULL);
INSERT INTO `goods_goodscategory` VALUES (22, '女鞋', 'nvxie', '', 2, 1, '2021-04-22 16:28:09.891068', 21);
INSERT INTO `goods_goodscategory` VALUES (23, '男鞋', 'nanxie', '', 2, 1, '2021-04-22 16:28:25.193143', 21);
INSERT INTO `goods_goodscategory` VALUES (24, '运动鞋', 'yundongxie', '', 3, 1, '2021-04-22 16:28:56.624580', 22);
INSERT INTO `goods_goodscategory` VALUES (25, '马丁靴', '', '', 3, 1, '2021-04-22 16:29:13.232223', 22);
INSERT INTO `goods_goodscategory` VALUES (26, '雪地靴', '', '', 3, 1, '2021-04-22 16:30:45.759436', 22);
INSERT INTO `goods_goodscategory` VALUES (27, '高跟鞋', '', '', 3, 1, '2021-04-22 16:30:55.744914', 22);
INSERT INTO `goods_goodscategory` VALUES (28, '休闲皮鞋', '', '', 3, 1, '2021-04-22 16:43:27.021496', 23);
INSERT INTO `goods_goodscategory` VALUES (29, '帆布鞋', '', '', 3, 1, '2021-04-22 16:43:38.980275', 23);
INSERT INTO `goods_goodscategory` VALUES (30, '马丁靴', '', '', 3, 1, '2021-04-22 16:43:57.621463', 23);
INSERT INTO `goods_goodscategory` VALUES (31, '数码', '', '', 1, 1, '2021-04-22 16:44:51.809983', NULL);
INSERT INTO `goods_goodscategory` VALUES (32, '手机', '', '', 2, 1, '2021-04-22 16:45:05.678163', 31);
INSERT INTO `goods_goodscategory` VALUES (33, '电脑笔记本', '', '', 2, 1, '2021-04-22 16:45:26.844826', 31);
INSERT INTO `goods_goodscategory` VALUES (34, '手机配件', '', '', 2, 1, '2021-04-22 16:45:42.807926', 31);
INSERT INTO `goods_goodscategory` VALUES (35, '通讯服务', '', '', 2, 1, '2021-04-22 16:45:52.617831', 31);
INSERT INTO `goods_goodscategory` VALUES (36, '影音娱乐', '', '', 2, 1, '2021-04-22 16:46:16.969448', 31);
INSERT INTO `goods_goodscategory` VALUES (37, '智能设备', '', '', 2, 1, '2021-04-22 16:46:28.000000', 31);
INSERT INTO `goods_goodscategory` VALUES (38, '华为手机', '', '', 3, 1, '2021-04-22 16:47:35.494409', 32);
INSERT INTO `goods_goodscategory` VALUES (39, '苹果手机', '', '', 3, 1, '2021-04-22 16:48:06.319814', 32);
INSERT INTO `goods_goodscategory` VALUES (40, 'vivo手机', '', '', 3, 1, '2021-04-22 16:48:19.513660', 32);
INSERT INTO `goods_goodscategory` VALUES (41, 'oppo手机', '', '', 3, 1, '2021-04-22 16:48:29.173595', 32);
INSERT INTO `goods_goodscategory` VALUES (42, '小米手机', '', '', 3, 1, '2021-04-22 16:48:39.449428', 32);
INSERT INTO `goods_goodscategory` VALUES (43, '笔记本电脑', '', '', 3, 1, '2021-04-22 17:10:01.529176', 33);
INSERT INTO `goods_goodscategory` VALUES (44, '平板电脑', '', '', 3, 1, '2021-04-22 17:10:13.993545', 33);
INSERT INTO `goods_goodscategory` VALUES (45, '整体一体机', '', '', 3, 1, '2021-04-22 17:10:36.459941', 33);
INSERT INTO `goods_goodscategory` VALUES (46, '显示器', '', '', 3, 1, '2021-04-22 17:10:55.858594', 33);
INSERT INTO `goods_goodscategory` VALUES (47, '鼠标键盘', '', '', 3, 1, '2021-04-22 17:11:05.351082', 33);
INSERT INTO `goods_goodscategory` VALUES (48, '智能手表', '', '', 3, 1, '2021-04-22 17:11:31.747663', 37);
INSERT INTO `goods_goodscategory` VALUES (49, '无人机', '', '', 3, 1, '2021-04-22 17:11:48.026344', 37);
INSERT INTO `goods_goodscategory` VALUES (50, '智能平衡车', '', '', 3, 1, '2021-04-22 17:12:10.955473', 37);
INSERT INTO `goods_goodscategory` VALUES (51, '手机壳', '', '', 3, 1, '2021-04-22 17:13:19.817126', 34);
INSERT INTO `goods_goodscategory` VALUES (52, '手机耳机', '', '', 3, 1, '2021-04-22 17:13:44.479971', 34);
INSERT INTO `goods_goodscategory` VALUES (53, '充电宝', '', '', 3, 1, '2021-04-22 17:13:58.097349', 34);
INSERT INTO `goods_goodscategory` VALUES (54, '手机充电器', '', '', 3, 1, '2021-04-22 17:14:11.010882', 34);
INSERT INTO `goods_goodscategory` VALUES (55, '数据线', '', '', 3, 1, '2021-04-22 17:14:34.890443', 34);
INSERT INTO `goods_goodscategory` VALUES (56, '手机贴膜', '', '', 3, 1, '2021-04-22 17:14:47.270819', 34);
INSERT INTO `goods_goodscategory` VALUES (57, '手机流量卡', '', '', 3, 1, '2021-04-22 17:15:35.106505', 35);
INSERT INTO `goods_goodscategory` VALUES (58, '话费充值', '', '', 3, 1, '2021-04-22 17:15:45.775699', 35);
INSERT INTO `goods_goodscategory` VALUES (59, '流量充值', '', '', 3, 1, '2021-04-22 17:16:07.164830', 35);

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES (1, '微信截图_20210422172514.png', '2021-04-22 17:30:42.112073', 1);
INSERT INTO `goods_goodsimage` VALUES (2, '微信截图_20210423143112.png', '2021-04-23 14:33:39.321937', 2);
INSERT INTO `goods_goodsimage` VALUES (3, '微信截图_20210423163307.png', '2021-04-23 16:46:30.803964', 3);
INSERT INTO `goods_goodsimage` VALUES (4, '微信截图_20210423183332.png', '2021-04-23 18:33:47.197311', 3);
INSERT INTO `goods_goodsimage` VALUES (5, '微信截图_20210423183542.png', '2021-04-23 18:58:17.884854', 4);

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES (1, '连衣裙', 0, '2021-04-23 14:26:48.907224');
INSERT INTO `goods_hotsearchwords` VALUES (2, '马丁靴', 0, '2021-04-23 14:26:54.933863');
INSERT INTO `goods_hotsearchwords` VALUES (3, '华为', 0, '2021-04-23 14:34:48.000000');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  INDEX `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------
INSERT INTO `goods_indexad` VALUES (1, 5, 1);
INSERT INTO `goods_indexad` VALUES (2, 38, 2);
INSERT INTO `goods_indexad` VALUES (3, 51, 3);
INSERT INTO `goods_indexad` VALUES (4, 51, 4);

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_association_server_url_handle_078befa2_uniq`(`server_url`, `handle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_code_email_code_801b2d02_uniq`(`email`, `code`) USING BTREE,
  INDEX `social_auth_code_code_a2393167`(`code`) USING BTREE,
  INDEX `social_auth_code_timestamp_176b341f`(`timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq`(`server_url`, `timestamp`, `salt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `next_step` smallint UNSIGNED NOT NULL,
  `backend` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `social_auth_partial_token_3017fea3`(`token`) USING BTREE,
  INDEX `social_auth_partial_timestamp_50f2119f`(`timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_usersocialauth_provider_uid_e6b5e668_uniq`(`provider`, `uid`) USING BTREE,
  INDEX `social_auth_usersoci_user_id_17d28448_fk_users_use`(`user_id`) USING BTREE,
  INDEX `social_auth_usersocialauth_uid_796e51dc`(`uid`) USING BTREE,
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_num` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id`(`goods_id`) USING BTREE,
  INDEX `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id`(`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------
INSERT INTO `trade_ordergoods` VALUES (1, 1, '2021-04-23 18:59:13.969966', 4, 1);

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nonce_str` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trade_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_script` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  UNIQUE INDEX `nonce_str`(`nonce_str`) USING BTREE,
  UNIQUE INDEX `trade_no`(`trade_no`) USING BTREE,
  INDEX `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------
INSERT INTO `trade_orderinfo` VALUES (1, '20210423185913186', NULL, NULL, 'paying', 'alipay', '123', 15, NULL, '山西省太原市小店区xxx', 'xxx', 'xxx', '2021-04-23 18:59:13.847958', 1);

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nums` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trade_shoppingcart_user_id_goods_id_92225e66_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for tyadmin_api_tyadminemailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `tyadmin_api_tyadminemailverifyrecord`;
CREATE TABLE `tyadmin_api_tyadminemailverifyrecord`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyadmin_api_tyadminemailverifyrecord
-- ----------------------------

-- ----------------------------
-- Table structure for tyadmin_api_tyadminsyslog
-- ----------------------------
DROP TABLE IF EXISTS `tyadmin_api_tyadminsyslog`;
CREATE TABLE `tyadmin_api_tyadminsyslog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyadmin_api_tyadminsyslog
-- ----------------------------
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (1, '2021-04-23 16:27:35.880665', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (2, '2021-04-23 16:34:50.622308', '127.0.0.1', '新增', '商品信息: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'goods_sn\': \'\', \'name\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'click_num\': 0, \'sold_num\': 0, \'fav_num\': 0, \'goods_num\': 0, \'market_price\': 0.0, \'shop_price\': 0.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>\', \'ship_free\': True, \'goods_front_image\': \'/media/goods/images/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423163307.png\', \'is_new\': True, \'is_hot\': True, \'add_time\': \'2021-04-23 16:34:50\', \'category\': 51}被新增', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (3, '2021-04-23 16:35:09.684677', '127.0.0.1', '更新', '商品信息: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'goods_sn\': \'\', \'name\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'click_num\': 0, \'sold_num\': 0, \'fav_num\': 0, \'goods_num\': 0, \'market_price\': 0.0, \'shop_price\': 0.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>\', \'ship_free\': True, \'goods_front_image\': \'http://127.0.0.1:8000/media/goods/images/%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_20210423163307.png\', \'is_new\': True, \'is_hot\': False, \'add_time\': \'2021-04-23 16:34:50\', \'category\': 51}被更新', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (4, '2021-04-23 16:36:10.401905', '127.0.0.1', '更新', '商品信息: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'goods_sn\': \'\', \'name\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'click_num\': 65, \'sold_num\': 55, \'fav_num\': 23, \'goods_num\': 200, \'market_price\': 12.0, \'shop_price\': 12.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>\', \'ship_free\': True, \'goods_front_image\': \'http://127.0.0.1:8000/media/goods/images/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423163307_U1b9MrW.png\', \'is_new\': True, \'is_hot\': False, \'add_time\': \'2021-04-23 16:34:50\', \'category\': 51}被更新', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (5, '2021-04-23 16:36:33.486737', '127.0.0.1', '更新', '商品信息: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'goods_sn\': \'\', \'name\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'click_num\': 65, \'sold_num\': 55, \'fav_num\': 23, \'goods_num\': 200, \'market_price\': 12.0, \'shop_price\': 12.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>\', \'ship_free\': True, \'goods_front_image\': \'http://127.0.0.1:8000/media/goods/images/%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_20210423163307_U1b9MrW.png\', \'is_new\': False, \'is_hot\': False, \'add_time\': \'2021-04-23 16:34:50\', \'category\': 51}被更新', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (6, '2021-04-23 16:36:43.157459', '127.0.0.1', '更新', '商品信息: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'goods_sn\': \'\', \'name\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'click_num\': 65, \'sold_num\': 55, \'fav_num\': 23, \'goods_num\': 200, \'market_price\': 12.0, \'shop_price\': 12.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-48f6d47c-3731-4111-accf-d36737308abc-O1CN012QW9Dt2MhTSGCzNES_!!2206593539859.jpg\"/></div><p></p>\', \'ship_free\': True, \'goods_front_image\': \'http://127.0.0.1:8000/media/goods/images/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423163307_7e8vOwh.png\', \'is_new\': False, \'is_hot\': False, \'add_time\': \'2021-04-23 16:34:50\', \'category\': 51}被更新', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (7, '2021-04-23 16:38:20.001025', '127.0.0.1', '更新', '热搜排行: {\'id\': 3, \'ty_options_display_txt\': \'华为\', \'keywords\': \'华为\', \'index\': 0, \'add_time\': \'2021-04-23 14:34:48\'}被更新', 'hotsearchwords', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (8, '2021-04-23 16:46:30.935724', '127.0.0.1', '新增', '商品轮播: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'image\': \'/media/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423163307.png\', \'add_time\': \'2021-04-23 16:46:30\', \'goods\': 3}被新增', 'goodsimage', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (9, '2021-04-23 16:52:44.432044', '127.0.0.1', '新增', '宣传品牌: {\'id\': 3, \'ty_options_display_txt\': \'\', \'name\': \'\', \'desc\': \'\', \'image\': \'/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423163307.png\', \'add_time\': \'2021-04-23 16:52:43\', \'category\': 38}被新增', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (10, '2021-04-23 16:52:56.439414', '127.0.0.1', '删除', '宣传品牌: 被删除', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (11, '2021-04-23 17:28:05.370882', '127.0.0.1', '更新', '宣传品牌: {\'id\': 2, \'ty_options_display_txt\': \'华为\', \'name\': \'华为\', \'desc\': \'\', \'image\': \'http://127.0.0.1:8000/media/brands/%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_20210423143704.png\', \'add_time\': \'2021-04-23 14:37:12\', \'category\': 32}被更新', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (12, '2021-04-23 17:28:30.769272', '127.0.0.1', '更新', '宣传品牌: {\'id\': 2, \'ty_options_display_txt\': \'华为\', \'name\': \'华为\', \'desc\': \'\', \'image\': \'http://127.0.0.1:8000/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423143704_nl9PEjK.png\', \'add_time\': \'2021-04-23 14:37:12\', \'category\': 32}被更新', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (13, '2021-04-23 17:54:12.540651', '127.0.0.1', '更新', '宣传品牌: {\'id\': 2, \'ty_options_display_txt\': \'华为\', \'name\': \'华为\', \'desc\': \'\', \'image\': \'http://127.0.0.1:8000/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423143704_7lMN4Mw.png\', \'add_time\': \'2021-04-23 14:37:12\', \'category\': 31}被更新', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (14, '2021-04-23 18:32:56.636619', '127.0.0.1', '新增', '首页广告: {\'id\': 3, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'category\': 51, \'goods\': 3}被新增', 'indexad', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (15, '2021-04-23 18:33:47.285151', '127.0.0.1', '新增', '商品轮播: {\'id\': 4, \'ty_options_display_txt\': \'侧边星黛露适用苹果12手机壳iphone11promax全包摄像头x/xs max简约8plus直边xr卡通7p情侣mini液态硅胶se2女\', \'image\': \'/media/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423183332.png\', \'add_time\': \'2021-04-23 18:33:47\', \'goods\': 3}被新增', 'goodsimage', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (16, '2021-04-23 18:37:45.997402', '127.0.0.1', '新增', '商品信息: {\'id\': 4, \'ty_options_display_txt\': \'情侣新款打工人男女孩卡通适用iPhone12/mini/11/pro/max手机壳苹果11/xr/x/xs创意个性防摔8Plus/7p/SE2韩潮\', \'goods_sn\': \'\', \'name\': \'情侣新款打工人男女孩卡通适用iPhone12/mini/11/pro/max手机壳苹果11/xr/x/xs创意个性防摔8Plus/7p/SE2韩潮\', \'click_num\': 123, \'sold_num\': 23, \'fav_num\': 22, \'goods_num\': 154, \'market_price\': 15.0, \'shop_price\': 15.0, \'goods_brief\': \'iphone手机壳\', \'goods_desc\': \'<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-91e706e0-7cca-4687-85d6-a7a740f49584-O1CN01hW912d27ftrBqCp2h_!!2206951447825.jpg\"/></div><p></p><p></p><div class=\"media-wrap image-wrap\"><img src=\"http://127.0.0.1:8000/media/2021-04-23-f7ab94f3-4ee1-4646-9e0c-cda6d50bb382-O1CN01JR36Fh27fts4FKzYy_!!2206951447825.jpg\"/></div><p></p><p></p>\', \'ship_free\': True, \'goods_front_image\': \'/media/goods/images/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423183542.png\', \'is_new\': False, \'is_hot\': True, \'add_time\': \'2021-04-23 18:37:45\', \'category\': 51}被新增', 'goods', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (17, '2021-04-23 18:38:01.638673', '127.0.0.1', '新增', '首页广告: {\'id\': 4, \'ty_options_display_txt\': \'情侣新款打工人男女孩卡通适用iPhone12/mini/11/pro/max手机壳苹果11/xr/x/xs创意个性防摔8Plus/7p/SE2韩潮\', \'category\': 51, \'goods\': 4}被新增', 'indexad', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (18, '2021-04-23 18:42:19.059645', '127.0.0.1', '新增', '宣传品牌: {\'id\': 4, \'ty_options_display_txt\': \'vivo\', \'name\': \'vivo\', \'desc\': \'\', \'image\': \'/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423184203.png\', \'add_time\': \'2021-04-23 18:42:18\', \'category\': 31}被新增', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (19, '2021-04-23 18:42:40.394266', '127.0.0.1', '新增', '宣传品牌: {\'id\': 5, \'ty_options_display_txt\': \'oppo\', \'name\': \'oppo\', \'desc\': \'\', \'image\': \'/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423184208.png\', \'add_time\': \'2021-04-23 18:42:40\', \'category\': 31}被新增', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (20, '2021-04-23 18:47:35.182501', '127.0.0.1', '新增', '宣传品牌: {\'id\': 6, \'ty_options_display_txt\': \'iphone\', \'name\': \'iphone\', \'desc\': \'\', \'image\': \'/media/brands/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423184707.png\', \'add_time\': \'2021-04-23 18:47:35\', \'category\': 31}被新增', 'goodscategorybrand', 'admin');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (21, '2021-04-23 18:58:17.951222', '127.0.0.1', '新增', '商品轮播: {\'id\': 5, \'ty_options_display_txt\': \'情侣新款打工人男女孩卡通适用iPhone12/mini/11/pro/max手机壳苹果11/xr/x/xs创意个性防摔8Plus/7p/SE2韩潮\', \'image\': \'/media/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20210423183542.png\', \'add_time\': \'2021-04-23 18:58:17\', \'goods\': 4}被新增', 'goodsimage', 'admin');

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_usera_user_id_fe128593_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------
INSERT INTO `user_operation_useraddress` VALUES (1, '山西省', '太原市', '小店区', 'xxx', 'xxx', 'xxx', '2021-04-23 18:59:02.886320', 1);

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_operation_userfav_user_id_goods_id_2dbadda7_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_userl_user_id_70d909d6_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$216000$zdjh7lKQmQJi$BmqqZALNy58mkU6Nl+lmLgK03R1ywxsislxNjwIB2pQ=', '2021-04-23 16:27:36.586311', 1, 'admin', '', '', 1, 1, '2021-04-22 15:50:03.269414', NULL, NULL, 'female', NULL, 'admin@admin.com');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$216000$HlJH4BHG02fn$YYZfjk7+3jhEKzFEo4gYyWRD7Uuv0ZApqQ2h3I5SiFE=', NULL, 0, '1342345123', '', '', 0, 1, '2021-04-23 17:05:19.468694', NULL, NULL, 'female', '1342345123', NULL);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
