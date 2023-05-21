
ALTER TABLE `register` CHANGE COLUMN `account_num` `web_account_id` int(11) unsigned NOT NULL default '0';

-- Don't specify auto_increment nor primary key
-- Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key
ALTER TABLE `account` CHANGE COLUMN `account_num` `web_account_id` int(11) unsigned NOT NULL;
ALTER TABLE `account` RENAME `web_account`;

ALTER TABLE `login` CHANGE `account_num` `web_account_id` int(11) unsigned NOT NULL default '0';
ALTER TABLE `login` DROP INDEX `account`;
ALTER TABLE `login` ADD INDEX `web_account_id` (`web_account_id`);

-- Move column
ALTER TABLE `login` CHANGE COLUMN `web_account_id` `web_account_id` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `account_id`;
