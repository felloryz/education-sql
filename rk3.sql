#Fedor Ryzhov VAR 11 IU4-12
CREATE DATABASE IF NOT EXISTS rk3;
USE rk3;
CREATE TABLE IF NOT EXISTS `goods` (
`name` VARCHAR(12) NOT NULL,
`manufacture` VARCHAR(12) NOT NULL,
`description` VARCHAR(12) NOT NULL,
`count` INT(5) NOT NULL
) DEFAULT CHARSET=utf8;
DESCRIBE `goods`;
INSERT INTO `goods` (`name`, `manufacture`, `description`, `count`) VALUES 
('молоко', 'a', 'good', '0'),
('хлеб', 'b', 'great', '3000'),
('огурцы', 'c', 'excelent', '1250'),
('песок', 'd', 'delecious', '700'),
('помидор', 'e', 'yummy', '100'),
('морковь', 'f', 'good', '0'),
('яйца', 'g', 'excelent', '200'),
('картофель', 'h', 'yummy', '450'),
('баклажаны', 'j', 'great', '2100'),
('консервы', 'k', 'well', '800'),
('брокколи', 'l', 'delecious', '1000'),
('кукуруза', 'm', 'yummy', '300');

DELETE FROM `goods` WHERE `count` = '0';

SELECT * FROM `goods` WHERE (`count` > '300' AND `count` < '1000') AND `name` tag LIKE 'к%';  
