-- NOTE: change `ragnarok` and `log` to whatever your database names are.

START TRANSACTION;

CREATE TABLE `log`.`loginlog` (
  `time` datetime NOT NULL default '1970-01-01 00:00:01',
  `ip` varchar( 15 ) NOT NULL ,
  `user` varchar( 23 ) NOT NULL default '',
  `rcode` tinyint( 4 ) NOT NULL default '0',
  `log` varchar( 255 ) NOT NULL default '',
  KEY `ip` ( `ip` ) 
) ENGINE = MYISAM;

INSERT INTO `log`.`loginlog` 
  SELECT * 
  FROM `ragnarok`.`loginlog` ;

DROP TABLE `ragnarok`.`loginlog` ;

COMMIT;
