
-- 删除数据库!!!!
DROP DATABASE IF EXISTS cms_movie;

-- 创建数据库
CREATE DATABASE `cms_movie`;
USE cms_movie;

-- 网站配置
DROP TABLE  IF EXISTS  `cms_config`;
CREATE TABLE `cms_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `group` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `description` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT INTO `cms_config` (`id`, `name`, `value`, `group`, `description`)
VALUES
	(1, 'title', '', '网站信息', '站点名称'),
	(2, 'keywords', '', '网站信息', '关键词'),
	(3, 'description', '', '网站信息', '描述'),
	(4, 'copyright', '', '网站信息', '版权'),
	(5, 'icp', '', '网站信息', '备案号');
	(6, 'icp_url', '', '网站信息', '备案号链接'),
	(7, 'user_id', '', '网站信息', '关联用户ID');


-- 后台管理员
DROP TABLE  IF EXISTS  `cms_admin`;
CREATE TABLE `cms_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(70) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
  ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='后台管理员';


-- 账户 admin
-- 密码 admin
INSERT INTO `cms_admin` (`id`, `username`, `password`)
VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');




-- 用户系统
DROP TABLE  IF EXISTS  `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `username` varchar(50) NOT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `weibo` varchar(255) NOT NULL DEFAULT '' COMMENT '微博ID',
  `job` varchar(20) NOT NULL DEFAULT '' COMMENT '职业',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 账户 test
-- 密码 test
INSERT INTO `cms_user` (`id`, `username`, `password`, `mobile`, `job`, `description`, `avatar`, `status`, `create_time`, `update_time`)
VALUES
	(1, 'test', '098f6bcd4621d373cade4e832627b4f6', '', '', '', NULL, 0, 1520353242, 1520353242);


-- 粉丝系统
-- DROP TABLE  IF EXISTS  `cms_follower`;
-- CREATE TABLE `cms_follower` (
--   `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
--   `user_id` int(11) unsigned NOT NULL DEFAULT '0', /*用户id*/
--   `follower_user_id` int(11) unsigned NOT NULL DEFAULT '0', /*粉丝id*/
--   `create_time` int(11) unsigned NOT NULL DEFAULT '0',
--   `update_time` int(11) unsigned NOT NULL DEFAULT '0',
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 文章分类系统
DROP TABLE  IF EXISTS  `cms_category`;
CREATE TABLE `cms_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11)  NOT NULL DEFAULT '0' COMMENT '权重',
  `status` int(11) DEFAULT '10' COMMENT '状态, 10 隐藏 20 显示',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '父级ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 文章标签系统
-- DROP TABLE  IF EXISTS  `cms_tag`;
-- CREATE TABLE `cms_tag` (
--   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
--   `name` varchar(255) NOT NULL DEFAULT '',
--   `article_id` INT unsigned NOT NULL DEFAULT '0', /*文章id*/
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 文章系统
DROP TABLE  IF EXISTS  `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11)  unsigned NOT NULL DEFAULT '0', /*分类id*/
  `user_id` int(11) unsigned NOT NULL DEFAULT '0', /*作者id*/
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0', /*管理员id*/
  `title` varchar(225) NOT NULL DEFAULT '',
  `summary` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `video` varchar(225) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `read_number` int(11)  NOT NULL DEFAULT '0',
  `like_number` int(11)  NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
  ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 文章评论系统
DROP TABLE  IF EXISTS  `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` INT unsigned NOT NULL DEFAULT '0', /*文章id*/
  `user_id` INT unsigned NOT NULL DEFAULT '0', /*用户id*/
  `ip` varchar(255) NOT NULL DEFAULT '',
  `content` TEXT COMMENT '留言内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 搜索关键词记录
DROP TABLE  IF EXISTS  `cms_search_history`;
CREATE TABLE `cms_search_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 文章收藏系统
-- DROP TABLE  IF EXISTS  `cms_article_like`;
-- CREATE TABLE `cms_article_like` (
--   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
--   `user_id` INT unsigned NOT NULL DEFAULT '0', /*用户id*/
--   `article_id` INT unsigned NOT NULL DEFAULT '0', /*文章id*/
--   `create_time` int(11) unsigned NOT NULL DEFAULT '0',
--   `update_time` int(11) unsigned NOT NULL DEFAULT '0',
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 网站大全
DROP TABLE  IF EXISTS  `cms_links`;
CREATE TABLE `cms_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11)  NOT NULL DEFAULT '0' COMMENT '权重',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `click_number` int(11)  NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '友情链接表';


--
-- -- 网络资源
-- DROP TABLE  IF EXISTS  `cms_source`;
-- CREATE TABLE `cms_source` (
--   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
--   `logo` varchar(255) NOT NULL DEFAULT '',
--   `name` varchar(255) NOT NULL DEFAULT '',
--   `url` varchar(255) NOT NULL DEFAULT '',
--   `description` varchar(255) NOT NULL DEFAULT '',
--   `weight` int(11)  NOT NULL DEFAULT '0' COMMENT '权重',
--   `status` int(11) DEFAULT '0' COMMENT '状态',
--   `click_number` int(11)  NOT NULL DEFAULT '0',
--   `create_time` int(11) unsigned NOT NULL DEFAULT '0',
--   `update_time` int(11) unsigned NOT NULL DEFAULT '0',
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 20180305
-- 搜索引擎（站点信息收集）
DROP TABLE  IF EXISTS  `cms_web`;
CREATE TABLE `cms_web` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `website` varchar(255) NOT NULL DEFAULT '0' COMMENT '网址',
  `logo` varchar(255) NOT NULL DEFAULT '0' COMMENT 'LOGO',
  `title` varchar(255) NOT NULL DEFAULT '0' COMMENT '网站名称',
  `keywords` varchar(255) NOT NULL DEFAULT '0' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '0' COMMENT '描述',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




-- 网页访客记录
DROP TABLE  IF EXISTS  `cms_visitor`;
CREATE TABLE `cms_visitor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '网址',
  `get` TEXT  ,
  `post` TEXT ,
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




