-- change structure --
ALTER TABLE `register` ADD `time` datetime NOT NULL default '0000-00-00 00:00:00' AFTER `id`;
ALTER TABLE `register` ADD `userid` varchar(23) NOT NULL default '' AFTER `time`;
ALTER TABLE `register` ADD `user_pass` varchar(32) NOT NULL default '' AFTER `userid`;
ALTER TABLE `register` ADD `sex` enum('M','F','S') NOT NULL default 'M' AFTER `user_pass`;
ALTER TABLE `register` ADD `email` varchar(39) NOT NULL default '' AFTER `sex`;
ALTER TABLE `register` ADD `level` tinyint(3) NOT NULL default '0' AFTER `email`;
ALTER TABLE `register` ADD `birthdate` DATE NOT NULL DEFAULT '0000-00-00' AFTER `level`;
ALTER TABLE `register` CHANGE `ip` `ip` varchar(100) NOT NULL default '';
ALTER TABLE `register` DROP `account_id`;
