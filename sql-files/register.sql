DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `web_account_id` int(11) unsigned NOT NULL default '0',
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

DROP TABLE IF EXISTS `web_account`;
CREATE TABLE `web_account` (
  `web_account_id` int(11) unsigned NOT NULL auto_increment,
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
  PRIMARY KEY (`web_account_id`),
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

INSERT INTO `web_account` (`account_name`,`account_pass`,`email`,`level`,`birthdate`) VALUES('jeff','jeff123','jeff_eathena@outlook.com',99,'1990-10-19');

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
