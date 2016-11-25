#Database: log
#Table: pc_dpslog
CREATE TABLE IF NOT EXISTS `pc_dpslog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `pc_id` int(11) unsigned NOT NULL default '0',
  `target_id` int(11) unsigned NOT NULL default '0',
  `damage` int(11) unsigned NOT NULL default '0',
  `killtime` int(11) unsigned NOT NULL default '0',
  `map` varchar(11) NOT NULL default '',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  INDEX (`pc_id`),
  INDEX (`target_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;

#Database: log
#Table: mob_dpslog
CREATE TABLE IF NOT EXISTS `mob_dpslog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `pc_id` int(11) unsigned NOT NULL default '0',
  `mob_id` mediumint(9) unsigned NOT NULL default '0',
  `damage` int(11) unsigned NOT NULL default '0',
  `killtime` int(11) unsigned NOT NULL default '0',
  `max_hp` mediumint(8) unsigned NOT NULL default '0',
  `map` varchar(11) NOT NULL default '',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  INDEX (`pc_id`),
  INDEX (`mob_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;

#Database: log
#Table: dps_charlog
CREATE TABLE IF NOT EXISTS `dps_charlog` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `class` smallint(5) unsigned NOT NULL default '0',
  `base_level` smallint(5) unsigned NOT NULL default '1',
  `job_level` smallint(5) unsigned NOT NULL default '1',
  `max_hp` int(12) unsigned NOT NULL default '0',
  `hp` int(12) unsigned NOT NULL default '0',
  `max_sp` int(12) unsigned NOT NULL default '0',
  `sp` int(12) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `agi` smallint(5) unsigned NOT NULL default '0',
  `vit` smallint(5) unsigned NOT NULL default '0',
  `int` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `luk` smallint(5) unsigned NOT NULL default '0',
  `speed` smallint(5) unsigned NOT NULL default '0',
  `hit` smallint(5) NOT NULL default '0',
  `flee` smallint(5) NOT NULL default '0',
  `flee2` smallint(5) NOT NULL default '0',
  `amotion` smallint(5) unsigned NOT NULL default '0',
  `delay` decimal(5,2) NOT NULL default '0',
  `dmg_per` decimal(5,2) NOT NULL default '0',
  `casttime` decimal(5,2) NOT NULL default '0',
  `atk` smallint(5) unsigned NOT NULL default '0',
  `atk2` smallint(5) unsigned NOT NULL default '0',
  `def` tinyint(3) NOT NULL default '0',
  `def2` smallint(5) NOT NULL default '0',
  `mdef` tinyint(3) NOT NULL default '0',
  `mdef2` smallint(5) NOT NULL default '0',
  `cri` smallint(5) NOT NULL default '0',
  `matk_min` smallint(5) unsigned NOT NULL default '0',
  `matk_max` smallint(5) unsigned NOT NULL default '0',
  `atk_ele` smallint(5) NOT NULL default '0',
  `atk_range` smallint(5) unsigned NOT NULL default '0',
  `fame` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;

#Database: log
#Table: dps_equiplog
CREATE TABLE IF NOT EXISTS `dps_equiplog` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `pc_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `expire_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pc_id` (`pc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 ;