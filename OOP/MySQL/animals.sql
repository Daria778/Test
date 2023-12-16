DROP DATABASE IF EXISTS animals;
CREATE DATABASE animals;
USE animals;

DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `cats` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Fido', '01-01-20','pet', 'Sit, Stay, Fetch'),
 ('2', 'Whiskers', '12-12-19','pet', 'Meow, Scratch, Jump'),
 ('3', 'Hammy', '3-10-20','pet', 'Sit, Stay, Fetch');


DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `dogs` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Fiooodo', '01-01-20','pet', 'Sit, Stay, Fetch'),
 ('2', 'Whiskedrs', '12-12-19','pet', 'Bark, Scratch, Jump'),
 ('3', 'Hammwy', '3-10-20','pet', 'Sit, Stay, Fetch');

DROP TABLE IF EXISTS hamsters;
CREATE TABLE hamsters (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `hamsters` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Fidom', '01-01-20','pet', 'Sit, Stay'),
 ('2', 'Whiszdkers', '12-12-19','pet', 'Roll, Hide'),
 ('3', 'Hkhammy', '3-10-20','pet', 'Sit, Stay, Roll');







DROP TABLE IF EXISTS horses;
CREATE TABLE horses (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `horses` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Thunder', '2015-07-21', 'pack_animals', 'Trot, Canter, Gallop'),
 	   ('2', 'Srandy', '2016-11-03', 'pack_animals', 'Walk, Carry Load'),
       ('3', 'Eiyeyore', '2017-09-18', 'pack_animals', 'Walk, Carry Load, Bray');

DROP TABLE IF EXISTS camels;
CREATE TABLE camels (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `camels` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Sahara', '2015-08-14', 'pack_animals', 'Walk, Run'),
 	   ('2', 'Sanddy', '2016-11-03', 'pack_animals', 'Walk, Carry Load'),
       ('3', 'Eeydsdore', '2017-09-18', 'pack_animals', 'Walk, Carry Load, Bray');
      
DROP TABLE IF EXISTS donkeys;
CREATE TABLE donkeys (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `donkeys` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Thugdgfder', '2015-07-21', 'pack_animals', 'Trot, Canter, Gallop'),
 	   ('2', 'Sassndy', '2016-11-03', 'pack_animals', 'Walk, Carry Load'),
       ('3', 'Eeyaatore', '2017-09-18', 'pack_animals', 'Walk, Carry Load, Bray');
      
      




use animals;

delete from camels;

select *
from horses 
inner join donkeys on horses.id = donkeys.id;





DROP TABLE IF EXISTS lol;
CREATE TABLE lol (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate datetime(6),
    species VARCHAR(12),
    command varchar(50)
);
INSERT INTO `lol` (`id`, `name`, `birthdate`, `species`, `command`) 
VALUES ('1', 'Fido', '2020-01-01','pet', 'Sit, Stay, Fetch'),
 ('2', 'Whiskers', '2022-12-12','pet', 'Meow, Scratch, Jump'),
 ('3', 't', '2021-12-11','pet', 'Meow, Scratch, Jump'),
 ('4', 'd', '2021-02-13','pet', 'Meow, Scratch, Jump'),
 ('5', 's', '2020-11-20','pet', 'Meow, Scratch, Jump'),
 ('6', 'Hammy', '2020-03-03','pet', 'Sit, Stay, Fetch');


use animals;

select TIMESTAMPDIFF(year, lol.birthdate,curdate())as age
from lol;






use animals;

select *
from cats 
join dogs on cats.id = dogs.id
join hamsters on hamsters.id = dogs.id
join camels on camels.id = hamsters.id
join horses on horses.id = camels.id
join donkeys on donkeys.id = horses.id;    