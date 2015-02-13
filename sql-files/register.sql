DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `account_num` int(11) unsigned NOT NULL default '0',
  `userid` varchar(23) NOT NULL default '',
  `user_pass` varchar(32) NOT NULL default '',
  `sex` enum('M','F','S') NOT NULL default 'M',
  `email` varchar(39) NOT NULL default '',
  `level` tinyint(3) NOT NULL default '0',
  `birthdate` DATE NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(100) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_num` int(11) unsigned NOT NULL auto_increment,
  `account_name` varchar(23) NOT NULL default '',
  `account_pass` varchar(32) NOT NULL default '',
  `email` varchar(39) NOT NULL default '',
  `level` tinyint(3) NOT NULL default '0',
  `state` int(11) unsigned NOT NULL default '0',
  `unban_time` int(11) unsigned NOT NULL default '0',
  `expiration_time` int(11) unsigned NOT NULL default '0',
  `logincount` mediumint(9) unsigned NOT NULL default '0',
  `lastlogin` datetime NOT NULL default '0000-00-00 00:00:00',
  `birthdate` DATE NOT NULL DEFAULT '0000-00-00',
  `last_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY (`account_num`),
  CONSTRAINT `account_name_key` UNIQUE (`account_name_key`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

INSERT INTO `account` VALUES(1,NOW(),'jeff','jeff123','a@a.com',99,0,0,0,0,NOW(),'1990-10-19','192.168.0.25'),(2,NOW(),'john','john123','a@a.com',99,0,0,0,0,NOW(),'1993-05-17','192.168.0.25'),(3,NOW(),'jeric','jeric123','a@a.com',99,0,0,0,0,NOW(),'1995-07-12','192.168.0.25');

DROP TABLE IF EXISTS `accregister`;
CREATE TABLE `accregister` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `account_name` varchar(23) NOT NULL default '',
  `account_pass` varchar(32) NOT NULL default '',
  `email` varchar(39) NOT NULL default '',
  `level` tinyint(3) NOT NULL default '0',
  `birthdate` DATE NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(100) NOT NULL default '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;
