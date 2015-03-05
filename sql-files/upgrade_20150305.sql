ALTER TABLE `register` ADD `account_num` int(11) unsigned NOT NULL default 0 AFTER `time`;
ALTER TABLE `register` DROP COLUMN `data`;

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
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

INSERT INTO `account` (`account_name`,`account_pass`,`email`,`level`,`birthdate`) VALUES('jeff','jeff123','jeff_eathena@outlook.com',99,'1990-10-19');

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