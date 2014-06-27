CREATE TABLE IF NOT EXISTS `sqibonus` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `bonus1` tinyint(3) unsigned NOT NULL default '0',
  `bonus2` tinyint(3) unsigned NOT NULL default '0',
  `bonus3` tinyint(3) unsigned NOT NULL default '0',
  `bonus4` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;