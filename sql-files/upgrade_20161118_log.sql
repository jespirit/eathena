#Database: log
#Table: pc_dpslog
CREATE TABLE `pc_dpslog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `src_id` int(11) unsigned NOT NULL default '0',
  `src_class` smallint(6) unsigned NOT NULL default '0',
  `target_id` int(11) unsigned NOT NULL default '0',
  `target_class` smallint(6) unsigned NOT NULL default '0',
  `damage` int(11) unsigned NOT NULL default '0',
  `killtime` int(11) unsigned NOT NULL default '0',
  `max_hp` mediumint(8) unsigned NOT NULL default '0',
  `map` varchar(11) NOT NULL default '',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  INDEX (`src_id`),
  INDEX (`target_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;

#Database: log
#Table: mob_dpslog
CREATE TABLE `mob_dpslog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `src_id` int(11) unsigned NOT NULL default '0',
  `src_class` smallint(6) unsigned NOT NULL default '0',
  `mob_id` mediumint(9) unsigned NOT NULL default '0',
  `damage` int(11) unsigned NOT NULL default '0',
  `killtime` int(11) unsigned NOT NULL default '0',
  `max_hp` mediumint(8) unsigned NOT NULL default '0',
  `map` varchar(11) NOT NULL default '',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  INDEX (`src_id`),
  INDEX (`mob_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;
