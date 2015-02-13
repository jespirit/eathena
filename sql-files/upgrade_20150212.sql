ALTER TABLE `login` ADD COLUMN `account_num` int(11) unsigned NOT NULL default '0';
ALTER TABLE `login` ADD KEY `account` (`account_num`);