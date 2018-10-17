-- 20180316
-- 影视相关专业分类系统
DROP TABLE  IF EXISTS  `rc_major`;
CREATE TABLE `rc_major` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11)  NOT NULL DEFAULT '0' COMMENT '权重',
  `status` int(11) DEFAULT '10' COMMENT '状态, 10 隐藏 20 显示',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '父级ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '大区分类系统';



-- 公司工作室实体表
DROP TABLE  IF EXISTS  `rc_company`;
CREATE TABLE `rc_company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `district_id` int(11) DEFAULT '0' COMMENT '城市',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `website` varchar(255) NOT NULL DEFAULT '' COMMENT '官网',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `status` int(11) DEFAULT '10' COMMENT '状态，10正常 20请求更新',
  `like_number` int(11) DEFAULT '0' COMMENT '点赞数',
  `comment_number` int(11) DEFAULT '0' COMMENT '评论数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '公司工作室实体表';


-- 公司工作室实体标签表
DROP TABLE  IF EXISTS  `rc_company_tag`;
CREATE TABLE `rc_company_major` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `company_id` int(11) DEFAULT '0' COMMENT '实体id',
  `name` varchar(255) DEFAULT '' COMMENT '自定义标签',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '公司工作室实体表';


-- 评论系统
DROP TABLE  IF EXISTS  `rc_company_comment`;
CREATE TABLE `rc_company_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` INT unsigned NOT NULL DEFAULT '0',
  `user_id` INT unsigned NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `content` TEXT COMMENT '留言内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 人才系统
DROP TABLE  IF EXISTS  `rc_rencai`;
CREATE TABLE `rc_rencai` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `sex` varchar(20) NOT NULL DEFAULT '' COMMENT '性别',
  `job` varchar(20) NOT NULL DEFAULT '' COMMENT '职业',
  `district_id` int(11) DEFAULT '0' COMMENT '城市',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `weibo` varchar(20) NOT NULL DEFAULT '' COMMENT '微博',
  `bilibili` varchar(20) NOT NULL DEFAULT '' COMMENT 'bilibili',
  `website` varchar(255) NOT NULL DEFAULT '' COMMENT '官网',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` int(11) DEFAULT '10' COMMENT '状态，10正常 20请求更新',
  `like_number` int(11) DEFAULT '0' COMMENT '点赞数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '人才信息表';

-- 人才系统更新请求
DROP TABLE  IF EXISTS  `rc_update`;
CREATE TABLE `rc_update` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `rencai_id` int(11) DEFAULT '10' COMMENT '人才id',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '请求更新描述',
  `status` int(11) DEFAULT '10' COMMENT '状态，10待处理 20已处理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '人才信息更新请求表';



-- -- 20180317
-- DROP TABLE  IF EXISTS  `cms_links_history`;
-- CREATE TABLE `cms_links_history` (
--   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
--   `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
--   `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
--   `click_number` int(11)  NOT NULL DEFAULT '0' COMMENT '点击次数',
--   `create_time` int(11) unsigned NOT NULL DEFAULT '0',
--   `update_time` int(11) unsigned NOT NULL DEFAULT '0',
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8  COMMENT '外链跳转记录';



-- 20180307
-- 分镜
DROP TABLE  IF EXISTS  `cms_storyboard`;
CREATE TABLE `cms_storyboard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '作者id',
  `title` varchar(255) NOT NULL DEFAULT '0' COMMENT '分镜标题',
  `description` varchar(255) NOT NULL DEFAULT '0' COMMENT '分镜描述',
  `read_number` int(11)  NOT NULL DEFAULT '0',
  `like_number` int(11)  NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 分镜单镜头
DROP TABLE  IF EXISTS  `cms_storyboard_thumb`;
CREATE TABLE `cms_storyboard_thumb` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `storyboard_id` INT unsigned NOT NULL DEFAULT '0', /*用户id*/
  `thumb` varchar(255) NOT NULL DEFAULT '0' COMMENT '分镜',
  `weight` int(11)  NOT NULL DEFAULT '0' COMMENT '权重',
  `description` varchar(255) NOT NULL DEFAULT '0' COMMENT '单镜头描述',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 分镜评论系统
DROP TABLE  IF EXISTS  `cms_storyboard_comment`;
CREATE TABLE `cms_storyboard_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storyboard_id` INT unsigned NOT NULL DEFAULT '0', /*文章id*/
  `user_id` INT unsigned NOT NULL DEFAULT '0', /*用户id*/
  `ip` varchar(255) NOT NULL DEFAULT '',
  `content` TEXT COMMENT '留言内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 分镜搜索关键词记录
DROP TABLE  IF EXISTS  `cms_storyboard_search`;
CREATE TABLE `cms_storyboard_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;