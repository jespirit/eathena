ALTER TABLE `char` ADD CONSTRAINT `name_key` UNIQUE (`name`);

ALTER TABLE `login` ADD CONSTRAINT `userid_key` UNIQUE (`userid`);