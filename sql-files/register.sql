CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `userid` varchar(23) NOT NULL default '',
  `user_pass` varchar(32) NOT NULL default '',
  `sex` enum('M','F','S') NOT NULL default 'M',
  `email` varchar(39) NOT NULL default '',
  `level` tinyint(3) NOT NULL default '0',
  `birthdate` DATE NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(100) NOT NULL default '',
  `data` text,
  PRIMARY KEY (`id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1;
