/*
MySQL Backup
Source Server Version: 5.7.11
Source Database: webadmin
Date: 2018/11/5 19:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `cooperative`
-- ----------------------------
DROP TABLE IF EXISTS `cooperative`;
CREATE TABLE `cooperative` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `hits` int(11) DEFAULT '0',
  `isrecommend` int(1) DEFAULT NULL,
  `istop` int(1) DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` int(1) DEFAULT NULL COMMENT '1是企业需求2是教师需求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `enterprise`
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `remark` text,
  `istop` int(1) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `enterpriseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `enterpriseinfo`;
CREATE TABLE `enterpriseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `classid` int(11) DEFAULT NULL,
  `remark` text,
  `isrecommend` int(2) DEFAULT NULL,
  `istop` int(2) DEFAULT NULL,
  `ishot` int(2) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `createor` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `imglist` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `enterpriseinfo_class`
-- ----------------------------
DROP TABLE IF EXISTS `enterpriseinfo_class`;
CREATE TABLE `enterpriseinfo_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `enterprise_news`
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_news`;
CREATE TABLE `enterprise_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `parentid` int(11) DEFAULT NULL,
  `remark` text,
  `isrecommend` int(2) DEFAULT NULL,
  `istop` int(2) DEFAULT NULL,
  `ishot` int(2) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `friendlink`
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `graduate`
-- ----------------------------
DROP TABLE IF EXISTS `graduate`;
CREATE TABLE `graduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(255) DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `remark` text,
  `imgurl` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `graduatedate` datetime DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `istop` int(1) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jobrecruitment`
-- ----------------------------
DROP TABLE IF EXISTS `jobrecruitment`;
CREATE TABLE `jobrecruitment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `isrecommend` int(1) DEFAULT NULL,
  `istop` int(1) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `param4` varchar(255) DEFAULT NULL,
  `param5` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `modular` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `parentid` int(11) DEFAULT NULL,
  `remark` text,
  `isrecommend` int(2) DEFAULT NULL,
  `istop` int(2) DEFAULT NULL,
  `ishot` int(2) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `createor` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `news_class`
-- ----------------------------
DROP TABLE IF EXISTS `news_class`;
CREATE TABLE `news_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `phonecode`
-- ----------------------------
DROP TABLE IF EXISTS `phonecode`;
CREATE TABLE `phonecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT '',
  `code` varchar(255) DEFAULT '',
  `createtime` datetime DEFAULT NULL,
  `exprietime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `picture_class`
-- ----------------------------
DROP TABLE IF EXISTS `picture_class`;
CREATE TABLE `picture_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(255) DEFAULT '0',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `graduatedate` datetime DEFAULT NULL,
  `skill` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `istop` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=sjis;

-- ----------------------------
--  Table structure for `studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `classid` int(11) DEFAULT NULL,
  `remark` text,
  `isrecommend` int(2) DEFAULT NULL,
  `istop` int(2) DEFAULT NULL,
  `ishot` int(2) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `createor` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `imglist` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `studentinfo_class`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo_class`;
CREATE TABLE `studentinfo_class` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `state` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student_experience`
-- ----------------------------
DROP TABLE IF EXISTS `student_experience`;
CREATE TABLE `student_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `betweendate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `student_jobdemand`
-- ----------------------------
DROP TABLE IF EXISTS `student_jobdemand`;
CREATE TABLE `student_jobdemand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student_reward`
-- ----------------------------
DROP TABLE IF EXISTS `student_reward`;
CREATE TABLE `student_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rewardtime` date DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `student_works`
-- ----------------------------
DROP TABLE IF EXISTS `student_works`;
CREATE TABLE `student_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `sys_dep`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dep`;
CREATE TABLE `sys_dep` (
  `id` int(11) NOT NULL,
  `depname` varchar(255) DEFAULT NULL,
  `pid` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(50) DEFAULT '' COMMENT '按钮名称',
  `code` varchar(20) DEFAULT NULL COMMENT '按钮编码',
  `moduleid` int(1) DEFAULT '0' COMMENT '所属模块',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '模块主键ID',
  `modulename` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `menus` varchar(255) DEFAULT '',
  `url` varchar(50) DEFAULT '' COMMENT '模块路径,controller,action',
  `parentid` int(5) DEFAULT '0' COMMENT '父级编号',
  `status` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否启用状态,0启用1不启用',
  `createdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `menus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_restapi`
-- ----------------------------
DROP TABLE IF EXISTS `sys_restapi`;
CREATE TABLE `sys_restapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apiname` varchar(255) DEFAULT '',
  `apiurl` varchar(255) DEFAULT '',
  `status` int(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT '' COMMENT '角色名称',
  `modules` varchar(255) DEFAULT NULL COMMENT '模块权限',
  `modulesname` varchar(255) DEFAULT '' COMMENT '模块权限名称',
  `menus` varchar(255) DEFAULT '' COMMENT '菜单权限',
  `status` int(1) DEFAULT NULL COMMENT '状态0启用,1不启用',
  `remark` varchar(255) DEFAULT '' COMMENT '角色介绍',
  `createdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_unit`
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '姓名',
  `logincode` varchar(255) DEFAULT '' COMMENT '登录码',
  `pwd` varchar(50) DEFAULT '' COMMENT '密码',
  `roleid` varchar(255) DEFAULT '' COMMENT '所属角色,多个逗号分隔',
  `status` int(1) DEFAULT '1' COMMENT '用户状态1启用0禁用',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `lastlogintime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(255) DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `graduatedate` datetime DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `classid` int(11) DEFAULT NULL,
  `remark` text,
  `isrecommend` int(2) DEFAULT NULL,
  `istop` int(2) DEFAULT NULL,
  `ishot` int(2) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `imglist` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_achievement`;
CREATE TABLE `teacher_achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher_class`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_class`;
CREATE TABLE `teacher_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(255) DEFAULT '0',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `graduatedate` datetime DEFAULT NULL,
  `skill` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `istop` int(1) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1企业2老师3学生',
  `othertype` int(1) DEFAULT NULL COMMENT '用于老师的类型',
  `isrecommond` int(1) DEFAULT NULL,
  `recommondreason` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Procedure definition for `queryChildrenAreaInfo`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo`;
DELIMITER ;;
CREATE DEFINER=`skip-grants user`@`skip-grants host` FUNCTION `queryChildrenAreaInfo`( areaId INT ) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE
	sTemp VARCHAR ( 4000 );
DECLARE
	sTempChd VARCHAR ( 4000 );

SET sTemp = '';

SET sTempChd = CAST( areaId AS CHAR );
WHILE
	sTempChd IS NOT NULL DO
	
	SET sTemp = CONCAT( sTemp, ',', sTempChd );
SELECT
	GROUP_CONCAT( id ) INTO sTempChd 
FROM
	t_areainfo 
WHERE
	FIND_IN_SET( parentId, sTempChd ) > 0;

END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;

-- ----------------------------
--  Procedure definition for `queryChildrenAreaInfo1`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo1`;
DELIMITER ;;
CREATE DEFINER=`skip-grants user`@`skip-grants host` FUNCTION `queryChildrenAreaInfo1`(areaId INT) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp='';
SET sTempChd = CAST(areaId AS CHAR);
SET sTemp = CONCAT(sTemp,',',sTempChd);

SELECT parentId INTO sTempChd FROM t_areainfo WHERE id = sTempChd;
WHILE sTempChd <> 0 DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT parentId INTO sTempChd FROM t_areainfo WHERE id = sTempChd;
END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `cooperative` VALUES ('1','合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','1111','13','0','1','/uploadfiles/images/lapc01.jpg','1','2018-09-12 21:04:24','1'), ('2','合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','2222','13','0','1','/uploadfiles/images/lapc02.jpg','1','2018-09-12 21:04:24','1'), ('3','合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','333','12','0','0','/uploadfiles/images/lapc03.jpg','1','2018-09-12 21:04:24','1'), ('4','合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','444','15','0','1','/uploadfiles/images/lapc04.jpg','1','2018-09-12 21:04:24','1'), ('6','企业合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','企业合作需求','13','0','1','/uploadfiles/images/lapc03.jpg','1','2018-09-12 21:04:24','1'), ('9','教师合作需求','dsadfasdfas',NULL,'2',NULL,NULL,NULL,'1','2018-09-16 13:44:15','2'), ('10','教师合作需求','sadfsadfas',NULL,'2',NULL,NULL,NULL,'1','2018-09-16 13:44:17','2'), ('11','教师合作需求','dfdfdf',NULL,'3',NULL,NULL,NULL,'1','2018-09-16 13:44:19','2'), ('12','教师合作需求','dfsfsfs','12312312312','1',NULL,NULL,'/uploadfiles/images/0b9d821c-6779-494f-9aa2-ebf96195b7aa.png','3','2018-09-16 13:44:22','2'), ('13','教师合作需求123123123','sfasfasfas','13123123fads','1',NULL,NULL,'/uploadfiles/images/e612a916-e202-4c4b-bfe8-00fc6ce68d5e.png','3','2018-09-16 13:44:25','2'), ('16','企业合作需求企业合作需求','企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求企业合作需求','企业合作需求企业合作需求','4',NULL,NULL,NULL,'1','2018-09-16 13:44:34','1'), ('20','13123','131231','23123123','2',NULL,NULL,NULL,'3','2018-09-16 13:44:31','1'), ('21','陈博文教师','是的发送到发','爱是飞洒','0',NULL,NULL,NULL,'1','2018-09-16 13:44:28','2');
INSERT INTO `enterprise` VALUES ('1','企业1','18717779781','764460008@qq.com','2','e10adc3949ba59abbe56e057f20f883e','湖北省武汉市','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:33','技术,理工男,程序猿'), ('2','企业112','1士大夫撒','士大夫撒','13','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('3','企业13','1士大夫撒','士大夫撒','5','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('4','企业14','1士大夫撒','士大夫撒','6','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','0','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('5','企业15','1士大夫撒','士大夫撒','7','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('6','企业16','1士大夫撒','士大夫撒','8','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','0','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('7','企业17','1士大夫撒','士大夫撒','9','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('8','企业18','1士大夫撒','士大夫撒','11','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','0','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('9','企业19','1士大夫撒','士大夫撒','12','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿'), ('11','企业111','1士大夫撒','士大夫撒','10','e10adc3949ba59abbe56e057f20f883e','爽肤水','软件','','1','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','技术,理工男,程序猿');
INSERT INTO `enterpriseinfo` VALUES ('1','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业','1','0','0','0','1','2018-09-12 12:55:54',''), ('2','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测','0','0','0','0','1','2018-09-12 12:55:54',' '), ('3','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业','1','0','0','0','1','2018-09-12 12:55:54',' '), ('4','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','0','0','0','0','1','2018-09-12 12:55:54',' '), ('5','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试11企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('6','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企业咨企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('7','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企业企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('8','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('9','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('10','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('11','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('12','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('13','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' ');
INSERT INTO `enterpriseinfo_class` VALUES ('1','企业资讯','0','1'), ('2','教师资讯','0','1'), ('3','学生资讯','0','1');
INSERT INTO `enterprise_news` VALUES ('1','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业','1','0','0','0','1','2018-09-12 12:55:54',''), ('2','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测','0','0','0','0','1','2018-09-12 12:55:54',' '), ('3','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业','1','0','0','0','1','2018-09-12 12:55:54',' '), ('4','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','0','0','0','0','1','2018-09-12 12:55:54',' '), ('5','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试11企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('6','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企业咨企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('7','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企业企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('8','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试1企企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('9','企业咨询测试1','企业咨询内容测试1','2','企业咨询备注测试企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('10','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('11','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('12','企业咨询测试1','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('13','企业新闻企业新闻企业新闻企业新闻1','企业新闻企业新闻企业新闻企业新闻1','3','企业新闻企业新闻企业新闻企业新闻1','0','0','0','0','1','2018-09-12 12:55:54','/uploadfiles/images/e949f28d-744c-4bb8-ae3a-56bc3db6159b.png'), ('14','1313131231','3123131123',NULL,'31312',NULL,NULL,NULL,NULL,'3',NULL,'/uploadfiles/images/12d98f36-052b-40df-a34e-9e261f7aca46.jpg');
INSERT INTO `friendlink` VALUES ('1','单位12','2222','/uploadfiles/images/QQ截图20180913125602_4.png','https://www.baidu.com2'), ('2','单位2','222222','/uploadfiles/images/danlogo.png',NULL), ('3','单位3','33333','/uploadfiles/images/danlogo.png',NULL), ('4','单位4','44444','/uploadfiles/images/danlogo.png',NULL), ('5','单位5','5555555','/uploadfiles/images/danlogo.png',NULL), ('6','单位6','6666666','/uploadfiles/images/danlogo.png',NULL), ('7','单位7','77777777','/uploadfiles/images/danlogo.png',NULL), ('8','单位8','888888','/uploadfiles/images/danlogo.png',NULL), ('9','单位9','999999','/uploadfiles/images/danlogo.png',NULL), ('10','单位10','100000000','/uploadfiles/images/danlogo.png',NULL), ('11','测试是啊','的沙发斯蒂芬','/uploadfiles/images/未加索引跑的压测.png','啥都可以1');
INSERT INTO `graduate` VALUES ('1','陈博文老师123','222','1','18717779781','764460008@qq.com','e10adc3949ba59abbe56e057f20f883e','421022199310111856','湖北省武汉市','软件','长江工程职业技术学院','大专','sdfasdfas','/uploadfiles/images/72c879fa-bf47-401b-b469-6b15491c3616.png','2018-09-12 23:12:33','2018-09-12 23:13:32','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('3','曹思彧老师3','23','0','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/1e5a24cf-9b63-4037-bc92-cfdce19ec81c.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('4','曹思彧老师4','23','0','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/5cee167b-565d-4ea4-99cf-d0abe3f9ab01.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0',NULL), ('5','曹思彧老师5','23','1','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/c25e11a3-6a74-4bf4-b2b3-e2765090785c.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('6','曹思彧老师6','23','1','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/5797af02-c66a-4aaf-80e4-e6e795970b22.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0',NULL), ('7','曹思彧老师7','23','0','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/57a063fa-dc25-40c2-9cd9-5edbd63d1cef.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('8','曹思彧老师8','23','1','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/4167a3c2-cbeb-4a5c-8a30-161b671bc235.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0',NULL), ('9','曹思彧老师9','23','1','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','研究生','','/uploadfiles/images/4167a3c2-cbeb-4a5c-8a30-161b671bc235.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('11','曹思彧老师11','23','0','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','博士生','','/uploadfiles/images/4167a3c2-cbeb-4a5c-8a30-161b671bc235.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1',NULL), ('12','曹思彧老师12','23','1','1士大夫撒','士大夫撒','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','留学生','','/uploadfiles/images/4167a3c2-cbeb-4a5c-8a30-161b671bc235.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','可以粘贴html内容的内容部分'), ('13','12313123','123','0','123','123',NULL,NULL,'123',NULL,NULL,'13','123','/uploadfiles/images/8ee66c95-0565-465e-8bda-5ddaf3ee113c.png',NULL,NULL,NULL,NULL,NULL,'<p>\n                            鉴定费用：参加国家职业资格鉴定的考试费。由职业技能鉴定机构收取，培训机构代收代缴。\n                            补贴标准：参加技能提升培训，获得国家职业资格证书后，可申请政府职业技能提升补贴。快捷型不适用本条。\n                        </p>\n                        <p>服务费优惠：</p>\n                        <p>1、团报优惠：3-5人享受学费9.6折；6-9人享受学费9.3折；10人及以上享受学费9折。</p>\n                        <p>2、学生价8.5折（普通高校计划内统招的在校生凭学生证原件）。</p>\n                        <p>3、强化VIP型不享受任何优惠政策。</p>');
INSERT INTO `jobrecruitment` VALUES ('1','职位1','大专','3k-5k','1-3年','1','16','1','1','/uploadfiles/images/lapc01.jpg','3','2018-09-12 21:04:24','1'), ('2','职位2','大专','3k-5k','1-3年','2','13','1','1','/uploadfiles/images/lapc02.jpg','3','2018-09-12 21:04:24','1'), ('3','职位3','大专','3k-5k','1-3年','3','13','1','0','/uploadfiles/images/lapc03.jpg','3','2018-09-12 21:04:24','1'), ('4','职位4','大专','3k-5k','1-3年','4','13','1','1','/uploadfiles/images/lapc04.jpg','3','2018-09-12 21:04:24','2'), ('5','职位5','大专','3k-5k','1-3年','5','12','1','1','/uploadfiles/images/lapc05.jpg','3','2018-09-12 21:04:24','2'), ('9','asfasd','asdfsa','dsadfasd','fsadfsa','dsadfasdfas','12','1','1',NULL,'3','2018-09-16 02:00:02','2'), ('10','用人需求s','safass','fasfdas','sadfasdf','sadfsadfas','12','1','1',NULL,'3','2018-09-16 02:00:05','3'), ('12','123123','1231','23123','12312','312','13','1','1',NULL,'3','2018-09-16 02:00:07','4');
INSERT INTO `log` VALUES ('1','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-10-29 18:12:02','','','','','','1','query'), ('2','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-10-29 18:12:42','','','','','','1','query'), ('3','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 16:28:00','','','','','','1','测试模块'), ('4','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 16:30:47','','','','','','1','测试模块'), ('5','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 16:31:29','','','','','','1','测试模块'), ('6','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 19:12:22','','','','','','1','测试模块'), ('7','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 19:13:33','','','','','','1','测试模块'), ('8','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 19:14:09','','','','','','1','测试模块'), ('9','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 19:18:26','','','','','','1','测试模块'), ('10','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-01 19:19:17','','','','','','1','测试模块'), ('11','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:07:35','','','','','','1','测试模块'), ('12','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:07:58','','','','','','1','测试模块'), ('13','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:08:14','','','','','','1','测试模块'), ('14','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:08:14','','','','','','1','测试模块'), ('15','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:08:16','','','','','','1','测试模块'), ('16','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:08:36','','','','','','1','测试模块'), ('17','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:10:32','','','','','','1','测试模块'), ('18','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:11:55','','','','','','1','测试模块'), ('19','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-02 11:15:33','','','','','','1','测试模块'), ('20','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-04 12:33:56','','','','','','1','测试模块'), ('21','test','testsdkTOken','{}','query','com.art.score.artscore.controller.TestController','2018-11-04 12:34:06','','','','','','1','测试模块');
INSERT INTO `member` VALUES ('1','名称名称名称名称名称名称名称1','成员备注','1','2018-09-12 21:15:19',NULL,NULL,NULL), ('2','陈博文','成员备注','2','2018-09-12 21:15:19',NULL,NULL,NULL), ('3','名称名称名称名称名称名3','成员备注','3','2018-09-12 21:15:19',NULL,NULL,NULL), ('4','名称名称名称名称名称名4','成员备注','1','2018-09-12 21:15:19',NULL,NULL,NULL), ('5','曹思彧','成员备注','2','2018-09-12 21:15:19',NULL,NULL,NULL), ('6','名称名称名称名称6','成员备注','3','2018-09-12 21:15:19',NULL,NULL,NULL), ('7',NULL,NULL,'1','2018-09-13 22:36:00','123456',NULL,NULL), ('8',NULL,NULL,'2','2018-09-13 22:39:57','12456','ba7893e62fc5e3cb5324626c2f332847',NULL), ('9',NULL,NULL,'4','2018-09-13 22:41:15','1231321321321','ba7893e62fc5e3cb5324626c2f332847',NULL), ('10',NULL,NULL,'2','2018-09-13 22:55:07','erqwqwe','5f11e6f70a42221256588e3f4e3e60da',NULL);
INSERT INTO `news` VALUES ('1','企业咨询测试1','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','31','1','2018-09-12 12:55:54',''), ('2','企业咨询测试2','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','10','1','2018-09-12 12:55:54',' '), ('3','企业咨询测试3','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('4','企业咨询测试4','企业咨询内容测试1','1','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('5','企业咨询测试5','企业咨询内容测试1','2','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('6','企业咨询测试6','企业咨询内容测试1','2','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('7','企业咨询测试7','企业咨询内容测试1','2','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('8','企业咨询测试8','企业咨询内容测试1','2','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('9','企业咨询测试9','企业咨询内容测试1','2','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/xuqiupic.png'), ('10','企业咨询测试10','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','4','1','2018-09-12 12:55:54',' '), ('11','企业咨询测试11','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('12','企业咨询测试12','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('13','企业咨询测试13','企业咨询内容测试1','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('14','企业咨询测试14','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','5','1','2018-09-12 12:55:54',' '), ('15','企业咨询测试15','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('16','企业咨询测试16','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','3','1','2018-09-12 12:55:54',' '), ('17','企业咨询测试17','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','10','1','2018-09-12 12:55:54',' '), ('18','企业咨询测试18','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','5','1','2018-09-12 12:55:54',' '), ('19','企业咨询测试19','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','3','1','2018-09-12 12:55:54',' '), ('21','企业咨询测试20','企业咨询内容测试1','4','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备','1','0','0','2','1','2018-09-12 12:55:54',' '), ('22','企业咨询测试21','首页资源对接企业信息教师信息学生信息毕业生跟踪fffffff沙发沙发','3','企业咨询备注测试1企业咨询备注测试1企业咨询备注测试1企业咨询备1111','0','1','0','2','1','2018-09-12 12:55:54','/uploadfiles/images/f2315b39-57d0-440c-9174-d4ccfef400f0.png');
INSERT INTO `news_class` VALUES ('1','企业资讯','0','1'), ('2','教师资讯','0','1'), ('3','学生资讯','0','1'), ('4','最新动态','0','1');
INSERT INTO `phonecode` VALUES ('3','15827286765','635220','2018-09-16 15:41:57','2018-09-16 17:11:57'), ('4','13636192662','763370','2018-09-16 15:44:38','2018-09-16 15:47:38');
INSERT INTO `picture` VALUES ('1','图片1123123','12312312312312','/uploadfiles/images/QQ截图20180913125602_4.png','1','12312'), ('2','图片2','222222','/uploadfiles/images/danlogo.png','1',NULL), ('3','图片3','33333','/uploadfiles/images/danlogo.png','1',NULL), ('4','图片4','44444','/uploadfiles/images/danlogo.png','1',NULL), ('5','图片5','5555555','/uploadfiles/images/danlogo.png','1',NULL), ('6','图片6','6666666','/uploadfiles/images/df822b55-4862-4512-8460-2b624d4c49e2.png','2','13123123'), ('7','图片7','77777777','/uploadfiles/images/danlogo.png','2',NULL), ('8','图片8','888888','/uploadfiles/images/danlogo.png','2',NULL), ('9','图片9','999999','/uploadfiles/images/danlogo.png','2',NULL), ('10','图片10','100000000','/uploadfiles/images/danlogo.png','2',NULL), ('12','123123','123123123123123','/uploadfiles/images/fb73a48e-5a8c-4857-873e-89f120b4e793.png','2','123123'), ('13','123131','13123123123','/uploadfiles/images/c080b199-7429-40af-8262-677e1bb2172e.png','2','2313123123');
INSERT INTO `picture_class` VALUES ('1','首页轮播图'), ('2','合作单位');
INSERT INTO `student` VALUES ('1','陈博文','24','1','18717779781','764460008@qq.com','2','e10adc3949ba59abbe56e057f20f883e','421022199310111856','湖北省武汉市','软件','长江工程职业技术学院','大专','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:33','2018-09-12 23:13:32','C#,Java,Python','技术,理工男,程序猿','1'), ('3','曹思彧老师3','23','0','1士大夫撒','士大夫撒','5','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1'), ('4','曹思彧老师4','23','0','1士大夫撒','士大夫撒','6','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0'), ('5','曹思彧老师5','23','1','1士大夫撒','士大夫撒','7','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1'), ('6','曹思彧老师6','23','1','1士大夫撒','士大夫撒','8','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0'), ('7','曹思彧老师7','23','0','1士大夫撒','士大夫撒','9','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1'), ('8','曹思彧老师8','23','1','1士大夫撒','士大夫撒','11','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0'), ('9','曹思彧老师9','23','1','1士大夫撒','士大夫撒','12','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','研究生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1'), ('11','曹思彧老师11','23','0','1士大夫撒','士大夫撒','10','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','博士生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1'), ('12','曹思彧老师12','23','1','1士大夫撒','士大夫撒','13','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','留学生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1');
INSERT INTO `studentinfo` VALUES ('1','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('2','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('3','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('4','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('5','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('6','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('7','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('8','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('9','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('10','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('11','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('12','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('13','学生咨询测试1','学生咨询内容测试1','1','学生咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' ');
INSERT INTO `studentinfo_class` VALUES ('1','企业资讯','0','1'), ('2','教师资讯','0','1'), ('3','学生资讯','0','1');
INSERT INTO `student_experience` VALUES ('1','编辑实习','经历描述经历描述经历描述述经历描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','1','2018-06-20 00:16:08','2018-09-13 00:16:15','2018-09-13 00:16:18','2018年09月13日 - 2018年10月24日'), ('2','编辑实习','经历描述经历描述经历描述述经历描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','1','2018-06-20 00:16:08','2018-09-13 00:16:15','2018-09-13 00:16:18','2018年09月13日 - 2018年10月24日'), ('3','编辑实习','经历描述经历描述经历描述述经历描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','1','2018-06-20 00:16:08','2018-09-13 00:16:15','2018-09-13 00:16:18','2018年09月13日 - 2018年10月24日'), ('4','编辑实习','经历描述经历描述经历描述述经历描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','1','2018-06-20 00:16:08','2018-09-13 00:16:15','2018-09-13 00:16:18','2018年09月13日 - 2018年10月24日'), ('5','123','1231231','31231','4',NULL,NULL,NULL,'2018年09月25日 - 2018年10月31日');
INSERT INTO `student_jobdemand` VALUES ('1','电商设计师、设计师助理','深圳','未评级','5k-8k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','1','1-3年'), ('2','电商设计师、设计师助理','广州','未评级','5k-7k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','2','1-3年'), ('3','电商设计师、设计师助理','上海','未评级','5k-7k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','3','1-3年'), ('4','电商设计师、设计师助理','北京','未评级','5k-7k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','4','1-3年'), ('5','电商设计师、设计师助理','武汉','未评级','5k-7k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','5','1-3年'), ('6','电商设计师、设计师助理','杭州','未评级','5k-7k','本人待人真诚，活跃、热情、善于沟通，勤于思考能力，具有良好的组织和创新能力强。','2018-09-13 00:34:11','6','1-3年'), ('7','13','13','123123','1231','123123123',NULL,'4','1-3年');
INSERT INTO `student_reward` VALUES ('1','获奖描述获奖描述获奖描述获奖描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2018-10-04','2018-09-13','1'), ('2','获奖描述获奖描述获奖描述获奖描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2018-09-13','2018-09-13','1'), ('3','获奖描述获奖描述获奖描述获奖描述','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2018-09-13','2018-09-13','1'), ('4','13123','123123123','1312312','2018-09-18',NULL,'4');
INSERT INTO `student_works` VALUES ('1','作品展示的名字1111','文字放作品介绍的名字文字放作品介绍的名字文','1','1112','2018-09-13 00:34:11','/uploadfiles/images/a602fbeb-e0ff-428e-8a28-610cf86475ab.png'), ('2','作品展示的名字2','文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字名字','1','1112','2018-09-13 00:34:11','/uploadfiles/images/229d9ed0-135e-4465-b6e7-53e4e4c45959.png'), ('3','作品展示的名字3','文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字名字','1','1112','2018-09-13 00:34:11','/uploadfiles/images/zuopin.jpg'), ('4','作品展示的名字4','文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字名字','1','1112','2018-09-13 00:34:11','/uploadfiles/images/de3fdc22-d89b-498e-8d96-36d9b62d92bb.png'), ('5','作品展示的名字5','文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字名字','1','1115','2018-09-13 00:34:11','/uploadfiles/images/de916094-91f1-49ed-8c51-b38423c24941.png'), ('6','作品展示的名字6','文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字文字放作品介绍的名字名字','1','1112','2018-09-13 00:34:11','/uploadfiles/images/zuopin.jpg'), ('7','13123','13123123123','4',NULL,NULL,'/uploadfiles/images/3e37b686-345f-44bc-9ad0-9fe44d0cd3cd.jpg');
INSERT INTO `sys_dep` VALUES ('1','部门1','1','1'), ('2','部门2','1','1'), ('3','部门3','1','1'), ('4','部门4','2','1'), ('5','部门5','2','1'), ('6','部门6','3','1'), ('7','部门7','4','1');
INSERT INTO `sys_menu` VALUES ('1','添加','add','3','1',''), ('2','保存','save','3','1',NULL), ('3','删除','delete','3','1',NULL), ('4','添加','add','4','1',NULL), ('5','保存','save','4','1',NULL), ('6','删除','delete','5','1',NULL), ('7','添加','add','5','1',NULL), ('8','保存','save','5','1',NULL), ('9','删除','delete','5','1',NULL), ('10','添加','add','6','1',NULL), ('11','保存','save','6','1','');
INSERT INTO `sys_module` VALUES ('1','数据字典','','','0','1','2018-09-06 10:44:21',''), ('2','系统管理','','','0','1','2018-09-06 10:44:22',''), ('3','用户管理','','/WebAdmin/User/Index','1','1','2018-09-06 10:44:22',''), ('4','组织信息','','/WebAdmin/Organization/Index','2','1','2018-09-06 10:44:40',''), ('5','模块设置','','/WebAdmin/Module/Index','2','1','2018-09-06 10:44:26',''), ('6','功能按钮','','/WebAdmin/Menu/Index','2','1','2018-09-06 10:44:27',''), ('7','角色设置','','/WebAdmin/Role/Index','2','1','2018-09-06 10:44:28',''), ('8','内容管理','','','0','1','2018-09-06 10:44:29',''), ('9','新闻信息','','/WebAdmin/News/Index','16','1','2018-09-13 18:14:22',''), ('10','新闻分类','','/WebAdmin/News/NewsClass','16','1','2018-09-14 13:12:45',''), ('11','接口模块','','/WebAdmin/RestAPI/Index','2','1','2018-09-06 10:44:32','jikeou'), ('12','教师信息','','/WebAdmin/Teacher/Index','8','1','2018-09-11 21:59:21',''), ('13','学生信息','','/WebAdmin/Student/Index','8','1','2018-09-11 21:59:36',''), ('14','企业信息','','/WebAdmin/Enterprise/Index','8','1','2018-09-11 22:00:28',''), ('15','友情链接','','/WebAdmin/FriendLink/Index','8','1','2018-09-15 14:15:59',''), ('16','咨询发布','','','0','1','2018-09-13 18:14:13',''), ('17','毕业生跟踪','','/WebAdmin/Graduate/Index','8','1','2018-09-15 14:52:01',''), ('18','图片管理','','/WebAdmin/Picture/Index','8','1','2018-09-15 14:15:59','');
INSERT INTO `sys_permission` VALUES ('1','2','1','1,2,3');
INSERT INTO `sys_restapi` VALUES ('1','阿斯蒂芬','as地方','1','是打'), ('2','阿斯蒂芬','啊水电费','0','as地方');
INSERT INTO `sys_role` VALUES ('1','超级管理员','3,5,7,9,12,13,18,17,14','用户管理,模块设置,角色设置,新闻信息,教师信息,学生信息,图片管理,毕业生跟踪,企业信息','2,4,11','1','超级管理员的介绍','2018-09-16 12:18:24');
INSERT INTO `sys_unit` VALUES ('1','单位1','1'), ('2','单位2','1'), ('3','单位3','1'), ('4','单位4','1');
INSERT INTO `sys_user` VALUES ('1','admin','admin','e10adc3949ba59abbe56e057f20f883e','1,2,10,11,12','1','2018-07-05 14:28:43','2018-07-05 14:28:43'), ('37','陈博文','陈博文','e10adc3949ba59abbe56e057f20f883e','1,2','1','2018-08-04 16:11:59','2018-08-04 16:11:59');
INSERT INTO `teacher` VALUES ('1','陈博文老师','24','1','18717779781','764460008@qq.com','2','421022199310111856','湖北省武汉市','软件','长江工程职业技术学院','大专','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:33','2018-09-12 23:13:32','C#,Java,Python','技术,理工男,程序猿','1','e10adc3949ba59abbe56e057f20f883e'), ('3','陈博文老师2','23','0','1士大夫撒','士大夫撒','5','421022199310111856','爽肤水','本科','武汉大学','方式','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','e10adc3949ba59abbe56e057f20f883e'), ('4','1','23','0','1士大夫撒','士大夫撒','5','421022199310111856','爽肤水','本科','武汉大学','方式','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','2','e10adc3949ba59abbe56e057f20f883e'), ('5','2','23','0','1士大夫撒','士大夫撒','5','421022199310111856','爽肤水','本科','武汉大学','方式','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','3','e10adc3949ba59abbe56e057f20f883e'), ('6','6','6','1','撒','撒','5','421022199310111856','爽肤水','本科','武汉大学','方式',' ','/uploadfiles/images/touxoa.png','2018-09-15 18:19:25','2018-09-15 18:19:28','C#,Java,Python','技术,理工男,程序猿','2','e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `teacherinfo` VALUES ('1','教师咨询测试1','教师咨询内容测试1','1','教师咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('2','教师咨询测试1','教师咨询内容测试1','2','教师咨询备注测试1','0','0','0','0','3','2018-09-12 12:55:54',' '), ('3','教师咨询测试1','教师咨询内容测试1','2','教师咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('4','教师咨询测试1','教师咨询内容测试1','2','教师咨询备注测试1','1','0','0','0','3','2018-09-12 12:55:54',' '), ('5','教师咨询测试1','教师咨询内容测试1','1','教师咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('6','教师咨询测试1','教师咨询内容测试1','4','教师咨询备注测试1','0','0','0','0','3','2018-09-12 12:55:54',' '), ('7','教师咨询测试1','教师咨询内容测试1','4','教师咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' '), ('8','教师咨询测试1','教师咨询内容测试1','1','教师咨询备注测试1','0','0','0','0','3','2018-09-12 12:55:54',' '), ('9','教师咨询测试1','教师咨询内容测试1','3','教师咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('10','教师咨询测试1','教师咨询内容测试1','3','教师咨询备注测试1','1','0','0','0','3','2018-09-12 12:55:54',' '), ('11','教师咨询测试1','教师咨询内容测试1','4','教师咨询备注测试1','0','0','0','0','1','2018-09-12 12:55:54',' '), ('12','教师咨询测试1','教师咨询内容测试1','3','教师咨询备注测试1','1','0','0','0','3','2018-09-12 12:55:54',' '), ('13','教师咨询测试1','教师咨询内容测试1','1','教师咨询备注测试1','1','0','0','0','1','2018-09-12 12:55:54',' ');
INSERT INTO `teacher_achievement` VALUES ('3','其他成果','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2013年4月份到2014年11月就职于北京世华易网教育科技有限公司，在技术部担任一名十八般武艺都得会的设计师。平时主要负责做公司专题、学校专题、高校官网、画册展示、LOGO设计等。对于当时的正处于与社与工作磨合阶段的我来说日子过得虽然苦逼但非常有干劲。','2018-09-13 00:19:04','1','3'), ('4','教学成果2123','asdfasf131','asdfasf231231',NULL,'2','1'), ('5','12312312312','3123123123','123123123123',NULL,'1','1'), ('6','科研成果','1231231231','231231231',NULL,'1','2'), ('7','132123','13132','13123123',NULL,'1','3');
INSERT INTO `teacher_class` VALUES ('1','教师分类1'), ('2','教师分类2'), ('3','教师分类3'), ('4','教师分类4');
INSERT INTO `users` VALUES ('1','陈博文1','24','0','187177797811','764460008@qq.com','2','e10adc3949ba59abbe56e057f20f883e','421022199310111856','湖北省武汉市1','软件','长江工程职业技术学院1','大专','个人介绍','/uploadfiles/images/90006cb9-a92d-471a-b9cb-695b0eaf1364.jpg','2018-09-12 23:12:33','2018-09-12 23:13:32','C#,Java,Python','技术,理工男,程序猿','1','2','2','1',NULL,'0'), ('3','曹思彧','23','0','1582728676511','士大夫撒','5','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','1231231321321312dasfasa','/uploadfiles/images/92a659cd-9d74-4312-ad47-48a0e1302013.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','1','1','1',NULL,'4'), ('4','孙宇晨111','23','1','12345678911','士大夫撒11','6','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水11','软件','武汉大学11','本科','1111111','/uploadfiles/images/036aec1b-7eed-4884-b305-ce035824d3cb.jpg','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0','3','1','1','这是推荐理由这是推荐理由这是推荐理由','0'), ('5','曹思彧老师5','23','1','1士大夫撒','士大夫撒','7','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','3','1','1','这是推荐理由sdfasdf','3'), ('6','曹思彧老师6','23','1','1士大夫撒','士大夫撒','8','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0','2','1','1',NULL,'0'), ('7','曹思彧老师7','23','0','1士大夫撒','士大夫撒','9','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','3','1','1','','2'), ('8','曹思彧老师8','23','1','1士大夫撒','士大夫撒','11','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','本科','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','0','2','1','0',NULL,'0'), ('9','曹思彧老师9','23','1','1士大夫撒','士大夫撒','12','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','研究生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','1','1','0',NULL,'0'), ('11','曹思彧老师11','23','0','1士大夫撒','士大夫撒','10','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','博士生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','1','1','0',NULL,'0'), ('12','曹思彧老师12','23','1','1士大夫撒','士大夫撒','13','e10adc3949ba59abbe56e057f20f883e','421022199310111856','爽肤水','软件','武汉大学','留学生','','/uploadfiles/images/touxoa.png','2018-09-12 23:12:36','2018-09-12 23:13:35','C#,Java,Python','技术,理工男,程序猿','1','3','1','0',NULL,'0'), ('13','13694987419',NULL,'0','13694987419',NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-09-16 12:03:08',NULL,NULL,NULL,'0','3','1','0',NULL,'0'), ('14','新注册的用户',NULL,'0','18717779781','新注册的用户',NULL,'539c597c3950812f57a51e5bcad7eed9',NULL,'新注册的用户',NULL,NULL,NULL,'sdfasdf','/uploadfiles/images/bb0a2a38-6591-404d-a842-081c36ba96a4.png','2018-09-16 15:06:47',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'0');
